import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:animate_do/animate_do.dart';
import 'package:ionicons/ionicons.dart';

import '../controllers/home_controller.dart';
import '../../auth/controllers/auth_controller.dart';
import '../../../core/theme/app_theme.dart';

import '../widgets/organizer_stats_section.dart';
import '../widgets/events_list.dart';
import '../widgets/clubs_grid.dart';
import '../widgets/organizer_events_list.dart';
import '../widgets/loading_widgets.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen>
    with TickerProviderStateMixin {
  late AnimationController _fabController;
  late AnimationController _headerController;

  @override
  void initState() {
    super.initState();
    _fabController = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    );
    _headerController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    );
    
    // Start animations
    _fabController.forward();
    _headerController.forward();
  }

  @override
  void dispose() {
    _fabController.dispose();
    _headerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);
    
    // Get user-specific events for organizers, all events for regular users
    final upcomingEvents = authState.maybeWhen(
      authenticated: (user) => ref.watch(upcomingEventsProvider),
      orElse: () => const AsyncValue.loading(),
    );
    
    // Get all events for organizers (for the full list)
    final organizerEvents = authState.maybeWhen(
      authenticated: (user) => user.isOrganizer 
          ? ref.watch(eventsByUserProvider(user.id))
          : null,
      orElse: () => null,
    );
    
    // Get clubs for regular users
    final clubs = authState.maybeWhen(
      authenticated: (user) => !user.isOrganizer 
          ? ref.watch(clubsProvider)
          : null,
      orElse: () => ref.watch(clubsProvider),
    );

    return Scaffold(
      backgroundColor: AppTheme.backgroundDark,
      body: CustomScrollView(
        slivers: [
          // App Bar
          SliverAppBar(
            floating: true,
            pinned: false,
            snap: true,
            elevation: 0,
            backgroundColor: AppTheme.backgroundDark,
            surfaceTintColor: Colors.transparent,
            toolbarHeight: 64,
            flexibleSpace: Container(
              decoration: BoxDecoration(
                color: AppTheme.backgroundDark,
                border: Border(
                  bottom: BorderSide(
                    color: AppTheme.surfaceDark,
                    width: 1,
                  ),
                ),
              ),
            ),
            title: FadeInDown(
              duration: const Duration(milliseconds: 600),
              child: AnimatedBuilder(
                animation: _headerController,
                builder: (context, child) {
                  return Transform.scale(
                    scale: 0.8 + (0.2 * _headerController.value),
                    child: SizedBox(
                      height: 32,
                      child: SvgPicture.asset(
                        'assets/svgs/app_logo.svg',
                        height: 32,
                        colorFilter: ColorFilter.mode(
                          AppTheme.primaryOrange,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            centerTitle: true,
            actions: [
              FadeInRight(
                duration: const Duration(milliseconds: 600),
                delay: const Duration(milliseconds: 200),
                child: Container(
                  margin: const EdgeInsets.only(right: 8),
                  decoration: BoxDecoration(
                    color: AppTheme.surfaceDark,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                      width: 1,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  child: PopupMenuButton<String>(
                  onSelected: (value) {
                    if (value == 'profile') {
                      context.push('/profile');
                    } else if (value == 'logout') {
                      ref.read(authControllerProvider.notifier).signOut();
                    }
                  },
                  icon: const Icon(
                    Ionicons.ellipsis_vertical,
                    color: AppTheme.textPrimary,
                    size: 20,
                  ),
                  color: AppTheme.surfaceDark,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(
                      color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                      width: 1,
                    ),
                  ),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 'profile',
                      child: Row(
                        children: [
                          Icon(
                            Ionicons.person_outline,
                            size: 18,
                            color: AppTheme.textSecondary,
                          ),
                          const SizedBox(width: 12),
                          Text(
                            'Profile',
                            style: AppTheme.bodyMedium,
                          ),
                        ],
                      ),
                    ),
                    if (authState.maybeWhen(
                      authenticated: (user) => user.isOrganizer,
                      orElse: () => false,
                    ))
                      PopupMenuItem(
                        value: 'dashboard',
                        child: Row(
                          children: [
                            Icon(
                              Ionicons.grid_outline,
                              size: 18,
                              color: AppTheme.textSecondary,
                            ),
                            const SizedBox(width: 12),
                            Text(
                              'Dashboard',
                              style: AppTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ),
                    const PopupMenuDivider(),
                    PopupMenuItem(
                      value: 'logout',
                      child: Row(
                        children: [
                          Icon(
                            Ionicons.log_out_outline,
                            size: 18,
                            color: AppTheme.errorColor.withValues(alpha: 0.8),
                          ),
                          const SizedBox(width: 12),
                          Text(
                            'Logout',
                            style: AppTheme.bodyMedium.copyWith(
                              color: AppTheme.errorColor.withValues(alpha: 0.8),
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

          // Content
          SliverToBoxAdapter(
            child: RefreshIndicator(
              onRefresh: () async {
                authState.maybeWhen(
                  authenticated: (user) {
                    if (user.isOrganizer) {
                      ref.invalidate(upcomingEventsByUserProvider(user.id));
                      ref.invalidate(eventsByUserProvider(user.id));
                    } else {
                      ref.invalidate(upcomingEventsProvider);
                      ref.invalidate(clubsProvider);
                    }
                  },
                  orElse: () {
                    ref.invalidate(upcomingEventsProvider);
                    ref.invalidate(clubsProvider);
                  },
                );
              },
              color: AppTheme.primaryOrange,
              backgroundColor: AppTheme.surfaceDark,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 32),

                  // Check if user needs approval
                  authState.maybeWhen(
                    authenticated: (user) {
                      // Show approval message for non-organizers who are not approved
                      if (!user.isOrganizer && !user.isApproved) {
                        return FadeInUp(
                          duration: const Duration(milliseconds: 800),
                          child: Column(
                            children: [
                              _buildWaitingForApprovalSection(),
                              const SizedBox(height: 100), // Space for bottom padding
                            ],
                          ),
                        );
                      }
                      return const SizedBox.shrink();
                    },
                    orElse: () => const SizedBox.shrink(),
                  ),

                  // Only show regular content if user is approved or is an organizer
                  authState.maybeWhen(
                    authenticated: (user) {
                      if (!user.isOrganizer && !user.isApproved) {
                        return const SizedBox.shrink(); // Don't show content for unapproved users
                      }
                      
                      return Column(
                        children: [
                          // Organizer Stats Section
                          user.isOrganizer
                              ? FadeInUp(
                                  duration: const Duration(milliseconds: 600),
                                  delay: const Duration(milliseconds: 300),
                                  child: Column(
                                    children: [
                                      OrganizerStatsSection(userId: user.id),
                                      const SizedBox(height: 32),
                                    ],
                                  ),
                                )
                              : const SizedBox.shrink(),

                          // Events Section
                          upcomingEvents.when(
                            data: (events) {
                              final title = user.isOrganizer
                                  ? 'My Upcoming Events'
                                  : 'Upcoming Events';
                              return FadeInLeft(
                                duration: const Duration(milliseconds: 600),
                                delay: const Duration(milliseconds: 500),
                                child: Column(
                                  children: [
                                    EventsList(events: events, title: title),
                                    const SizedBox(height: 32),
                                  ],
                                ),
                              );
                            },
                            loading: () => const Column(
                              children: [
                                LoadingWidget(),
                                SizedBox(height: 32),
                              ],
                            ),
                            error: (error, _) => Column(
                              children: [
                                HomeErrorWidget(message: error.toString()),
                                const SizedBox(height: 32),
                              ],
                            ),
                          ),

                          // Show organizer events list or clubs based on user type
                          if (user.isOrganizer) ...[
                            // Show organizer's full events list
                            organizerEvents!.when(
                              data: (events) => FadeInRight(
                                duration: const Duration(milliseconds: 600),
                                delay: const Duration(milliseconds: 700),
                                child: Column(
                                  children: [
                                    OrganizerEventsList(events: events),
                                    const SizedBox(height: 100), // Space for FAB
                                  ],
                                ),
                              ),
                              loading: () => const Column(
                                children: [
                                  LoadingWidget(),
                                  SizedBox(height: 100),
                                ],
                              ),
                              error: (error, _) => Column(
                                children: [
                                  HomeErrorWidget(message: error.toString()),
                                  const SizedBox(height: 100),
                                ],
                              ),
                            ),
                          ] else ...[
                            // Show clubs for regular users
                            clubs!.when(
                              data: (clubsList) => FadeInUp(
                                duration: const Duration(milliseconds: 600),
                                delay: const Duration(milliseconds: 700),
                                child: Column(
                                  children: [
                                    ClubsGrid(clubs: clubsList),
                                    const SizedBox(height: 100), // Space for FAB
                                  ],
                                ),
                              ),
                              loading: () => const Column(
                                children: [
                                  LoadingWidget(),
                                  SizedBox(height: 100),
                                ],
                              ),
                              error: (error, _) => Column(
                                children: [
                                  HomeErrorWidget(message: error.toString()),
                                  const SizedBox(height: 100),
                                ],
                              ),
                            ),
                          ],
                        ],
                      );
                    },
                    orElse: () => clubs!.when(
                      data: (clubsList) => Column(
                        children: [
                          ClubsGrid(clubs: clubsList),
                          const SizedBox(height: 100), // Space for FAB
                        ],
                      ),
                      loading: () => const Column(
                        children: [
                          LoadingWidget(),
                          SizedBox(height: 100),
                        ],
                      ),
                      error: (error, _) => Column(
                        children: [
                          HomeErrorWidget(message: error.toString()),
                          SizedBox(height: 100),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),

      // Floating Action Button
      floatingActionButton: authState.maybeWhen(
        authenticated: (user) => user.isOrganizer
            ? FadeInUp(
                duration: const Duration(milliseconds: 800),
                delay: const Duration(milliseconds: 1000),
                child: ScaleTransition(
                  scale: _fabController,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: AppTheme.primaryOrange.withValues(alpha: 0.4),
                          blurRadius: 20,
                          offset: const Offset(0, 8),
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: FloatingActionButton.extended(
                      onPressed: () => context.push('/create-event'),
                      backgroundColor: AppTheme.primaryOrange,
                      foregroundColor: Colors.white,
                      elevation: 0,
                      highlightElevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      icon: const Icon(Ionicons.add, size: 20),
                      label: Text(
                        'Create Event',
                        style: AppTheme.button.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ),
              )
            : null,
        orElse: () => null,
      ),
    );
  }

  Widget _buildWaitingForApprovalSection() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          // Main approval card
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              color: AppTheme.surfaceDark,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: AppTheme.primaryOrange.withValues(alpha: 0.2),
                width: 1,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.1),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              children: [
                // Clock icon with orange glow
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: AppTheme.primaryOrange.withValues(alpha: 0.2),
                      width: 2,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: AppTheme.primaryOrange.withValues(alpha: 0.3),
                        blurRadius: 20,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Ionicons.time_outline,
                    size: 48,
                    color: AppTheme.primaryOrange,
                  ),
                ),
                
                const SizedBox(height: 32),
                
                // Title
                const Text(
                  'Account Under Review',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: AppTheme.textPrimary,
                    letterSpacing: -0.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                
                const SizedBox(height: 16),
                
                // Description
                const Text(
                  'Thank you for joining A Play Organiser! Your account is currently being reviewed by our team. You\'ll receive access to events and features once approved.',
                  style: TextStyle(
                    fontSize: 16,
                    color: AppTheme.textSecondary,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
                
                const SizedBox(height: 32),
                
                // Status indicator
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  decoration: BoxDecoration(
                    color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: AppTheme.primaryOrange.withValues(alpha: 0.3),
                      width: 1,
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: 16,
                        height: 16,
                        child: CircularProgressIndicator(
                          strokeWidth: 2,
                          valueColor: AlwaysStoppedAnimation<Color>(AppTheme.primaryOrange),
                        ),
                      ),
                      const SizedBox(width: 12),
                      const Text(
                        'Pending Approval',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppTheme.primaryOrange,
                          letterSpacing: 0.2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          
          const SizedBox(height: 24),
          
          // Info cards
          Row(
            children: [
              Expanded(
                child: _buildInfoCard(
                  icon: Ionicons.time_outline,
                  title: 'Typical Review Time',
                  subtitle: '1-2 Business Days',
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: _buildInfoCard(
                  icon: Ionicons.notifications_outline,
                  title: 'You\'ll Be Notified',
                  subtitle: 'Via Email & App',
                ),
              ),
            ],
          ),
          
          const SizedBox(height: 24),
          
          // Contact support section
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: AppTheme.surfaceDark,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: AppTheme.primaryOrange.withValues(alpha: 0.1),
                width: 1,
              ),
            ),
            child: Column(
              children: [
                const Text(
                  'Need help or have questions?',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.textPrimary,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Contact our support team for assistance',
                  style: TextStyle(
                    fontSize: 14,
                    color: AppTheme.textSecondary,
                  ),
                ),
                const SizedBox(height: 16),
                TextButton.icon(
                  onPressed: () {
                    // You can implement contact support functionality here
                  },
                  icon: const Icon(Ionicons.headset_outline, size: 18),
                  label: const Text('Contact Support'),
                  style: TextButton.styleFrom(
                    foregroundColor: AppTheme.primaryOrange,
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppTheme.surfaceDark,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppTheme.primaryOrange.withValues(alpha: 0.1),
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            size: 24,
            color: AppTheme.primaryOrange,
          ),
          const SizedBox(height: 12),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: AppTheme.textPrimary,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            subtitle,
            style: const TextStyle(
              fontSize: 11,
              color: AppTheme.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
} 