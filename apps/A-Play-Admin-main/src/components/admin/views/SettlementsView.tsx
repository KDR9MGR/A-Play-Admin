import { useMemo, useState } from "react";
import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import { supabase } from "@/integrations/supabase/client";
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { Label } from "@/components/ui/label";
import { Input } from "@/components/ui/input";
import { Alert, AlertDescription, AlertTitle } from "@/components/ui/alert";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import {
  Dialog,
  DialogContent,
  DialogHeader,
  DialogTitle,
  DialogDescription,
  DialogFooter,
} from "@/components/ui/dialog";
import { toast } from "sonner";
import { Receipt, Info, CheckCircle2, Clock } from "lucide-react";
import { format } from "date-fns";
import type { Tables } from "@/integrations/supabase/types";

type AffiliateRow = Tables<"affiliates">;
type SettlementRow = Tables<"affiliate_settlements"> & {
  affiliates: { business_name: string } | null;
};

type PendingSummary = {
  affiliate: AffiliateRow;
  pendingPoints: number;
  pendingValue: number;
};

export function SettlementsView() {
  const queryClient = useQueryClient();
  const [payingSettlement, setPayingSettlement] = useState<SettlementRow | null>(null);
  const [payoutReference, setPayoutReference] = useState("");

  const { data: pendingSummaries, isLoading: isPendingLoading } = useQuery({
    queryKey: ["admin-settlements-pending"],
    queryFn: async (): Promise<PendingSummary[]> => {
      const { data: affiliates, error: affiliatesError } = await supabase
        .from("affiliates")
        .select("*")
        .order("business_name", { ascending: true });
      if (affiliatesError) throw affiliatesError;

      const { data: pending, error: pendingError } = await supabase
        .from("point_redemptions")
        .select("affiliate_id, points_spent, reward_value")
        .eq("status", "pending")
        .eq("reward_type", "affiliate")
        .is("settlement_id", null)
        .not("affiliate_id", "is", null);
      if (pendingError) throw pendingError;

      const totals = new Map<string, { points: number; value: number }>();
      for (const row of pending ?? []) {
        const key = row.affiliate_id as string;
        const existing = totals.get(key) ?? { points: 0, value: 0 };
        existing.points += row.points_spent ?? 0;
        existing.value += Number(row.reward_value ?? 0);
        totals.set(key, existing);
      }

      return ((affiliates ?? []) as AffiliateRow[])
        .map((affiliate) => {
          const totalsForAffiliate = totals.get(affiliate.id);
          return {
            affiliate,
            pendingPoints: totalsForAffiliate?.points ?? 0,
            pendingValue: totalsForAffiliate?.value ?? 0,
          };
        })
        .filter((summary) => summary.pendingPoints > 0);
    },
  });

  const { data: settlements, isLoading: isSettlementsLoading } = useQuery({
    queryKey: ["admin-settlements-list"],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("affiliate_settlements")
        .select("*, affiliates(business_name)")
        .order("created_at", { ascending: false });
      if (error) throw error;
      return (data ?? []) as unknown as SettlementRow[];
    },
  });

  const createSettlementMutation = useMutation({
    mutationFn: async (affiliateId: string) => {
      const { data, error } = await supabase.rpc("create_affiliate_settlement", {
        p_affiliate_id: affiliateId,
      });
      if (error) throw error;
      return data;
    },
    onSuccess: (data) => {
      queryClient.invalidateQueries({ queryKey: ["admin-settlements-pending"] });
      queryClient.invalidateQueries({ queryKey: ["admin-settlements-list"] });
      toast.success(
        `Settlement created: ${data?.total_points ?? ""} points / GHS ${data?.total_value_ghs ?? ""}`
      );
    },
    onError: (error: any) => {
      toast.error(error?.message || "Failed to create settlement");
    },
  });

  const markPaidMutation = useMutation({
    mutationFn: async ({ settlementId, reference }: { settlementId: string; reference: string }) => {
      const { error } = await supabase.rpc("mark_settlement_paid", {
        p_settlement_id: settlementId,
        p_payout_reference: reference,
      });
      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["admin-settlements-list"] });
      toast.success("Settlement marked as paid");
      setPayingSettlement(null);
      setPayoutReference("");
    },
    onError: (error: any) => {
      toast.error(error?.message || "Failed to mark settlement as paid");
    },
  });

  const openMarkPaid = (settlement: SettlementRow) => {
    setPayingSettlement(settlement);
    setPayoutReference("");
  };

  const confirmMarkPaid = () => {
    if (!payingSettlement) return;
    if (!payoutReference.trim()) {
      toast.error("Enter a short note about how this was paid (e.g. bank/MoMo reference)");
      return;
    }
    markPaidMutation.mutate({ settlementId: payingSettlement.id, reference: payoutReference.trim() });
  };

  const totalPendingAcrossAffiliates = useMemo(
    () => (pendingSummaries ?? []).reduce((sum, s) => sum + s.pendingValue, 0),
    [pendingSummaries]
  );

  return (
    <div className="space-y-6">
      <div>
        <h2 className="text-2xl sm:text-3xl font-bold tracking-tight flex items-center gap-2">
          <Receipt className="h-6 w-6 sm:h-8 sm:w-8" />
          Settlements
        </h2>
        <p className="text-muted-foreground mt-1">
          Bundle pending affiliate redemptions and track what's been paid out
        </p>
      </div>

      <Alert>
        <Info className="h-4 w-4" />
        <AlertTitle>This does not move any money</AlertTitle>
        <AlertDescription>
          "Create Settlement" only bundles redemptions into a record of what's owed. "Mark as Paid" only
          records that you already paid the affiliate yourself outside of this app (bank transfer, MoMo, cash,
          etc). Neither action sends any funds — all real payouts happen manually, outside A-Play.
        </AlertDescription>
      </Alert>

      {/* Pending by affiliate */}
      <Card>
        <CardHeader>
          <CardTitle>Pending Redemptions by Affiliate</CardTitle>
          <CardDescription>
            {pendingSummaries && pendingSummaries.length > 0
              ? `${pendingSummaries.length} affiliate(s) with unsettled redemptions totaling GHS ${totalPendingAcrossAffiliates.toFixed(2)}`
              : "No affiliates currently have pending redemptions"}
          </CardDescription>
        </CardHeader>
        <CardContent className="p-0">
          <Table>
            <TableHeader>
              <TableRow>
                <TableHead>Affiliate</TableHead>
                <TableHead>Pending Points</TableHead>
                <TableHead>Pending Value (GHS)</TableHead>
                <TableHead className="text-right">Action</TableHead>
              </TableRow>
            </TableHeader>
            <TableBody>
              {isPendingLoading ? (
                <TableRow>
                  <TableCell colSpan={4} className="text-center py-10">
                    Loading pending redemptions...
                  </TableCell>
                </TableRow>
              ) : !pendingSummaries || pendingSummaries.length === 0 ? (
                <TableRow>
                  <TableCell colSpan={4} className="text-center py-10 text-muted-foreground">
                    Nothing pending settlement right now
                  </TableCell>
                </TableRow>
              ) : (
                pendingSummaries.map(({ affiliate, pendingPoints, pendingValue }) => (
                  <TableRow key={affiliate.id}>
                    <TableCell className="font-medium">{affiliate.business_name}</TableCell>
                    <TableCell>{pendingPoints.toLocaleString()}</TableCell>
                    <TableCell>GHS {pendingValue.toFixed(2)}</TableCell>
                    <TableCell className="text-right">
                      <Button
                        size="sm"
                        onClick={() => createSettlementMutation.mutate(affiliate.id)}
                        disabled={createSettlementMutation.isPending}
                      >
                        Create Settlement
                      </Button>
                    </TableCell>
                  </TableRow>
                ))
              )}
            </TableBody>
          </Table>
        </CardContent>
      </Card>

      {/* Settlement history */}
      <Card>
        <CardHeader>
          <CardTitle>Settlement History</CardTitle>
          <CardDescription>All settlements ever created, and their payout status</CardDescription>
        </CardHeader>
        <CardContent className="p-0">
          <Table>
            <TableHeader>
              <TableRow>
                <TableHead>Affiliate</TableHead>
                <TableHead>Points</TableHead>
                <TableHead>Value (GHS)</TableHead>
                <TableHead>Status</TableHead>
                <TableHead>Created</TableHead>
                <TableHead>Paid At</TableHead>
                <TableHead className="text-right">Action</TableHead>
              </TableRow>
            </TableHeader>
            <TableBody>
              {isSettlementsLoading ? (
                <TableRow>
                  <TableCell colSpan={7} className="text-center py-10">
                    Loading settlements...
                  </TableCell>
                </TableRow>
              ) : !settlements || settlements.length === 0 ? (
                <TableRow>
                  <TableCell colSpan={7} className="text-center py-10 text-muted-foreground">
                    No settlements created yet
                  </TableCell>
                </TableRow>
              ) : (
                settlements.map((settlement) => (
                  <TableRow key={settlement.id}>
                    <TableCell className="font-medium">
                      {settlement.affiliates?.business_name ?? "—"}
                    </TableCell>
                    <TableCell>{settlement.total_points.toLocaleString()}</TableCell>
                    <TableCell>GHS {Number(settlement.total_value_ghs).toFixed(2)}</TableCell>
                    <TableCell>
                      {settlement.status === "paid" ? (
                        <Badge className="bg-green-500 hover:bg-green-600 gap-1">
                          <CheckCircle2 className="h-3 w-3" />
                          Paid
                        </Badge>
                      ) : (
                        <Badge variant="secondary" className="gap-1">
                          <Clock className="h-3 w-3" />
                          Pending
                        </Badge>
                      )}
                    </TableCell>
                    <TableCell className="text-sm text-muted-foreground">
                      {settlement.created_at ? format(new Date(settlement.created_at), "MMM dd, yyyy") : "—"}
                    </TableCell>
                    <TableCell className="text-sm text-muted-foreground">
                      {settlement.paid_at ? format(new Date(settlement.paid_at), "MMM dd, yyyy") : "—"}
                    </TableCell>
                    <TableCell className="text-right">
                      {settlement.status !== "paid" ? (
                        <Button size="sm" variant="outline" onClick={() => openMarkPaid(settlement)}>
                          Mark as Paid
                        </Button>
                      ) : settlement.payout_reference ? (
                        <span className="text-xs text-muted-foreground" title={settlement.payout_reference}>
                          {settlement.payout_reference}
                        </span>
                      ) : null}
                    </TableCell>
                  </TableRow>
                ))
              )}
            </TableBody>
          </Table>
        </CardContent>
      </Card>

      <Dialog open={!!payingSettlement} onOpenChange={(open) => !open && setPayingSettlement(null)}>
        <DialogContent>
          <DialogHeader>
            <DialogTitle>Mark Settlement as Paid</DialogTitle>
            <DialogDescription>
              {payingSettlement?.affiliates?.business_name} — {payingSettlement?.total_points.toLocaleString()}{" "}
              points / GHS {payingSettlement ? Number(payingSettlement.total_value_ghs).toFixed(2) : ""}
            </DialogDescription>
          </DialogHeader>
          <Alert>
            <Info className="h-4 w-4" />
            <AlertDescription>
              This only records that you already paid the affiliate manually (bank transfer, MoMo, cash). It
              does not send any money itself.
            </AlertDescription>
          </Alert>
          <div className="space-y-2">
            <Label htmlFor="payout_reference">Payout reference *</Label>
            <Input
              id="payout_reference"
              value={payoutReference}
              onChange={(e) => setPayoutReference(e.target.value)}
              placeholder="e.g. MoMo txn ID, bank transfer reference"
            />
          </div>
          <DialogFooter>
            <Button variant="outline" onClick={() => setPayingSettlement(null)}>
              Cancel
            </Button>
            <Button onClick={confirmMarkPaid} disabled={markPaidMutation.isPending}>
              Confirm Paid
            </Button>
          </DialogFooter>
        </DialogContent>
      </Dialog>
    </div>
  );
}
