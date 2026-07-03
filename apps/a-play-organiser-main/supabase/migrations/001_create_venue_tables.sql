-- =====================================================
-- A Play Organiser - Venue Management Tables
-- =====================================================
-- This migration creates tables for managing various venue types:
-- lounges, pubs, arcade_centers, beaches, live_shows
-- =====================================================

-- Enable UUID extension if not already enabled
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- Enable PostGIS extension for location data (if needed for future geolocation features)
-- CREATE EXTENSION IF NOT EXISTS postgis;

-- =====================================================
-- 1. LOUNGES TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS public.lounges (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    city TEXT NOT NULL,
    address TEXT,
    latitude DECIMAL(10,8),
    longitude DECIMAL(11,8),
    price_range TEXT, -- e.g., "$$", "$$$", "$$$$"
    image_url TEXT,
    gallery_urls TEXT[], -- Array of image URLs
    rating DECIMAL(2,1) DEFAULT 0.0 CHECK (rating >= 0 AND rating <= 5),
    total_reviews INTEGER DEFAULT 0,
    phone TEXT,
    email TEXT,
    website TEXT,
    opening_hours JSONB, -- Store hours as JSON: {"monday": "9am-5pm", ...}
    amenities TEXT[], -- Array of amenities: ["WiFi", "Parking", etc.]
    capacity INTEGER,
    is_featured BOOLEAN DEFAULT FALSE,
    is_active BOOLEAN DEFAULT TRUE,
    created_by UUID REFERENCES public.profiles(id) ON DELETE SET NULL,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- =====================================================
-- 2. PUBS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS public.pubs (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    city TEXT NOT NULL,
    address TEXT,
    latitude DECIMAL(10,8),
    longitude DECIMAL(11,8),
    price_range TEXT,
    image_url TEXT,
    gallery_urls TEXT[],
    rating DECIMAL(2,1) DEFAULT 0.0 CHECK (rating >= 0 AND rating <= 5),
    total_reviews INTEGER DEFAULT 0,
    phone TEXT,
    email TEXT,
    website TEXT,
    opening_hours JSONB,
    amenities TEXT[],
    capacity INTEGER,
    has_live_music BOOLEAN DEFAULT FALSE,
    has_sports_viewing BOOLEAN DEFAULT FALSE,
    happy_hour_times TEXT,
    is_featured BOOLEAN DEFAULT FALSE,
    is_active BOOLEAN DEFAULT TRUE,
    created_by UUID REFERENCES public.profiles(id) ON DELETE SET NULL,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- =====================================================
-- 3. ARCADE CENTERS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS public.arcade_centers (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    city TEXT NOT NULL,
    address TEXT,
    latitude DECIMAL(10,8),
    longitude DECIMAL(11,8),
    price_range TEXT,
    image_url TEXT,
    gallery_urls TEXT[],
    rating DECIMAL(2,1) DEFAULT 0.0 CHECK (rating >= 0 AND rating <= 5),
    total_reviews INTEGER DEFAULT 0,
    phone TEXT,
    email TEXT,
    website TEXT,
    opening_hours JSONB,
    amenities TEXT[],
    game_types TEXT[], -- ["VR Games", "Classic Arcade", "Racing", etc.]
    has_food_court BOOLEAN DEFAULT FALSE,
    has_party_rooms BOOLEAN DEFAULT FALSE,
    age_restriction TEXT, -- e.g., "All Ages", "18+", etc.
    is_featured BOOLEAN DEFAULT FALSE,
    is_active BOOLEAN DEFAULT TRUE,
    created_by UUID REFERENCES public.profiles(id) ON DELETE SET NULL,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- =====================================================
-- 4. BEACHES TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS public.beaches (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    city TEXT NOT NULL,
    address TEXT,
    latitude DECIMAL(10,8),
    longitude DECIMAL(11,8),
    image_url TEXT,
    gallery_urls TEXT[],
    rating DECIMAL(2,1) DEFAULT 0.0 CHECK (rating >= 0 AND rating <= 5),
    total_reviews INTEGER DEFAULT 0,
    phone TEXT,
    website TEXT,
    amenities TEXT[], -- ["Lifeguard", "Showers", "Parking", "Food Stalls", etc.]
    water_sports TEXT[], -- ["Surfing", "Jet Ski", "Kayaking", etc.]
    has_parking BOOLEAN DEFAULT TRUE,
    has_restrooms BOOLEAN DEFAULT TRUE,
    has_food_vendors BOOLEAN DEFAULT FALSE,
    is_family_friendly BOOLEAN DEFAULT TRUE,
    best_time_to_visit TEXT, -- e.g., "Early Morning", "Sunset"
    entry_fee TEXT, -- e.g., "Free", "$5", etc.
    is_featured BOOLEAN DEFAULT FALSE,
    is_active BOOLEAN DEFAULT TRUE,
    created_by UUID REFERENCES public.profiles(id) ON DELETE SET NULL,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- =====================================================
-- 5. LIVE SHOWS TABLE
-- =====================================================
CREATE TABLE IF NOT EXISTS public.live_shows (
    id UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
    title TEXT NOT NULL,
    description TEXT,
    performer TEXT NOT NULL,
    venue_name TEXT NOT NULL,
    city TEXT NOT NULL,
    address TEXT,
    latitude DECIMAL(10,8),
    longitude DECIMAL(11,8),
    show_date TIMESTAMPTZ NOT NULL,
    end_date TIMESTAMPTZ,
    show_time TEXT, -- e.g., "7:00 PM - 11:00 PM"
    image_url TEXT,
    gallery_urls TEXT[],
    ticket_price DECIMAL(10,2),
    ticket_url TEXT,
    phone TEXT,
    email TEXT,
    website TEXT,
    genre TEXT, -- e.g., "Comedy", "Music", "Theater", "Dance"
    duration TEXT, -- e.g., "2 hours", "90 minutes"
    age_restriction TEXT,
    total_seats INTEGER,
    available_seats INTEGER,
    is_featured BOOLEAN DEFAULT FALSE,
    is_active BOOLEAN DEFAULT TRUE,
    created_by UUID REFERENCES public.profiles(id) ON DELETE SET NULL,
    created_at TIMESTAMPTZ DEFAULT NOW(),
    updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- =====================================================
-- INDEXES for better query performance
-- =====================================================

-- Lounges indexes
CREATE INDEX IF NOT EXISTS idx_lounges_city ON public.lounges(city);
CREATE INDEX IF NOT EXISTS idx_lounges_is_featured ON public.lounges(is_featured);
CREATE INDEX IF NOT EXISTS idx_lounges_is_active ON public.lounges(is_active);
CREATE INDEX IF NOT EXISTS idx_lounges_created_at ON public.lounges(created_at DESC);

-- Pubs indexes
CREATE INDEX IF NOT EXISTS idx_pubs_city ON public.pubs(city);
CREATE INDEX IF NOT EXISTS idx_pubs_is_featured ON public.pubs(is_featured);
CREATE INDEX IF NOT EXISTS idx_pubs_is_active ON public.pubs(is_active);
CREATE INDEX IF NOT EXISTS idx_pubs_created_at ON public.pubs(created_at DESC);

-- Arcade Centers indexes
CREATE INDEX IF NOT EXISTS idx_arcade_centers_city ON public.arcade_centers(city);
CREATE INDEX IF NOT EXISTS idx_arcade_centers_is_featured ON public.arcade_centers(is_featured);
CREATE INDEX IF NOT EXISTS idx_arcade_centers_is_active ON public.arcade_centers(is_active);
CREATE INDEX IF NOT EXISTS idx_arcade_centers_created_at ON public.arcade_centers(created_at DESC);

-- Beaches indexes
CREATE INDEX IF NOT EXISTS idx_beaches_city ON public.beaches(city);
CREATE INDEX IF NOT EXISTS idx_beaches_is_featured ON public.beaches(is_featured);
CREATE INDEX IF NOT EXISTS idx_beaches_is_active ON public.beaches(is_active);
CREATE INDEX IF NOT EXISTS idx_beaches_created_at ON public.beaches(created_at DESC);

-- Live Shows indexes
CREATE INDEX IF NOT EXISTS idx_live_shows_show_date ON public.live_shows(show_date);
CREATE INDEX IF NOT EXISTS idx_live_shows_city ON public.live_shows(city);
CREATE INDEX IF NOT EXISTS idx_live_shows_is_featured ON public.live_shows(is_featured);
CREATE INDEX IF NOT EXISTS idx_live_shows_is_active ON public.live_shows(is_active);
CREATE INDEX IF NOT EXISTS idx_live_shows_created_at ON public.live_shows(created_at DESC);

-- =====================================================
-- TRIGGERS for updated_at timestamps
-- =====================================================

-- Function to update updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Lounges trigger
DROP TRIGGER IF EXISTS update_lounges_updated_at ON public.lounges;
CREATE TRIGGER update_lounges_updated_at
    BEFORE UPDATE ON public.lounges
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();

-- Pubs trigger
DROP TRIGGER IF EXISTS update_pubs_updated_at ON public.pubs;
CREATE TRIGGER update_pubs_updated_at
    BEFORE UPDATE ON public.pubs
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();

-- Arcade Centers trigger
DROP TRIGGER IF EXISTS update_arcade_centers_updated_at ON public.arcade_centers;
CREATE TRIGGER update_arcade_centers_updated_at
    BEFORE UPDATE ON public.arcade_centers
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();

-- Beaches trigger
DROP TRIGGER IF EXISTS update_beaches_updated_at ON public.beaches;
CREATE TRIGGER update_beaches_updated_at
    BEFORE UPDATE ON public.beaches
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();

-- Live Shows trigger
DROP TRIGGER IF EXISTS update_live_shows_updated_at ON public.live_shows;
CREATE TRIGGER update_live_shows_updated_at
    BEFORE UPDATE ON public.live_shows
    FOR EACH ROW
    EXECUTE FUNCTION update_updated_at_column();

-- =====================================================
-- COMMENTS for documentation
-- =====================================================
COMMENT ON TABLE public.lounges IS 'Stores lounge venue information';
COMMENT ON TABLE public.pubs IS 'Stores pub venue information';
COMMENT ON TABLE public.arcade_centers IS 'Stores arcade center venue information';
COMMENT ON TABLE public.beaches IS 'Stores beach location information';
COMMENT ON TABLE public.live_shows IS 'Stores live show and event information';
