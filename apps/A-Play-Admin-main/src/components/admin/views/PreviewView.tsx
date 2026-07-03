import { useState } from "react";
import { useQuery, useQueries } from "@tanstack/react-query";
import { TestBookingModal } from "@/components/admin/preview/TestBookingModal";
import { supabase } from "@/integrations/supabase/client";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Tabs, TabsContent, TabsList, TabsTrigger } from "@/components/ui/tabs";
import {
  Calendar, MapPin, Clock, Star, Users, Waves, Gamepad2, Beer,
  Building2, Utensils, Mic, Search, Eye, ExternalLink, CheckCircle,
  XCircle, Image as ImageIcon, DollarSign, Tag, CreditCard,
} from "lucide-react";
import { format } from "date-fns";

// ── Shared helpers ────────────────────────────────────────────────────────────
const PLACEHOLDER = "https://images.unsplash.com/photo-1470225620780-dba8ba36b745?auto=format&fit=crop&w=400&h=250&q=80";

function StatusDot({ active }: { active: boolean | null }) {
  return active
    ? <span className="inline-flex items-center gap-1 text-xs text-green-600"><CheckCircle className="h-3 w-3" />Active</span>
    : <span className="inline-flex items-center gap-1 text-xs text-red-500"><XCircle className="h-3 w-3" />Inactive</span>;
}

function FieldRow({ label, value }: { label: string; value: React.ReactNode }) {
  return (
    <div className="flex justify-between items-start gap-2 text-sm py-1 border-b border-muted/50 last:border-0">
      <span className="text-muted-foreground shrink-0">{label}</span>
      <span className="text-right font-medium">{value ?? "—"}</span>
    </div>
  );
}

// Generic service card — mimics user app appearance
function ServiceCard({ item, type }: { item: any; type: string }) {
  const [open, setOpen] = useState(false);
  const img = item.cover_image || item.cover_image_url || item.logo_url || PLACEHOLDER;

  return (
    <Card className="overflow-hidden hover:shadow-lg transition-shadow group">
      {/* Cover image */}
      <div className="relative h-40 bg-muted overflow-hidden">
        <img
          src={img}
          alt={item.name || item.title}
          className="w-full h-full object-cover group-hover:scale-105 transition-transform duration-300"
          onError={(e) => { (e.target as HTMLImageElement).src = PLACEHOLDER; }}
        />
        <div className="absolute inset-0 bg-gradient-to-t from-black/60 via-transparent to-transparent" />
        <div className="absolute top-2 right-2 flex gap-1">
          {item.is_featured && <Badge className="bg-yellow-500 text-white text-xs px-1.5">★ Featured</Badge>}
          {item.is_active !== undefined && (
            <Badge className={`text-xs px-1.5 ${item.is_active ? "bg-green-500/90" : "bg-red-500/90"} text-white`}>
              {item.is_active ? "Active" : "Inactive"}
            </Badge>
          )}
        </div>
        {item.average_rating && (
          <div className="absolute bottom-2 right-2 flex items-center gap-1 bg-black/60 rounded px-1.5 py-0.5">
            <Star className="h-3 w-3 text-yellow-400 fill-yellow-400" />
            <span className="text-white text-xs font-medium">{item.average_rating}</span>
          </div>
        )}
        <p className="absolute bottom-2 left-2 text-white font-semibold text-sm drop-shadow line-clamp-1">
          {item.name || item.title}
        </p>
      </div>

      {/* Info */}
      <CardContent className="p-3 space-y-1.5">
        {(item.location || item.address) && (
          <div className="flex items-center gap-1 text-xs text-muted-foreground">
            <MapPin className="h-3 w-3 shrink-0" />
            <span className="truncate">{item.location || item.address}</span>
          </div>
        )}
        {item.description && (
          <p className="text-xs text-muted-foreground line-clamp-2">{item.description}</p>
        )}

        {/* Type-specific quick fields */}
        {type === "events" && (
          <div className="flex items-center gap-1 text-xs text-muted-foreground">
            <Clock className="h-3 w-3 shrink-0" />
            {item.start_date ? format(new Date(item.start_date), "MMM d, yyyy · h:mm a") : "—"}
          </div>
        )}
        {type === "live_shows" && item.show_date && (
          <div className="flex items-center gap-1 text-xs text-muted-foreground">
            <Clock className="h-3 w-3 shrink-0" />
            {format(new Date(item.show_date), "MMM d, yyyy")}
          </div>
        )}
        {(item.ticket_price || item.ticket_price_min) && (
          <div className="flex items-center gap-1 text-xs text-primary font-medium">
            <DollarSign className="h-3 w-3 shrink-0" />
            ₵{item.ticket_price ?? item.ticket_price_min}
            {item.ticket_price_max && ` – ₵${item.ticket_price_max}`}
          </div>
        )}
        {item.price_range && (
          <div className="flex items-center gap-1 text-xs text-muted-foreground">
            <Tag className="h-3 w-3" /> Price range: {item.price_range}
          </div>
        )}
        {item.performer_name && (
          <div className="flex items-center gap-1 text-xs text-muted-foreground">
            <Mic className="h-3 w-3" /> {item.performer_name}
          </div>
        )}

        {/* Amenities / features pills */}
        {item.amenities?.length > 0 && (
          <div className="flex flex-wrap gap-1 pt-1">
            {item.amenities.slice(0, 3).map((a: string) => (
              <Badge key={a} variant="secondary" className="text-xs px-1.5">{a}</Badge>
            ))}
            {item.amenities.length > 3 && (
              <Badge variant="secondary" className="text-xs px-1.5">+{item.amenities.length - 3}</Badge>
            )}
          </div>
        )}

        {/* Detail toggle */}
        <Button
          variant="ghost"
          size="sm"
          className="w-full h-7 text-xs mt-1 gap-1"
          onClick={() => setOpen((v) => !v)}
        >
          <Eye className="h-3 w-3" />
          {open ? "Hide details" : "Inspect all fields"}
        </Button>

        {open && (
          <div className="border-t pt-2 space-y-0.5 text-xs">
            {Object.entries(item).map(([k, v]) => {
              if (v === null || v === undefined || k === "id") return null;
              if (Array.isArray(v)) {
                return <FieldRow key={k} label={k} value={(v as string[]).join(", ") || "—"} />;
              }
              if (typeof v === "object") {
                return <FieldRow key={k} label={k} value={JSON.stringify(v).slice(0, 60)} />;
              }
              if (typeof v === "boolean") {
                return <FieldRow key={k} label={k} value={v ? "Yes" : "No"} />;
              }
              return <FieldRow key={k} label={k} value={String(v)} />;
            })}
          </div>
        )}
      </CardContent>
    </Card>
  );
}

