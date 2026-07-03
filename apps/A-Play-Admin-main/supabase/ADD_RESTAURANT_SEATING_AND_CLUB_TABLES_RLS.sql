-- =====================================================
-- ADD RESTAURANT SEATING FIELDS + CLUB TABLES RLS
-- *** APPLY THIS IN YOUR SUPABASE SQL EDITOR ***
-- Project: yvnfhsipyfxdmulajbgl
-- =====================================================

-- ── 1. Restaurant seating fields ─────────────────────────────────────────────
-- Restaurants don't need per-table rows — just overall capacity numbers.
ALTER TABLE restaurants
  ADD COLUMN IF NOT EXISTS seating_capacity INTEGER DEFAULT NULL,
  ADD COLUMN IF NOT EXISTS total_tables     INTEGER DEFAULT NULL;

COMMENT ON COLUMN restaurants.seating_capacity IS 'Total number of seats in the restaurant';
COMMENT ON COLUMN restaurants.total_tables     IS 'Total number of tables in the restaurant';

-- ── 2. Enable RLS on club_tables (was missing) ───────────────────────────────
ALTER TABLE club_tables ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Allow public read access to club_tables"  ON club_tables;
DROP POLICY IF EXISTS "Allow admin full access to club_tables"   ON club_tables;

-- Anyone can view tables (user app needs to show them)
CREATE POLICY "Allow public read access to club_tables"
  ON club_tables FOR SELECT
  USING (true);

-- Admins have full write access (WITH CHECK required for INSERT/UPDATE)
CREATE POLICY "Allow admin full access to club_tables"
  ON club_tables FOR ALL
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

-- ── Verify ────────────────────────────────────────────────────────────────────
SELECT 'restaurants seating columns' AS check,
  column_name, data_type
FROM information_schema.columns
WHERE table_name = 'restaurants'
  AND column_name IN ('seating_capacity', 'total_tables');

SELECT 'club_tables policies' AS check,
  policyname, cmd,
  CASE WHEN with_check IS NOT NULL THEN 'has WITH CHECK' ELSE 'no WITH CHECK' END
FROM pg_policies
WHERE tablename = 'club_tables';
