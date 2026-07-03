import { useState, useEffect } from "react";
import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import { supabase } from "@/integrations/supabase/client";
import { paystackInitialize, paystackVerify } from "@/hooks/use-paystack";
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Badge } from "@/components/ui/badge";
import { Switch } from "@/components/ui/switch";
import { Separator } from "@/components/ui/separator";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import {
  Settings, CreditCard, FlaskConical, Zap, CheckCircle, XCircle,
  AlertTriangle, ExternalLink, Copy, RefreshCw, Info, Server,
} from "lucide-react";
import { toast } from "sonner";

// ── helpers ──────────────────────────────────────────────────────────────────
function useSetting(key: string) {
  const queryClient = useQueryClient();

  const { data, isLoading, isError } = useQuery({
    queryKey: ["app-setting", key],
    retry: false,
    queryFn: async () => {
      const { data, error } = await supabase
        .from("app_settings" as any)
        .select("value, description, updated_at")
        .eq("key", key)
        .single();
      if (error) throw error;
      return data as { value: string; description: string; updated_at: string };
    },
  });

  const mutation = useMutation({
    mutationFn: async (value: string) => {
      const { error } = await supabase
        .from("app_settings" as any)
        .update({ value, updated_at: new Date().toISOString() })
        .eq("key", key);
      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["app-setting", key] });
      queryClient.invalidateQueries({ queryKey: ["paystack-mode"] });
    },
  });

  return { value: data?.value, description: data?.description, isLoading, isError, update: mutation.mutate, isPending: mutation.isPending };
}

// ── Paystack Mode Toggle ──────────────────────────────────────────────────────
function SettingsTableMissingBanner() {
  return (
    <div className="flex items-start gap-3 p-4 rounded-lg bg-yellow-500/10 border border-yellow-500/30 text-sm text-yellow-800">
      <AlertTriangle className="h-5 w-5 shrink-0 mt-0.5" />
      <div>
        <p className="font-semibold">Settings table not found</p>
        <p className="mt-0.5">Run <code className="bg-yellow-500/20 px-1 rounded">supabase/CREATE_APP_SETTINGS.sql</code> in the Supabase SQL Editor to enable these settings.</p>
      </div>
    </div>
  );
}

function PaystackModeCard() {
  const { value: mode, isLoading, isError, update, isPending } = useSetting("paystack_mode");
  const isLive = mode === "live";

  if (isError) return <SettingsTableMissingBanner />;

  const handleToggle = (checked: boolean) => {
    const newMode = checked ? "live" : "test";
    update(newMode);
    toast.success(`Paystack switched to ${newMode.toUpperCase()} mode`);
  };

  return (
    <Card className={`border-2 transition-colors ${isLive ? "border-green-500/40 bg-green-500/5" : "border-yellow-500/40 bg-yellow-500/5"}`}>
      <CardHeader className="pb-3">
        <div className="flex items-center justify-between">
          <CardTitle className="flex items-center gap-2 text-lg">
            <CreditCard className="h-5 w-5" />
            Admin Console — Payment Function
          </CardTitle>
          {!isLoading && (
            <Badge
              className={`text-sm px-3 py-1 ${
                isLive
                  ? "bg-green-500/20 text-green-700 border-green-500/30"
                  : "bg-yellow-500/20 text-yellow-700 border-yellow-500/30"
              }`}
            >
              {isLive ? "🟢 LIVE" : "🟡 TEST"}
            </Badge>
          )}
        </div>
        <CardDescription>
          Controls which Paystack function this admin console uses when you fire a test payment below.
          This does <strong>not</strong> affect the user-facing app — the user app manages its own payment configuration separately.
        </CardDescription>
      </CardHeader>
      <CardContent className="space-y-4">
        <div className="flex items-center gap-4 p-4 rounded-lg bg-background border">
          <div className="flex-1">
            <p className="font-medium text-sm">
              {isLive ? "Console using live function — real charges on test below" : "Console using sandbox function — safe for testing"}
            </p>
            <p className="text-xs text-muted-foreground mt-0.5">
              {isLive
                ? "Calls the live `paystack` edge function · uses PAYSTACK_LIVE_SECRET_KEY"
                : "Calls the sandbox `testpay` edge function · uses PAYSTACK_TEST_SECRET_KEY"}
            </p>
          </div>
          <div className="flex items-center gap-3">
            <span className="text-sm text-muted-foreground">Test</span>
            <Switch
              checked={isLive}
              onCheckedChange={handleToggle}
              disabled={isLoading || isPending}
              className={isLive ? "data-[state=checked]:bg-green-600" : ""}
            />
            <span className="text-sm text-muted-foreground">Live</span>
          </div>
        </div>

        {isLive && (
          <div className="flex items-start gap-2 p-3 rounded-lg bg-red-500/10 border border-red-500/20 text-sm text-red-700">
            <AlertTriangle className="h-4 w-4 mt-0.5 flex-shrink-0" />
            <p><strong>Live function selected.</strong> Payments you trigger in this console will charge real cards. Switch back to Test when done.</p>
          </div>
        )}

        <div className="flex items-start gap-2 p-3 rounded-lg bg-blue-500/10 border border-blue-500/20 text-xs text-blue-700">
          <Info className="h-4 w-4 mt-0.5 flex-shrink-0" />
          <p>The <strong>Preview &amp; Test → Test Booking</strong> button always uses the sandbox function regardless of this toggle — it can never trigger real payments.</p>
        </div>

        <p className="text-xs text-muted-foreground">
          Use the <strong>Edge Functions</strong> tab to ping both functions.
        </p>
      </CardContent>
    </Card>
  );
}

