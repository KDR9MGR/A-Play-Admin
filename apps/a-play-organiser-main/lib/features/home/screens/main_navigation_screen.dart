import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../../core/theme/app_theme.dart';
import '../../auth/controllers/auth_controller.dart';
import '../controllers/home_controller.dart';
import '../../venue/providers/venue_provider.dart';
import 'events_list_screen.dart';
import 'profile_screen.dart';
import 'dashboard_screen.dart';
import 'calendar_screen.dart';

class MainNavigationScreen extends ConsumerStatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  ConsumerState<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends ConsumerState<MainNavigationScreen> {
  late NotchBottomBarController _controller;
  late PageController _pageController;
  int _currentIndex = 0;
  RealtimeChannel? _venueApprovalChannel;

  final List<Widget> _screens = [
    const DashboardScreen(), // Home screen with stats
    const CalendarScreen(), // Calendar view of events
    const EventsListScreen(), // Full events list
    const ProfileScreen(), // User profile
  ];

  @override
  void initState() {
    super.initState();
    _controller = NotchBottomBarController(index: _currentIndex);
    _pageController = PageController(initialPage: _currentIndex);
    _listenForVenueApprovals();
  }

  /// Notifies the organizer in-app the moment one of their pending venues is
  /// approved (is_active flips to true), and refreshes the venue lists so
  /// event creation unblocks immediately without needing a manual refresh.
  void _listenForVenueApprovals() {
    final userId = Supabase.instance.client.auth.currentUser?.id;
    if (userId == null) return;

    _venueApprovalChannel = Supabase.instance.client
        .channel('club_approvals_$userId')
        .onPostgresChanges(
          event: PostgresChangeEvent.update,
          schema: 'public',
          table: 'clubs',
          filter: PostgresChangeFilter(
            type: PostgresChangeFilterType.eq,
            column: 'created_by',
            value: userId,
          ),
          callback: (payload) {
            final wasActive = payload.oldRecord['is_active'] == true;
            final isActive = payload.newRecord['is_active'] == true;
            if (!wasActive && isActive) {
              ref.invalidate(myVenuesProvider);
              ref.invalidate(myClubsProvider);
              final name = payload.newRecord['name'] as String? ?? 'Your venue';
              if (mounted) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('$name has been approved! You can now create events for it.'),
                    backgroundColor: AppTheme.successColor,
                    duration: const Duration(seconds: 5),
                  ),
                );
              }
            }
          },
        )
        .subscribe();
  }

  @override
  void dispose() {
    _controller.dispose();
    _pageController.dispose();
    _venueApprovalChannel?.unsubscribe();
    super.dispose();
  }

  /// Build responsive bottom navigation bar that adapts to different device sizes
  Widget _buildResponsiveBottomNavBar(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final screenWidth = mediaQuery.size.width;
    final bottomPadding = mediaQuery.padding.bottom;

    // Calculate responsive values
    final isSmallDevice = screenWidth < 360;
    final isMediumDevice = screenWidth >= 360 && screenWidth < 400;

    // Responsive icon size
    final double iconSize = isSmallDevice ? 20.0 : isMediumDevice ? 22.0 : 24.0;

    // Responsive bottom bar width
    final double bottomBarWidth = screenWidth > 500 ? 500 : screenWidth;

    // Responsive radius
    final double radius = isSmallDevice ? 20.0 : isMediumDevice ? 24.0 : 28.0;

    return Container(
      // Add fixed positioning with proper padding for floating effect
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: bottomPadding > 0 ? bottomPadding : 20,
      ),
      child: AnimatedNotchBottomBar(
        notchBottomBarController: _controller,
        color: const Color(0xFF1A1A1A),
        showLabel: !isSmallDevice, // Hide labels on very small devices
        textOverflow: TextOverflow.ellipsis,
        maxLine: 1,
        notchColor: AppTheme.primaryOrange,
        removeMargins: false,
        bottomBarWidth: bottomBarWidth,
        durationInMilliSeconds: 300,
        kBottomRadius: radius,
        kIconSize: iconSize,
        bottomBarItems: _buildBottomBarItems(isSmallDevice, iconSize),
        onTap: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index);
        },
      ),
    );
  }

  /// Build bottom bar items with responsive sizing
  List<BottomBarItem> _buildBottomBarItems(bool isSmallDevice, double iconSize) {
    return [
      BottomBarItem(
        inActiveItem: Icon(
          Icons.home_outlined,
          color: Colors.white54,
          size: iconSize,
        ),
        activeItem: Icon(
          Icons.home,
          color: Colors.white,
          size: iconSize,
        ),
        itemLabel: 'Home',
      ),
      BottomBarItem(
        inActiveItem: Icon(
          Icons.calendar_today_outlined,
          color: Colors.white54,
          size: iconSize,
        ),
        activeItem: Icon(
          Icons.calendar_today,
          color: Colors.white,
          size: iconSize,
        ),
        itemLabel: 'Calendar',
      ),
      BottomBarItem(
        inActiveItem: Icon(
          Icons.event_note_outlined,
          color: Colors.white54,
          size: iconSize,
        ),
        activeItem: Icon(
          Icons.event_note,
          color: Colors.white,
          size: iconSize,
        ),
        itemLabel: 'Events',
      ),
      BottomBarItem(
        inActiveItem: Icon(
          Icons.person_outline,
          color: Colors.white54,
          size: iconSize,
        ),
        activeItem: Icon(
          Icons.person,
          color: Colors.white,
          size: iconSize,
        ),
        itemLabel: 'Profile',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final authState = ref.watch(authControllerProvider);

    // Listen for auth state changes and handle logout
    ref.listen(authControllerProvider, (previous, next) {
      next.maybeWhen(
        unauthenticated: () {
          // Navigate to login when user logs out
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              context.go('/login');
            }
          });
        },
        error: (message) {
          // Navigate to login on auth errors
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              context.go('/login');
            }
          });
        },
        orElse: () {},
      );
    });

    return authState.when(
      initial: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            color: AppTheme.primaryOrange,
          ),
        ),
      ),
      loading: () => const Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            color: AppTheme.primaryOrange,
          ),
        ),
      ),
      unauthenticated: () {
        // If somehow unauthenticated state is reached here, navigate to login
        WidgetsBinding.instance.addPostFrameCallback((_) {
          if (mounted) {
            context.go('/login');
          }
        });
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(
              color: AppTheme.primaryOrange,
            ),
          ),
        );
      },
      error: (error) => Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.error_outline,
                size: 64,
                color: AppTheme.errorColor,
              ),
              const SizedBox(height: 16),
              Text(
                'Something went wrong',
                style: AppTheme.heading3,
              ),
              const SizedBox(height: 8),
              Text(
                error,
                style: AppTheme.bodyMedium.copyWith(
                  color: AppTheme.textSecondary,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      authenticated: (user) => Scaffold(
        backgroundColor: AppTheme.backgroundDark,
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(), // Disable swipe to prevent conflicts
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
            _controller.jumpTo(index);
          },
          children: _screens,
        ),
        extendBody: false, // Extend body behind bottom nav for better visuals
        bottomNavigationBar: _buildResponsiveBottomNavBar(context),
      ),
    );
  }
} 