// ── Events tab ────────────────────────────────────────────────────────────────
function EventsTab() {
  const [search, setSearch] = useState("");
  const [bookingEvent, setBookingEvent] = useState<any>(null);

  const { data, isLoading } = useQuery({
    queryKey: ["preview-events"],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("events")
        .select("*, clubs(name), zones(id, name, price, capacity)")
        .order("start_date", { ascending: false })
        .limit(50);
      if (error) throw error;
      return data || [];
    },
  });

  const filtered = data?.filter((e) =>
    !search || e.title?.toLowerCase().includes(search.toLowerCase()) || e.location?.toLowerCase().includes(search.toLowerCase())
  ) ?? [];

  const upcoming = filtered.filter((e) => new Date(e.start_date) > new Date()).length;
  const live     = filtered.filter((e) => new Date(e.start_date) <= new Date() && new Date(e.end_date) >= new Date()).length;

  return (
    <>
      <TabSection
        label="Events"
        count={filtered.length}
        chips={[`${upcoming} upcoming`, `${live} live`]}
        search={search}
        onSearch={setSearch}
        isLoading={isLoading}
      >
        {filtered.map((item) => {
          const eventZones = (item as any).zones ?? [];
          const prices = eventZones.map((z: any) => z.price);
          const augmented = {
            ...item,
            name: item.title,
            ticket_price_min: prices.length ? Math.min(...prices) : undefined,
            ticket_price_max: prices.length && Math.max(...prices) !== Math.min(...prices) ? Math.max(...prices) : undefined,
            "club": (item as any).clubs?.name ?? "—",
            "zones count": eventZones.length,
          };
          return (
            <EventServiceCard
              key={item.id}
              item={augmented}
              rawEvent={item}
              onBook={() => setBookingEvent({ ...item, zones: eventZones })}
            />
          );
        })}
      </TabSection>

      {bookingEvent && (
        <TestBookingModal
          event={bookingEvent}
          open={!!bookingEvent}
          onClose={() => setBookingEvent(null)}
        />
      )}
    </>
  );
}

// Event card with Book button
function EventServiceCard({ item, rawEvent, onBook }: { item: any; rawEvent: any; onBook: () => void }) {
  return (
    <div className="flex flex-col">
      <ServiceCard item={item} type="events" />
      <Button
        size="sm"
        className="mt-1 gap-1 bg-primary text-white hover:bg-primary/90 w-full"
        onClick={onBook}
      >
        <CreditCard className="h-3 w-3" />
        Test Booking →
      </Button>
    </div>
  );
}