// ── Paystack Test Panel ───────────────────────────────────────────────────────
function PaystackTestPanel() {
  const { value: mode } = useSetting("paystack_mode");
  const [email, setEmail] = useState("test@aplay.com");
  const [amount, setAmount] = useState("100");
  const [reference, setReference] = useState("");
  const [verifyRef, setVerifyRef] = useState("");
  const [initResult, setInitResult] = useState<any>(null);
  const [verifyResult, setVerifyResult] = useState<any>(null);
  const [initLoading, setInitLoading] = useState(false);
  const [verifyLoading, setVerifyLoading] = useState(false);

  const handleInitialize = async () => {
    setInitLoading(true);
    setInitResult(null);
    try {
      const ref = reference || `TEST-${Date.now()}`;
      const result = await paystackInitialize({
        email,
        amount: Math.round(parseFloat(amount) * 100), // convert GHS to pesewa
        currency: "GHS",
        reference: ref,
        metadata: { source: "admin_test", admin_test: true },
      });
      setInitResult(result);
      if (result.data?.reference) setVerifyRef(result.data.reference);
      toast.success("Payment initialized — open the authorization URL to complete");
    } catch (err: any) {
      toast.error(err.message || "Failed to initialize payment");
      setInitResult({ error: err.message });
    } finally {
      setInitLoading(false);
    }
  };

  const handleVerify = async () => {
    if (!verifyRef) { toast.error("Enter a reference to verify"); return; }
    setVerifyLoading(true);
    setVerifyResult(null);
    try {
      const result = await paystackVerify(verifyRef);
      setVerifyResult(result);
      const status = result.data?.status;
      if (status === "success") toast.success("Payment verified: SUCCESS");
      else toast.warning(`Payment status: ${status ?? "unknown"}`);
    } catch (err: any) {
      toast.error(err.message || "Failed to verify payment");
      setVerifyResult({ error: err.message });
    } finally {
      setVerifyLoading(false);
    }
  };

  const copyToClipboard = (text: string) => {
    navigator.clipboard.writeText(text);
    toast.success("Copied to clipboard");
  };

  return (
    <Card>
      <CardHeader>
        <CardTitle className="flex items-center gap-2">
          <FlaskConical className="h-5 w-5 text-blue-500" />
          Paystack Test Console
          <Badge variant="outline" className="ml-2 text-xs">
            {mode === "live" ? "🟢 LIVE" : "🟡 TEST"}
          </Badge>
        </CardTitle>
        <CardDescription>
          Calls the <code className="bg-muted px-1 rounded text-xs">{mode === "live" ? "paystack" : "testpay"}</code> edge function directly.
          {mode === "test" && " Test card: 4084 0840 8408 4081 · any future expiry · CVV 408."}
        </CardDescription>
      </CardHeader>
      <CardContent className="space-y-6">
        {/* Initialize */}
        <div className="space-y-3">
          <h3 className="font-semibold text-sm flex items-center gap-2">
            <Zap className="h-4 w-4 text-primary" /> Initialize Payment
          </h3>
          <div className="grid grid-cols-1 sm:grid-cols-3 gap-3">
            <div className="space-y-1">
              <Label className="text-xs">Customer Email</Label>
              <Input value={email} onChange={(e) => setEmail(e.target.value)} placeholder="test@example.com" className="h-8 text-sm" />
            </div>
            <div className="space-y-1">
              <Label className="text-xs">Amount (GHS)</Label>
              <Input type="number" min="0.01" step="0.01" value={amount} onChange={(e) => setAmount(e.target.value)} placeholder="10.00" className="h-8 text-sm" />
            </div>
            <div className="space-y-1">
              <Label className="text-xs">Reference (optional)</Label>
              <Input value={reference} onChange={(e) => setReference(e.target.value)} placeholder="auto-generated" className="h-8 text-sm" />
            </div>
          </div>
          <Button onClick={handleInitialize} disabled={initLoading} size="sm" className="gap-2">
            {initLoading ? <><RefreshCw className="h-3 w-3 animate-spin" /> Initializing…</> : <><Zap className="h-3 w-3" /> Initialize</>}
          </Button>

          {initResult && (
            <div className={`p-3 rounded-lg border text-xs font-mono space-y-2 ${initResult.error ? "bg-red-500/10 border-red-500/20" : "bg-green-500/10 border-green-500/20"}`}>
              {initResult.error ? (
                <p className="text-red-600">{initResult.error}</p>
              ) : (
                <>
                  <div className="flex items-center justify-between">
                    <span className="text-muted-foreground">Mode:</span>
                    <Badge variant="outline" className="text-xs">{initResult._mode}</Badge>
                  </div>
                  <div className="flex items-center justify-between">
                    <span className="text-muted-foreground">Status:</span>
                    <span className={initResult.status ? "text-green-600 font-bold" : "text-red-600 font-bold"}>{String(initResult.status)}</span>
                  </div>
                  {initResult.data?.reference && (
                    <div className="flex items-center justify-between">
                      <span className="text-muted-foreground">Reference:</span>
                      <div className="flex items-center gap-1">
                        <span>{initResult.data.reference}</span>
                        <Button size="sm" variant="ghost" className="h-5 w-5 p-0" onClick={() => copyToClipboard(initResult.data.reference)}>
                          <Copy className="h-3 w-3" />
                        </Button>
                      </div>
                    </div>
                  )}
                  {initResult.data?.authorization_url && (
                    <a
                      href={initResult.data.authorization_url}
                      target="_blank"
                      rel="noreferrer"
                      className="flex items-center gap-1 text-primary hover:underline"
                    >
                      <ExternalLink className="h-3 w-3" /> Open payment page
                    </a>
                  )}
                </>
              )}
            </div>
          )}
        </div>

        <Separator />

        {/* Verify */}
        <div className="space-y-3">
          <h3 className="font-semibold text-sm flex items-center gap-2">
            <CheckCircle className="h-4 w-4 text-green-500" /> Verify Payment
          </h3>
          <div className="flex gap-2">
            <Input
              value={verifyRef}
              onChange={(e) => setVerifyRef(e.target.value)}
              placeholder="Paste reference here…"
              className="h-8 text-sm"
            />
            <Button onClick={handleVerify} disabled={verifyLoading || !verifyRef} size="sm" variant="outline" className="gap-2 shrink-0">
              {verifyLoading ? <RefreshCw className="h-3 w-3 animate-spin" /> : <CheckCircle className="h-3 w-3" />}
              Verify
            </Button>
          </div>

          {verifyResult && (
            <div className={`p-3 rounded-lg border text-xs font-mono ${verifyResult.error ? "bg-red-500/10 border-red-500/20" : verifyResult.data?.status === "success" ? "bg-green-500/10 border-green-500/20" : "bg-yellow-500/10 border-yellow-500/20"}`}>
              {verifyResult.error ? (
                <p className="text-red-600">{verifyResult.error}</p>
              ) : (
                <div className="space-y-1">
                  {[
                    ["Mode", verifyResult._mode],
                    ["Status", verifyResult.data?.status],
                    ["Amount", verifyResult.data?.amount ? `${(verifyResult.data.amount / 100).toFixed(2)} ${verifyResult.data.currency}` : "—"],
                    ["Reference", verifyResult.data?.reference],
                    ["Paid at", verifyResult.data?.paid_at ? new Date(verifyResult.data.paid_at).toLocaleString() : "—"],
                    ["Customer", verifyResult.data?.customer?.email],
                  ].map(([k, v]) => (
                    <div key={k} className="flex items-center justify-between">
                      <span className="text-muted-foreground">{k}:</span>
                      <span className={k === "Status" && v === "success" ? "text-green-600 font-bold" : k === "Status" && v !== "success" ? "text-yellow-600 font-bold" : ""}>{v ?? "—"}</span>
                    </div>
                  ))}
                </div>
              )}
            </div>
          )}
        </div>
      </CardContent>
    </Card>
  );
}

