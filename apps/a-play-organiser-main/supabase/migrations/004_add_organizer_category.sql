-- Migration: Add organizer_category column to profiles table
-- Date: 2024-12-24
-- Description: Adds category field for organizers (lounge, club, liveShows, restaurant, bar, beach, arcadeCenter, eventPlanner, other)

-- Add organizer_category column to profiles table
ALTER TABLE public.profiles
ADD COLUMN IF NOT EXISTS organizer_category TEXT;

-- Add check constraint for valid categories
ALTER TABLE public.profiles
ADD CONSTRAINT valid_organizer_category
CHECK (organizer_category IS NULL OR organizer_category IN (
  'lounge',
  'club',
  'liveShows',
  'restaurant',
  'bar',
  'beach',
  'arcadeCenter',
  'eventPlanner',
  'other'
));

-- Create index for faster category-based queries
CREATE INDEX IF NOT EXISTS idx_profiles_organizer_category
ON public.profiles(organizer_category)
WHERE organizer_category IS NOT NULL;

-- Add comment for documentation
COMMENT ON COLUMN public.profiles.organizer_category IS
'Category of organizer business: lounge, club, liveShows, restaurant, bar, beach, arcadeCenter, eventPlanner, other';

-- Example query to get events by organizer category:
-- SELECT e.*
-- FROM events e
-- INNER JOIN profiles p ON e.organizer_id = p.id
-- WHERE p.organizer_category = 'lounge'
-- AND e.status = 'published';
