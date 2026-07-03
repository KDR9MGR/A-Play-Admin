import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../core/utils/app_failure.dart';
import '../models/analytics_data.dart';

class AnalyticsService {
  static final _supabase = Supabase.instance.client;

  /// Get comprehensive dashboard statistics
  static Future<Either<AppFailure, DashboardStats>> getDashboardStats() async {
    try {
      // Fetch all required data in parallel
      final results = await Future.wait([
        _getTotalRevenue(),
        _getTotalEvents(),
        _getTotalBookings(),
        _getUniqueParticipants(),
        _getMonthlyEventData(),
        _getRevenueGrowth(),
        _getTicketsByCategory(),
        _getTotalTickets(),
      ]);

      // Extract results
      final totalRevenue = results[0] as double;
      final totalEvents = results[1] as int;
      final totalBookings = results[2] as int;
      final uniqueParticipants = results[3] as int;
      final monthlyData = results[4] as List<MonthlyEventData>;
      final revenueGrowth = results[5] as double;
      final ticketsByCategory = results[6] as Map<String, int>;
      final totalTickets = results[7] as int;

      final stats = DashboardStats(
        totalRevenue: totalRevenue,
        totalEvents: totalEvents,
        totalBookings: totalBookings,
        totalTickets: totalTickets,
        uniqueParticipants: uniqueParticipants,
        revenueGrowth: revenueGrowth,
        monthlyData: monthlyData,
        ticketsByCategory: ticketsByCategory,
      );

      return Right(stats);
    } catch (e) {
      return Left(AppFailure.serverFailure('Failed to fetch dashboard stats: $e'));
    }
  }

  /// Get monthly event performance data for charts
  static Future<Either<AppFailure, List<MonthlyEventData>>> getMonthlyEventData() async {
    try {
      final data = await _getMonthlyEventData();
      return Right(data);
    } catch (e) {
      return Left(AppFailure.serverFailure('Failed to fetch monthly data: $e'));
    }
  }

  // Private helper methods
  static Future<double> _getTotalRevenue() async {
    try {
      // For organizers, only show revenue from their own events
      final currentUser = _supabase.auth.currentUser;
      if (currentUser == null) return 0.0;

      final response = await _supabase
          .from('bookings')
          .select('amount, events!inner(organizer_id)')
          .eq('status', 'confirmed')
          .eq('events.organizer_id', currentUser.id);

      final data = response as List<dynamic>;
      double total = 0;
      for (final booking in data) {
        total += double.parse(booking['amount']?.toString() ?? '0');
      }
      return total;
    } catch (e) {
      debugPrint('Error fetching total revenue: $e');
      return 0.0;
    }
  }

  static Future<int> _getTotalEvents() async {
    try {
      final currentUser = _supabase.auth.currentUser;
      if (currentUser == null) return 0;
      final response =
          await _supabase.from('events').select('id').eq('organizer_id', currentUser.id);

      return (response as List).length;
    } catch (e) {
      debugPrint('Error fetching total events: $e');
      return 0;
    }
  }

  static Future<int> _getTotalBookings() async {
    try {
      // For organizers, only count bookings for their own events
      final currentUser = _supabase.auth.currentUser;
      if (currentUser == null) return 0;

      final response = await _supabase
          .from('bookings')
          .select('id, events!inner(organizer_id)')
          .eq('status', 'confirmed')
          .eq('events.organizer_id', currentUser.id);

      return (response as List).length;
    } catch (e) {
      debugPrint('Error fetching total bookings: $e');
      return 0;
    }
  }

  static Future<int> _getTotalTickets() async {
    try {
      final currentUser = _supabase.auth.currentUser;
      if (currentUser == null) return 0;
      final response = await _supabase
          .from('bookings')
          .select('quantity, events!inner(organizer_id)')
          .eq('status', 'confirmed')
          .eq('events.organizer_id', currentUser.id);

      int total = 0;
      for (final booking in response as List) {
        total += (booking['quantity'] as num?)?.toInt() ?? 0;
      }
      return total;
    } catch (e) {
      debugPrint('Error fetching total tickets: $e');
      return 0;
    }
  }

  static Future<int> _getUniqueParticipants() async {
    try {
      final currentUser = _supabase.auth.currentUser;
      if (currentUser == null) return 0;
      final response = await _supabase
          .from('bookings')
          .select('user_id, events!inner(organizer_id)')
          .eq('status', 'confirmed')
          .eq('events.organizer_id', currentUser.id);

      final users = <String>{};
      for (final booking in response as List) {
        final uid = booking['user_id']?.toString();
        if (uid != null && uid.isNotEmpty) {
          users.add(uid);
        }
      }
      return users.length;
    } catch (e) {
      debugPrint('Error fetching unique participants: $e');
      return 0;
    }
  }

  static Future<Map<String, int>> _getTicketsByCategory() async {
    try {
      final currentUser = _supabase.auth.currentUser;
      if (currentUser == null) return {};
      final response = await _supabase
          .from('bookings')
          .select('id, events!inner(category, organizer_id)')
          .eq('status', 'confirmed')
          .eq('events.organizer_id', currentUser.id);

      final Map<String, int> counts = {};
      for (final booking in response as List) {
        final category = (booking['events']?['category'] ?? '').toString();
        if (category.isEmpty) continue;
        counts[category] = (counts[category] ?? 0) + 1;
      }
      return counts;
    } catch (e) {
      debugPrint('Error fetching tickets by category: $e');
      return {};
    }
  }