// ── General Settings ──────────────────────────────────────────────────────────
function GeneralSettingsCard() {
  const platformName = useSetting("platform_name");
  const supportEmail = useSetting("support_email");
  const bookingFee   = useSetting("booking_fee_percent");

  const [localName,  setLocalName]  = useState("");
  const [localEmail, setLocalEmail] = useState("");
  const [localFee,   setLocalFee]   = useState("");

  useEffect(() => {
    if (platformName.value !== undefined) setLocalName(platformName.value);
    if (supportEmail.value !== undefined) setLocalEmail(supportEmail.value);
    if (bookingFee.value   !== undefined) setLocalFee(bookingFee.value);
  }, [platformName.value, supportEmail.value, bookingFee.value]);

  if (platformName.isError) return <SettingsTableMissingBanner />;

  const saving = platformName.isPending || supportEmail.isPending || bookingFee.isPending;

  const handleSave = () => {
    platformName.update(localName);
    supportEmail.update(localEmail);
    bookingFee.update(localFee);
    toast.success("Settings saved");
  };

  return (
    <Card>
      <CardHeader>
        <CardTitle className="flex items-center gap-2">
          <Settings className="h-5 w-5" />
          General Settings
        </CardTitle>
      </CardHeader>
      <CardContent className="space-y-4">
        <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
          <div className="space-y-2">
            <Label>Platform Name</Label>
            <Input value={localName} onChange={(e) => setLocalName(e.target.value)} placeholder="A-Play" />
          </div>
          <div className="space-y-2">
            <Label>Support Email</Label>
            <Input type="email" value={localEmail} onChange={(e) => setLocalEmail(e.target.value)} placeholder="support@aplay.com" />
          </div>
          <div className="space-y-2">
            <Label>Booking Fee (%)</Label>
            <Input type="number" min="0" max="100" step="0.1" value={localFee} onChange={(e) => setLocalFee(e.target.value)} placeholder="0" />
            <p className="text-xs text-muted-foreground">Extra % added on top of the zone price at checkout. 0 = no fee.</p>
          </div>
        </div>
        <Button onClick={handleSave} disabled={saving} size="sm">
          {saving ? "Saving…" : "Save Changes"}
        </Button>
      </CardContent>
    </Card>
  );
}

