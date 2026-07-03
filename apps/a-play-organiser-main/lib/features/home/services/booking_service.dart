import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../core/utils/app_failure.dart';
import '../models/booking.dart';

final bookingServiceProvider = Provider<BookingService>((ref) => BookingService());

class BookingService {
  final SupabaseClient _supabase = Supabase.instance.client;

  /// Create a new booking
  Future<Either<AppFailure, Booking>> createBooking({
    required String eventId,
    required String userId,
    String ticketType = 'regular',
    int quantity = 1,
    required double pricePaid,
    double discountApplied = 0.0,
    String? tier,
    String? paymentMethod,
    String? paymentReference,
  }) async {
    try {
      final response = await _supabase
          .from('bookings')
          .insert({
            'event_id': eventId,
            'user_id': userId,
            'ticket_type': ticketType,
            'quantity': quantity,
            'price_paid': pricePaid,
            'discount_applied': discountApplied,
            'tier': tier,
            'payment_method': paymentMethod,
            'payment_reference': paymentReference,
            'status': 'confirmed',
          })
          .select()
          .single();

      final booking = Booking.fromJson({
        'id': response['id'],
        'eventId': response['event_id'],
        'userId': response['user_id'],
        'ticketType': response['ticket_type'],
        'quantity': response['quantity'],
        'pricePaid': (response['price_paid'] as num).toDouble(),
        'discountApplied': (response['discount_applied'] as num?)?.toDouble() ?? 0.0,
        'tier': response['tier'],
        'status': response['status'],
        'bookingReference': response['booking_reference'],
        'paymentMethod': response['payment_method'],
        'paymentReference': response['payment_reference'],
        'createdAt': response['created_at'],
        'updatedAt': response['updated_at'],
      });

      return Right(booking);
    } catch (e) {
      return Left(AppFailure.serverFailure(e.toString()));
    }
  }

  /// Get user's bookings
  Future<Either<AppFailure, List<Booking>>> getUserBookings(String userId) async {
    try {
      final response = await _supabase
          .from('bookings')
          .select()
          .eq('user_id', userId)
          .order('created_at', ascending: false);

      final bookings = response.map<Booking>((data) {
        return Booking.fromJson({
          'id': data['id'],
          'eventId': data['event_id'],
          'userId': data['user_id'],
          'ticketType': data['ticket_type'],
          'quantity': data['quantity'],
          'pricePaid': (data['price_paid'] as num).toDouble(),
          'discountApplied': (data['discount_applied'] as num?)?.toDouble() ?? 0.0,
          'tier': data['tier'],
          'status': data['status'],
          'bookingReference': data['booking_reference'],
          'paymentMethod': data['payment_method'],
          'paymentReference': data['payment_reference'],
          'createdAt': data['created_at'],
          'updatedAt': data['updated_at'],
        });
      }).toList();

      return Right(bookings);
    } catch (e) {
      return Left(AppFailure.serverFailure(e.toString()));
    }
  }

  /// Get bookings for an event (for organizers)
  Future<Either<AppFailure, List<Booking>>> getEventBookings(String eventId) async {
    try {
      final response = await _supabase
          .from('bookings')
          .select()
          .eq('event_id', eventId)
          .order('created_at', ascending: false);

      final bookings = response.map<Booking>((data) {
        return Booking.fromJson({
          'id': data['id'],
          'eventId': data['event_id'],
          'userId': data['user_id'],
          'ticketType': data['ticket_type'],
          'quantity': data['quantity'],
          'pricePaid': (data['price_paid'] as num).toDouble(),
          'discountApplied': (data['discount_applied'] as num?)?.toDouble() ?? 0.0,
          'tier': data['tier'],
          'status': data['status'],
          'bookingReference': data['booking_reference'],
          'paymentMethod': data['payment_method'],
          'paymentReference': data['payment_reference'],
          'createdAt': data['created_at'],
          'updatedAt': data['updated_at'],
        });
      }).toList();

      return Right(bookings);
    } catch (e) {
      return Left(AppFailure.serverFailure(e.toString()));
    }
  }

  /// Get bookings for organizer's events
  Future<Either<AppFailure, List<Booking>>> getOrganizerBookings(String organizerId) async {
    try {
      final response = await _supabase
          .from('bookings')
          .select('''
            *,
            events!inner(organizer_id)
          ''')
          .eq('events.organizer_id', organizerId)
          .order('created_at', ascending: false);

      final bookings = response.map<Booking>((data) {
        return Booking.fromJson({
          'id': data['id'],
          'eventId': data['event_id'],
          'userId': data['user_id'],
          'ticketType': data['ticket_type'],
          'quantity': data['quantity'],
          'pricePaid': (data['price_paid'] as num).toDouble(),
          'discountApplied': (data['discount_applied'] as num?)?.toDouble() ?? 0.0,
          'tier': data['tier'],
          'status': data['status'],
          'bookingReference': data['booking_reference'],
          'paymentMethod': data['payment_method'],
          'paymentReference': data['payment_reference'],
          'createdAt': data['created_at'],
          'updatedAt': data['updated_at'],
        });
      }).toList();

      return Right(bookings);
    } catch (e) {
      return Left(AppFailure.serverFailure(e.toString()));
    }
  }

