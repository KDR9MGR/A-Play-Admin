import { useMemo, useState } from "react";
import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import { supabase } from "@/integrations/supabase/client";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Textarea } from "@/components/ui/textarea";
import { Switch } from "@/components/ui/switch";
import { Badge } from "@/components/ui/badge";
import {
  Table,
  TableBody,
  TableCell,
  TableHead,
  TableHeader,
  TableRow,
} from "@/components/ui/table";
import {
  Select,
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { toast } from "sonner";
import { Plus, Search, Store, X, Save } from "lucide-react";
import type { Tables } from "@/integrations/supabase/types";

type AffiliateRow = Tables<"affiliates">;

const emptyDraft = {
  id: undefined as string | undefined,
  business_name: "",
  category: "",
  contact_name: "",
  contact_phone: "",
  contact_email: "",
  address: "",
  point_value_ghs: "",
  notes: "",
  is_active: true,
};

export function AffiliatesView() {
  const queryClient = useQueryClient();
  const [searchTerm, setSearchTerm] = useState("");
  const [statusFilter, setStatusFilter] = useState<string>("all");
  const [currentPage, setCurrentPage] = useState(0);
  const [pageSize, setPageSize] = useState(20);
  const [isFormOpen, setIsFormOpen] = useState(false);
  const [editingAffiliate, setEditingAffiliate] = useState<AffiliateRow | null>(null);
  const [draft, setDraft] = useState(emptyDraft);

  const { data: affiliatesData, isLoading } = useQuery({
    queryKey: ["admin-affiliates", searchTerm, statusFilter, currentPage, pageSize],
    queryFn: async () => {
      let query = supabase
        .from("affiliates")
        .select("*", { count: "exact" })
        .order("business_name", { ascending: true })
        .range(currentPage * pageSize, (currentPage + 1) * pageSize - 1);

      if (searchTerm.trim()) {
        const term = searchTerm.trim();
        query = query.or(
          `business_name.ilike.%${term}%,category.ilike.%${term}%,contact_name.ilike.%${term}%,contact_email.ilike.%${term}%`
        );
      }

      if (statusFilter === "active") query = query.eq("is_active", true);
      if (statusFilter === "inactive") query = query.eq("is_active", false);

      const { data, error, count } = await query;
      if (error) throw error;
      return { data: (data ?? []) as AffiliateRow[], count: count ?? 0 };
    },
  });

  const totalPages = useMemo(() => {
    const count = affiliatesData?.count ?? 0;
    return Math.max(1, Math.ceil(count / pageSize));
  }, [affiliatesData?.count, pageSize]);

  const closeForm = () => {
    setIsFormOpen(false);
    setEditingAffiliate(null);
    setDraft(emptyDraft);
  };

  const openCreate = () => {
    setDraft(emptyDraft);
    setEditingAffiliate(null);
    setIsFormOpen(true);
  };

  const openEdit = (affiliate: AffiliateRow) => {
    setDraft({
      id: affiliate.id,
      business_name: affiliate.business_name ?? "",
      category: affiliate.category ?? "",
      contact_name: affiliate.contact_name ?? "",
      contact_phone: affiliate.contact_phone ?? "",
      contact_email: affiliate.contact_email ?? "",
      address: affiliate.address ?? "",
      point_value_ghs: affiliate.point_value_ghs === null ? "" : String(affiliate.point_value_ghs),
      notes: affiliate.notes ?? "",
      is_active: affiliate.is_active !== false,
    });
    setEditingAffiliate(affiliate);
    setIsFormOpen(true);
  };

  const upsertMutation = useMutation({
    mutationFn: async () => {
      const businessName = draft.business_name.trim();
      if (!businessName) throw new Error("Business name is required");

      let pointValue: number | null = null;
      if (draft.point_value_ghs.trim()) {
        pointValue = Number(draft.point_value_ghs);
        if (Number.isNaN(pointValue) || pointValue < 0) {
          throw new Error("Point value must be a valid non-negative number");
        }
      }

      const payload = {
        business_name: businessName,
        category: draft.category.trim() || null,
        contact_name: draft.contact_name.trim() || null,
        contact_phone: draft.contact_phone.trim() || null,
        contact_email: draft.contact_email.trim() || null,
        address: draft.address.trim() || null,
        point_value_ghs: pointValue,
        notes: draft.notes.trim() || null,
        is_active: draft.is_active,
        updated_at: new Date().toISOString(),
      };

      if (editingAffiliate?.id) {
        const { data, error } = await supabase
          .from("affiliates")
          .update(payload)
          .eq("id", editingAffiliate.id)
          .select()
          .single();
        if (error) throw error;
        return data as AffiliateRow;
      }

      const { data: { user } } = await supabase.auth.getUser();
      const { data, error } = await supabase
        .from("affiliates")
        .insert([{ ...payload, created_by: user?.id ?? null }])
        .select()
        .single();
      if (error) throw error;
      return data as AffiliateRow;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["admin-affiliates"] });
      toast.success(editingAffiliate ? "Affiliate updated" : "Affiliate created");
      closeForm();
    },
    onError: (error: any) => {
      toast.error(error?.message || "Failed to save affiliate");
    },
  });

  const toggleActiveMutation = useMutation({
    mutationFn: async ({ id, isActive }: { id: string; isActive: boolean }) => {
      const { error } = await supabase
        .from("affiliates")
        .update({ is_active: !isActive, updated_at: new Date().toISOString() })
        .eq("id", id);
      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["admin-affiliates"] });
      toast.success("Status updated");
    },
    onError: (error: any) => {
      toast.error(error?.message || "Failed to update status");
    },
  });

  return (
    <div className="space-y-6">
      <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-4">
        <div>
          <h2 className="text-2xl sm:text-3xl font-bold tracking-tight flex items-center gap-2">
            <Store className="h-6 w-6 sm:h-8 sm:w-8" />
            Affiliates
          </h2>
          <p className="text-muted-foreground mt-1">
            Manage partner businesses where users can redeem points
          </p>
        </div>
        <Button onClick={openCreate} className="gap-2">
          <Plus className="h-4 w-4" />
          Add Affiliate
        </Button>
      </div>

      <Card>
        <CardHeader>
          <CardTitle>Filters</CardTitle>
        </CardHeader>
        <CardContent>
          <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
            <div className="relative">
              <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 h-4 w-4 text-muted-foreground" />
              <Input
                placeholder="Search affiliates..."
                value={searchTerm}
                onChange={(e) => {
                  setSearchTerm(e.target.value);
                  setCurrentPage(0);
                }}
                className="pl-10"
              />
            </div>
            <Select
              value={statusFilter}
              onValueChange={(value) => {
                setStatusFilter(value);
                setCurrentPage(0);
              }}
            >
              <SelectTrigger>
                <SelectValue placeholder="Status" />
              </SelectTrigger>
              <SelectContent>
                <SelectItem value="all">All Affiliates</SelectItem>
                <SelectItem value="active">Active Only</SelectItem>
                <SelectItem value="inactive">Inactive Only</SelectItem>
              </SelectContent>
            </Select>
            <Select
              value={pageSize.toString()}
              onValueChange={(value) => {
                setPageSize(Number(value));
                setCurrentPage(0);
              }}
            >
              <SelectTrigger>
                <SelectValue />
              </SelectTrigger>
              <SelectContent>
                <SelectItem value="10">10 per page</SelectItem>
                <SelectItem value="20">20 per page</SelectItem>
                <SelectItem value="50">50 per page</SelectItem>
                <SelectItem value="100">100 per page</SelectItem>
              </SelectContent>
            </Select>
          </div>
        </CardContent>
      </Card>

      <Card>
        <CardContent className="p-0">
          <Table>
            <TableHeader>
              <TableRow>
                <TableHead>Business</TableHead>
                <TableHead>Category</TableHead>
                <TableHead>Contact</TableHead>
                <TableHead>Point Value (GHS)</TableHead>
                <TableHead>Status</TableHead>
                <TableHead className="text-right">Actions</TableHead>
              </TableRow>
            </TableHeader>
            <TableBody>
              {isLoading ? (
                <TableRow>
                  <TableCell colSpan={6} className="text-center py-10">
                    Loading affiliates...
                  </TableCell>
                </TableRow>
              ) : affiliatesData?.data?.length === 0 ? (
                <TableRow>
                  <TableCell colSpan={6} className="text-center py-10">
                    No affiliates found
                  </TableCell>
                </TableRow>
              ) : (
                affiliatesData?.data?.map((affiliate) => (
                  <TableRow key={affiliate.id}>
                    <TableCell>
                      <div className="font-medium">{affiliate.business_name}</div>
                      {affiliate.address && (
                        <div className="text-xs text-muted-foreground line-clamp-1">{affiliate.address}</div>
                      )}
                    </TableCell>
                    <TableCell className="text-muted-foreground">{affiliate.category || "—"}</TableCell>
                    <TableCell>
                      <div className="text-sm space-y-0.5">
                        {affiliate.contact_name && <div>{affiliate.contact_name}</div>}
                        {affiliate.contact_phone && (
                          <div className="text-xs text-muted-foreground">{affiliate.contact_phone}</div>
                        )}
                        {affiliate.contact_email && (
                          <div className="text-xs text-muted-foreground">{affiliate.contact_email}</div>
                        )}
                        {!affiliate.contact_name && !affiliate.contact_phone && !affiliate.contact_email && "—"}
                      </div>
                    </TableCell>
                    <TableCell>
                      {affiliate.point_value_ghs !== null ? (
                        <Badge variant="outline">{affiliate.point_value_ghs} (override)</Badge>
                      ) : (
                        <span className="text-muted-foreground text-sm">Uses default</span>
                      )}
                    </TableCell>
                    <TableCell>
                      <Button
                        variant={affiliate.is_active ? "default" : "secondary"}
                        size="sm"
                        onClick={() =>
                          toggleActiveMutation.mutate({ id: affiliate.id, isActive: affiliate.is_active })
                        }
                      >
                        {affiliate.is_active ? "Active" : "Inactive"}
                      </Button>
                    </TableCell>
                    <TableCell className="text-right">
                      <Button size="sm" variant="outline" onClick={() => openEdit(affiliate)}>
                        Edit
                      </Button>
                    </TableCell>
                  </TableRow>
                ))
              )}
            </TableBody>
          </Table>
        </CardContent>
      </Card>

      <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
        <div className="text-sm text-muted-foreground">
          {affiliatesData?.count ? `${affiliatesData.count} total` : "0 total"}
        </div>
        <div className="flex items-center gap-2">
          <Button
            variant="outline"
            disabled={currentPage <= 0}
            onClick={() => setCurrentPage((p) => Math.max(0, p - 1))}
          >
            Previous
          </Button>
          <span className="text-sm">
            Page {currentPage + 1} of {totalPages}
          </span>
          <Button
            variant="outline"
            disabled={currentPage + 1 >= totalPages}
            onClick={() => setCurrentPage((p) => p + 1)}
          >
            Next
          </Button>
        </div>
      </div>

      {isFormOpen ? (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center p-2 sm:p-4 z-50 overflow-y-auto">
          <Card className="w-full max-w-2xl my-8">
            <CardHeader className="flex flex-row items-center justify-between p-4 sm:p-6">
              <CardTitle className="flex items-center gap-2 text-lg sm:text-xl">
                <Store className="h-5 w-5" />
                {editingAffiliate ? "Edit Affiliate" : "Add Affiliate"}
              </CardTitle>
              <Button variant="ghost" size="sm" onClick={closeForm} className="h-8 w-8 sm:h-9 sm:w-9">
                <X className="h-4 w-4" />
              </Button>
            </CardHeader>
            <CardContent className="p-4 sm:p-6 space-y-5">
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div className="space-y-2">
                  <Label htmlFor="business_name">Business Name *</Label>
                  <Input
                    id="business_name"
                    value={draft.business_name}
                    onChange={(e) => setDraft((d) => ({ ...d, business_name: e.target.value }))}
                    placeholder="e.g., Neat Barbershop"
                  />
                </div>
                <div className="space-y-2">
                  <Label htmlFor="category">Category</Label>
                  <Input
                    id="category"
                    value={draft.category}
                    onChange={(e) => setDraft((d) => ({ ...d, category: e.target.value }))}
                    placeholder="e.g., Barbershop, Salon, Retail"
                  />
                </div>
              </div>

              <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
                <div className="space-y-2">
                  <Label htmlFor="contact_name">Contact Name</Label>
                  <Input
                    id="contact_name"
                    value={draft.contact_name}
                    onChange={(e) => setDraft((d) => ({ ...d, contact_name: e.target.value }))}
                    placeholder="Contact person"
                  />
                </div>
                <div className="space-y-2">
                  <Label htmlFor="contact_phone">Contact Phone</Label>
                  <Input
                    id="contact_phone"
                    type="tel"
                    value={draft.contact_phone}
                    onChange={(e) => setDraft((d) => ({ ...d, contact_phone: e.target.value }))}
                    placeholder="+233 123 456 789"
                  />
                </div>
                <div className="space-y-2">
                  <Label htmlFor="contact_email">Contact Email</Label>
                  <Input
                    id="contact_email"
                    type="email"
                    value={draft.contact_email}
                    onChange={(e) => setDraft((d) => ({ ...d, contact_email: e.target.value }))}
                    placeholder="contact@business.com"
                  />
                </div>
              </div>

              <div className="space-y-2">
                <Label htmlFor="address">Address</Label>
                <Input
                  id="address"
                  value={draft.address}
                  onChange={(e) => setDraft((d) => ({ ...d, address: e.target.value }))}
                  placeholder="Street, city"
                />
              </div>

              <div className="space-y-2">
                <Label htmlFor="point_value_ghs">Point Value Override (GHS per point)</Label>
                <Input
                  id="point_value_ghs"
                  type="number"
                  step="0.0001"
                  min="0"
                  value={draft.point_value_ghs}
                  onChange={(e) => setDraft((d) => ({ ...d, point_value_ghs: e.target.value }))}
                  placeholder="Leave blank to use the platform default"
                />
                <p className="text-xs text-muted-foreground">
                  Leave blank to use the platform-wide default rate (set in Points Admin).
                </p>
              </div>

              <div className="space-y-2">
                <Label htmlFor="notes">Notes</Label>
                <Textarea
                  id="notes"
                  value={draft.notes}
                  onChange={(e) => setDraft((d) => ({ ...d, notes: e.target.value }))}
                  placeholder="Internal notes about this affiliate..."
                  rows={3}
                />
              </div>

              <div className="flex items-center justify-between rounded-lg border p-4">
                <div className="space-y-0.5">
                  <div className="text-sm font-medium">Active</div>
                  <div className="text-sm text-muted-foreground">
                    Inactive affiliates can't be redeemed at by users
                  </div>
                </div>
                <Switch
                  checked={draft.is_active}
                  onCheckedChange={(checked) => setDraft((d) => ({ ...d, is_active: checked }))}
                />
              </div>

              <div className="flex flex-col sm:flex-row gap-2 justify-end pt-2">
                <Button variant="outline" onClick={closeForm} disabled={upsertMutation.isPending}>
                  Cancel
                </Button>
                <Button onClick={() => upsertMutation.mutate()} disabled={upsertMutation.isPending} className="gap-2">
                  <Save className="h-4 w-4" />
                  {editingAffiliate ? "Update Affiliate" : "Create Affiliate"}
                </Button>
              </div>
            </CardContent>
          </Card>
        </div>
      ) : null}
    </div>
  );
}
