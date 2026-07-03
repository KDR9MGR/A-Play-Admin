// Calls the correct Supabase edge function based on the current paystack_mode:
//   "test" → testpay  (sandbox, no real charges)
//   "live" → paystack (production, real charges)
//
// Uses fetch directly so we have full control over Authorization headers —
// supabase.functions.invoke does not reliably forward the user JWT in all clients.

import { supabase } from "@/integrations/supabase/client";

// Must match src/integrations/supabase/client.ts
const SUPABASE_URL = "https://yvnfhsipyfxdmulajbgl.supabase.co";
const SUPABASE_ANON_KEY =
  "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl2bmZoc2lweWZ4ZG11bGFqYmdsIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDc2NDUwNTgsImV4cCI6MjA2MzIyMTA1OH0.9mw2t1IKIHJkh30CdWcAfB2JhuJYdHQ_e_iHOZWcIqs";

async function getPaystackMode(): Promise<"test" | "live"> {
  try {
    const { data } = await supabase
      .from("app_settings" as any)
      .select("value")
      .eq("key", "paystack_mode")
      .single();
    return (data as any)?.value === "live" ? "live" : "test";
  } catch {
    return "test";
  }
}

function functionName(mode: "test" | "live"): string {
  return mode === "live" ? "paystack" : "testpay";
}

// Direct fetch with explicit headers — avoids issues with supabase.functions.invoke
// not forwarding the user's JWT in some browser/SDK combinations.
async function callEdgeFunction(fnName: string, body: object): Promise<any> {
  // testpay / paystack use withSupabase({ auth: ["publishable","secret"] })
  // which only accepts the anon key (publishable) — NOT a user JWT.
  // Sending a user JWT causes an immediate 401 from the wrapper.
  const res = await fetch(`${SUPABASE_URL}/functions/v1/${fnName}`, {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      "Authorization": `Bearer ${SUPABASE_ANON_KEY}`,
      "apikey": SUPABASE_ANON_KEY,
    },
    body: JSON.stringify(body),
  });

  const text = await res.text();

  if (!res.ok) {
    // Surface the actual function error so debugging is straightforward
    let detail = text;
    try { detail = JSON.stringify(JSON.parse(text), null, 2); } catch { /* keep raw */ }
    throw new Error(`[${fnName}] ${res.status} ${res.statusText}: ${detail}`);
  }

  try {
    return JSON.parse(text);
  } catch {
    return text;
  }
}

// ─── Public types ────────────────────────────────────────────────────────────

export interface PaystackInitParams {
  email: string;
  amount: number;       // in pesewa (GHS × 100)
  currency?: string;
  reference?: string;
  callback_url?: string;
  metadata?: Record<string, unknown>;
}

export interface PaystackInitResult {
  status: boolean;
  message: string;
  _mode?: "test" | "live";
  data?: {
    authorization_url: string;
    access_code: string;
    reference: string;
  };
}

export interface PaystackVerifyResult {
  status: boolean;
  message: string;
  _mode?: "test" | "live";
  data?: {
    status: string;
    reference: string;
    amount: number;
    currency: string;
    paid_at: string;
    metadata: Record<string, unknown>;
    customer: { email: string; first_name: string; last_name: string };
  };
}

// ─── Admin console functions (read mode from app_settings) ───────────────────
// Used ONLY in SettingsView test console. The toggle in Settings controls
// which function these call. Has no effect on the user-facing app.

export async function paystackInitialize(
  params: PaystackInitParams,
): Promise<PaystackInitResult & { _mode: "test" | "live" }> {
  const mode = await getPaystackMode();
  const data = await callEdgeFunction(functionName(mode), { ...params });
  return { ...(data as PaystackInitResult), _mode: mode };
}

export async function paystackVerify(
  reference: string,
): Promise<PaystackVerifyResult & { _mode: "test" | "live" }> {
  const mode = await getPaystackMode();
  const data = await callEdgeFunction(functionName(mode), { reference });
  return { ...(data as PaystackVerifyResult), _mode: mode };
}

// ─── Test-only functions (always sandbox) ────────────────────────────────────
// Used by TestBookingModal in Preview & Test. Always calls `testpay` regardless
// of the Settings toggle — safe sandbox, zero chance of real charges.

export async function paystackInitializeTest(
  params: PaystackInitParams,
): Promise<PaystackInitResult & { _mode: "test" }> {
  const data = await callEdgeFunction("testpay", { ...params });
  return { ...(data as PaystackInitResult), _mode: "test" };
}

export async function paystackVerifyTest(
  reference: string,
): Promise<PaystackVerifyResult & { _mode: "test" }> {
  const data = await callEdgeFunction("testpay", { reference });
  return { ...(data as PaystackVerifyResult), _mode: "test" };
}
