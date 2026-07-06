import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../core/utils/app_failure.dart';
import '../models/venue.dart';

class VenueService {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<Either<AppFailure, List<Venue>>> getMyVenues() async {
    final userId = _supabase.auth.currentUser?.id;
    if (userId == null) {
      return Left(AppFailure.authFailure('You must be logged in to view venues'));
    }

    try {
      final response = await _supabase
          .from('clubs')
          .select()
          .eq('created_by', userId)
          .order('created_at', ascending: false);

      final venues = response.map<Venue>((data) => Venue.fromJson(data)).toList();
      return Right(venues);
    } catch (e) {
      return Left(AppFailure.serverFailure(e.toString()));
    }
  }

  /// Creates a venue owned by the current organizer. New venues start out
  /// inactive (is_active = false) and only become bookable once an admin
  /// approves them - same convention as pubs/lounges/beaches/restaurants.
  Future<Either<AppFailure, Venue>> createVenue({
    required String name,
    required String type,
    required String address,
    String? description,
    int? capacity,
    List<String> images = const [],
  }) async {
    final userId = _supabase.auth.currentUser?.id;
    if (userId == null) {
      return Left(AppFailure.authFailure('You must be logged in to create a venue'));
    }

    try {
      final response = await _supabase
          .from('clubs')
          .insert({
            'name': name,
            'type': type,
            'address': address,
            'description': description ?? '',
            'capacity': capacity,
            'images': images,
            'created_by': userId,
            'is_active': false,
          })
          .select()
          .single();

      return Right(Venue.fromJson(response));
    } catch (e) {
      return Left(AppFailure.serverFailure(e.toString()));
    }
  }
}
