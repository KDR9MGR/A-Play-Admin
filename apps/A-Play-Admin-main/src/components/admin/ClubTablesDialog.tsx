import { useState } from "react";
import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import { supabase } from "@/integrations/supabase/client";
import {
  Dialog, DialogContent, DialogHeader, DialogTitle, DialogTrigger,
} from "@/components/ui/dialog";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Badge } from "@/components/ui/badge";
import { Switch } from "@/components/ui/switch";
import {
  Table, TableBody, TableCell, TableHead, TableHeader, TableRow,
} from "@/components/ui/table";
import {
  AlertDialog, AlertDialogAction, AlertDialogCancel, AlertDialogContent,
  AlertDialogDescription, AlertDialogFooter, AlertDialogHeader, AlertDialogTitle,
  AlertDialogTrigger,
} from "@/components/ui/alert-dialog";
import { Card, CardContent } from "@/components/ui/card";
import { LayoutGrid, Plus, Edit, Trash2, CheckCircle, XCircle, Loader2, X } from "lucide-react";
import { toast } from "sonner";

interface ClubTable {
  id: string;
  club_id: string;
  name: string;
  capacity: number;
  price_per_hour: number;
  location: string | null;
  is_available: boolean;
}

const EMPTY_FORM = { name: "", capacity: "", price_per_hour: "", location: "", is_available: true };

interface ClubTablesDialogProps {
  club: { id: string; name: string };
  children: React.ReactNode;
}