// ── Reusable tab scaffold ─────────────────────────────────────────────────────
function TabSection({
  label, count, chips, search, onSearch, isLoading, children,
}: {
  label: string;
  count: number;
  chips: string[];
  search: string;
  onSearch: (v: string) => void;
  isLoading: boolean;
  children: React.ReactNode;
}) {
  return (
    <div className="space-y-4">
      <div className="flex flex-col sm:flex-row sm:items-center gap-3 justify-between">
        <div className="flex items-center gap-3 flex-wrap">
          <Badge variant="outline">{count} {label}</Badge>
          {chips.map((c) => <Badge key={c} variant="secondary" className="text-xs">{c}</Badge>)}
        </div>
        <div className="relative max-w-xs w-full">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 h-3.5 w-3.5 text-muted-foreground" />
          <Input
            placeholder={`Search ${label.toLowerCase()}…`}
            value={search}
            onChange={(e) => onSearch(e.target.value)}
            className="pl-9 h-8 text-sm"
          />
        </div>
      </div>

      {isLoading ? (
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4">
          {[...Array(8)].map((_, i) => (
            <Card key={i} className="animate-pulse">
              <div className="h-40 bg-muted" />
              <CardContent className="p-3 space-y-2">
                <div className="h-3 bg-muted rounded w-3/4" />
                <div className="h-3 bg-muted rounded w-1/2" />
              </CardContent>
            </Card>
          ))}
        </div>
      ) : (
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4 gap-4">
          {children}
        </div>
      )}

      {!isLoading && count === 0 && (
        <Card className="p-12 text-center">
          <ImageIcon className="h-12 w-12 mx-auto text-muted-foreground mb-3" />
          <p className="text-muted-foreground">No {label.toLowerCase()} found</p>
        </Card>
      )}
    </div>
  );
}

// ── Generic venue tab ─────────────────────────────────────────────────────────
function VenueTab({ table, label, searchField = "name" }: { table: string; label: string; searchField?: string }) {
  const [search, setSearch] = useState("");
  const { data, isLoading } = useQuery({
    queryKey: ["preview-venue", table],
    queryFn: async () => {
      const { data, error } = await supabase.from(table as any).select("*").order("created_at", { ascending: false }).limit(50);
      if (error) throw error;
      return data || [];
    },
  });

  const filtered = data?.filter((item: any) =>
    !search || item[searchField]?.toLowerCase().includes(search.toLowerCase()) || item.location?.toLowerCase().includes(search.toLowerCase())
  ) ?? [];

  const active   = filtered.filter((i: any) => i.is_active).length;
  const featured = filtered.filter((i: any) => i.is_featured).length;

  return (
    <TabSection
      label={label}
      count={filtered.length}
      chips={[`${active} active`, `${featured} featured`]}
      search={search}
      onSearch={setSearch}
      isLoading={isLoading}
    >
      {filtered.map((item: any) => <ServiceCard key={item.id} item={item} type={table} />)}
    </TabSection>
  );
}

// ── Clubs tab (simpler schema) ────────────────────────────────────────────────
function ClubsTab() {
  const [search, setSearch] = useState("");
  const { data, isLoading } = useQuery({
    queryKey: ["preview-clubs"],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("clubs")
        .select("*, events(count), club_tables(count)")
        .order("created_at", { ascending: false });
      if (error) throw error;
      return data || [];
    },
  });

  const filtered = data?.filter((c: any) =>
    !search || c.name?.toLowerCase().includes(search.toLowerCase())
  ) ?? [];

  return (
    <TabSection
      label="Clubs"
      count={filtered.length}
      chips={[`${filtered.length} total`]}
      search={search}
      onSearch={setSearch}
      isLoading={isLoading}
    >
      {filtered.map((club: any) => {
        const augmented = {
          ...club,
          is_active: true,
          "events count": club.events?.[0]?.count ?? 0,
          "tables count": club.club_tables?.[0]?.count ?? 0,
        };
        return <ServiceCard key={club.id} item={augmented} type="clubs" />;
      })}
    </TabSection>
  );
}

