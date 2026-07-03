import { useState } from "react";
import { useMutation, useQueryClient } from "@tanstack/react-query";
import { supabase } from "@/integrations/supabase/client";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Label } from "@/components/ui/label";
import { Textarea } from "@/components/ui/textarea";
import { ImageUpload } from "@/components/ui/image-upload";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { toast } from "sonner";
import { Loader2, Plus, X } from "lucide-react";

interface CreateClubFormProps {
  onClose: () => void;
  onSuccess: () => void;
}

export function CreateClubForm({ onClose, onSuccess }: CreateClubFormProps) {
  const queryClient = useQueryClient();
  const [formData, setFormData] = useState({
    name: "",
    description: "",
    logo_url: "",
  });

  const createClubMutation = useMutation({
    mutationFn: async (data: typeof formData) => {
      const { error } = await supabase.from("clubs").insert([{
        name: data.name.trim(),
        description: data.description.trim(),
        logo_url: data.logo_url || null,
      }]);
      if (error) throw error;
    },
    onSuccess: () => {
      queryClient.invalidateQueries({ queryKey: ["admin-clubs"] });
      toast.success("Club created successfully!");
      onSuccess();
    },
    onError: (error: any) => {
      toast.error(error.message || "Failed to create club");
    },
  });

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (!formData.name.trim()) {
      toast.error("Club name is required");
      return;
    }
    if (!formData.description.trim()) {
      toast.error("Club description is required");
      return;
    }
    createClubMutation.mutate(formData);
  };

  return (
    <div className="fixed inset-0 bg-black/50 flex items-center justify-center p-4 z-50">
      <Card className="w-full max-w-lg max-h-[90vh] overflow-y-auto">
        <CardHeader className="flex flex-row items-center justify-between space-y-0 pb-4">
          <CardTitle className="flex items-center gap-2 text-xl">
            <Plus className="h-5 w-5" />
            Create New Club
          </CardTitle>
          <Button variant="ghost" size="sm" onClick={onClose} className="h-8 w-8 p-0">
            <X className="h-4 w-4" />
          </Button>
        </CardHeader>

        <CardContent>
          <form onSubmit={handleSubmit} className="space-y-5">
            <ImageUpload
              value={formData.logo_url}
              onChange={(url) => setFormData((prev) => ({ ...prev, logo_url: url }))}
              onRemove={() => setFormData((prev) => ({ ...prev, logo_url: "" }))}
              bucket="images"
              folder="clubs"
              maxSizeInMB={5}
              acceptedFileTypes={["image/jpeg", "image/png", "image/webp", "image/gif"]}
              placeholder="Upload club logo"
            />

            <div className="space-y-2">
              <Label htmlFor="name">Club Name *</Label>
              <Input
                id="name"
                value={formData.name}
                onChange={(e) => setFormData((prev) => ({ ...prev, name: e.target.value }))}
                placeholder="Enter club name"
                required
              />
            </div>

            <div className="space-y-2">
              <Label htmlFor="description">Description *</Label>
              <Textarea
                id="description"
                value={formData.description}
                onChange={(e) => setFormData((prev) => ({ ...prev, description: e.target.value }))}
                placeholder="Enter club description"
                rows={4}
                required
              />
            </div>

            <div className="flex gap-3 pt-2">
              <Button type="submit" disabled={createClubMutation.isPending} className="flex-1">
                {createClubMutation.isPending ? (
                  <>
                    <Loader2 className="h-4 w-4 mr-2 animate-spin" />
                    Creating...
                  </>
                ) : (
                  "Create Club"
                )}
              </Button>
              <Button type="button" variant="outline" onClick={onClose} disabled={createClubMutation.isPending}>
                Cancel
              </Button>
            </div>
          </form>
        </CardContent>
      </Card>
    </div>
  );
}
