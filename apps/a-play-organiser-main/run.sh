#!/bin/bash

# Script to run Flutter app with environment variables from .env file

# Check if .env file exists
if [ ! -f .env ]; then
    echo "Error: .env file not found!"
    echo "Please create a .env file based on .env.example"
    exit 1
fi

# Load environment variables from .env file
export $(grep -v '^#' .env | grep -v '^$' | xargs)

# Check if required variables are set
if [ -z "$SUPABASE_URL" ] || [ -z "$SUPABASE_ANON_KEY" ]; then
    echo "Error: SUPABASE_URL and SUPABASE_ANON_KEY must be set in .env file"
    exit 1
fi

# Build dart-define arguments
DART_DEFINES=""
DART_DEFINES="$DART_DEFINES --dart-define=SUPABASE_URL=$SUPABASE_URL"
DART_DEFINES="$DART_DEFINES --dart-define=SUPABASE_ANON_KEY=$SUPABASE_ANON_KEY"

# Add optional variables if they exist
if [ ! -z "$PASSWORD_RESET_REDIRECT_URL" ]; then
    DART_DEFINES="$DART_DEFINES --dart-define=PASSWORD_RESET_REDIRECT_URL=$PASSWORD_RESET_REDIRECT_URL"
fi

if [ ! -z "$EVENT_IMAGES_BUCKET" ]; then
    DART_DEFINES="$DART_DEFINES --dart-define=EVENT_IMAGES_BUCKET=$EVENT_IMAGES_BUCKET"
fi

echo "Running Flutter app with Supabase configuration..."
echo "SUPABASE_URL: $SUPABASE_URL"
echo ""

# Run flutter with the dart-define arguments
# Pass any additional arguments to flutter run (e.g., -d device_id)
flutter run $DART_DEFINES "$@"