// ── Edge Function Status ──────────────────────────────────────────────────────
type FnStatus = "idle" | "checking" | "ok" | "error";

function FunctionRow({ name, label, env }: { name: string; label: string; env: string }) {
  const [status, setStatus] = useState<FnStatus>("idle");
  const [detail, setDetail] = useState("");

  const ping = async () => {
    setStatus("checking");
    setDetail("");
    try {
      const { error } = await supabase.functions.invoke(name, {
        body: { action: "__ping__" },
      });
      // Any response (even 400 "unknown action") means the function is reachable
      if (!error || error.message.toLowerCase().includes("non-2xx") || error.message.toLowerCase().includes("unknown")) {
        setStatus("ok");
        setDetail("Reachable ✓");
      } else {
        setStatus("error");
        setDetail(error.message);
      }
    } catch (err: any) {
      setStatus("error");
      setDetail(err.message || "Unreachable");
    }
  };

  return (
    <div className="space-y-1">
      <div className="flex items-center justify-between p-3 bg-muted/50 rounded-lg">
        <div>
          <div className="flex items-center gap-2">
            <p className="font-medium text-sm font-mono">{name}</p>
            <Badge variant="outline" className="text-xs">{label}</Badge>
          </div>
          <p className="text-xs text-muted-foreground mt-0.5">Env secret: <code>{env}</code></p>
        </div>
        <div className="flex items-center gap-2">
          {status === "ok"       && <CheckCircle className="h-5 w-5 text-green-500" />}
          {status === "error"    && <XCircle     className="h-5 w-5 text-red-500" />}
          {status === "idle"     && <Info        className="h-5 w-5 text-muted-foreground" />}
          {status === "checking" && <RefreshCw   className="h-5 w-5 text-primary animate-spin" />}
          <Button size="sm" variant="outline" onClick={ping} disabled={status === "checking"}>
            {status === "checking" ? "Checking…" : "Ping"}
          </Button>
        </div>
      </div>
      {detail && (
        <p className={`text-xs px-3 ${status === "error" ? "text-red-600" : "text-green-600"}`}>{detail}</p>
      )}
    </div>
  );
}

