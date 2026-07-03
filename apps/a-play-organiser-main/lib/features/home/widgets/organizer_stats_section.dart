import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:animate_do/animate_do.dart';
import 'package:ionicons/ionicons.dart';

import '../controllers/home_controller.dart';
import '../../../core/theme/app_theme.dart';

class OrganizerStatsSection extends ConsumerStatefulWidget {
  final String userId;

  const OrganizerStatsSection({
    super.key,
    required this.userId,
  });

  @override
  ConsumerState<OrganizerStatsSection> createState() => _OrganizerStatsSectionState();
}

class _OrganizerStatsSectionState extends ConsumerState<OrganizerStatsSection>
    with TickerProviderStateMixin {
  late AnimationController _counterController;
  late AnimationController _chartController;
  late AnimationController _glowController;

  @override
  void initState() {
    super.initState();
    _counterController = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    );
    _chartController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    _glowController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );
    
    // Start animations
    _counterController.forward();
    _chartController.forward();
    _glowController.repeat(reverse: true);
  }

  @override
  void dispose() {
    _counterController.dispose();
    _chartController.dispose();
    _glowController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final userEvents = ref.watch(eventsByUserProvider(widget.userId));
    final userStats = ref.watch(userStatsProvider(widget.userId));
    final organizerRevenue = ref.watch(organizerRevenueProvider(widget.userId));

    return userEvents.when(
      data: (events) {
        final totalEvents = events.length;
        final upcomingEvents = events
            .where((event) => event.startDate.isAfter(DateTime.now()))
            .length;
        final pastEvents = totalEvents - upcomingEvents;
        final thisMonthEvents = events.where((e) => 
          e.startDate.month == DateTime.now().month &&
          e.startDate.year == DateTime.now().year
        ).length;

        return FadeInUp(
          duration: const Duration(milliseconds: 800),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header with glow effect
                AnimatedBuilder(
                  animation: _glowController,
                  builder: (context, child) {
                    return Container(
                      padding: const EdgeInsets.only(left: 4, bottom: 20),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: AppTheme.primaryOrange.withValues(
                                    alpha: 0.3 + (_glowController.value * 0.2)
                                  ),
                                  blurRadius: 20 + (_glowController.value * 10),
                                  spreadRadius: 2,
                                ),
                              ],
                            ),
                            child: const Icon(
                              Ionicons.grid_outline,
                              color: AppTheme.primaryOrange,
                              size: 24,
                            ),
                          ),
                          const SizedBox(width: 16),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Organizer Dashboard',
                                style: AppTheme.heading3.copyWith(
                                  fontWeight: FontWeight.w700,
                                  color: AppTheme.textPrimary,
                                ),
                              ),
                              Text(
                                'Overview of your activities',
                                style: AppTheme.bodySmall.copyWith(
                                  color: AppTheme.textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                ),

                // Revenue and Main Stats Cards
                organizerRevenue.when(
                  data: (revenueData) => FadeInLeft(
                    delay: const Duration(milliseconds: 200),
                    child: _buildMainStatsCard(revenueData, totalEvents, upcomingEvents),
                  ),
                  loading: () => _buildLoadingMainCard(),
                  error: (_, __) => _buildErrorCard(),
                ),

                const SizedBox(height: 24),

                // Charts Section
                Row(
                  children: [
                    // Pie Chart for Events Distribution
                    Expanded(
                      flex: 1,
                      child: FadeInLeft(
                        delay: const Duration(milliseconds: 400),
                        child: _buildEventsPieChart(
                          upcoming: upcomingEvents,
                          completed: pastEvents,
                          thisMonth: thisMonthEvents,
                        ),
                      ),
                    ),
                    const SizedBox(width: 16),
                    // Quick Stats Grid
                    Expanded(
                      flex: 1,
                      child: FadeInRight(
                        delay: const Duration(milliseconds: 600),
                        child: _buildQuickStatsGrid(totalEvents, upcomingEvents, pastEvents, thisMonthEvents),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 24),

                // Performance Metrics Row
                userStats.when(
                  data: (stats) => FadeInUp(
                    delay: const Duration(milliseconds: 800),
                    child: _buildPerformanceMetrics(stats),
                  ),
                  loading: () => _buildLoadingMetrics(),
                  error: (_, __) => const SizedBox.shrink(),
                ),
              ],
            ),
          ),
        );
      },
      loading: () => _buildLoadingState(),
      error: (error, _) => _buildErrorState(error.toString()),
    );
  }

  Widget _buildMainStatsCard(Map<String, dynamic> revenueData, int totalEvents, int upcomingEvents) {
    final totalRevenue = (revenueData['totalRevenue'] ?? 0.0) as double;
    final monthlyRevenue = (revenueData['monthlyRevenue'] ?? 0.0) as double;

    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppTheme.primaryOrange,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: AppTheme.primaryOrange.withValues(alpha: 0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Ionicons.cash_outline,
                        color: Colors.black87,
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Text(
                      '₵${totalRevenue.toStringAsFixed(0)}',
                      style: AppTheme.heading2.copyWith(
                        color: Colors.black87,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  'Total Revenue',
                  style: AppTheme.bodyMedium.copyWith(
                    color: Colors.black54,
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    _buildMiniStat('$upcomingEvents', 'Events Created', Ionicons.calendar_outline),
                    const SizedBox(width: 16),
                    _buildMiniStat('${revenueData['totalBookings'] ?? 0}', 'Total Bookings', Ionicons.ticket_outline),
                  ],
                ),
              ],
            ),
          ),
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: AppTheme.primaryOrange.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: AppTheme.primaryOrange.withValues(alpha: 0.3),
                width: 2,
              ),
            ),
            child: AnimatedBuilder(
              animation: _glowController,
              builder: (context, child) {
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.primaryOrange.withValues(
                          alpha: 0.3 + (_glowController.value * 0.3)
                        ),
                        blurRadius: 15 + (_glowController.value * 10),
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '₵${monthlyRevenue.toStringAsFixed(0)}',
                        style: AppTheme.bodySmall.copyWith(
                          color: AppTheme.primaryOrange,
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        'This Month',
                        style: AppTheme.bodySmall.copyWith(
                          color: AppTheme.textSecondary,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMiniStat(String value, String label, IconData icon) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16,
          color: Colors.black54,
        ),
        const SizedBox(width: 6),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              value,
              style: AppTheme.bodyMedium.copyWith(
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              label,
              style: AppTheme.bodySmall.copyWith(
                color: Colors.black54,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildEventsPieChart({required int upcoming, required int completed, required int thisMonth}) {
    final total = upcoming + completed;
    if (total == 0) return const SizedBox.shrink();

    return Container(
      height: 180,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.surfaceDark,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppTheme.primaryOrange.withValues(alpha: 0.1),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Text(
            'Events Overview',
            style: AppTheme.bodyMedium.copyWith(
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimary,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: AnimatedBuilder(
              animation: _chartController,
              builder: (context, child) {
                return PieChart(
                  PieChartData(
                    sectionsSpace: 2,
                    centerSpaceRadius: 25,
                    sections: [
                      PieChartSectionData(
                        color: AppTheme.primaryOrange,
                        value: upcoming.toDouble() * _chartController.value,
                        title: '$upcoming',
                        radius: 40,
                        titleStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      PieChartSectionData(
                        color: AppTheme.successColor,
                        value: completed.toDouble() * _chartController.value,
                        title: '$completed',
                        radius: 40,
                        titleStyle: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildLegendItem('Upcoming', AppTheme.primaryOrange),
              _buildLegendItem('Completed', AppTheme.successColor),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildLegendItem(String label, Color color) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 8,
          height: 8,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        const SizedBox(width: 4),
        Text(
          label,
          style: AppTheme.bodySmall.copyWith(
            color: AppTheme.textSecondary,
            fontSize: 10,
          ),
        ),
      ],
    );
  }

  Widget _buildQuickStatsGrid(int total, int upcoming, int completed, int thisMonth) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _buildAnimatedStatCard(
                title: 'Total',
                value: total,
                icon: Ionicons.calendar_outline,
                color: AppTheme.primaryOrange,
                delay: 0,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: _buildAnimatedStatCard(
                title: 'Upcoming',
                value: upcoming,
                icon: Ionicons.time_outline,
                color: AppTheme.successColor,
                delay: 100,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            Expanded(
              child: _buildAnimatedStatCard(
                title: 'Completed',
                value: completed,
                icon: Ionicons.checkmark_circle_outline,
                color: AppTheme.lightOrange,
                delay: 200,
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: _buildAnimatedStatCard(
                title: 'This Month',
                value: thisMonth,
                icon: Ionicons.calendar,
                color: AppTheme.darkOrange,
                delay: 300,
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildAnimatedStatCard({
    required String title,
    required int value,
    required IconData icon,
    required Color color,
    required int delay,
  }) {
    return FadeInUp(
      delay: Duration(milliseconds: delay),
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppTheme.surfaceDark,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: color.withValues(alpha: 0.1),
            width: 1,
          ),
          boxShadow: [
            BoxShadow(
              color: color.withValues(alpha: 0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                color: color,
                size: 16,
              ),
            ),
            const SizedBox(height: 8),
            AnimatedBuilder(
              animation: _counterController,
              builder: (context, child) {
                final animatedValue = (value * _counterController.value).round();
                return Text(
                  '$animatedValue',
                  style: AppTheme.bodyMedium.copyWith(
                    color: color,
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                  ),
                );
              },
            ),
            Text(
              title,
              style: AppTheme.bodySmall.copyWith(
                color: AppTheme.textSecondary,
                fontSize: 9,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPerformanceMetrics(Map<String, dynamic> stats) {
    final attendanceRate = (stats['attendanceRate'] ?? 0.0) as double;
    final avgRating = (stats['avgRating'] ?? 0.0) as double;
    final totalParticipants = (stats['totalParticipants'] ?? 0) as int;

    return Row(
      children: [
        Expanded(
          child: _buildMetricCard(
            title: 'Attendance Rate',
            value: '${attendanceRate.toStringAsFixed(1)}%',
                          icon: Ionicons.people_outline,
            color: AppTheme.successColor,
            progress: attendanceRate / 100,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildMetricCard(
            title: 'Avg Rating',
            value: avgRating.toStringAsFixed(1),
                          icon: Ionicons.star_outline,
            color: AppTheme.primaryOrange,
            progress: avgRating / 5,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _buildMetricCard(
            title: 'Participants',
            value: '$totalParticipants',
                          icon: Ionicons.people_circle_outline,
            color: AppTheme.lightOrange,
            progress: (totalParticipants / 100).clamp(0.0, 1.0),
          ),
        ),
      ],
    );
  }

  Widget _buildMetricCard({
    required String title,
    required String value,
    required IconData icon,
    required Color color,
    required double progress,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.surfaceDark,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: color.withValues(alpha: 0.1),
          width: 1,
        ),
        boxShadow: [
          BoxShadow(
            color: color.withValues(alpha: 0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          Icon(
            icon,
            color: color,
            size: 24,
          ),
          const SizedBox(height: 8),
          Text(
            value,
            style: AppTheme.heading3.copyWith(
              color: color,
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: AppTheme.bodySmall.copyWith(
              color: AppTheme.textSecondary,
              fontSize: 11,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          AnimatedBuilder(
            animation: _chartController,
            builder: (context, child) {
              return LinearProgressIndicator(
                value: progress * _chartController.value,
                backgroundColor: color.withValues(alpha: 0.1),
                valueColor: AlwaysStoppedAnimation<Color>(color),
                minHeight: 3,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildLoadingState() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: List.generate(
          3,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                color: AppTheme.surfaceDark,
                borderRadius: BorderRadius.circular(16),
              ),
              child: const Center(
                child: CircularProgressIndicator(
                  color: AppTheme.primaryOrange,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildLoadingMainCard() {
    return Container(
      height: 120,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppTheme.surfaceDark,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppTheme.primaryOrange.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: const Center(
        child: CircularProgressIndicator(
          color: AppTheme.primaryOrange,
        ),
      ),
    );
  }

  Widget _buildLoadingMetrics() {
    return Row(
      children: List.generate(
        3,
        (index) => Expanded(
          child: Container(
            margin: EdgeInsets.only(right: index < 2 ? 12 : 0),
            height: 100,
            decoration: BoxDecoration(
              color: AppTheme.surfaceDark,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Center(
              child: CircularProgressIndicator(
                color: AppTheme.primaryOrange,
                strokeWidth: 2,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildErrorCard() {
    return Container(
      height: 120,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: AppTheme.errorColor.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppTheme.errorColor.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Ionicons.alert_circle_outline,
            color: AppTheme.errorColor.withValues(alpha: 0.7),
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              'Failed to load revenue data',
              style: AppTheme.bodyMedium.copyWith(
                color: AppTheme.errorColor.withValues(alpha: 0.8),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildErrorState(String error) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.errorColor.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: AppTheme.errorColor.withValues(alpha: 0.2),
          width: 1,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Ionicons.alert_circle_outline,
            color: AppTheme.errorColor.withValues(alpha: 0.7),
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              'Failed to load statistics',
              style: AppTheme.bodyMedium.copyWith(
                color: AppTheme.errorColor.withValues(alpha: 0.8),
              ),
            ),
          ),
        ],
      ),
    );
  }
} 