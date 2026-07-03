import { useState } from "react";
import { useQuery, useMutation, useQueryClient } from "@tanstack/react-query";
import { supabase } from "@/integrations/supabase/client";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Badge } from "@/components/ui/badge";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import {
  Table, TableBody, TableCell, TableHead, TableHeader, TableRow,
} from "@/components/ui/table";
import {
  Select, SelectContent, SelectItem, SelectTrigger, SelectValue,
} from "@/components/ui/select";
import {
  Dialog, DialogContent, DialogHeader, DialogTitle, DialogTrigger,
} from "@/components/ui/dialog";
import {
  ShoppingCart, Search, Eye, ChevronLeft, ChevronRight,
  CheckCircle, XCircle, Clock, Truck, Package, TrendingUp,
  DollarSign, BarChart3, Utensils,
} from "lucide-react";
import { format } from "date-fns";
import { toast } from "sonner";

const ORDER_STATUSES = ["pending", "confirmed", "preparing", "ready", "delivered", "cancelled"] as const;
type OrderStatus = typeof ORDER_STATUSES[number];

const STATUS_CONFIG: Record<OrderStatus, { label: string; color: string }> = {
  pending:   { label: "Pending",   color: "bg-yellow-500/10 text-yellow-600 border-yellow-500/20" },
  confirmed: { label: "Confirmed", color: "bg-blue-500/10 text-blue-600 border-blue-500/20" },
  preparing: { label: "Preparing", color: "bg-orange-500/10 text-orange-600 border-orange-500/20" },
  ready:     { label: "Ready",     color: "bg-green-500/10 text-green-600 border-green-500/20" },
  delivered: { label: "Delivered", color: "bg-teal-500/10 text-teal-600 border-teal-500/20" },
  cancelled: { label: "Cancelled", color: "bg-red-500/10 text-red-600 border-red-500/20" },
};

function StatusIcon({ status }: { status: string }) {
  switch (status) {
    case "pending":   return <Clock className="h-3 w-3" />;
    case "confirmed": return <CheckCircle className="h-3 w-3" />;
    case "preparing": return <Utensils className="h-3 w-3" />;
    case "ready":     return <Package className="h-3 w-3" />;
    case "delivered": return <Truck className="h-3 w-3" />;
    case "cancelled": return <XCircle className="h-3 w-3" />;
    default:          return <Clock className="h-3 w-3" />;
  }
}

function getUserInitials(name: string | null) {
  if (!name) return "U";
  return name.split(" ").map((n) => n[0]).join("").toUpperCase().slice(0, 2);
}