function EdgeFunctionStatusCard() {
  return (
    <Card>
      <CardHeader>
        <CardTitle className="flex items-center gap-2">
          <Server className="h-5 w-5 text-purple-500" />
          Edge Functions
        </CardTitle>
        <CardDescription>
          Ping your deployed Supabase edge functions to confirm they are reachable.
          Functions are managed directly in the Supabase dashboard.
        </CardDescription>
      </CardHeader>
      <CardContent className="space-y-3">
        <FunctionRow name="testpay"  label="🟡 TEST"  env="PAYSTACK_TEST_SECRET_KEY" />
        <FunctionRow name="paystack" label="🟢 LIVE"  env="PAYSTACK_LIVE_SECRET_KEY" />

        <div className="text-xs text-muted-foreground border-t pt-3 space-y-1">
          <p className="font-medium">All 7 deployed functions on this project:</p>
          {["apple-webhook","get-subscription-status","paystack","send-welcome-email","testpay","verify-apple-receipt","verify-apple-sub"].map((fn) => (
            <div key={fn} className="flex items-center gap-2">
              <span className="w-2 h-2 rounded-full bg-green-500 inline-block" />
              <code>{fn}</code>
            </div>
          ))}
        </div>
      </CardContent>
    </Card>
  );
}

// ── Main ──────────────────────────────────────────────────────────────────────
export function SettingsView() {
  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-3xl font-bold">Settings</h1>
        <p className="text-muted-foreground">Platform configuration, payment settings, and integrations</p>
      </div>

      <Tabs defaultValue="payments">
        <TabsList className="grid w-full grid-cols-3">
          <TabsTrigger value="payments">💳 Payments</TabsTrigger>
          <TabsTrigger value="general">⚙️ General</TabsTrigger>
          <TabsTrigger value="functions">🚀 Edge Functions</TabsTrigger>
        </TabsList>

        <TabsContent value="payments" className="space-y-6 pt-4">
          <PaystackModeCard />
          <PaystackTestPanel />
        </TabsContent>

        <TabsContent value="general" className="pt-4">
          <GeneralSettingsCard />
        </TabsContent>

        <TabsContent value="functions" className="pt-4">
          <EdgeFunctionStatusCard />
        </TabsContent>
      </Tabs>
    </div>
  );
}
