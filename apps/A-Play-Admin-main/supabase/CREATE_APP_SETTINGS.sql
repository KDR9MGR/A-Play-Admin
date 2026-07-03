-- =====================================================
-- APP SETTINGS TABLE
-- *** APPLY THIS IN YOUR SUPABASE SQL EDITOR ***
-- Project: yvnfhsipyfxdmulajbgl
-- =====================================================

-- Create the app_settings table (key/value config store)
CREATE TABLE IF NOT EXISTS app_settings (
  key         TEXT PRIMARY KEY,
  value       TEXT NOT NULL,
  description TEXT,
  updated_at  TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
  updated_by  UUID REFERENCES profiles(id)
);

-- Seed default settings
INSERT INTO app_settings (key, value, description) VALUES
  ('paystack_mode',       'test',  'Paystack payment mode: test or live'),
  ('platform_name',       'A-Play', 'Platform display name'),
  ('support_email',       '',      'Support contact email'),
  ('booking_fee_percent', '0',     'Additional booking fee percentage (e.g. 2.5 for 2.5%)')
ON CONFLICT (key) DO NOTHING;

-- Enable RLS
ALTER TABLE app_settings ENABLE ROW LEVEL SECURITY;

-- Only admins can read or write settings
DROP POLICY IF EXISTS "Allow admin full access to app_settings" ON app_settings;
CREATE POLICY "Allow admin full access to app_settings"
  ON app_settings FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM profiles
      WHERE profiles.id = auth.uid()
      AND profiles.role = 'admin'
    )
  )
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM profiles
      WHERE profiles.id = auth.uid()
      AND profiles.role = 'admin'
    )
  );

-- Verify
SELECT key, value, description FROM app_settings ORDER BY key;
