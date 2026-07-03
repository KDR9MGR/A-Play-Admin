import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/transaction.dart';

class RevenueService {
  static final _supabase = Supabase.instance.client;

  static Future<Map<String, dynamic>> getOrganizerRevenue(String organizerId) async {
    try {
      // First get total events count (all events by organizer)
      final allEventsResponse = await _supabase
          .from('events')
          .select('id, created_at')
          .eq('organizer_id', organizerId);

      final totalEvents = allEventsResponse.length;

      // Then get events with bookings for revenue calculations
      final eventsWithBookingsResponse = await _supabase
          .from('events')
          .select('''
            id,
            title,
            event_date,
            created_at,
            bookings!left(
              id,
              amount,
              status,
              user_id,
              created_at
            )
          ''')
          .eq('organizer_id', organizerId);

      final now = DateTime.now();
      final thisMonthStart = DateTime(now.year, now.month, 1);
      
      double totalRevenue = 0.0;
      double revenueThisMonth = 0.0;
      int totalBookings = 0;
      int eventsThisMonth = 0;
      Set<String> uniqueParticipants = <String>{};

      // Count events created this month from all events
      for (final event in allEventsResponse) {
        final eventDate = DateTime.parse(event['created_at'] as String);
        if (eventDate.isAfter(thisMonthStart)) {
          eventsThisMonth++;
        }
      }

      // Calculate revenue and participants from events with bookings
      for (final event in eventsWithBookingsResponse) {
        final bookings = event['bookings'] as List<dynamic>?;
        
        if (bookings != null) {
          for (final booking in bookings) {
            // Skip null bookings (events without bookings)
            if (booking == null) continue;
            
            // Only count confirmed bookings
            if (booking['status'] != 'confirmed') continue;
            
            final amount = booking['amount'] != null 
                ? double.tryParse(booking['amount'].toString()) ?? 0.0 
                : 0.0;
            final bookingDate = DateTime.parse(booking['created_at'] as String);
            
            totalRevenue += amount;
            totalBookings++;
            uniqueParticipants.add(booking['user_id'] as String);
            
            if (bookingDate.isAfter(thisMonthStart)) {
              revenueThisMonth += amount;
            }
          }
        }
      }

      return {
        'totalRevenue': totalRevenue,
        'monthlyRevenue': revenueThisMonth,
        'totalEvents': totalEvents,
        'totalBookings': totalBookings,
        'uniqueParticipants': uniqueParticipants.length,
        'eventsThisMonth': eventsThisMonth,
      };
    } catch (e) {
      throw Exception('Failed to fetch revenue data: $e');
    }
  }

  static Future<Map<String, dynamic>> getUserStats(String userId) async {
    try {
      // Get user's event bookings and participation
      final bookingsResponse = await _supabase
          .from('bookings')
          .select('id, event_id, created_at, status')
          .eq('user_id', userId)
          .eq('status', 'confirmed');

      final now = DateTime.now();
      final thisYearStart = DateTime(now.year, 1, 1);
      final next30Days = now.add(const Duration(days: 30));
      
      int eventsJoinedThisYear = 0;
      int upcomingEvents = 0;

      for (final booking in bookingsResponse) {
        final bookingDate = DateTime.parse(booking['created_at'] as String);
        
        if (bookingDate.isAfter(thisYearStart)) {
          eventsJoinedThisYear++;
        }

        // For upcoming events, you'd need to check the event start_date
        // This is a simplified version
        if (bookingDate.isAfter(now) && bookingDate.isBefore(next30Days)) {
          upcomingEvents++;
        }
      }

      return {
        'events_joined': eventsJoinedThisYear,
        'upcoming_events': upcomingEvents,
        'total_bookings': bookingsResponse.length,
        'connections': 24, // This would come from a friends/connections table
        'favorites': 12, // This would come from a favorites table
      };
    } catch (e) {
      throw Exception('Failed to fetch user stats: $e');
    }
  }

  static Future<List<Transaction>> getOrganizerTransactions(String organizerId) async {
    try {
      // Step 1: Get all confirmed bookings
      final bookingsResponse = await _supabase
          .from('bookings')
          .select('id, user_id, event_id, amount, status, created_at')
          .eq('status', 'confirmed')
          .order('created_at', ascending: false);

      List<Transaction> transactions = [];

      // Step 2: For each booking, check if it belongs to organizer's event
      for (final booking in bookingsResponse) {
        try {
          // Get event details
          final eventResponse = await _supabase
              .from('events')
              .select('id, title, organizer_id')
              .eq('id', booking['event_id'])
              .single();

          // Check if this event belongs to the organizer
          if (eventResponse['organizer_id'] != organizerId) {
            continue; // Skip bookings for other organizers' events
          }

          // Get customer details
          final profileResponse = await _supabase
              .from('profiles')
              .select('id, full_name')
              .eq('id', booking['user_id'])
              .single();

          transactions.add(Transaction.fromJson({
            'id': booking['id'],
            'user_id': booking['user_id'],
            'event_id': booking['event_id'],
            'amount': booking['amount'],
            'status': booking['status'],
            'created_at': booking['created_at'],
            'event_title': eventResponse['title'],
            'customer_name': profileResponse['full_name'],
          }));
        } catch (bookingError) {
          // Skip this booking if we can't get all the data
          continue;
        }
      }

      return transactions;
    } catch (e) {
      throw Exception('Failed to fetch transactions: $e');
    }
  }
} 
