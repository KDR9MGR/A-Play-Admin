import 'package:go_router/go_router.dart';

import '../../features/auth/screens/splash_screen.dart';
import '../../features/auth/screens/login_screen.dart';
import '../../features/auth/screens/signup_screen.dart';
import '../../features/auth/screens/forgot_password_screen.dart';
import '../../features/auth/screens/reset_password_screen.dart';
import '../../features/auth/screens/help_support_screen.dart';
import '../../features/auth/screens/privacy_policy_screen.dart';
import '../../features/auth/screens/terms_conditions_screen.dart';
import '../../features/home/screens/main_navigation_screen.dart';
import '../../features/home/screens/create_event_screen.dart';
import '../../features/home/screens/event_details_screen.dart';
import '../../features/home/screens/transactions_screen.dart';
import '../../features/home/screens/edit_profile_screen.dart';
import '../../features/home/screens/profile_screen.dart';
import '../../features/venue/screens/my_venues_screen.dart';
import '../../features/venue/screens/create_venue_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => const SignupScreen(),
    ),
    GoRoute(
      path: '/forgot-password',
      builder: (context, state) => const ForgotPasswordScreen(),
    ),
    GoRoute(
      path: '/reset-password',
      builder: (context, state) => const ResetPasswordScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const MainNavigationScreen(),
    ),
    GoRoute(
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      path: '/edit-profile',
      builder: (context, state) => const EditProfileScreen(),
    ),
    GoRoute(
      path: '/create-event',
      builder: (context, state) => const CreateEventScreen(),
    ),
    GoRoute(
      path: '/my-venues',
      builder: (context, state) => const MyVenuesScreen(),
    ),
    GoRoute(
      path: '/create-venue',
      builder: (context, state) => const CreateVenueScreen(),
    ),
    GoRoute(
      path: '/event-details/:eventId',
      builder: (context, state) {
        final eventId = state.pathParameters['eventId']!;
        return EventDetailsScreen(eventId: eventId);
      },
    ),
    GoRoute(
      path: '/edit-event/:eventId',
      builder: (context, state) {
        final eventId = state.pathParameters['eventId']!;
        return CreateEventScreen(eventId: eventId);
      },
    ),
    GoRoute(
      path: '/transactions/:organizerId',
      builder: (context, state) {
        final organizerId = state.pathParameters['organizerId']!;
        return TransactionsScreen(organizerId: organizerId);
      },
    ),
    GoRoute(
      path: '/help-support',
      builder: (context, state) => const HelpSupportScreen(),
    ),
    GoRoute(
      path: '/privacy-policy',
      builder: (context, state) => const PrivacyPolicyScreen(),
    ),
    GoRoute(
      path: '/terms-conditions',
      builder: (context, state) => const TermsConditionsScreen(),
    ),
  ],
); 
