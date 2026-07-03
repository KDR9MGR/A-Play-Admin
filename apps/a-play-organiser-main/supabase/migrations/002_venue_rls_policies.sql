-- =====================================================
-- A Play Organiser - Row Level Security (RLS) Policies
-- =====================================================
-- Secure access control for venue tables
-- Public: READ access
-- Organizers/Admins: FULL CRUD access
-- =====================================================

-- =====================================================
-- ENABLE RLS on all venue tables
-- =====================================================
ALTER TABLE public.lounges ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.pubs ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.arcade_centers ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.beaches ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.live_shows ENABLE ROW LEVEL SECURITY;

-- =====================================================
-- LOUNGES POLICIES
-- =====================================================

-- Allow public SELECT for active lounges
DROP POLICY IF EXISTS "Allow public read access to active lounges" ON public.lounges;
CREATE POLICY "Allow public read access to active lounges"
ON public.lounges FOR SELECT
USING (is_active = true);

-- Allow organizers to view all lounges (including inactive)
DROP POLICY IF EXISTS "Allow organizers to view all lounges" ON public.lounges;
CREATE POLICY "Allow organizers to view all lounges"
ON public.lounges FOR SELECT
USING (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- Allow organizers to INSERT lounges
DROP POLICY IF EXISTS "Allow organizers to create lounges" ON public.lounges;
CREATE POLICY "Allow organizers to create lounges"
ON public.lounges FOR INSERT
WITH CHECK (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- Allow organizers to UPDATE their own lounges
DROP POLICY IF EXISTS "Allow organizers to update lounges" ON public.lounges;
CREATE POLICY "Allow organizers to update lounges"
ON public.lounges FOR UPDATE
USING (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- Allow organizers to DELETE their own lounges
DROP POLICY IF EXISTS "Allow organizers to delete lounges" ON public.lounges;
CREATE POLICY "Allow organizers to delete lounges"
ON public.lounges FOR DELETE
USING (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- =====================================================
-- PUBS POLICIES
-- =====================================================

-- Allow public SELECT for active pubs
DROP POLICY IF EXISTS "Allow public read access to active pubs" ON public.pubs;
CREATE POLICY "Allow public read access to active pubs"
ON public.pubs FOR SELECT
USING (is_active = true);

-- Allow organizers to view all pubs
DROP POLICY IF EXISTS "Allow organizers to view all pubs" ON public.pubs;
CREATE POLICY "Allow organizers to view all pubs"
ON public.pubs FOR SELECT
USING (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- Allow organizers to INSERT pubs
DROP POLICY IF EXISTS "Allow organizers to create pubs" ON public.pubs;
CREATE POLICY "Allow organizers to create pubs"
ON public.pubs FOR INSERT
WITH CHECK (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- Allow organizers to UPDATE pubs
DROP POLICY IF EXISTS "Allow organizers to update pubs" ON public.pubs;
CREATE POLICY "Allow organizers to update pubs"
ON public.pubs FOR UPDATE
USING (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- Allow organizers to DELETE pubs
DROP POLICY IF EXISTS "Allow organizers to delete pubs" ON public.pubs;
CREATE POLICY "Allow organizers to delete pubs"
ON public.pubs FOR DELETE
USING (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- =====================================================
-- ARCADE CENTERS POLICIES
-- =====================================================

-- Allow public SELECT for active arcade centers
DROP POLICY IF EXISTS "Allow public read access to active arcade centers" ON public.arcade_centers;
CREATE POLICY "Allow public read access to active arcade centers"
ON public.arcade_centers FOR SELECT
USING (is_active = true);

-- Allow organizers to view all arcade centers
DROP POLICY IF EXISTS "Allow organizers to view all arcade centers" ON public.arcade_centers;
CREATE POLICY "Allow organizers to view all arcade centers"
ON public.arcade_centers FOR SELECT
USING (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- Allow organizers to INSERT arcade centers
DROP POLICY IF EXISTS "Allow organizers to create arcade centers" ON public.arcade_centers;
CREATE POLICY "Allow organizers to create arcade centers"
ON public.arcade_centers FOR INSERT
WITH CHECK (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- Allow organizers to UPDATE arcade centers
DROP POLICY IF EXISTS "Allow organizers to update arcade centers" ON public.arcade_centers;
CREATE POLICY "Allow organizers to update arcade centers"
ON public.arcade_centers FOR UPDATE
USING (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- Allow organizers to DELETE arcade centers
DROP POLICY IF EXISTS "Allow organizers to delete arcade centers" ON public.arcade_centers;
CREATE POLICY "Allow organizers to delete arcade centers"
ON public.arcade_centers FOR DELETE
USING (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- =====================================================
-- BEACHES POLICIES
-- =====================================================

-- Allow public SELECT for active beaches
DROP POLICY IF EXISTS "Allow public read access to active beaches" ON public.beaches;
CREATE POLICY "Allow public read access to active beaches"
ON public.beaches FOR SELECT
USING (is_active = true);

-- Allow organizers to view all beaches
DROP POLICY IF EXISTS "Allow organizers to view all beaches" ON public.beaches;
CREATE POLICY "Allow organizers to view all beaches"
ON public.beaches FOR SELECT
USING (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- Allow organizers to INSERT beaches
DROP POLICY IF EXISTS "Allow organizers to create beaches" ON public.beaches;
CREATE POLICY "Allow organizers to create beaches"
ON public.beaches FOR INSERT
WITH CHECK (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- Allow organizers to UPDATE beaches
DROP POLICY IF EXISTS "Allow organizers to update beaches" ON public.beaches;
CREATE POLICY "Allow organizers to update beaches"
ON public.beaches FOR UPDATE
USING (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- Allow organizers to DELETE beaches
DROP POLICY IF EXISTS "Allow organizers to delete beaches" ON public.beaches;
CREATE POLICY "Allow organizers to delete beaches"
ON public.beaches FOR DELETE
USING (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- =====================================================
-- LIVE SHOWS POLICIES
-- =====================================================

-- Allow public SELECT for active and future live shows
DROP POLICY IF EXISTS "Allow public read access to active live shows" ON public.live_shows;
CREATE POLICY "Allow public read access to active live shows"
ON public.live_shows FOR SELECT
USING (is_active = true);

-- Allow organizers to view all live shows
DROP POLICY IF EXISTS "Allow organizers to view all live shows" ON public.live_shows;
CREATE POLICY "Allow organizers to view all live shows"
ON public.live_shows FOR SELECT
USING (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- Allow organizers to INSERT live shows
DROP POLICY IF EXISTS "Allow organizers to create live shows" ON public.live_shows;
CREATE POLICY "Allow organizers to create live shows"
ON public.live_shows FOR INSERT
WITH CHECK (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- Allow organizers to UPDATE live shows
DROP POLICY IF EXISTS "Allow organizers to update live shows" ON public.live_shows;
CREATE POLICY "Allow organizers to update live shows"
ON public.live_shows FOR UPDATE
USING (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- Allow organizers to DELETE live shows
DROP POLICY IF EXISTS "Allow organizers to delete live shows" ON public.live_shows;
CREATE POLICY "Allow organizers to delete live shows"
ON public.live_shows FOR DELETE
USING (
    EXISTS (
        SELECT 1 FROM public.profiles
        WHERE profiles.id = auth.uid()
        AND profiles.is_organizer = true
    )
);

-- =====================================================
-- GRANT PERMISSIONS
-- =====================================================

-- Grant usage on tables to authenticated and anon users
GRANT USAGE ON SCHEMA public TO anon, authenticated;

-- Grant SELECT to anon (public users)
GRANT SELECT ON public.lounges TO anon;
GRANT SELECT ON public.pubs TO anon;
GRANT SELECT ON public.arcade_centers TO anon;
GRANT SELECT ON public.beaches TO anon;
GRANT SELECT ON public.live_shows TO anon;

-- Grant ALL to authenticated users (enforced by RLS policies)
GRANT ALL ON public.lounges TO authenticated;
GRANT ALL ON public.pubs TO authenticated;
GRANT ALL ON public.arcade_centers TO authenticated;
GRANT ALL ON public.beaches TO authenticated;
GRANT ALL ON public.live_shows TO authenticated;