  /// Cancel a booking
  Future<Either<AppFailure, Booking>> cancelBooking(String bookingId) async {
    try {
      final response = await _supabase
          .from('bookings')
          .update({'status': 'cancelled'})
          .eq('id', bookingId)
          .select()
          .single();

      final booking = Booking.fromJson({
        'id': response['id'],
        'eventId': response['event_id'],
        'userId': response['user_id'],
        'ticketType': response['ticket_type'],
        'quantity': response['quantity'],
        'pricePaid': (response['price_paid'] as num).toDouble(),
        'discountApplied': (response['discount_applied'] as num?)?.toDouble() ?? 0.0,
        'tier': response['tier'],
        'status': response['status'],
        'bookingReference': response['booking_reference'],
        'paymentMethod': response['payment_method'],
        'paymentReference': response['payment_reference'],
        'createdAt': response['created_at'],
        'updatedAt': response['updated_at'],
      });

      return Right(booking);
    } catch (e) {
      return Left(AppFailure.serverFailure(e.toString()));
    }
  }

  /// Subscribe to real-time booking updates for a user
  RealtimeChannel subscribeToUserBookings(
    String userId,
    void Function(Booking booking) onInsert,
    void Function(Booking booking) onUpdate,
  ) {
    final channel = _supabase
        .channel('user_bookings_$userId')
        .onPostgresChanges(
          event: PostgresChangeEvent.insert,
          schema: 'public',
          table: 'bookings',
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'user_id',
            value: userId,
          ),
          callback: (payload) {
            final booking = Booking.fromJson({
              'id': payload.newRecord['id'],
              'eventId': payload.newRecord['event_id'],
              'userId': payload.newRecord['user_id'],
              'ticketType': payload.newRecord['ticket_type'],
              'quantity': payload.newRecord['quantity'],
              'pricePaid': (payload.newRecord['price_paid'] as num).toDouble(),
              'discountApplied': (payload.newRecord['discount_applied'] as num?)?.toDouble() ?? 0.0,
              'tier': payload.newRecord['tier'],
              'status': payload.newRecord['status'],
              'bookingReference': payload.newRecord['booking_reference'],
              'paymentMethod': payload.newRecord['payment_method'],
              'paymentReference': payload.newRecord['payment_reference'],
              'createdAt': payload.newRecord['created_at'],
              'updatedAt': payload.newRecord['updated_at'],
            });
            onInsert(booking);
          },
        )
        .onPostgresChanges(
          event: PostgresChangeEvent.update,
          schema: 'public',
          table: 'bookings',
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'user_id',
            value: userId,
          ),
          callback: (payload) {
            final booking = Booking.fromJson({
              'id': payload.newRecord['id'],
              'eventId': payload.newRecord['event_id'],
              'userId': payload.newRecord['user_id'],
              'ticketType': payload.newRecord['ticket_type'],
              'quantity': payload.newRecord['quantity'],
              'pricePaid': (payload.newRecord['price_paid'] as num).toDouble(),
              'discountApplied': (payload.newRecord['discount_applied'] as num?)?.toDouble() ?? 0.0,
              'tier': payload.newRecord['tier'],
              'status': payload.newRecord['status'],
              'bookingReference': payload.newRecord['booking_reference'],
              'paymentMethod': payload.newRecord['payment_method'],
              'paymentReference': payload.newRecord['payment_reference'],
              'createdAt': payload.newRecord['created_at'],
              'updatedAt': payload.newRecord['updated_at'],
            });
            onUpdate(booking);
          },
        )
        .subscribe();

    return channel;
  }

  /// Subscribe to real-time booking updates for an event
  RealtimeChannel subscribeToEventBookings(
    String eventId,
    void Function(Booking booking) onInsert,
    void Function(Booking booking) onUpdate,
  ) {
    final channel = _supabase
        .channel('event_bookings_$eventId')
        .onPostgresChanges(
          event: PostgresChangeEvent.insert,
          schema: 'public',
          table: 'bookings',
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'event_id',
            value: eventId,
          ),
          callback: (payload) {
            final booking = Booking.fromJson({
              'id': payload.newRecord['id'],
              'eventId': payload.newRecord['event_id'],
              'userId': payload.newRecord['user_id'],
              'ticketType': payload.newRecord['ticket_type'],
              'quantity': payload.newRecord['quantity'],
              'pricePaid': (payload.newRecord['price_paid'] as num).toDouble(),
              'discountApplied': (payload.newRecord['discount_applied'] as num?)?.toDouble() ?? 0.0,
              'tier': payload.newRecord['tier'],
              'status': payload.newRecord['status'],
              'bookingReference': payload.newRecord['booking_reference'],
              'paymentMethod': payload.newRecord['payment_method'],
              'paymentReference': payload.newRecord['payment_reference'],
              'createdAt': payload.newRecord['created_at'],
              'updatedAt': payload.newRecord['updated_at'],
            });
            onInsert(booking);
          },
        )
        .onPostgresChanges(
          event: PostgresChangeEvent.update,
          schema: 'public',
          table: 'bookings',
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'event_id',
            value: eventId,
          ),
          callback: (payload) {
            final booking = Booking.fromJson({
              'id': payload.newRecord['id'],
              'eventId': payload.newRecord['event_id'],
              'userId': payload.newRecord['user_id'],
              'ticketType': payload.newRecord['ticket_type'],
              'quantity': payload.newRecord['quantity'],
              'pricePaid': (payload.newRecord['price_paid'] as num).toDouble(),
              'discountApplied': (payload.newRecord['discount_applied'] as num?)?.toDouble() ?? 0.0,
              'tier': payload.newRecord['tier'],
              'status': payload.newRecord['status'],
              'bookingReference': payload.newRecord['booking_reference'],
              'paymentMethod': payload.newRecord['payment_method'],
              'paymentReference': payload.newRecord['payment_reference'],
              'createdAt': payload.newRecord['created_at'],
              'updatedAt': payload.newRecord['updated_at'],
            });
            onUpdate(booking);
          },
        )
        .subscribe();

    return channel;
  }
}
