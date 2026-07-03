-- =====================================================
-- FIX EVENTS, ZONES, CATEGORIES, AND CLUBS RLS
-- *** APPLY THIS IN YOUR SUPABASE SQL EDITOR ***
-- Project: yvnfhsipyfxdmulajbgl
--
-- Root cause: Admin policies on events, zones, categories,
-- and clubs were missing the WITH CHECK clause, which is
-- required for INSERT and UPDATE operations in PostgreSQL.
-- Without it, inserts/updates silently fail for admins.
-- =====================================================

-- -------------------------------------------------------
-- STEP 1: Add category column to events (if not yet added)
-- -------------------------------------------------------
DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM information_schema.columns
    WHERE table_name = 'events' AND column_name = 'category'
  ) THEN
    ALTER TABLE events ADD COLUMN category TEXT;
    COMMENT ON COLUMN events.category IS 'Event category display name';
  END IF;
END $$;

-- -------------------------------------------------------
-- STEP 2: Ensure RLS is enabled on all relevant tables
-- -------------------------------------------------------
ALTER TABLE events     ENABLE ROW LEVEL SECURITY;
ALTER TABLE zones      ENABLE ROW LEVEL SECURITY;
ALTER TABLE categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE event_categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE clubs      ENABLE ROW LEVEL SECURITY;

-- -------------------------------------------------------
-- STEP 3: EVENTS table — drop old, recreate with WITH CHECK
-- -------------------------------------------------------
DROP POLICY IF EXISTS "Allow public read access to events"         ON events;
DROP POLICY IF EXISTS "Allow authenticated read events"            ON events;
DROP POLICY IF EXISTS "Allow admin full access to events"          ON events;
DROP POLICY IF EXISTS "Allow admin read all events"                ON events;
DROP POLICY IF EXISTS "Allow organizers manage own events"         ON events;
DROP POLICY IF EXISTS "Allow users to read all events"             ON events;
DROP POLICY IF EXISTS "Enable read access for all users"           ON events;
DROP POLICY IF EXISTS "Enable insert for authenticated users only" ON events;
DROP POLICY IF EXISTS "Enable update for users based on user_id"   ON events;
DROP POLICY IF EXISTS "Events are viewable by everyone"            ON events;

-- Anyone can read events
CREATE POLICY "Allow public read access to events"
  ON events FOR SELECT
  USING (true);

-- Admins have full access (WITH CHECK required for INSERT/UPDATE)
CREATE POLICY "Allow admin full access to events"
  ON events FOR ALL
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

-- Organizers can manage events they created
CREATE POLICY "Allow organizers manage own events"
  ON events FOR ALL
  USING (
    created_by = auth.uid()
    AND EXISTS (
      SELECT 1 FROM profiles
      WHERE profiles.id = auth.uid()
      AND profiles.is_organizer = true
    )
  )
  WITH CHECK (
    created_by = auth.uid()
    AND EXISTS (
      SELECT 1 FROM profiles
      WHERE profiles.id = auth.uid()
      AND profiles.is_organizer = true
    )
  );

-- -------------------------------------------------------
-- STEP 4: ZONES table — drop old, recreate with WITH CHECK
-- -------------------------------------------------------
DROP POLICY IF EXISTS "Allow public read access to zones"          ON zones;
DROP POLICY IF EXISTS "Allow admin full access to zones"           ON zones;
DROP POLICY IF EXISTS "Allow admin read all zones"                 ON zones;
DROP POLICY IF EXISTS "Allow organizers manage own zones"          ON zones;
DROP POLICY IF EXISTS "Enable read access for all users"           ON zones;
DROP POLICY IF EXISTS "Enable insert for authenticated users only" ON zones;
DROP POLICY IF EXISTS "Zones are viewable by everyone"             ON zones;

-- Anyone can read zones
CREATE POLICY "Allow public read access to zones"
  ON zones FOR SELECT
  USING (true);

