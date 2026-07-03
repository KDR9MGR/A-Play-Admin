import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class EmailService {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<bool> sendWelcomeEmail({
    required String email,
    required String fullName,
    bool isOrganizer = false,
  }) async {
    try {
      final response = await _supabase.functions.invoke(
        'send-welcome-email',
        body: {
          'email': email,
          'fullName': fullName,
          'isOrganizer': isOrganizer,
        },
      );

      // Check if the response was successful
      if (response.status == 200) {
        return true;
      } else {
        debugPrint(
          '[EmailService] send-welcome-email failed: status=${response.status}, data=${response.data}',
        );
        return false;
      }
    } catch (e) {
      debugPrint('[EmailService] send-welcome-email exception: $e');
      return false;
    }
  }
}
