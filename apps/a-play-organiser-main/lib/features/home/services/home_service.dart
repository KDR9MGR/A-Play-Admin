import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../core/utils/app_failure.dart';
import '../../../core/utils/error_message_mapper.dart';
import '../models/event.dart';

class HomeService {
  final SupabaseClient _supabase = Supabase.instance.client;

  Event _mapEvent(Map<String, dynamic> data) {
    return Event.fromJson({
      'id': data['id'],
      'title': data['title'],
      'description': data['description'],
      'coverImage': data['cover_image'],
      'startDate': data['start_date'],
      'endDate': data['end_date'] ?? data['start_date'],
      'venueId': data['club_id'],
      'category': data['category'],
      'capacity': data['capacity'],
      'price': (data['price'] is num) ? (data['price'] as num).toDouble() : 0.0,
      'status': data['status'] ?? 'draft',
      'featuredImage': data['cover_image'],
      'organizerId': data['created_by'],
      'createdAt': data['created_at'],
      'updatedAt': data['updated_at'],
      'createdBy': data['created_by'],
    });
  }

  Future<Either<AppFailure, List<Event>>> getEvents() async {
    try {
      final response = await _supabase
          .from('events')
          .select()
          .order('start_date', ascending: true);

      final events = response.map<Event>(_mapEvent).toList();

      return Right(events);
    } on PostgrestException catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.serverFailure(message));
    } catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.serverFailure(message));
    }
  }

  Future<Either<AppFailure, List<Event>>> getEventsByUser(String userId) async {
    try {
      final response = await _supabase
          .from('events')
          .select()
          .eq('created_by', userId)
          .order('start_date', ascending: true);

      final events = response.map<Event>(_mapEvent).toList();

      return Right(events);
    } catch (e) {
      return Left(AppFailure.serverFailure(e.toString()));
    }
  }

  Future<Either<AppFailure, List<Event>>> getUpcomingEventsByUser(String userId) async {
    try {
      final now = DateTime.now().toIso8601String();
      final response = await _supabase
          .from('events')
          .select()
          .eq('created_by', userId)
          .gte('start_date', now)
          .order('start_date', ascending: true)
          .limit(10);

      final events = response.map<Event>(_mapEvent).toList();

      return Right(events);
    } catch (e) {
      debugPrint('Error fetching upcoming events: $e');
      // For fresh accounts or errors, return empty list instead of failure to avoid UI error state
      return const Right([]);
    }
  }

  Future<Either<AppFailure, List<Club>>> getClubs() async {
    try {
      final response = await _supabase
          .from('clubs')
          .select()
          .eq('is_active', true)
          .order('name', ascending: true);

      final clubs = response.map<Club>((data) {
        return Club.fromJson({
          'id': data['id'],
          'name': data['name'],
          'description': data['description'],
          'logoUrl': data['logo_url'],
          'createdAt': data['created_at'],
        });
      }).toList();

      return Right(clubs);
    } catch (e) {
      return Left(AppFailure.serverFailure(e.toString()));
    }
  }

  /// Clubs created by [ownerId] that are approved (is_active) - used for the
  /// event-creation venue picker so an organizer can only publish events
  /// under their own, admin-approved venues. Pending submissions are
  /// intentionally excluded here (they still show up in "My Venues" via
  /// VenueService.getMyVenues, just not selectable for a new event yet).
  Future<Either<AppFailure, List<Club>>> getClubsByOwner(String ownerId) async {
    try {
      final response = await _supabase
          .from('clubs')
          .select()
          .eq('created_by', ownerId)
          .eq('is_active', true)
          .order('name', ascending: true);

      final clubs = response.map<Club>((data) {
        return Club.fromJson({
          'id': data['id'],
          'name': data['name'],
          'description': data['description'],
          'logoUrl': data['logo_url'],
          'createdAt': data['created_at'],
        });
      }).toList();

      return Right(clubs);
    } catch (e) {
      return Left(AppFailure.serverFailure(e.toString()));
    }
  }

  Future<Either<AppFailure, List<Event>>> getEventsByClub(String clubId) async {
    try {
      final response = await _supabase
          .from('events')
          .select()
          .eq('club_id', clubId)
          .order('start_date', ascending: true);

      final events = response.map<Event>(_mapEvent).toList();

      return Right(events);
    } catch (e) {
      return Left(AppFailure.serverFailure(e.toString()));
    }
  }

  Future<Either<AppFailure, List<Event>>> getUpcomingEvents() async {
    try {
      final now = DateTime.now().toIso8601String();
      final response = await _supabase
          .from('events')
          .select()
          .gte('start_date', now)
          .order('start_date', ascending: true)
          .limit(10);

      final events = response.map<Event>(_mapEvent).toList();

      return Right(events);
    } catch (e) {
      return Left(AppFailure.serverFailure(e.toString()));
    }
  }

  Future<Either<AppFailure, Club?>> getClubById(String clubId) async {
    try {
      final response = await _supabase
          .from('clubs')
          .select()
          .eq('id', clubId)
          .maybeSingle();

      if (response == null) {
        return const Right(null);
      }

      final club = Club.fromJson({
        'id': response['id'],
        'name': response['name'],
        'description': response['description'],
        'logoUrl': response['logo_url'],
        'createdAt': response['created_at'],
      });

      return Right(club);
    } catch (e) {
      return Left(AppFailure.serverFailure(e.toString()));
    }
  }

  Future<Either<AppFailure, Event?>> getEventById(String eventId) async {
    try {
      final response = await _supabase
          .from('events')
          .select()
          .eq('id', eventId)
          .maybeSingle();
      if (response == null) {
        return const Right(null);
      }
      return Right(_mapEvent(response));
    } catch (e) {
      return Left(AppFailure.serverFailure(e.toString()));
    }
  }

  Future<Either<AppFailure, Event>> createEvent({
    required String title,
    required String description,
    required String location,
    String? clubId,
    required DateTime startDate,
    required DateTime endDate,
    String? coverImage,
  }) async {
    try {
      // created_by always comes from the authenticated session, never a
      // caller-supplied value, so an event can't be published under someone
      // else's organizer ID. RLS also enforces created_by = auth.uid() on insert.
      final createdBy = _supabase.auth.currentUser?.id;
      if (createdBy == null) {
        return Left(AppFailure.authFailure('You must be logged in to create events'));
      }

      final response = await _supabase
          .from('events')
          .insert({
            'title': title,
            'description': description,
            'location': location,
            'club_id': clubId,
            'start_date': startDate.toIso8601String(),
            'end_date': endDate.toIso8601String(),
            'cover_image': coverImage,
            'created_by': createdBy,
          })
          .select()
          .single();

      return Right(_mapEvent(response));
    } catch (e) {
      return Left(AppFailure.serverFailure(e.toString()));
    }
  }

  /// Subscribe to real-time event updates
  RealtimeChannel subscribeToEvents(
    void Function(Event event) onInsert,
    void Function(Event event) onUpdate,
    void Function(String eventId) onDelete,
  ) {
    final channel = _supabase
        .channel('events_all')
        .onPostgresChanges(
          event: PostgresChangeEvent.insert,
          schema: 'public',
          table: 'events',
          callback: (payload) {
            onInsert(_mapEvent(payload.newRecord));
          },
        )
        .onPostgresChanges(
          event: PostgresChangeEvent.update,
          schema: 'public',
          table: 'events',
          callback: (payload) {
            onUpdate(_mapEvent(payload.newRecord));
          },
        )
        .onPostgresChanges(
          event: PostgresChangeEvent.delete,
          schema: 'public',
          table: 'events',
          callback: (payload) {
            final eventId = payload.oldRecord['id'] as String;
            onDelete(eventId);
          },
        )
        .subscribe();

    return channel;
  }

  /// Subscribe to real-time updates for a specific organizer's events
  RealtimeChannel subscribeToOrganizerEvents(
    String organizerId,
    void Function(Event event) onInsert,
    void Function(Event event) onUpdate,
    void Function(String eventId) onDelete,
  ) {
    final channel = _supabase
        .channel('organizer_events_$organizerId')
        .onPostgresChanges(
          event: PostgresChangeEvent.insert,
          schema: 'public',
          table: 'events',
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'created_by',
            value: organizerId,
          ),
          callback: (payload) {
            onInsert(_mapEvent(payload.newRecord));
          },
        )
        .onPostgresChanges(
          event: PostgresChangeEvent.update,
          schema: 'public',
          table: 'events',
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'created_by',
            value: organizerId,
          ),
          callback: (payload) {
            onUpdate(_mapEvent(payload.newRecord));
          },
        )
        .onPostgresChanges(
          event: PostgresChangeEvent.delete,
          schema: 'public',
          table: 'events',
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'created_by',
            value: organizerId,
          ),
          callback: (payload) {
            final eventId = payload.oldRecord['id'] as String;
            onDelete(eventId);
          },
        )
        .subscribe();

    return channel;
  }
}