-- Admins have full access
CREATE POLICY "Allow admin full access to zones"
  ON zones FOR ALL
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

-- Organizers can manage zones for their events
CREATE POLICY "Allow organizers manage own zones"
  ON zones FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM events
      WHERE events.id = zones.event_id
      AND events.created_by = auth.uid()
    )
    AND EXISTS (
      SELECT 1 FROM profiles
      WHERE profiles.id = auth.uid()
      AND profiles.is_organizer = true
    )
  )
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM events
      WHERE events.id = zones.event_id
      AND events.created_by = auth.uid()
    )
    AND EXISTS (
      SELECT 1 FROM profiles
      WHERE profiles.id = auth.uid()
      AND profiles.is_organizer = true
    )
  );

-- -------------------------------------------------------
-- STEP 5: CATEGORIES table
-- -------------------------------------------------------
DROP POLICY IF EXISTS "Allow public read access to categories"     ON categories;
DROP POLICY IF EXISTS "Allow admin full access to categories"      ON categories;
DROP POLICY IF EXISTS "Allow admin read all categories"            ON categories;
DROP POLICY IF EXISTS "Enable read access for all users"           ON categories;

CREATE POLICY "Allow public read access to categories"
  ON categories FOR SELECT
  USING (true);

CREATE POLICY "Allow admin full access to categories"
  ON categories FOR ALL
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

-- -------------------------------------------------------
-- STEP 6: EVENT_CATEGORIES junction table
-- -------------------------------------------------------
DROP POLICY IF EXISTS "Allow public read access to event_categories"  ON event_categories;
DROP POLICY IF EXISTS "Allow admin full access to event_categories"   ON event_categories;
DROP POLICY IF EXISTS "Allow organizers manage own event_categories"  ON event_categories;

CREATE POLICY "Allow public read access to event_categories"
  ON event_categories FOR SELECT
  USING (true);

CREATE POLICY "Allow admin full access to event_categories"
  ON event_categories FOR ALL
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

CREATE POLICY "Allow organizers manage own event_categories"
  ON event_categories FOR ALL
  USING (
    EXISTS (
      SELECT 1 FROM events
      WHERE events.id = event_categories.event_id
      AND events.created_by = auth.uid()
    )
    AND EXISTS (
      SELECT 1 FROM profiles
      WHERE profiles.id = auth.uid()
      AND profiles.is_organizer = true
    )
  )
  WITH CHECK (
    EXISTS (
      SELECT 1 FROM events
      WHERE events.id = event_categories.event_id
      AND events.created_by = auth.uid()
    )
    AND EXISTS (
      SELECT 1 FROM profiles
      WHERE profiles.id = auth.uid()
      AND profiles.is_organizer = true
    )
  );

-- -------------------------------------------------------
-- STEP 7: CLUBS table — ensure WITH CHECK exists
-- -------------------------------------------------------
DROP POLICY IF EXISTS "Allow public read access to clubs"  ON clubs;
DROP POLICY IF EXISTS "Allow admin full access to clubs"   ON clubs;
DROP POLICY IF EXISTS "Allow admin read all clubs"         ON clubs;
DROP POLICY IF EXISTS "Enable read access for all users"   ON clubs;

CREATE POLICY "Allow public read access to clubs"
  ON clubs FOR SELECT
  USING (true);

CREATE POLICY "Allow admin full access to clubs"
  ON clubs FOR ALL
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

-- -------------------------------------------------------
-- VERIFY: Check all policies have WITH CHECK for admin writes
-- -------------------------------------------------------
SELECT
  tablename,
  policyname,
  cmd,
  CASE WHEN qual IS NOT NULL THEN 'has USING' ELSE 'NO USING' END AS using_clause,
  CASE WHEN with_check IS NOT NULL THEN 'has WITH CHECK' ELSE 'NO WITH CHECK' END AS check_clause
FROM pg_policies
WHERE tablename IN ('events', 'zones', 'categories', 'event_categories', 'clubs')
ORDER BY tablename, policyname;