// ── Live Shows tab ────────────────────────────────────────────────────────────
function LiveShowsTab() {
  const [search, setSearch] = useState("");
  const { data, isLoading } = useQuery({
    queryKey: ["preview-live-shows"],
    queryFn: async () => {
      const { data, error } = await supabase
        .from("live_shows")
        .select("*")
        .order("show_date", { ascending: false })
        .limit(50);
      if (error) throw error;
      return data || [];
    },
  });

  const filtered = data?.filter((s: any) =>
    !search ||
    s.name?.toLowerCase().includes(search.toLowerCase()) ||
    s.title?.toLowerCase().includes(search.toLowerCase()) ||
    s.performer_name?.toLowerCase().includes(search.toLowerCase())
  ) ?? [];

  const active   = filtered.filter((s: any) => s.is_active).length;
  const featured = filtered.filter((s: any) => s.is_featured).length;

  return (
    <TabSection
      label="Live Shows"
      count={filtered.length}
      chips={[`${active} active`, `${featured} featured`]}
      search={search}
      onSearch={setSearch}
      isLoading={isLoading}
    >
      {filtered.map((item: any) => <ServiceCard key={item.id} item={{ ...item, name: item.name || item.title }} type="live_shows" />)}
    </TabSection>
  );
}

// ── Summary bar ───────────────────────────────────────────────────────────────
const SUMMARY_SERVICES = [
  { label: "Events",      table: "events" },
  { label: "Clubs",       table: "clubs" },
  { label: "Restaurants", table: "restaurants" },
  { label: "Lounges",     table: "lounges" },
  { label: "Pubs",        table: "pubs" },
  { label: "Arcades",     table: "arcade_centers" },
  { label: "Beaches",     table: "beaches" },
  { label: "Live Shows",  table: "live_shows" },
] as const;

function SummaryBar() {
  const results = useQueries({
    queries: SUMMARY_SERVICES.map(({ table }) => ({
      queryKey: ["preview-count", table],
      queryFn: async () => {
        const { count } = await supabase.from(table as any).select("*", { count: "exact", head: true });
        return count ?? 0;
      },
    })),
  });

  return (
    <div className="grid grid-cols-4 sm:grid-cols-8 gap-2">
      {SUMMARY_SERVICES.map(({ label }, i) => (
        <Card key={label} className="p-2 text-center">
          <p className="text-lg font-bold text-primary">{results[i].data ?? "…"}</p>
          <p className="text-xs text-muted-foreground">{label}</p>
        </Card>
      ))}
    </div>
  );
}

// ── Main export ───────────────────────────────────────────────────────────────
export function PreviewView() {
  return (
    <div className="space-y-6">
      <div>
        <h1 className="text-3xl font-bold">Preview & Test</h1>
        <p className="text-muted-foreground">
          Live preview of all services as users see them — verify data, images, and fields before pushing to production.
        </p>
      </div>

      <SummaryBar />

      <Tabs defaultValue="events">
        <TabsList className="flex flex-wrap h-auto gap-1 justify-start">
          <TabsTrigger value="events"      className="gap-1"><Calendar    className="h-3.5 w-3.5" />Events</TabsTrigger>
          <TabsTrigger value="clubs"       className="gap-1"><Building2   className="h-3.5 w-3.5" />Clubs</TabsTrigger>
          <TabsTrigger value="restaurants" className="gap-1"><Utensils    className="h-3.5 w-3.5" />Restaurants</TabsTrigger>
          <TabsTrigger value="lounges"     className="gap-1"><Building2   className="h-3.5 w-3.5" />Lounges</TabsTrigger>
          <TabsTrigger value="pubs"        className="gap-1"><Beer        className="h-3.5 w-3.5" />Pubs</TabsTrigger>
          <TabsTrigger value="arcades"     className="gap-1"><Gamepad2    className="h-3.5 w-3.5" />Arcades</TabsTrigger>
          <TabsTrigger value="beaches"     className="gap-1"><Waves       className="h-3.5 w-3.5" />Beaches</TabsTrigger>
          <TabsTrigger value="live-shows"  className="gap-1"><Mic         className="h-3.5 w-3.5" />Live Shows</TabsTrigger>
        </TabsList>

        <TabsContent value="events"      className="pt-4"><EventsTab /></TabsContent>
        <TabsContent value="clubs"       className="pt-4"><ClubsTab /></TabsContent>
        <TabsContent value="restaurants" className="pt-4"><VenueTab table="restaurants"   label="Restaurants" /></TabsContent>
        <TabsContent value="lounges"     className="pt-4"><VenueTab table="lounges"        label="Lounges" /></TabsContent>
        <TabsContent value="pubs"        className="pt-4"><VenueTab table="pubs"           label="Pubs" /></TabsContent>
        <TabsContent value="arcades"     className="pt-4"><VenueTab table="arcade_centers" label="Arcade Centers" /></TabsContent>
        <TabsContent value="beaches"     className="pt-4"><VenueTab table="beaches"        label="Beaches" /></TabsContent>
        <TabsContent value="live-shows"  className="pt-4"><LiveShowsTab /></TabsContent>
      </Tabs>
    </div>
  );
}
