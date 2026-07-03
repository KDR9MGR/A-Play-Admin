-- =====================================================
-- ADD is_active TO events AND clubs TABLES
-- *** APPLY THIS IN YOUR SUPABASE SQL EDITOR ***
-- Project: yvnfhsipyfxdmulajbgl
--
-- Gives admins and organizers a publish/unpublish toggle
-- for events and clubs directly from the admin panel.
-- All other venue types (restaurants, lounges, pubs, etc.)
-- already have this column.
-- =====================================================

ALTER TABLE events ADD COLUMN IF NOT EXISTS is_active BOOLEAN DEFAULT true;
ALTER TABLE clubs  ADD COLUMN IF NOT EXISTS is_active BOOLEAN DEFAULT true;

-- Back-fill any existing rows that land as NULL
UPDATE events SET is_active = true WHERE is_active IS NULL;
UPDATE clubs  SET is_active = true WHERE is_active IS NULL;

-- Verify
SELECT 'events' AS tbl, COUNT(*) AS total, COUNT(*) FILTER (WHERE is_active) AS active FROM events
UNION ALL
SELECT 'clubs',         COUNT(*),           COUNT(*) FILTER (WHERE is_active)             FROM clubs;
