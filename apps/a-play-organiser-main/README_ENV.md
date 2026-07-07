# Environment Configuration Guide

## Overview

This Flutter app requires Supabase credentials to function properly. The credentials are stored in a `.env` file and must be passed to Flutter during runtime.

## Setup

1. **Ensure your `.env` file is configured:**
   ```bash
   # Your .env file should contain:
   SUPABASE_URL=https://your-project.supabase.co
   SUPABASE_ANON_KEY=your-anon-key
   ```

2. **Verify your Supabase credentials are correct:**
   - Check that the URL matches your Supabase project
   - Verify the anon key is valid and not expired

## Running the App

### Using the Helper Script (Recommended)

The easiest way to run the app is using the provided `run.sh` script, which automatically loads environment variables from `.env`:

```bash
# Run on default device
./run.sh

# Run on specific device
./run.sh -d iphone

# Run on a specific device ID
./run.sh -d <device-id>

# Run with additional flutter options
./run.sh --release
```

### Manual Method

If you prefer to run manually, use:

```bash
flutter run \
  --dart-define=SUPABASE_URL=https://your-project.supabase.co \
  --dart-define=SUPABASE_ANON_KEY=your-anon-key
```

## Building the App

### Using the Helper Script (Recommended)

```bash
# Build APK (Android)
./build.sh apk

# Build iOS
./build.sh ios

# Build with release mode
./build.sh apk --release
```

### Manual Method

```bash
flutter build apk \
  --dart-define=SUPABASE_URL=https://your-project.supabase.co \
  --dart-define=SUPABASE_ANON_KEY=your-anon-key
```

## Troubleshooting

### "Invalid email or password" Error

This error occurs when:
1. **Missing or incorrect Supabase credentials** - The most common cause
   - Solution: Verify your `.env` file has correct `SUPABASE_URL` and `SUPABASE_ANON_KEY`
   - Make sure to use `./run.sh` to run the app

2. **No account exists** - You're trying to log in with credentials that don't exist in your database
   - Solution: Create an account first via the signup screen

3. **Email not verified** - Your Supabase project requires email verification
   - Solution: Check your email and verify your account

4. **Network issues** - Can't connect to Supabase
   - Solution: Check your internet connection

### White Screen Issue

This has been fixed in the latest version. The splash screen will now properly navigate to either the login or home screen after the video finishes.

### App Crashes on Startup

This happens when Supabase credentials are missing:
- Error: `Missing Supabase configuration`
- Solution: Always run the app with `./run.sh` or pass `--dart-define` flags manually

## VS Code / Android Studio Configuration

To run from your IDE with proper environment variables:

### VS Code

Create or edit `.vscode/launch.json`:

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "name": "Flutter (Development)",
      "type": "dart",
      "request": "launch",
      "program": "lib/main.dart",
      "args": [
        "--dart-define=SUPABASE_URL=https://your-project.supabase.co",
        "--dart-define=SUPABASE_ANON_KEY=your-anon-key"
      ]
    }
  ]
}
```

### Android Studio

1. Go to Run > Edit Configurations
2. Add to "Additional run args":
   ```
   --dart-define=SUPABASE_URL=https://your-project.supabase.co --dart-define=SUPABASE_ANON_KEY=your-anon-key
   ```

## Security Notes

- **Never commit your `.env` file to version control** (it's already in `.gitignore`)
- The `.env.example` file should only contain placeholder values
- Rotate your Supabase keys periodically for better security
