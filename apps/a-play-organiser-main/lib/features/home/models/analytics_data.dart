class MonthlyEventData {
  final String month;
  final int eventCount;
  final double revenue;

  MonthlyEventData({
    required this.month,
    required this.eventCount,
    required this.revenue,
  });

  factory MonthlyEventData.fromJson(Map<String, dynamic> json) {
    return MonthlyEventData(
      month: json['month'] as String,
      eventCount: json['event_count'] as int,
      revenue: double.parse(json['total_revenue']?.toString() ?? '0'),
    );
  }
}

class DashboardStats {
  final double totalRevenue;
  final int totalEvents;
  final int totalBookings;
  final int totalTickets;
  final int uniqueParticipants;
  final double revenueGrowth;
  final List<MonthlyEventData> monthlyData;
  final Map<String, int> ticketsByCategory;

  DashboardStats({
    required this.totalRevenue,
    required this.totalEvents,
    required this.totalBookings,
    required this.totalTickets,
    required this.uniqueParticipants,
    required this.revenueGrowth,
    required this.monthlyData,
    required this.ticketsByCategory,
  });
} 