export function OrdersView() {
  const [searchTerm, setSearchTerm] = useState("");
  const [statusFilter, setStatusFilter] = useState("all");
  const [typeFilter, setTypeFilter] = useState("all");
  const [currentPage, setCurrentPage] = useState(1);
  const [pageSize, setPageSize] = useState(10);
  const queryClient = useQueryClient();

  const updateStatusMutation = useMutation({
    mutationFn: async ({ orderId, status }: { orderId: string; status: string }) => {
      const { error } = await supabase.from("orders").update({ status }).eq("id", orderId);
      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["admin-orders"] });
      toast.success("Order status updated");
    },
    onError: (error: any) => {
      toast.error(error.message || "Failed to update order status");
    },
  });

  const { data: ordersData, isLoading, error: queryError } = useQuery({
    queryKey: ["admin-orders", searchTerm, statusFilter, typeFilter, currentPage, pageSize],
    queryFn: async () => {
      // Count with filters
      let countQuery = supabase.from("orders").select("*", { count: "exact", head: true });
      if (statusFilter !== "all") countQuery = countQuery.eq("status", statusFilter);
      if (typeFilter !== "all") countQuery = countQuery.eq("order_type", typeFilter);
      const { count, error: countError } = await countQuery;
      if (countError) throw countError;

      // Paginated orders
      const from = (currentPage - 1) * pageSize;
      const to = from + pageSize - 1;
      let query = supabase
        .from("orders")
        .select("*")
        .order("created_at", { ascending: false })
        .range(from, to);
      if (statusFilter !== "all") query = query.eq("status", statusFilter);
      if (typeFilter !== "all") query = query.eq("order_type", typeFilter);

      const { data: ordersData, error: ordersError } = await query;
      if (ordersError) throw ordersError;
      if (!ordersData) return { orders: [], total: 0, totalPages: 0, stats: nullStats() };

      // User profiles
      const userIds = [...new Set(ordersData.map((o) => o.user_id))];
      const { data: profiles } = await supabase
        .from("profiles")
        .select("id, full_name, avatar_url, phone")
        .in("id", userIds);

      // Order items for displayed orders
      const orderIds = ordersData.map((o) => o.id);
      const { data: items } = await supabase
        .from("order_items")
        .select("*, menu_items(id, name, category, price)")
        .in("order_id", orderIds);

      // Overall stats
      const { data: allOrders } = await supabase
        .from("orders")
        .select("status, total_amount, order_type");

      const total = count || 0;
      const confirmed = allOrders?.filter((o) => o.status === "confirmed").length || 0;
      const delivered = allOrders?.filter((o) => o.status === "delivered").length || 0;
      const pending   = allOrders?.filter((o) => o.status === "pending").length || 0;
      const cancelled = allOrders?.filter((o) => o.status === "cancelled").length || 0;
      const totalRevenue = allOrders
        ?.filter((o) => o.status === "delivered")
        .reduce((s, o) => s + (parseFloat(String(o.total_amount || 0)) || 0), 0) || 0;

      const ordersWithDetails = ordersData.map((order) => ({
        ...order,
        profile: profiles?.find((p) => p.id === order.user_id) || null,
        items: items?.filter((i) => i.order_id === order.id) || [],
      }));

      const filtered = searchTerm
        ? ordersWithDetails.filter(
            (o) =>
              o.profile?.full_name?.toLowerCase().includes(searchTerm.toLowerCase()) ||
              o.id.toLowerCase().includes(searchTerm.toLowerCase())
          )
        : ordersWithDetails;

      return {
        orders: filtered,
        total,
        totalPages: Math.ceil(total / pageSize),
        stats: { total, confirmed, delivered, pending, cancelled, totalRevenue },
      };
    },
    retry: 1,
  });

  function nullStats() {
    return { total: 0, confirmed: 0, delivered: 0, pending: 0, cancelled: 0, totalRevenue: 0 };
  }

  const orders = (ordersData as any)?.orders || [];
  const totalOrders = (ordersData as any)?.total || 0;
  const totalPages = (ordersData as any)?.totalPages || 0;
  const stats = (ordersData as any)?.stats || nullStats();

  if (isLoading) {
    return (
      <div className="space-y-6">
        <h1 className="text-3xl font-bold">Orders Management</h1>
        <div className="space-y-4">
          {[...Array(6)].map((_, i) => (
            <Card key={i} className="animate-pulse">
              <CardContent className="p-6">
                <div className="h-12 bg-muted rounded" />
              </CardContent>
            </Card>
          ))}
        </div>
      </div>
    );
  }

  if (queryError) {
    return (
      <div className="space-y-6">
        <h1 className="text-3xl font-bold">Orders Management</h1>
        <Card className="p-12 text-center border-destructive">
          <ShoppingCart className="h-12 w-12 mx-auto text-destructive mb-4" />
          <h3 className="text-lg font-semibold mb-2 text-destructive">Error Loading Orders</h3>
          <p className="text-muted-foreground mb-4">
            {queryError instanceof Error ? queryError.message : "An unknown error occurred"}
          </p>
          <Button onClick={() => window.location.reload()}>Retry</Button>
        </Card>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      <div className="flex flex-col sm:flex-row gap-4 justify-between items-start sm:items-center">
        <div>
          <h1 className="text-3xl font-bold">Orders Management</h1>
          <p className="text-muted-foreground">Track and manage all customer orders</p>
        </div>
      </div>

      {/* Stats */}
      <div className="grid grid-cols-2 md:grid-cols-6 gap-4">
        {[
          { label: "Total Orders",  value: stats.total,     icon: ShoppingCart,  cls: "" },
          { label: "Pending",       value: stats.pending,   icon: Clock,         cls: "" },
          { label: "Confirmed",     value: stats.confirmed, icon: CheckCircle,   cls: "" },
          { label: "Delivered",     value: stats.delivered, icon: Truck,         cls: "" },
          { label: "Cancelled",     value: stats.cancelled, icon: XCircle,       cls: "" },
          { label: "Revenue (delivered)", value: `₵${stats.totalRevenue.toFixed(2)}`, icon: DollarSign, cls: "bg-primary/10 border-primary/20" },
        ].map(({ label, value, icon: Icon, cls }) => (
          <Card key={label} className={`bg-gradient-to-br from-muted/20 to-muted/30 border-muted/40 hover:border-primary/20 transition-colors ${cls}`}>
            <CardContent className="p-4">
              <div className="flex items-center justify-between">
                <div>
                  <p className="text-sm font-medium text-muted-foreground">{label}</p>
                  <p className="text-2xl font-bold text-foreground">{value}</p>
                </div>
                <Icon className="h-5 w-5 text-muted-foreground" />
              </div>
            </CardContent>
          </Card>
        ))}
      </div>

      {/* Filters */}
      <div className="flex flex-col sm:flex-row gap-4 items-start sm:items-center">
        <div className="relative flex-1 max-w-sm">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-4 w-4 text-muted-foreground" />
          <Input
            placeholder="Search by customer or order ID..."
            value={searchTerm}
            onChange={(e) => { setSearchTerm(e.target.value); setCurrentPage(1); }}
            className="pl-10"
          />
        </div>
        <Select value={statusFilter} onValueChange={(v) => { setStatusFilter(v); setCurrentPage(1); }}>
          <SelectTrigger className="w-36">
            <SelectValue />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="all">All Status</SelectItem>
            {ORDER_STATUSES.map((s) => (
              <SelectItem key={s} value={s}>{STATUS_CONFIG[s].label}</SelectItem>
            ))}
          </SelectContent>
        </Select>
        <Select value={typeFilter} onValueChange={(v) => { setTypeFilter(v); setCurrentPage(1); }}>
          <SelectTrigger className="w-36">
            <SelectValue />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="all">All Types</SelectItem>
            <SelectItem value="dine_in">Dine In</SelectItem>
            <SelectItem value="takeaway">Takeaway</SelectItem>
            <SelectItem value="delivery">Delivery</SelectItem>
          </SelectContent>
        </Select>
        <Select value={pageSize.toString()} onValueChange={(v) => { setPageSize(Number(v)); setCurrentPage(1); }}>
          <SelectTrigger className="w-36">
            <SelectValue />
          </SelectTrigger>
          <SelectContent>
            <SelectItem value="10">10 per page</SelectItem>
            <SelectItem value="20">20 per page</SelectItem>
            <SelectItem value="50">50 per page</SelectItem>
          </SelectContent>
        </Select>
        <Badge variant="secondary">{totalOrders} Orders</Badge>
      </div>

      {/* Orders Table */}
      <Card>
        <div className="overflow-x-auto">
          <Table className="min-w-[800px]">
            <TableHeader>
              <TableRow>
                <TableHead>Customer</TableHead>
                <TableHead>Order ID</TableHead>
                <TableHead>Type</TableHead>
                <TableHead>Items</TableHead>
                <TableHead>Total</TableHead>
                <TableHead>Date</TableHead>
                <TableHead>Status</TableHead>
                <TableHead className="text-right">Actions</TableHead>
              </TableRow>
            </TableHeader>
            <TableBody>
              {orders.map((order: any) => {
                const cfg = STATUS_CONFIG[order.status as OrderStatus] ?? { label: order.status, color: "" };
                return (
                  <TableRow key={order.id} className="hover:bg-muted/50">
                    <TableCell>
                      <div className="flex items-center gap-3">
                        <Avatar className="h-9 w-9">
                          <AvatarImage src={order.profile?.avatar_url || ""} />
                          <AvatarFallback>{getUserInitials(order.profile?.full_name)}</AvatarFallback>
                        </Avatar>
                        <div>
                          <div className="font-medium">{order.profile?.full_name || "Anonymous"}</div>
                          <div className="text-xs text-muted-foreground">{order.profile?.phone || ""}</div>
                        </div>
                      </div>
                    </TableCell>
                    <TableCell>
                      <span className="font-mono text-xs text-muted-foreground">{order.id.slice(0, 8)}…</span>
                    </TableCell>
                    <TableCell>
                      <Badge variant="outline" className="capitalize text-xs">
                        {order.order_type?.replace("_", " ")}
                      </Badge>
                    </TableCell>
                    <TableCell>
                      <span className="text-sm">{order.items?.length || 0} item{order.items?.length !== 1 ? "s" : ""}</span>
                    </TableCell>
                    <TableCell>
                      <div className="font-bold text-primary">₵{parseFloat(String(order.total_amount || 0)).toFixed(2)}</div>
                      {order.delivery_fee ? (
                        <div className="text-xs text-muted-foreground">+₵{parseFloat(String(order.delivery_fee)).toFixed(2)} delivery</div>
                      ) : null}
                    </TableCell>
                    <TableCell>
                      <div className="text-sm">{format(new Date(order.created_at), "MMM dd, yyyy")}</div>
                      <div className="text-xs text-muted-foreground">{format(new Date(order.created_at), "h:mm a")}</div>
                    </TableCell>
                    <TableCell>
                      <Badge className={`${cfg.color} flex items-center gap-1 w-fit`}>
                        <StatusIcon status={order.status} />
                        {cfg.label}
                      </Badge>
                    </TableCell>
                    <TableCell className="text-right">
                      <div className="flex gap-1 justify-end">
                        {/* View details dialog */}
                        <Dialog>
                          <DialogTrigger asChild>
                            <Button size="sm" variant="ghost" title="View Order">
                              <Eye className="h-3 w-3" />
                            </Button>
                          </DialogTrigger>
                          <DialogContent className="max-w-lg max-h-[80vh] overflow-y-auto">
                            <DialogHeader>
                              <DialogTitle>Order Details</DialogTitle>
                            </DialogHeader>
                            <div className="space-y-4 text-sm">
                              <div className="grid grid-cols-2 gap-3">
                                <div><p className="text-muted-foreground">Customer</p><p className="font-medium">{order.profile?.full_name || "Anonymous"}</p></div>
                                <div><p className="text-muted-foreground">Phone</p><p className="font-medium">{order.profile?.phone || "—"}</p></div>
                                <div><p className="text-muted-foreground">Order Type</p><p className="font-medium capitalize">{order.order_type?.replace("_", " ")}</p></div>
                                <div><p className="text-muted-foreground">Status</p><Badge className={cfg.color}>{cfg.label}</Badge></div>
                                <div><p className="text-muted-foreground">Subtotal</p><p className="font-medium">₵{parseFloat(String(order.subtotal || 0)).toFixed(2)}</p></div>
                                <div><p className="text-muted-foreground">Delivery Fee</p><p className="font-medium">₵{parseFloat(String(order.delivery_fee || 0)).toFixed(2)}</p></div>
                                <div><p className="text-muted-foreground">Tax</p><p className="font-medium">₵{parseFloat(String(order.tax_amount || 0)).toFixed(2)}</p></div>
                                <div><p className="text-muted-foreground">Total</p><p className="font-bold text-primary">₵{parseFloat(String(order.total_amount || 0)).toFixed(2)}</p></div>
                              </div>
                              {order.special_instructions && (
                                <div><p className="text-muted-foreground">Special Instructions</p><p className="font-medium">{order.special_instructions}</p></div>
                              )}
                              {order.items?.length > 0 && (
                                <div>
                                  <p className="font-semibold mb-2">Items ({order.items.length})</p>
                                  <div className="space-y-2">
                                    {order.items.map((item: any) => (
                                      <div key={item.id} className="flex justify-between items-center p-2 bg-muted/50 rounded">
                                        <div>
                                          <span className="font-medium">{item.menu_items?.name || "Unknown item"}</span>
                                          {item.special_instructions && (
                                            <p className="text-xs text-muted-foreground">{item.special_instructions}</p>
                                          )}
                                        </div>
                                        <div className="text-right">
                                          <div className="text-xs text-muted-foreground">×{item.quantity}</div>
                                          <div className="font-medium">₵{parseFloat(String(item.price)).toFixed(2)}</div>
                                        </div>
                                      </div>
                                    ))}
                                  </div>
                                </div>
                              )}
                            </div>
                          </DialogContent>
                        </Dialog>

                        {/* Status update dropdown */}
                        {order.status !== "delivered" && order.status !== "cancelled" && (
                          <Select
                            value={order.status}
                            onValueChange={(newStatus) =>
                              updateStatusMutation.mutate({ orderId: order.id, status: newStatus })
                            }
                          >
                            <SelectTrigger className="h-7 w-28 text-xs">
                              <SelectValue />
                            </SelectTrigger>
                            <SelectContent>
                              {ORDER_STATUSES.filter((s) => s !== "cancelled" || order.status === "pending").map((s) => (
                                <SelectItem key={s} value={s} className="text-xs">
                                  {STATUS_CONFIG[s].label}
                                </SelectItem>
                              ))}
                            </SelectContent>
                          </Select>
                        )}
                      </div>
                    </TableCell>
                  </TableRow>
                );
              })}
            </TableBody>
          </Table>
        </div>
      </Card>

      {/* Pagination */}
      {totalOrders > 0 && (
        <div className="flex items-center justify-between">
          <div className="text-sm text-muted-foreground">
            Showing {((currentPage - 1) * pageSize) + 1}–{Math.min(currentPage * pageSize, totalOrders)} of {totalOrders} orders
          </div>
          <div className="flex items-center gap-2">
            <Button variant="outline" size="sm" onClick={() => setCurrentPage((p) => Math.max(p - 1, 1))} disabled={currentPage === 1 || isLoading}>
              <ChevronLeft className="h-4 w-4" />
              Previous
            </Button>
            <div className="flex items-center gap-1">
              {Array.from({ length: Math.min(5, totalPages) }, (_, i) => i + 1).map((p) => (
                <Button key={p} variant={p === currentPage ? "default" : "outline"} size="sm" onClick={() => setCurrentPage(p)} disabled={isLoading} className="w-8 h-8">
                  {p}
                </Button>
              ))}
              {totalPages > 5 && (
                <>
                  <span className="text-muted-foreground">…</span>
                  <Button variant={currentPage === totalPages ? "default" : "outline"} size="sm" onClick={() => setCurrentPage(totalPages)} className="w-8 h-8">{totalPages}</Button>
                </>
              )}
            </div>
            <Button variant="outline" size="sm" onClick={() => setCurrentPage((p) => Math.min(p + 1, totalPages))} disabled={currentPage === totalPages || isLoading}>
              Next
              <ChevronRight className="h-4 w-4" />
            </Button>
          </div>
        </div>
      )}

      {orders.length === 0 && !isLoading && (
        <Card className="p-12 text-center">
          <ShoppingCart className="h-12 w-12 mx-auto text-muted-foreground mb-4" />
          <h3 className="text-lg font-semibold mb-2">No orders found</h3>
          <p className="text-muted-foreground">
            {searchTerm || statusFilter !== "all" || typeFilter !== "all"
              ? "Try adjusting your search or filters"
              : "No orders have been placed yet"}
          </p>
        </Card>
      )}
    </div>
  );
}
