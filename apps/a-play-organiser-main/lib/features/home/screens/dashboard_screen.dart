import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:animate_do/animate_do.dart';
import 'package:intl/intl.dart';
import 'package:ionicons/ionicons.dart';
import 'dart:math';

import '../controllers/home_controller.dart';
import '../controllers/analytics_controller.dart';
import '../models/analytics_data.dart';
import '../../auth/controllers/auth_controller.dart';
import '../../../core/theme/app_theme.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  const DashboardScreen({super.key});

  @override
  ConsumerState<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends ConsumerState<DashboardScreen>
    with TickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );
    _animationController.forward();
    
    // Load analytics data when screen initializes
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        ref.read(analyticsControllerProvider.notifier).loadDashboardStats();
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);

    return authState.maybeWhen(
      authenticated: (user) => _buildDashboardContent(context, ref, user),
      orElse:
          () => const Scaffold(
            body: Center(
              child: CircularProgressIndicator(color: AppTheme.primaryOrange),
            ),
          ),
    );
  }

  Widget _buildDashboardContent(BuildContext context, WidgetRef ref, user) {
    final displayName = user.isOrganizer
        ? ((user.businessName?.isNotEmpty == true)
            ? user.businessName!
            : (user.fullName ?? 'Event Organizer'))
        : (user.fullName ?? 'Event Participant');
    final upcomingEvents = ref.watch(upcomingEventsProvider); // Always fetch all upcoming events

    return Scaffold(
      backgroundColor: AppTheme.backgroundDark,
      appBar: AppBar(
        backgroundColor: AppTheme.backgroundDark,
        surfaceTintColor: Colors.transparent,
        title: FadeInLeft(
          child: Row(
            children: [
              SvgPicture.asset(
                'assets/svgs/app_logo.svg', 
                height: 28,
                colorFilter: ColorFilter.mode(
                  AppTheme.primaryOrange,
                  BlendMode.srcIn,
                ),
              ),
              const SizedBox(width: 12),
              Text(
                'Dashboard',
                style: AppTheme.heading3.copyWith(
                  fontWeight: FontWeight.w800,
                  fontSize: 20,
                  letterSpacing: -0.5,
                ),
              ),
            ],
          ),
        ),
        centerTitle: false,
        elevation: 0,
        actions: [
          FadeInRight(
            child: Container(
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                color: AppTheme.surfaceDark,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: AppTheme.primaryOrange.withValues(alpha: 0.15),
                  width: 1,
                ),
              ),
              child: PopupMenuButton<String>(
                onSelected: (value) {
                  if (value == 'logout') {
                    ref.read(authControllerProvider.notifier).signOut();
                  }
                },
                icon: const Icon(
                  Ionicons.ellipsis_vertical,
                  color: AppTheme.textPrimary,
                  size: 20,
                ),
                color: AppTheme.surfaceDark,
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 'logout',
                    child: Row(
                      children: [
                        const Icon(
                          Ionicons.log_out_outline,
                          size: 18,
                          color: AppTheme.textSecondary,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Logout', 
                          style: AppTheme.bodyMedium.copyWith(
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // Welcome Section with Key Metrics
            SliverToBoxAdapter(
              child: FadeInUp(
                duration: const Duration(milliseconds: 600),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 24, 24, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Welcome back!',
                                  style: AppTheme.bodyLarge.copyWith(
                                    color: AppTheme.textSecondary,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  'Welcome back, $displayName',
                                  style: AppTheme.heading1.copyWith(
                                    fontWeight: FontWeight.w900,
                                    fontSize: 28,
                                    letterSpacing: -1,
                                    height: 1.1,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16, 
                              vertical: 8
                            ),
                            decoration: BoxDecoration(
                              color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: AppTheme.primaryOrange.withValues(alpha: 0.2),
                                width: 1,
                              ),
                            ),
                            child: Text(
                              DateFormat('MMM dd').format(DateTime.now()),
                              style: AppTheme.bodyMedium.copyWith(
                                color: AppTheme.primaryOrange,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 32),
                    ],
                  ),
                ),
              ),
            ),

            // Revenue Focus Section (for organizers)
            if (user.isOrganizer) ...[
              SliverToBoxAdapter(
                child: FadeInUp(
                  duration: const Duration(milliseconds: 700),
                  delay: const Duration(milliseconds: 200),
                  child: Consumer(
                    builder: (context, ref, child) {
                      final analyticsState = ref.watch(analyticsControllerProvider);
                      
                      if (analyticsState.isLoading) {
                        return _buildLoadingRevenueSection();
                      }
                      
                      if (analyticsState.error != null) {
                        return _buildErrorSection();
                      }
                      
                      if (analyticsState.dashboardStats != null) {
                        return _buildRevenueSection(analyticsState.dashboardStats!);
                      }
                      
                      return _buildLoadingRevenueSection();
                    },
                  ),
                ),
              ),
            ],

            // Statistics Overview
            SliverToBoxAdapter(
              child: FadeInUp(
                duration: const Duration(milliseconds: 800),
                delay: const Duration(milliseconds: 400),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(24, 40, 24, 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Analytics Overview',
                        style: AppTheme.heading2.copyWith(
                          fontWeight: FontWeight.w800,
                          fontSize: 24,
                          letterSpacing: -0.5,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Performance metrics and insights',
                        style: AppTheme.bodyMedium.copyWith(
                          color: AppTheme.textSecondary,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 32),
                      Consumer(
                        builder: (context, ref, child) {
                          final analyticsState = ref.watch(analyticsControllerProvider);
                          
                          if (analyticsState.isLoading) {
                            return _buildLoadingStatsSection();
                          }
                          
                          if (analyticsState.error != null) {
                            return _buildErrorSection();
                          }
                          
                          if (analyticsState.dashboardStats != null) {
                            return user.isOrganizer
                              ? _buildOrganizerAnalytics(analyticsState.dashboardStats!)
                              : _buildUserAnalytics(analyticsState.dashboardStats!);
                          }
                          
                          return _buildLoadingStatsSection();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),

          // // Spacing between stats and events
          // const SliverToBoxAdapter(
          //   child: SizedBox(height: 24),
          // ),

          // Upcoming Events Section
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming Events', // Changed to generic title for everyone
                    style: AppTheme.heading3.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (user.isOrganizer)
                    TextButton(
                      onPressed: () => context.push('/create-event'),
                      child: Text(
                        'Create Event',
                        style: AppTheme.bodySmall.copyWith(
                          color: AppTheme.primaryOrange,
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),

          // Events List
          upcomingEvents.when(
            loading:
                () => const SliverToBoxAdapter(
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.all(32.0),
                      child: CircularProgressIndicator(
                        color: AppTheme.primaryOrange,
                      ),
                    ),
                  ),
                ),
            error:
                (error, stackTrace) => SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Center(
                      child: Column(
                        children: [
                          const Icon(
                            Icons.error_outline,
                            size: 48,
                            color: AppTheme.errorColor,
                          ),
                          const SizedBox(height: 16),
                          Text(
                            'Failed to load events',
                            style: AppTheme.bodyMedium,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            error.toString(),
                            style: AppTheme.bodySmall.copyWith(
                              color: AppTheme.textSecondary,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            data:
                (events) =>
                    events.isNotEmpty
                        ? SliverList(
                          delegate: SliverChildBuilderDelegate((
                            context,
                            index,
                          ) {
                            final event = events[index];
                            return Container(
                              margin: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 6,
                              ),
                              decoration: BoxDecoration(
                                color: AppTheme.cardDark,
                                borderRadius: BorderRadius.circular(12),
                                border: Border.all(
                                  color: AppTheme.primaryOrange.withValues(
                                    alpha: 0.1,
                                  ),
                                  width: 1,
                                ),
                              ),
                              child: ListTile(
                                contentPadding: const EdgeInsets.all(12),
                                leading: Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    color: AppTheme.primaryOrange.withValues(
                                      alpha: 0.1,
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    Icons.event,
                                    color: AppTheme.primaryOrange,
                                    size: 24,
                                  ),
                                ),
                                title: Text(
                                  event.title,
                                  style: AppTheme.bodyMedium.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(height: 4),
                                    Text(
                                      event.description,
                                      style: AppTheme.bodySmall.copyWith(
                                        color: AppTheme.textSecondary,
                                        fontSize: 12,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                    const SizedBox(height: 6),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on_outlined,
                                          size: 12,
                                          color: AppTheme.textSecondary,
                                        ),
                                        const SizedBox(width: 4),
                                        Expanded(
                                          child: Text(
                                            event.location ?? 'Location TBD',
                                            style: AppTheme.bodySmall.copyWith(
                                              color: AppTheme.textSecondary,
                                              fontSize: 11,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                trailing: Icon(
                                  Icons.arrow_forward_ios,
                                  size: 14,
                                  color: AppTheme.textSecondary,
                                ),
                                onTap:
                                    () => context.push(
                                      '/event-details/${event.id}',
                                    ),
                              ),
                            );
                          }, childCount: events.length > 3 ? 3 : events.length),
                        )
                        : SliverToBoxAdapter(
                          child: Padding(
                            padding: const EdgeInsets.all(32.0),
                            child: Center(
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.event_busy_outlined,
                                    size: 48,
                                    color: AppTheme.textSecondary,
                                  ),
                                  const SizedBox(height: 16),
                                  Text(
                                    'No upcoming events', // Generic message
                                    style: AppTheme.bodyMedium.copyWith(
                                      color: AppTheme.textSecondary,
                                    ),
                                  ),
                                  if (user.isOrganizer) ...[
                                    const SizedBox(height: 8),
                                    Text(
                                      'Tap the + button to create your first event',
                                      style: AppTheme.bodySmall.copyWith(
                                        color: AppTheme.textSecondary,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ],
                              ),
                            ),
                          ),
                        ),
          ),

          // Add some bottom padding for the FAB
          const SliverToBoxAdapter(child: SizedBox(height: 100)),
        ],
      ),
    ),
    );
  }

  // New modern sections for the enhanced dashboard

  Widget _buildLoadingRevenueSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: 160,
        padding: const EdgeInsets.all(32),
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
            strokeWidth: 3,
          ),
        ),
      ),
    );
  }

  Widget _buildErrorSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        height: 160,
        padding: const EdgeInsets.all(32),
        decoration: BoxDecoration(
          color: AppTheme.surfaceDark,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: AppTheme.errorColor.withValues(alpha: 0.2),
            width: 1,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                         Icon(
               Ionicons.alert_circle_outline,
               color: AppTheme.errorColor,
               size: 32,
             ),
            const SizedBox(height: 12),
            Text(
              'Failed to load data',
              style: AppTheme.bodyMedium.copyWith(
                color: AppTheme.errorColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRevenueSection(DashboardStats stats) {
    final totalRevenue = stats.totalRevenue;
    final monthlyRevenue = stats.totalRevenue; // You can add monthlyRevenue to DashboardStats if needed
    final revenueGrowth = stats.revenueGrowth;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Stack(
          children: [
            // Base container with primary color
            Container(
              padding: const EdgeInsets.all(32),
              decoration: BoxDecoration(
                color: AppTheme.primaryOrange,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Total Revenue',
                            style: AppTheme.bodyLarge.copyWith(
                              color: Colors.black54,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 8),
                          AnimatedBuilder(
                            animation: _animationController,
                            builder: (context, child) {
                              final animatedValue = totalRevenue * _animationController.value;
                              return Text(
                                '₵${NumberFormat('#,##0').format(animatedValue)}',
                                style: AppTheme.heading1.copyWith(
                                  color: Colors.black87,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 36,
                                  letterSpacing: -1.5,
                                  height: 1.1,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                        decoration: BoxDecoration(
                          color: revenueGrowth >= 0 
                            ? Colors.white.withValues(alpha: 0.2)
                            : AppTheme.errorColor.withValues(alpha: 0.2),
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: revenueGrowth >= 0 
                              ? Colors.white.withValues(alpha: 0.3)
                              : AppTheme.errorColor.withValues(alpha: 0.3),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                                             Icon(
                               revenueGrowth >= 0 
                                 ? Ionicons.trending_up
                                 : Ionicons.trending_down,
                              size: 16,
                              color: revenueGrowth >= 0 
                                ? Colors.black87
                                : AppTheme.errorColor,
                            ),
                            const SizedBox(width: 4),
                            Text(
                              '${revenueGrowth >= 0 ? '+' : ''}${revenueGrowth.toStringAsFixed(1)}%',
                              style: AppTheme.bodySmall.copyWith(
                                fontWeight: FontWeight.w700,
                                color: revenueGrowth >= 0 
                                  ? Colors.black87
                                  : AppTheme.errorColor,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Row(
                    children: [
                      Expanded(
                        child: _buildRevenueMetric(
                                               'This Month',
                           '₵${NumberFormat('#,##0').format(monthlyRevenue)}',
                           Ionicons.calendar_outline,
                        ),
                      ),
                      const SizedBox(width: 24),
                      Expanded(
                                                child: _buildRevenueMetric(
                          'Events',
                          '${stats.totalEvents}',
                          Ionicons.calendar,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            // Grain/texture overlay
            Positioned.fill(
              child: CustomPaint(
                painter: GrainPainter(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRevenueMetric(String label, String value, IconData icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
                 Row(
           children: [
             Icon(
               icon,
               size: 16,
               color: Colors.black54,
             ),
            const SizedBox(width: 8),
            Text(
              label,
              style: AppTheme.bodySmall.copyWith(
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: AppTheme.heading3.copyWith(
            color: Colors.black87,
            fontWeight: FontWeight.w800,
            fontSize: 20,
          ),
        ),
      ],
    );
  }

  Widget _buildLoadingStatsSection() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _buildLoadingStatCard()),
            const SizedBox(width: 16),
            Expanded(child: _buildLoadingStatCard()),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(child: _buildLoadingStatCard()),
            const SizedBox(width: 16),
            Expanded(child: _buildLoadingStatCard()),
          ],
        ),
      ],
    );
  }

  Widget _buildLoadingStatCard() {
    return Container(
      height: 120,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppTheme.surfaceDark,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppTheme.primaryOrange.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: const Center(
        child: CircularProgressIndicator(
          color: AppTheme.primaryOrange,
          strokeWidth: 2,
        ),
      ),
    );
  }

  Widget _buildOrganizerAnalytics(DashboardStats stats) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _buildModernStatCard(
                title: 'Total Revenue',
                value: '₵${NumberFormat('#,##0').format(stats.totalRevenue)}',
                subtitle: 'All time',
                icon: Ionicons.wallet_outline,
                color: AppTheme.primaryOrange,
                onTap: () {
                  // Navigate to revenue details
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _buildModernStatCard(
                title: 'Total Tickets',
                value: '${stats.totalTickets}',
                subtitle: 'Sold',
                icon: Ionicons.ticket_outline,
                color: AppTheme.primaryOrange,
                onTap: () {
                  // Navigate to tickets details
                },
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _buildModernStatCard(
                title: 'Total Bookings',
                value: '${stats.totalBookings}',
                subtitle: 'All time',
                icon: Ionicons.checkmark_circle_outline,
                color: AppTheme.primaryOrange,
                onTap: () {
                  // Navigate to bookings details
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _buildModernStatCard(
                title: 'Total Events',
                value: '${stats.totalEvents}',
                subtitle: 'Created',
                icon: Ionicons.calendar_outline,
                color: AppTheme.primaryOrange,
                onTap: () => context.push('/events'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 32),
        _buildEventPerformanceChart(stats.monthlyData),
      ],
    );
  }

  Widget _buildUserAnalytics(DashboardStats stats) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: _buildModernStatCard(
                title: 'Total Bookings',
                value: '${stats.totalBookings}',
                subtitle: 'All time',
                icon: Ionicons.checkmark_circle_outline,
                color: AppTheme.primaryOrange,
                onTap: () {
                  // Navigate to bookings
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _buildModernStatCard(
                title: 'Total Events',
                value: '${stats.totalEvents}',
                subtitle: 'Available',
                icon: Ionicons.calendar_outline,
                color: AppTheme.primaryOrange,
                onTap: () => context.push('/events'),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          children: [
            Expanded(
              child: _buildModernStatCard(
                title: 'Participants',
                value: '${stats.uniqueParticipants}',
                subtitle: 'Total unique',
                icon: Ionicons.people_outline,
                color: AppTheme.primaryOrange,
                onTap: () {
                   // Navigate to participants if applicable
                },
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: _buildModernStatCard(
                title: 'Revenue',
                value: '₵${NumberFormat('#,##0').format(stats.totalRevenue)}',
                subtitle: 'Total earned',
                icon: Ionicons.wallet_outline,
                color: AppTheme.primaryOrange,
                onTap: () {
                  // Navigate to revenue details
                },
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildModernStatCard({
    required String title,
    required String value,
    required String subtitle,
    required IconData icon,
    required Color color,
    VoidCallback? onTap,
    double? trend,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: AppTheme.surfaceDark,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: color.withValues(alpha: 0.1),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: color.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      icon,
                      color: color,
                      size: 20,
                    ),
                  ),
                  if (trend != null)
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      decoration: BoxDecoration(
                        color: trend >= 0 
                          ? Colors.green.withValues(alpha: 0.1)
                          : Colors.red.withValues(alpha: 0.1),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            trend >= 0 ? Ionicons.arrow_up : Ionicons.arrow_down,
                            size: 12,
                            color: trend >= 0 ? Colors.green : Colors.red,
                          ),
                          const SizedBox(width: 2),
                          Text(
                            '${trend.abs().toStringAsFixed(1)}%',
                            style: AppTheme.bodySmall.copyWith(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: trend >= 0 ? Colors.green : Colors.red,
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    value,
                    style: AppTheme.heading2.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      height: 1.1,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    title,
                    style: AppTheme.bodySmall.copyWith(
                      color: AppTheme.textSecondary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEventPerformanceChart(List<MonthlyEventData> monthlyData) {
    
    return Container(
      height: 220,
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 16),
      decoration: BoxDecoration(
        color: AppTheme.surfaceDark,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: AppTheme.primaryOrange.withValues(alpha: 0.15),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Event Performance',
            style: AppTheme.heading3.copyWith(
              fontWeight: FontWeight.w800,
              fontSize: 18,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Events created over time',
            style: AppTheme.bodySmall.copyWith(
              color: AppTheme.textSecondary,
            ),
          ),
          const SizedBox(height: 16),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 12),
              child: AnimatedBuilder(
                animation: _animationController,
                builder: (context, child) {
                  return BarChart(
                    BarChartData(
                      gridData: FlGridData(
                        show: true,
                        drawVerticalLine: false,
                        horizontalInterval: 2,
                        getDrawingHorizontalLine: (value) {
                          return FlLine(
                            color: AppTheme.textSecondary.withValues(alpha: 0.1),
                            strokeWidth: 1,
                          );
                        },
                      ),
                      titlesData: FlTitlesData(
                        show: true,
                        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                        topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 24,
                            getTitlesWidget: (double value, TitleMeta meta) {
                              final index = value.toInt();
                              if (index < monthlyData.length) {
                                final monthKey = monthlyData[index].month;
                                final parts = monthKey.split('-');
                                final monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
                                final monthName = parts.length > 1 ? monthNames[int.parse(parts[1]) - 1] : monthKey;
                                return Padding(
                                  padding: const EdgeInsets.only(top: 4),
                                  child: Text(
                                    monthName,
                                    style: AppTheme.bodySmall.copyWith(
                                      color: AppTheme.textSecondary,
                                      fontSize: 9,
                                    ),
                                  ),
                                );
                              }
                              return const Text('');
                            },
                          ),
                        ),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            interval: 2,
                            reservedSize: 20,
                            getTitlesWidget: (double value, TitleMeta meta) {
                              if (value % 2 == 0) {
                                return Text(
                                  value.toInt().toString(),
                                  style: AppTheme.bodySmall.copyWith(
                                    color: AppTheme.textSecondary,
                                    fontSize: 9,
                                  ),
                                );
                              }
                              return const Text('');
                            },
                          ),
                        ),
                      ),
                      borderData: FlBorderData(show: false),
                      minY: 0,
                      maxY: 10,
                      barGroups: List.generate(monthlyData.length.clamp(1, 6), (index) {
                        final value = index < monthlyData.length 
                          ? monthlyData[index].eventCount.toDouble() 
                          : 0.0;
                        return BarChartGroupData(
                          x: index,
                          barRods: [
                            BarChartRodData(
                              toY: value * _animationController.value,
                              gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  AppTheme.primaryOrange,
                                  AppTheme.primaryOrange.withValues(alpha: 0.8),
                                ],
                              ),
                              width: 20,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(4),
                                topRight: Radius.circular(4),
                              ),
                              backDrawRodData: BackgroundBarChartRodData(
                                show: true,
                                toY: 10,
                                color: AppTheme.primaryOrange.withValues(alpha: 0.08),
                              ),
                            ),
                          ],
                        );
                      }),
                      barTouchData: BarTouchData(
                        touchTooltipData: BarTouchTooltipData(
                          getTooltipColor: (group) => AppTheme.surfaceDark,
                          getTooltipItem: (group, groupIndex, rod, rodIndex) {
                            final index = group.x;
                            if (index < monthlyData.length) {
                              final data = monthlyData[index];
                              final monthKey = data.month;
                              final parts = monthKey.split('-');
                              final monthNames = ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'];
                              final monthName = parts.length > 1 ? monthNames[int.parse(parts[1]) - 1] : monthKey;
                              return BarTooltipItem(
                                '$monthName\n${data.eventCount} events\n₵${NumberFormat('#,##0').format(data.revenue)}',
                                AppTheme.bodySmall.copyWith(
                                  color: AppTheme.textPrimary,
                                  fontWeight: FontWeight.w600,
                                ),
                              );
                            }
                            return null;
                          },
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Custom painter for grain effect
class GrainPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.black.withValues(alpha: 0.03)
      ..style = PaintingStyle.fill;

    final random = Random(42); // Fixed seed for consistent pattern
    
    // Create subtle grain pattern
    for (int i = 0; i < 800; i++) {
      final x = random.nextDouble() * size.width;
      final y = random.nextDouble() * size.height;
      final radius = random.nextDouble() * 1.5 + 0.5;
      
      canvas.drawCircle(Offset(x, y), radius, paint);
    }
    
    // Add some larger dots for texture variation
    paint.color = Colors.white.withValues(alpha: 0.05);
    for (int i = 0; i < 150; i++) {
      final x = random.nextDouble() * size.width;
      final y = random.nextDouble() * size.height;
      final radius = random.nextDouble() * 2 + 1;
      
      canvas.drawCircle(Offset(x, y), radius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
