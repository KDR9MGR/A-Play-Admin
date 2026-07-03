import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/analytics_data.dart';
import '../services/analytics_service.dart';

// State for dashboard analytics data
class AnalyticsState {
  final DashboardStats? dashboardStats;
  final bool isLoading;
  final String? error;

  AnalyticsState({
    this.dashboardStats,
    this.isLoading = false,
    this.error,
  });

  AnalyticsState copyWith({
    DashboardStats? dashboardStats,
    bool? isLoading,
    String? error,
  }) {
    return AnalyticsState(
      dashboardStats: dashboardStats ?? this.dashboardStats,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}

// Analytics controller
class AnalyticsController extends StateNotifier<AnalyticsState> {
  AnalyticsController() : super(AnalyticsState());

  Future<void> loadDashboardStats() async {
    state = state.copyWith(isLoading: true, error: null);

    final result = await AnalyticsService.getDashboardStats();

    result.fold(
      (failure) => state = state.copyWith(
        isLoading: false,
        error: failure.message,
      ),
      (stats) => state = state.copyWith(
        isLoading: false,
        dashboardStats: stats,
        error: null,
      ),
    );
  }

  Future<void> refreshData() async {
    await loadDashboardStats();
  }
}

// Provider for analytics controller
final analyticsControllerProvider =
    StateNotifierProvider<AnalyticsController, AnalyticsState>((ref) {
  return AnalyticsController();
});

// Provider for dashboard stats data
final dashboardStatsProvider = Provider<DashboardStats?>((ref) {
  return ref.watch(analyticsControllerProvider).dashboardStats;
});

// Provider for monthly event data (for charts)
final monthlyEventDataProvider = Provider<List<MonthlyEventData>>((ref) {
  final stats = ref.watch(dashboardStatsProvider);
  return stats?.monthlyData ?? [];
}); 