class MapsConfig {
  static const String googlePlacesApiKey =
      String.fromEnvironment('GOOGLE_MAPS_API_KEY', defaultValue: '');
}
