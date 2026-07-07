import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import '../config/maps_config.dart';

class PlaceSuggestion {
  final String placeId;
  final String description;

  const PlaceSuggestion({required this.placeId, required this.description});
}

/// Thin wrapper around the Google Places Autocomplete API. No-ops (returns
/// an empty list) if GOOGLE_MAPS_API_KEY isn't configured, so location
/// fields degrade gracefully to plain text entry instead of crashing.
class PlacesService {
  static const _autocompleteUrl =
      'https://maps.googleapis.com/maps/api/place/autocomplete/json';

  /// A random session token would normally be generated per autocomplete
  /// "session" (from first keystroke to selection) to keep Places API
  /// billing at the cheaper per-session rate rather than per-request.
  final String _sessionToken = DateTime.now().microsecondsSinceEpoch.toString();

  bool get isConfigured => MapsConfig.googlePlacesApiKey.isNotEmpty;

  Future<List<PlaceSuggestion>> autocomplete(String input) async {
    if (!isConfigured || input.trim().isEmpty) {
      return [];
    }

    try {
      final uri = Uri.parse(_autocompleteUrl).replace(queryParameters: {
        'input': input,
        'key': MapsConfig.googlePlacesApiKey,
        'sessiontoken': _sessionToken,
      });

      final response = await http.get(uri);
      if (response.statusCode != 200) {
        debugPrint('PlacesService: HTTP ${response.statusCode}');
        return [];
      }

      final body = jsonDecode(response.body) as Map<String, dynamic>;
      final status = body['status'] as String?;
      if (status != 'OK' && status != 'ZERO_RESULTS') {
        debugPrint('PlacesService: API status $status - ${body['error_message']}');
        return [];
      }

      final predictions = (body['predictions'] as List?) ?? [];
      return predictions
          .map((p) => PlaceSuggestion(
                placeId: p['place_id'] as String,
                description: p['description'] as String,
              ))
          .toList();
    } catch (e) {
      debugPrint('PlacesService: autocomplete failed: $e');
      return [];
    }
  }
}