export function ClubTablesDialog({ club, children }: ClubTablesDialogProps) {
  const [open, setOpen] = useState(false);
  const [formOpen, setFormOpen] = useState(false);
  const [editingTable, setEditingTable] = useState<ClubTable | null>(null);
  const [form, setForm] = useState(EMPTY_FORM);
  const queryClient = useQueryClient();

  const qKey = ["club-tables", club.id];

  const { data: tables = [], isLoading } = useQuery({
    queryKey: qKey,
    enabled: open,
    queryFn: async () => {
      const { data, error } = await supabase
        .from("club_tables")
        .select("*")
        .eq("club_id", club.id)
        .order("name");
      if (error) throw error;
      return data as ClubTable[];
    },
  });

  const saveMutation = useMutation({
    mutationFn: async () => {
      const payload = {
        club_id: club.id,
        name: form.name.trim(),
        capacity: parseInt(form.capacity),
        price_per_hour: parseFloat(form.price_per_hour),
        location: form.location.trim() || null,
        is_available: form.is_available,
      };
      if (editingTable) {
        const { error } = await supabase.from("club_tables").update(payload).eq("id", editingTable.id);
        if (error) throw error;
      } else {
        const { error } = await supabase.from("club_tables").insert([payload]);
        if (error) throw error;
      }
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: qKey });
      queryClient.invalidateQueries({ queryKey: ["admin-clubs"] });
      toast.success(editingTable ? "Table updated" : "Table added");
      closeForm();
    },
    onError: (e: any) => toast.error(e.message || "Failed to save table"),
  });

  const deleteMutation = useMutation({
    mutationFn: async (id: string) => {
      const { error } = await supabase.from("club_tables").delete().eq("id", id);
      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: qKey });
      queryClient.invalidateQueries({ queryKey: ["admin-clubs"] });
      toast.success("Table deleted");
    },
    onError: (e: any) => toast.error(e.message || "Failed to delete table"),
  });

  const toggleAvailability = useMutation({
    mutationFn: async ({ id, value }: { id: string; value: boolean }) => {
      const { error } = await supabase.from("club_tables").update({ is_available: value }).eq("id", id);
      if (error) throw error;
    },
    onSuccess: () => queryClient.invalidateQueries({ queryKey: qKey }),
    onError: (e: any) => toast.error(e.message || "Failed to update availability"),
  });

  function openAdd() {
    setEditingTable(null);
    setForm(EMPTY_FORM);
    setFormOpen(true);
  }

  function openEdit(t: ClubTable) {
    setEditingTable(t);
    setForm({
      name: t.name,
      capacity: String(t.capacity),
      price_per_hour: String(t.price_per_hour),
      location: t.location ?? "",
      is_available: t.is_available,
    });
    setFormOpen(true);
  }

  function closeForm() {
    setFormOpen(false);
    setEditingTable(null);
    setForm(EMPTY_FORM);
  }

  function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (!form.name.trim()) { toast.error("Table name is required"); return; }
    if (!form.capacity || parseInt(form.capacity) <= 0) { toast.error("Capacity must be > 0"); return; }
    if (!form.price_per_hour || parseFloat(form.price_per_hour) < 0) { toast.error("Price must be ≥ 0"); return; }
    saveMutation.mutate();
  }

  const totalCapacity = tables.reduce((s, t) => s + t.capacity, 0);
  const available = tables.filter(t => t.is_available).length;

  return (
    <Dialog open={open} onOpenChange={setOpen}>
      <DialogTrigger asChild>{children}</DialogTrigger>
      <DialogContent className="max-w-3xl max-h-[85vh] overflow-y-auto" aria-describedby={undefined}>
        <DialogHeader>
          <DialogTitle className="flex items-center gap-2">
            <LayoutGrid className="h-5 w-5" />
            Tables — {club.name}
          </DialogTitle>
        </DialogHeader>

        {/* Summary */}
        <div className="grid grid-cols-3 gap-3">
          {[
            { label: "Total Tables",    value: tables.length },
            { label: "Total Capacity",  value: `${totalCapacity} seats` },
            { label: "Available",       value: `${available} / ${tables.length}` },
          ].map(({ label, value }) => (
            <Card key={label}>
              <CardContent className="p-3 text-center">
                <p className="text-lg font-bold text-primary">{value}</p>
                <p className="text-xs text-muted-foreground">{label}</p>
              </CardContent>
            </Card>
          ))}
        </div>

        {/* Add form (inline) */}
        {formOpen && (
          <Card className="border-primary/30 bg-primary/5">
            <CardContent className="p-4">
              <div className="flex items-center justify-between mb-3">
                <p className="font-semibold text-sm">{editingTable ? "Edit Table" : "Add New Table"}</p>
                <Button variant="ghost" size="sm" className="h-7 w-7 p-0" onClick={closeForm}>
                  <X className="h-4 w-4" />
                </Button>
              </div>
              <form onSubmit={handleSubmit} className="grid grid-cols-2 gap-3">
                <div className="space-y-1">
                  <Label className="text-xs">Table Name *</Label>
                  <Input value={form.name} onChange={e => setForm(p => ({ ...p, name: e.target.value }))} placeholder="e.g. VIP Table 1" className="h-8 text-sm" />
                </div>
                <div className="space-y-1">
                  <Label className="text-xs">Location</Label>
                  <Input value={form.location} onChange={e => setForm(p => ({ ...p, location: e.target.value }))} placeholder="e.g. VIP Area, Main Floor" className="h-8 text-sm" />
                </div>
                <div className="space-y-1">
                  <Label className="text-xs">Capacity (seats) *</Label>
                  <Input type="number" min="1" value={form.capacity} onChange={e => setForm(p => ({ ...p, capacity: e.target.value }))} placeholder="4" className="h-8 text-sm" />
                </div>
                <div className="space-y-1">
                  <Label className="text-xs">Price per Hour (₵) *</Label>
                  <Input type="number" min="0" step="0.01" value={form.price_per_hour} onChange={e => setForm(p => ({ ...p, price_per_hour: e.target.value }))} placeholder="0.00" className="h-8 text-sm" />
                </div>
                <div className="col-span-2 flex items-center justify-between">
                  <div className="flex items-center gap-2">
                    <Switch
                      checked={form.is_available}
                      onCheckedChange={v => setForm(p => ({ ...p, is_available: v }))}
                    />
                    <Label className="text-xs">Available for booking</Label>
                  </div>
                  <div className="flex gap-2">
                    <Button type="button" variant="outline" size="sm" onClick={closeForm}>Cancel</Button>
                    <Button type="submit" size="sm" disabled={saveMutation.isPending}>
                      {saveMutation.isPending ? <Loader2 className="h-3 w-3 animate-spin mr-1" /> : null}
                      {editingTable ? "Save Changes" : "Add Table"}
                    </Button>
                  </div>
                </div>
              </form>
            </CardContent>
          </Card>
        )}

        {/* Tables list */}
        <div className="flex items-center justify-between">
          <p className="text-sm font-medium">{tables.length} table{tables.length !== 1 ? "s" : ""}</p>
          {!formOpen && (
            <Button size="sm" className="gap-1" onClick={openAdd}>
              <Plus className="h-4 w-4" /> Add Table
            </Button>
          )}
        </div>

        {isLoading ? (
          <div className="space-y-2">
            {[...Array(3)].map((_, i) => <div key={i} className="h-12 bg-muted rounded animate-pulse" />)}
          </div>
        ) : tables.length === 0 ? (
          <div className="text-center py-8 text-muted-foreground">
            <LayoutGrid className="h-8 w-8 mx-auto mb-2 opacity-40" />
            <p className="text-sm">No tables yet. Add one to get started.</p>
          </div>
        ) : (
          <Table>
            <TableHeader>
              <TableRow>
                <TableHead>Name</TableHead>
                <TableHead>Location</TableHead>
                <TableHead>Capacity</TableHead>
                <TableHead>Price/hr</TableHead>
                <TableHead>Available</TableHead>
                <TableHead className="text-right">Actions</TableHead>
              </TableRow>
            </TableHeader>
            <TableBody>
              {tables.map(t => (
                <TableRow key={t.id}>
                  <TableCell className="font-medium">{t.name}</TableCell>
                  <TableCell className="text-muted-foreground text-sm">{t.location || "—"}</TableCell>
                  <TableCell>{t.capacity} seats</TableCell>
                  <TableCell>₵{t.price_per_hour.toFixed(2)}</TableCell>
                  <TableCell>
                    <div className="flex items-center gap-2">
                      <Switch
                        checked={t.is_available}
                        onCheckedChange={v => toggleAvailability.mutate({ id: t.id, value: v })}
                        disabled={toggleAvailability.isPending}
                      />
                      <Badge className={t.is_available
                        ? "bg-green-500/10 text-green-700 border-green-500/20 text-xs"
                        : "bg-red-500/10 text-red-700 border-red-500/20 text-xs"}>
                        {t.is_available ? "Available" : "Unavailable"}
                      </Badge>
                    </div>
                  </TableCell>
                  <TableCell className="text-right">
                    <div className="flex gap-1 justify-end">
                      <Button variant="ghost" size="sm" className="h-8 w-8 p-0" onClick={() => openEdit(t)}>
                        <Edit className="h-4 w-4" />
                      </Button>
                      <AlertDialog>
                        <AlertDialogTrigger asChild>
                          <Button variant="ghost" size="sm" className="h-8 w-8 p-0 text-destructive hover:text-destructive">
                            <Trash2 className="h-4 w-4" />
                          </Button>
                        </AlertDialogTrigger>
                        <AlertDialogContent>
                          <AlertDialogHeader>
                            <AlertDialogTitle>Delete Table</AlertDialogTitle>
                            <AlertDialogDescription>
                              Delete <strong>{t.name}</strong>? Any existing bookings for this table will be affected.
                            </AlertDialogDescription>
                          </AlertDialogHeader>
                          <AlertDialogFooter>
                            <AlertDialogCancel>Cancel</AlertDialogCancel>
                            <AlertDialogAction
                              onClick={() => deleteMutation.mutate(t.id)}
                              className="bg-destructive hover:bg-destructive/90"
                            >
                              Delete
                            </AlertDialogAction>
                          </AlertDialogFooter>
                        </AlertDialogContent>
                      </AlertDialog>
                    </div>
                  </TableCell>
                </TableRow>
              ))}
            </TableBody>
          </Table>
        )}
      </DialogContent>
    </Dialog>
  );
}