  static Future<List<MonthlyEventData>> _getMonthlyEventData() async {
    try {
      final response = await _supabase.rpc('get_monthly_event_stats');
      
      if (response != null && response is List) {
        return (response)
            .map((item) => MonthlyEventData.fromJson(item as Map<String, dynamic>))
            .toList();
      }
    } catch (e) {
      debugPrint('Error calling RPC function: $e');
    }
    
    // Fallback: get data using manual query
    return await _getMonthlyEventDataFallback();
  }

  static Future<List<MonthlyEventData>> _getMonthlyEventDataFallback() async {
    try {
      final currentUser = _supabase.auth.currentUser;
      if (currentUser == null) return [];

      // Get bookings grouped by month for the last 12 months (only from organizer's events)
      final response = await _supabase
          .from('bookings')
          .select('created_at, amount, events!inner(organizer_id)')
          .eq('status', 'confirmed')
          .eq('events.organizer_id', currentUser.id)
          .gte('created_at', DateTime.now().subtract(const Duration(days: 365)).toIso8601String())
          .order('created_at');

      final data = response as List<dynamic>;
      
      // Group data by month
      final Map<String, MonthlyEventData> monthlyMap = {};
      
      for (final booking in data) {
        final createdAt = DateTime.parse(booking['created_at']);
        final monthKey = '${createdAt.year}-${createdAt.month.toString().padLeft(2, '0')}';
        final amount = double.parse(booking['amount']?.toString() ?? '0');
        
        if (monthlyMap.containsKey(monthKey)) {
          monthlyMap[monthKey] = MonthlyEventData(
            month: monthKey,
            eventCount: monthlyMap[monthKey]!.eventCount + 1,
            revenue: monthlyMap[monthKey]!.revenue + amount,
          );
        } else {
          monthlyMap[monthKey] = MonthlyEventData(
            month: monthKey,
            eventCount: 1,
            revenue: amount,
          );
        }
      }

      // Convert to list and sort by month
      final sortedData = monthlyMap.values.toList()
        ..sort((a, b) => a.month.compareTo(b.month));

      // Fill in missing months with zero data for last 6 months
      final result = <MonthlyEventData>[];
      final now = DateTime.now();
      
      for (int i = 5; i >= 0; i--) {
        final monthDate = DateTime(now.year, now.month - i, 1);
        final monthKey = '${monthDate.year}-${monthDate.month.toString().padLeft(2, '0')}';
        
        final existingData = sortedData.firstWhere(
          (data) => data.month == monthKey,
          orElse: () => MonthlyEventData(month: monthKey, eventCount: 0, revenue: 0),
        );
        
        result.add(existingData);
      }

      return result;
    } catch (e) {
      debugPrint('Error fetching monthly data fallback: $e');
      // Return empty data structure for last 6 months
      final result = <MonthlyEventData>[];
      final now = DateTime.now();
      for (int i = 5; i >= 0; i--) {
        final monthDate = DateTime(now.year, now.month - i, 1);
        final monthKey = '${monthDate.year}-${monthDate.month.toString().padLeft(2, '0')}';
        result.add(MonthlyEventData(month: monthKey, eventCount: 0, revenue: 0));
      }
      return result;
    }
  }

  static Future<double> _getRevenueGrowth() async {
    try {
      final currentUser = _supabase.auth.currentUser;
      if (currentUser == null) return 0.0;

      final now = DateTime.now();
      final currentMonth = DateTime(now.year, now.month, 1);
      final lastMonth = DateTime(now.year, now.month - 1, 1);
      final nextMonth = DateTime(now.year, now.month + 1, 1);

      // Get current month revenue (only from organizer's own events)
      final currentResponse = await _supabase
          .from('bookings')
          .select('amount, events!inner(organizer_id)')
          .eq('status', 'confirmed')
          .eq('events.organizer_id', currentUser.id)
          .gte('created_at', currentMonth.toIso8601String())
          .lt('created_at', nextMonth.toIso8601String());

      // Get last month revenue (only from organizer's own events)
      final lastResponse = await _supabase
          .from('bookings')
          .select('amount, events!inner(organizer_id)')
          .eq('status', 'confirmed')
          .eq('events.organizer_id', currentUser.id)
          .gte('created_at', lastMonth.toIso8601String())
          .lt('created_at', currentMonth.toIso8601String());

      double currentRevenue = 0;
      double lastRevenue = 0;

      for (final booking in currentResponse) {
        currentRevenue += double.parse(booking['amount']?.toString() ?? '0');
      }

      for (final booking in lastResponse) {
        lastRevenue += double.parse(booking['amount']?.toString() ?? '0');
      }

      if (lastRevenue == 0) return 0;
      
      return ((currentRevenue - lastRevenue) / lastRevenue) * 100;
    } catch (e) {
      debugPrint('Error fetching revenue growth: $e');
      return 0.0;
    }
  }
} 
