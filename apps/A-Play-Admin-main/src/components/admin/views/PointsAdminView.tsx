import { useEffect, useState } from "react";
import { useMutation, useQuery, useQueryClient } from "@tanstack/react-query";
import { supabase } from "@/integrations/supabase/client";
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Textarea } from "@/components/ui/textarea";
import { Badge } from "@/components/ui/badge";
import { Avatar, AvatarFallback, AvatarImage } from "@/components/ui/avatar";
import { useDebounce } from "@/hooks/use-debounce";
import { toast } from "sonner";
import { Coins, Search, Plus, Minus, Save, Settings2 } from "lucide-react";

type ProfileSearchResult = {
  id: string;
  full_name: string | null;
  email: string;
  avatar_url: string | null;
};

type UserPointsRow = {
  user_id: string;
  total_points: number;
  available_points: number;
  used_points: number;
};

export function PointsAdminView() {
  const queryClient = useQueryClient();

  // --- User search ---
  const [searchTerm, setSearchTerm] = useState("");
  const debouncedSearchTerm = useDebounce(searchTerm, 300);
  const [selectedUser, setSelectedUser] = useState<ProfileSearchResult | null>(null);
  const [adjustAmount, setAdjustAmount] = useState<string>("");
  const [adjustReason, setAdjustReason] = useState("");

  const { data: searchResults, isLoading: isSearching } = useQuery({
    queryKey: ["admin-points-user-search", debouncedSearchTerm],
    queryFn: async () => {
      const term = debouncedSearchTerm.trim();
      if (!term) return [] as ProfileSearchResult[];
      const { data, error } = await supabase
        .from("profiles")
        .select("id, full_name, email, avatar_url")
        .or(`email.ilike.%${term}%,full_name.ilike.%${term}%`)
        .limit(10);
      if (error) throw error;
      return (data ?? []) as ProfileSearchResult[];
    },
    enabled: debouncedSearchTerm.trim().length >= 2,
  });

  const { data: selectedUserPoints, isLoading: isLoadingBalance } = useQuery({
    queryKey: ["admin-points-user-balance", selectedUser?.id],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("user_points")
        .select("user_id, total_points, available_points, used_points")
        .eq("user_id", selectedUser!.id)
        .maybeSingle();
      if (error) throw error;
      return (data ?? null) as UserPointsRow | null;
    },
    enabled: !!selectedUser,
  });

  const adjustPointsMutation = useMutation({
    mutationFn: async () => {
      if (!selectedUser) throw new Error("Select a user first");
      const amount = Number(adjustAmount);
      if (!amount || Number.isNaN(amount)) {
        throw new Error("Enter a nonzero amount to mint or burn");
      }
      if (!adjustReason.trim()) {
        throw new Error("A reason is required");
      }

      const { error } = await supabase.rpc("admin_adjust_user_points", {
        p_user_id: selectedUser.id,
        p_points: amount,
        p_reason: adjustReason.trim(),
      });
      if (error) throw error;
      return amount;
    },
    onSuccess: (amount) => {
      queryClient.invalidateQueries({ queryKey: ["admin-points-user-balance", selectedUser?.id] });
      toast.success(`${amount > 0 ? "Minted" : "Burned"} ${Math.abs(amount)} points`);
      setAdjustAmount("");
      setAdjustReason("");
    },
    onError: (error: any) => {
      toast.error(error?.message || "Failed to adjust points");
    },
  });

  const selectUser = (user: ProfileSearchResult) => {
    setSelectedUser(user);
    setSearchTerm("");
    setAdjustAmount("");
    setAdjustReason("");
  };

  // --- Points settings (global default conversion rate) ---
  const { data: pointsSettings, isLoading: isLoadingSettings } = useQuery({
    queryKey: ["admin-points-settings"],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("points_settings")
        .select("*")
        .eq("id", true)
        .maybeSingle();
      if (error) throw error;
      return data;
    },
  });

  const [defaultRate, setDefaultRate] = useState("");

  useEffect(() => {
    if (pointsSettings) {
      setDefaultRate(String(pointsSettings.default_point_value_ghs));
    }
  }, [pointsSettings]);

  const saveSettingsMutation = useMutation({
    mutationFn: async () => {
      const rate = Number(defaultRate);
      if (Number.isNaN(rate) || rate < 0) {
        throw new Error("Default point value must be a valid non-negative number");
      }
      const { data: { user } } = await supabase.auth.getUser();
      const { error } = await supabase
        .from("points_settings")
        .update({
          default_point_value_ghs: rate,
          updated_at: new Date().toISOString(),
          updated_by: user?.id ?? null,
        })
        .eq("id", true);
      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["admin-points-settings"] });
      toast.success("Default point value updated");
    },
    onError: (error: any) => {
      toast.error(error?.message || "Failed to update settings");
    },
  });

  const getUserInitials = (name: string | null) => {
    if (!name) return "U";
    return name.split(" ").map((n) => n[0]).join("").toUpperCase().slice(0, 2);
  };

  return (
    <div className="space-y-6">
      <div>
        <h2 className="text-2xl sm:text-3xl font-bold tracking-tight flex items-center gap-2">
          <Coins className="h-6 w-6 sm:h-8 sm:w-8" />
          Points Admin
        </h2>
        <p className="text-muted-foreground mt-1">
          Manually mint or burn a user's points, and set the default GHS-per-point rate
        </p>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        {/* Mint / burn */}
        <Card>
          <CardHeader>
            <CardTitle className="flex items-center gap-2">
              <Search className="h-5 w-5" />
              Adjust User Points
            </CardTitle>
            <CardDescription>Search by email or name, then mint or burn points with a reason</CardDescription>
          </CardHeader>
          <CardContent className="space-y-4">
            {!selectedUser ? (
              <>
                <div className="relative">
                  <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 h-4 w-4 text-muted-foreground" />
                  <Input
                    placeholder="Search by email..."
                    value={searchTerm}
                    onChange={(e) => setSearchTerm(e.target.value)}
                    className="pl-10"
                  />
                </div>
                {debouncedSearchTerm.trim().length >= 2 && (
                  <div className="border rounded-lg divide-y max-h-72 overflow-y-auto">
                    {isSearching ? (
                      <div className="p-4 text-sm text-muted-foreground text-center">Searching...</div>
                    ) : searchResults && searchResults.length > 0 ? (
                      searchResults.map((user) => (
                        <button
                          key={user.id}
                          type="button"
                          onClick={() => selectUser(user)}
                          className="w-full flex items-center gap-3 p-3 hover:bg-muted/50 text-left"
                        >
                          <Avatar className="h-8 w-8">
                            <AvatarImage src={user.avatar_url || ""} />
                            <AvatarFallback>{getUserInitials(user.full_name)}</AvatarFallback>
                          </Avatar>
                          <div className="min-w-0">
                            <div className="font-medium text-sm truncate">{user.full_name || "Unnamed user"}</div>
                            <div className="text-xs text-muted-foreground truncate">{user.email}</div>
                          </div>
                        </button>
                      ))
                    ) : (
                      <div className="p-4 text-sm text-muted-foreground text-center">No users found</div>
                    )}
                  </div>
                )}
              </>
            ) : (
              <div className="space-y-4">
                <div className="flex items-center justify-between p-3 rounded-lg bg-muted/30">
                  <div className="flex items-center gap-3">
                    <Avatar className="h-10 w-10">
                      <AvatarImage src={selectedUser.avatar_url || ""} />
                      <AvatarFallback>{getUserInitials(selectedUser.full_name)}</AvatarFallback>
                    </Avatar>
                    <div>
                      <div className="font-medium">{selectedUser.full_name || "Unnamed user"}</div>
                      <div className="text-xs text-muted-foreground">{selectedUser.email}</div>
                    </div>
                  </div>
                  <Button variant="ghost" size="sm" onClick={() => setSelectedUser(null)}>
                    Change
                  </Button>
                </div>

                <div className="grid grid-cols-2 gap-4 text-center">
                  <div className="p-3 bg-green-500/10 rounded-lg">
                    <p className="text-sm text-muted-foreground">Available</p>
                    <p className="text-lg font-bold text-green-600">
                      {isLoadingBalance ? "…" : selectedUserPoints?.available_points ?? 0}
                    </p>
                  </div>
                  <div className="p-3 bg-muted rounded-lg">
                    <p className="text-sm text-muted-foreground">Total Earned</p>
                    <p className="text-lg font-bold">
                      {isLoadingBalance ? "…" : selectedUserPoints?.total_points ?? 0}
                    </p>
                  </div>
                </div>

                <div className="space-y-2">
                  <Label htmlFor="adjust_amount">Amount (positive = mint, negative = burn)</Label>
                  <div className="flex gap-2">
                    <Button
                      type="button"
                      variant="outline"
                      size="icon"
                      onClick={() => setAdjustAmount(String((Number(adjustAmount) || 0) - 10))}
                    >
                      <Minus className="h-4 w-4" />
                    </Button>
                    <Input
                      id="adjust_amount"
                      type="number"
                      value={adjustAmount}
                      onChange={(e) => setAdjustAmount(e.target.value)}
                      className="text-center"
                      placeholder="e.g. 50 or -50"
                    />
                    <Button
                      type="button"
                      variant="outline"
                      size="icon"
                      onClick={() => setAdjustAmount(String((Number(adjustAmount) || 0) + 10))}
                    >
                      <Plus className="h-4 w-4" />
                    </Button>
                  </div>
                </div>

                <div className="space-y-2">
                  <Label htmlFor="adjust_reason">Reason *</Label>
                  <Textarea
                    id="adjust_reason"
                    value={adjustReason}
                    onChange={(e) => setAdjustReason(e.target.value)}
                    placeholder="Why is this adjustment being made?"
                    rows={2}
                  />
                </div>

                <Button
                  onClick={() => adjustPointsMutation.mutate()}
                  disabled={adjustPointsMutation.isPending || !adjustAmount || !adjustReason.trim()}
                  className="w-full gap-2"
                >
                  {Number(adjustAmount) < 0 ? (
                    <Minus className="h-4 w-4" />
                  ) : (
                    <Plus className="h-4 w-4" />
                  )}
                  {Number(adjustAmount) < 0 ? "Burn" : "Mint"} {Math.abs(Number(adjustAmount) || 0)} Points
                </Button>
              </div>
            )}
          </CardContent>
        </Card>

        {/* Default conversion rate */}
        <Card>
          <CardHeader>
            <CardTitle className="flex items-center gap-2">
              <Settings2 className="h-5 w-5" />
              Default Point Value
            </CardTitle>
            <CardDescription>
              The GHS value of one point when an affiliate has no override set. Affiliates with their own
              rate (in the Affiliates page) ignore this value.
            </CardDescription>
          </CardHeader>
          <CardContent className="space-y-4">
            {isLoadingSettings ? (
              <div className="text-sm text-muted-foreground">Loading settings...</div>
            ) : (
              <>
                <div className="space-y-2">
                  <Label htmlFor="default_rate">Default value (GHS per point)</Label>
                  <div className="flex items-center gap-2">
                    <Badge variant="outline" className="shrink-0">
                      GHS
                    </Badge>
                    <Input
                      id="default_rate"
                      type="number"
                      step="0.0001"
                      min="0"
                      value={defaultRate}
                      onChange={(e) => setDefaultRate(e.target.value)}
                    />
                  </div>
                  {pointsSettings?.updated_at && (
                    <p className="text-xs text-muted-foreground">
                      Last updated {new Date(pointsSettings.updated_at).toLocaleString()}
                    </p>
                  )}
                </div>
                <Button
                  onClick={() => saveSettingsMutation.mutate()}
                  disabled={saveSettingsMutation.isPending}
                  className="gap-2"
                >
                  <Save className="h-4 w-4" />
                  Save Default Rate
                </Button>
              </>
            )}
          </CardContent>
        </Card>
      </div>
    </div>
  );
}
