import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../core/utils/app_failure.dart';
import '../../../core/utils/error_message_mapper.dart';
import '../models/event.dart';

class HomeService {
  final SupabaseClient _supabase = Supabase.instance.client;

  Future<Either<AppFailure, List<Event>>> getEvents() async {
    try {
      final response = await _supabase
          .from('events')
          .select()
          .order('event_date', ascending: true);

      final events = response.map<Event>((data) {
        return Event.fromJson({
          'id': data['id'],
          'title': data['title'],
          'description': data['description'],
          'coverImage': data['featured_image'],
          'startDate': data['event_date'],
          'endDate': data['end_date'] ?? data['event_date'],
          'venueId': data['venue_id'],
          'category': data['category'],
          'eventType': data['event_type'],
          'capacity': data['capacity'],
          'price': (data['price'] is num) ? (data['price'] as num).toDouble() : 0.0,
          'vipPrice': (data['vip_price'] as num?)?.toDouble(),
          'earlyBirdPrice': (data['early_bird_price'] as num?)?.toDouble(),
          'status': data['status'] ?? 'draft',
          'featuredImage': data['featured_image'],
          'images': (data['images'] as List?)?.map((e) => e.toString()).toList() ?? [],
          'organizerId': data['organizer_id'],
          'createdAt': data['created_at'],
          'updatedAt': data['updated_at'],
          'createdBy': data['organizer_id'],
        });
      }).toList();

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
          .eq('organizer_id', userId)
          .order('event_date', ascending: true);

      final events = response.map<Event>((data) {
        return Event.fromJson({
          'id': data['id'],
          'title': data['title'],
          'description': data['description'],
          'coverImage': data['featured_image'],
          'startDate': data['event_date'],
          'endDate': data['end_date'] ?? data['event_date'],
          'venueId': data['venue_id'],
          'category': data['category'],
          'eventType': data['event_type'],
          'capacity': data['capacity'],
          'price': (data['price'] is num) ? (data['price'] as num).toDouble() : 0.0,
          'vipPrice': (data['vip_price'] as num?)?.toDouble(),
          'earlyBirdPrice': (data['early_bird_price'] as num?)?.toDouble(),
          'status': data['status'] ?? 'draft',
          'featuredImage': data['featured_image'],
          'images': (data['images'] as List?)?.map((e) => e.toString()).toList() ?? [],
          'organizerId': data['organizer_id'],
          'createdAt': data['created_at'],
          'updatedAt': data['updated_at'],
          'createdBy': data['organizer_id'],
        });
      }).toList();

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
          .eq('organizer_id', userId)
          .gte('event_date', now)
          .order('event_date', ascending: true)
          .limit(10);

      final events = response.map<Event>((data) {
        return Event.fromJson({
          'id': data['id'],
          'title': data['title'],
          'description': data['description'],
          'coverImage': data['featured_image'],
          'startDate': data['event_date'],
          'endDate': data['end_date'] ?? data['event_date'],
          'venueId': data['venue_id'],
          'category': data['category'],
          'eventType': data['event_type'],
          'capacity': data['capacity'],
          'price': (data['price'] is num) ? (data['price'] as num).toDouble() : 0.0,
          'vipPrice': (data['vip_price'] as num?)?.toDouble(),
          'earlyBirdPrice': (data['early_bird_price'] as num?)?.toDouble(),
          'status': data['status'] ?? 'draft',
          'featuredImage': data['featured_image'],
          'images': (data['images'] as List?)?.map((e) => e.toString()).toList() ?? [],
          'organizerId': data['organizer_id'],
          'createdAt': data['created_at'],
          'updatedAt': data['updated_at'],
          'createdBy': data['organizer_id'],
        });
      }).toList();

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
          .from('venues')
          .select()
          .eq('status', 'active')
          .order('name', ascending: true);

      final clubs = response.map<Club>((data) {
        return Club.fromJson({
          'id': data['id'],
          'name': data['name'],
          'description': data['description'],
          'logoUrl': data['featured_image'],
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
          .eq('venue_id', clubId)
          .order('event_date', ascending: true);

      final events = response.map<Event>((data) {
        return Event.fromJson({
          'id': data['id'],
          'title': data['title'],
          'description': data['description'],
          'coverImage': data['featured_image'],
          'startDate': data['event_date'],
          'endDate': data['end_date'] ?? data['event_date'],
          'venueId': data['venue_id'],
          'category': data['category'],
          'eventType': data['event_type'],
          'capacity': data['capacity'],
          'price': (data['price'] is num) ? (data['price'] as num).toDouble() : 0.0,
          'vipPrice': (data['vip_price'] as num?)?.toDouble(),
          'earlyBirdPrice': (data['early_bird_price'] as num?)?.toDouble(),
          'status': data['status'] ?? 'draft',
          'featuredImage': data['featured_image'],
          'images': (data['images'] as List?)?.map((e) => e.toString()).toList() ?? [],
          'organizerId': data['organizer_id'],
          'createdAt': data['created_at'],
          'updatedAt': data['updated_at'],
          'createdBy': data['organizer_id'],
        });
      }).toList();

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
          .gte('event_date', now)
          .order('event_date', ascending: true)
          .limit(10);

      final events = response.map<Event>((data) {
        return Event.fromJson({
          'id': data['id'],
          'title': data['title'],
          'description': data['description'],
          'coverImage': data['featured_image'],
          'startDate': data['event_date'],
          'endDate': data['end_date'] ?? data['event_date'],
          'venueId': data['venue_id'],
          'category': data['category'],
          'eventType': data['event_type'],
          'capacity': data['capacity'],
          'price': (data['price'] is num) ? (data['price'] as num).toDouble() : 0.0,
          'vipPrice': (data['vip_price'] as num?)?.toDouble(),
          'earlyBirdPrice': (data['early_bird_price'] as num?)?.toDouble(),
          'status': data['status'] ?? 'draft',
          'featuredImage': data['featured_image'],
          'images': (data['images'] as List?)?.map((e) => e.toString()).toList() ?? [],
          'organizerId': data['organizer_id'],
          'createdAt': data['created_at'],
          'updatedAt': data['updated_at'],
          'createdBy': data['organizer_id'],
        });
      }).toList();

      return Right(events);
    } catch (e) {
      return Left(AppFailure.serverFailure(e.toString()));
    }
  }

  Future<Either<AppFailure, Club?>> getClubById(String clubId) async {
    try {
      final response = await _supabase
          .from('venues')
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
        'logoUrl': response['featured_image'],
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
      final event = Event.fromJson({
        'id': response['id'],
        'title': response['title'],
        'description': response['description'],
        'coverImage': response['featured_image'],
        'startDate': response['event_date'],
        'endDate': response['end_date'] ?? response['event_date'],
        'venueId': response['venue_id'],
        'category': response['category'],
        'eventType': response['event_type'],
        'capacity': response['capacity'],
        'price': (response['price'] is num)
            ? (response['price'] as num).toDouble()
            : 0.0,
        'vipPrice': (response['vip_price'] as num?)?.toDouble(),
        'earlyBirdPrice': (response['early_bird_price'] as num?)?.toDouble(),
        'status': response['status'] ?? 'draft',
        'featuredImage': response['featured_image'],
        'images': (response['images'] as List?)
                ?.map((e) => e.toString())
                .toList() ??
            [],
        'organizerId': response['organizer_id'],
        'createdAt': response['created_at'],
        'updatedAt': response['updated_at'],
        'createdBy': response['organizer_id'],
      });
      return Right(event);
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
    String? createdBy,
  }) async {
    try {
      final response = await _supabase
          .from('events')
          .insert({
            'title': title,
            'description': description,
            'location': location,
            'venue_id': clubId,
            'event_date': startDate.toIso8601String(),
            'end_date': endDate.toIso8601String(),
            'featured_image': coverImage,
            'organizer_id': createdBy,
          })
          .select()
          .single();

      final event = Event.fromJson({
        'id': response['id'],
        'title': response['title'],
        'description': response['description'],
        'coverImage': response['featured_image'],
        'startDate': response['event_date'],
        'endDate': response['end_date'],
        'venueId': response['venue_id'],
        'featuredImage': response['featured_image'],
        'organizerId': response['organizer_id'],
        'createdAt': response['created_at'],
        'createdBy': response['organizer_id'],
      });

      return Right(event);
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
            final event = _mapEventFromPayload(payload.newRecord);
            onInsert(event);
          },
        )
        .onPostgresChanges(
          event: PostgresChangeEvent.update,
          schema: 'public',
          table: 'events',
          callback: (payload) {
            final event = _mapEventFromPayload(payload.newRecord);
            onUpdate(event);
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
            column: 'organizer_id',
            value: organizerId,
          ),
          callback: (payload) {
            final event = _mapEventFromPayload(payload.newRecord);
            onInsert(event);
          },
        )
        .onPostgresChanges(
          event: PostgresChangeEvent.update,
          schema: 'public',
          table: 'events',
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'organizer_id',
            value: organizerId,
          ),
          callback: (payload) {
            final event = _mapEventFromPayload(payload.newRecord);
            onUpdate(event);
          },
        )
        .onPostgresChanges(
          event: PostgresChangeEvent.delete,
          schema: 'public',
          table: 'events',
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'organizer_id',
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

  /// Helper method to map event from realtime payload
  Event _mapEventFromPayload(Map<String, dynamic> data) {
    return Event.fromJson({
      'id': data['id'],
      'title': data['title'],
      'description': data['description'],
      'coverImage': data['featured_image'],
      'startDate': data['event_date'],
      'endDate': data['end_date'] ?? data['event_date'],
      'venueId': data['venue_id'],
      'category': data['category'],
      'eventType': data['event_type'],
      'capacity': data['capacity'],
      'price': (data['price'] is num) ? (data['price'] as num).toDouble() : 0.0,
      'vipPrice': (data['vip_price'] as num?)?.toDouble(),
      'earlyBirdPrice': (data['early_bird_price'] as num?)?.toDouble(),
      'status': data['status'] ?? 'draft',
      'featuredImage': data['featured_image'],
      'images': (data['images'] as List?)?.map((e) => e.toString()).toList() ?? [],
      'organizerId': data['organizer_id'],
      'createdAt': data['created_at'],
      'updatedAt': data['updated_at'],
      'createdBy': data['organizer_id'],
    });
  }
} 
