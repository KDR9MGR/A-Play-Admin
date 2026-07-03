import { useState, useEffect } from "react";
import { useMutation, useQuery } from "@tanstack/react-query";
import { supabase } from "@/integrations/supabase/client";
import { paystackInitializeTest, paystackVerifyTest } from "@/hooks/use-paystack";
import {
  Dialog, DialogContent, DialogHeader, DialogTitle,
} from "@/components/ui/dialog";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Badge } from "@/components/ui/badge";
import { Card, CardContent } from "@/components/ui/card";
import { Checkbox } from "@/components/ui/checkbox";
import {
  CheckCircle, XCircle, ExternalLink, RefreshCw, CreditCard,
  MapPin, Calendar, Users, AlertTriangle, Loader2,
} from "lucide-react";
import { format } from "date-fns";
import { toast } from "sonner";

interface Zone { id: string; name: string; price: number; capacity: number; }

interface TestBookingModalProps {
  event: {
    id: string;
    title: string;
    description: string;
    location: string;
    start_date: string;
    end_date: string;
    cover_image?: string | null;
    zones?: Zone[];
  };
  open: boolean;
  onClose: () => void;
}

type Step = "zone" | "pay" | "done";

export function TestBookingModal({ event, open, onClose }: TestBookingModalProps) {
  const [step, setStep]             = useState<Step>("zone");
  const [selectedZone, setSelectedZone] = useState<Zone | null>(null);
  const [quantity, setQuantity]     = useState(1);
  const [email, setEmail]           = useState("test@aplay.com");
  const [payResult, setPayResult]   = useState<any>(null);
  const [verifyResult, setVerifyResult] = useState<any>(null);
  const [payLoading, setPayLoading] = useState(false);
  const [verifyLoading, setVerifyLoading] = useState(false);
  const [createRecord, setCreateRecord] = useState(true);

  // Test Booking modal ALWAYS uses the test (sandbox) function — never affects live payments.
  // The admin Settings toggle is for the admin console only, not this modal.
  const mode = "test" as const;

  // Reset when reopened
  useEffect(() => {
    if (open) {
      setStep("zone");
      setSelectedZone(null);
      setQuantity(1);
      setEmail(mode === "live" ? "" : "test@aplay.com");
      setPayResult(null);
      setVerifyResult(null);
    }
  }, [open, mode]);

  // Use zones passed in or fetch them
  const { data: fetchedZones } = useQuery({
    queryKey: ["zones-for-booking", event.id],
    enabled: open && (!event.zones || event.zones.length === 0),
    queryFn: async () => {
      const { data, error } = await supabase
        .from("zones")
        .select("id, name, price, capacity")
        .eq("event_id", event.id)
        .order("price");
      if (error) throw error;
      return (data || []) as Zone[];
    },
  });

  const zones: Zone[] = event.zones?.length ? event.zones : (fetchedZones || []);
  const total = selectedZone ? selectedZone.price * quantity : 0;

  // Create booking record mutation
  const createBookingMutation = useMutation({
    mutationFn: async ({ zoneId, amount }: { zoneId: string; amount: number }) => {
      const { data: { session } } = await supabase.auth.getSession();
      if (!session?.user) throw new Error("Not authenticated");
      const { error } = await supabase.from("bookings").insert([{
        event_id: event.id,
        zone_id: zoneId,
        user_id: session.user.id,
        quantity,
        amount,
        booking_date: new Date().toISOString().split("T")[0],
        status: "confirmed",
      }]);
      if (error) throw error;
    },
    onSuccess: () => toast.success("Booking record created in database"),
    onError: (err: any) => toast.error(err.message || "Failed to create booking record"),
  });

  const handlePay = async () => {
    if (!selectedZone) { toast.error("Select a zone first"); return; }
    if (!email) { toast.error("Enter an email address"); return; }
    setPayLoading(true);
    setPayResult(null);
    try {
      const result = await paystackInitializeTest({
        email,
        amount: Math.round(total * 100), // GHS → pesewa
        currency: "GHS",
        metadata: {
          event_id: event.id,
          event_title: event.title,
          zone_id: selectedZone.id,
          zone_name: selectedZone.name,
          quantity,
          source: "admin_test",
        },
      });
      setPayResult(result);
      setStep("pay");
    } catch (err: any) {
      toast.error(err.message || "Failed to initialize payment");
      setPayResult({ error: err.message });
    } finally {
      setPayLoading(false);
    }
  };

  const handleVerify = async () => {
    if (!payResult?.data?.reference) { toast.error("No reference to verify"); return; }
    setVerifyLoading(true);
    try {
      const result = await paystackVerifyTest(payResult.data.reference);
      setVerifyResult(result);
      const ok = result.data?.status === "success";
      if (ok) {
        toast.success("Payment verified — SUCCESS");
        if (createRecord && selectedZone) {
          await createBookingMutation.mutateAsync({ zoneId: selectedZone.id, amount: total });
        }
        setStep("done");
      } else {
        toast.warning(`Payment status: ${result.data?.status ?? "unknown"}`);
      }
    } catch (err: any) {
      toast.error(err.message || "Verification failed");
    } finally {
      setVerifyLoading(false);
    }
  };

  return (
    <Dialog open={open} onOpenChange={(v) => !v && onClose()}>
      <DialogContent className="max-w-lg max-h-[90vh] overflow-y-auto" aria-describedby={undefined}>
        <DialogHeader>
          <DialogTitle className="flex items-center gap-2">
            <CreditCard className="h-5 w-5" />
            Test Booking
            <Badge
              className={`ml-auto text-xs ${mode === "live"
                ? "bg-green-500/20 text-green-700 border-green-500/30"
                : "bg-yellow-500/20 text-yellow-700 border-yellow-500/30"}`}
            >
              {mode === "live" ? "🟢 LIVE" : "🟡 TEST"}
            </Badge>
          </DialogTitle>
        </DialogHeader>

        {/* Event summary */}
        <div className="rounded-lg border p-3 bg-muted/30 space-y-1 text-sm">
          <p className="font-semibold">{event.title}</p>
          <div className="flex items-center gap-1 text-muted-foreground text-xs">
            <MapPin className="h-3 w-3" /> {event.location}
          </div>
          <div className="flex items-center gap-1 text-muted-foreground text-xs">
            <Calendar className="h-3 w-3" />
            {format(new Date(event.start_date), "MMM d, yyyy · h:mm a")}
          </div>
        </div>

        {/* ── Step 1: Zone selection ── */}
        {(step === "zone" || step === "pay") && (
          <div className="space-y-4">
            <div className="space-y-2">
              <Label className="text-sm font-medium">Select Zone</Label>
              {zones.length === 0 ? (
                <p className="text-sm text-muted-foreground">No zones found for this event. Add zones first.</p>
              ) : (
                <div className="grid grid-cols-1 gap-2">
                  {zones.map((zone) => (
                    <Card
                      key={zone.id}
                      className={`cursor-pointer transition-all border-2 ${
                        selectedZone?.id === zone.id
                          ? "border-primary bg-primary/5"
                          : "border-transparent hover:border-muted-foreground/30"
                      }`}
                      onClick={() => { if (step === "zone") setSelectedZone(zone); }}
                    >
                      <CardContent className="p-3 flex items-center justify-between">
                        <div>
                          <p className="font-medium text-sm">{zone.name}</p>
                          <div className="flex items-center gap-1 text-xs text-muted-foreground">
                            <Users className="h-3 w-3" /> {zone.capacity} seats
                          </div>
                        </div>
                        <p className="font-bold text-primary">₵{zone.price.toFixed(2)}</p>
                      </CardContent>
                    </Card>
                  ))}
                </div>
              )}
            </div>

            {selectedZone && step === "zone" && (
              <>
                <div className="space-y-2">
                  <Label className="text-sm font-medium">Quantity</Label>
                  <div className="flex items-center gap-2">
                    <Button variant="outline" size="sm" className="h-8 w-8 p-0"
                      onClick={() => setQuantity(q => Math.max(1, q - 1))}>−</Button>
                    <span className="w-8 text-center font-medium">{quantity}</span>
                    <Button variant="outline" size="sm" className="h-8 w-8 p-0"
                      onClick={() => setQuantity(q => Math.min(10, q + 1))}>+</Button>
                  </div>
                </div>

                <div className="space-y-2">
                  <Label className="text-sm font-medium">Email {mode === "test" && <span className="text-muted-foreground font-normal">(test email)</span>}</Label>
                  <Input value={email} onChange={(e) => setEmail(e.target.value)} placeholder="email@example.com" />
                  {mode === "test" && (
                    <p className="text-xs text-muted-foreground">Test card: <code>4084 0840 8408 4081</code> · any future expiry · CVV <code>408</code></p>
                  )}
                </div>

                <div className="flex items-center gap-2">
                  <Checkbox id="create-record" checked={createRecord} onCheckedChange={(v) => setCreateRecord(!!v)} />
                  <Label htmlFor="create-record" className="text-sm cursor-pointer">
                    Create booking record in database after payment
                  </Label>
                </div>

                <div className="flex items-center justify-between p-3 bg-primary/5 rounded-lg border border-primary/20">
                  <span className="text-sm font-medium">Total</span>
                  <span className="text-lg font-bold text-primary">₵{total.toFixed(2)}</span>
                </div>

                <Button onClick={handlePay} disabled={payLoading || !email} className="w-full gap-2">
                  {payLoading
                    ? <><Loader2 className="h-4 w-4 animate-spin" /> Initializing Payment…</>
                    : <><CreditCard className="h-4 w-4" /> Pay ₵{total.toFixed(2)}</>}
                </Button>
              </>
            )}

            {/* ── Step 2: Payment initialized ── */}
            {step === "pay" && payResult && (
              <div className="space-y-4">
                {payResult.error ? (
                  <div className="flex items-start gap-2 p-3 rounded-lg bg-red-500/10 border border-red-500/20 text-sm text-red-700">
                    <XCircle className="h-4 w-4 shrink-0 mt-0.5" />
                    <p>{payResult.error}</p>
                  </div>
                ) : (
                  <>
                    <div className="p-3 rounded-lg bg-green-500/10 border border-green-500/20 space-y-2 text-sm">
                      <p className="font-semibold text-green-700 flex items-center gap-1">
                        <CheckCircle className="h-4 w-4" /> Payment initialized
                      </p>
                      <p className="text-muted-foreground text-xs">Reference: <code>{payResult.data?.reference}</code></p>
                    </div>

                    {payResult.data?.authorization_url && (
                      <a
                        href={payResult.data.authorization_url}
                        target="_blank"
                        rel="noreferrer"
                        className="flex items-center justify-center gap-2 w-full p-3 rounded-lg border-2 border-primary text-primary font-medium hover:bg-primary/5 transition-colors text-sm"
                      >
                        <ExternalLink className="h-4 w-4" />
                        Open Payment Page →
                      </a>
                    )}

                    <div className="flex items-start gap-2 p-3 rounded-lg bg-muted/50 text-xs text-muted-foreground">
                      <AlertTriangle className="h-4 w-4 shrink-0 mt-0.5" />
                      Complete the payment in the new tab, then click the button below.
                    </div>

                    <Button
                      onClick={handleVerify}
                      disabled={verifyLoading}
                      variant="outline"
                      className="w-full gap-2"
                    >
                      {verifyLoading
                        ? <><RefreshCw className="h-4 w-4 animate-spin" /> Verifying…</>
                        : <><CheckCircle className="h-4 w-4" /> I've completed the payment — Verify</>}
                    </Button>

                    {verifyResult && (
                      <div className={`p-3 rounded-lg border text-sm ${
                        verifyResult.data?.status === "success"
                          ? "bg-green-500/10 border-green-500/20"
                          : "bg-yellow-500/10 border-yellow-500/20"
                      }`}>
                        <p className="font-medium">
                          Status:{" "}
                          <span className={verifyResult.data?.status === "success" ? "text-green-700" : "text-yellow-700"}>
                            {verifyResult.data?.status ?? "unknown"}
                          </span>
                        </p>
                        {verifyResult.data?.amount && (
                          <p className="text-xs text-muted-foreground mt-1">
                            Amount: ₵{(verifyResult.data.amount / 100).toFixed(2)} {verifyResult.data.currency}
                          </p>
                        )}
                      </div>
                    )}
                  </>
                )}
              </div>
            )}
          </div>
        )}

        {/* ── Step 3: Done ── */}
        {step === "done" && (
          <div className="space-y-4 py-4 text-center">
            <CheckCircle className="h-12 w-12 text-green-500 mx-auto" />
            <p className="font-semibold text-lg">Booking Complete!</p>
            <p className="text-sm text-muted-foreground">
              {createRecord
                ? "Payment verified and booking record created in the database."
                : "Payment verified successfully."}
            </p>
            {verifyResult?.data?.reference && (
              <p className="text-xs text-muted-foreground font-mono">
                Ref: {verifyResult.data.reference}
              </p>
            )}
            <Button onClick={onClose} className="w-full">Close</Button>
          </div>
        )}
      </DialogContent>
    </Dialog>
  );
}
