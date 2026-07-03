class SupabaseConfig {
  static const String supabaseUrl =
      String.fromEnvironment('SUPABASE_URL', defaultValue: '');
  static const String supabaseAnonKey =
      String.fromEnvironment('SUPABASE_ANON_KEY', defaultValue: '');

  static const String passwordResetRedirectUrl =
      String.fromEnvironment('PASSWORD_RESET_REDIRECT_URL', defaultValue: '');

  static const String eventImagesBucket =
      String.fromEnvironment('EVENT_IMAGES_BUCKET', defaultValue: 'event-images');
}
