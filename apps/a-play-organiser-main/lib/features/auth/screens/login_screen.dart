import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ionicons/ionicons.dart';

import '../controllers/auth_controller.dart';
import '../models/user_profile.dart';
import '../../../core/theme/app_theme.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _isPasswordVisible = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final size = MediaQuery.of(context).size;
    final isSmallScreen = size.height < 700;
    final isTablet = size.width > 600;

    // Listen to auth state changes
    ref.listen<AuthState>(authControllerProvider, (previous, next) {
      next.when(
        initial: () {},
        loading: () {},
        authenticated: (user) {
          context.go('/home');
        },
        unauthenticated: () {},
        error: (message) {
          final isEmailNotVerified =
              message.trim() == 'Please verify your email before signing in.';
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(message),
              backgroundColor: colorScheme.error,
              action: isEmailNotVerified
                  ? SnackBarAction(
                      label: 'Resend',
                      textColor: Colors.white,
                      onPressed: () async {
                        final email = _emailController.text.trim();
                        if (email.isEmpty) return;
                        try {
                          final result = await ref
                              .read(authServiceProvider)
                              .resendSignupConfirmationEmail(email);
                          result.fold(
                            (failure) => throw Exception(failure.toString()),
                            (_) {},
                          );
                          if (!context.mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Verification email sent.'),
                              backgroundColor: AppTheme.successColor,
                              duration: Duration(seconds: 2),
                            ),
                          );
                        } catch (e) {
                          if (!context.mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(e.toString()),
                              backgroundColor: colorScheme.error,
                              duration: const Duration(seconds: 3),
                            ),
                          );
                        }
                      },
                    )
                  : null,
            ),
          );
        },
      );
    });

    // Listen to success messages
    ref.listen<String?>(authSuccessMessageProvider, (previous, next) {
      if (next != null && next.isNotEmpty) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(next),
            backgroundColor: AppTheme.successColor,
            duration: const Duration(seconds: 2),
          ),
        );
        // Clear the message after showing
        Future.delayed(const Duration(milliseconds: 100), () {
          ref.read(authSuccessMessageProvider.notifier).state = null;
        });
      }
    });

    final authState = ref.watch(authControllerProvider);

    return Scaffold(
      backgroundColor: colorScheme.surface,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            final maxWidth = isTablet ? 400.0 : constraints.maxWidth;
            final horizontalPadding =
                isTablet ? (constraints.maxWidth - maxWidth) / 2 : 24.0;

            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(
                horizontal: horizontalPadding,
                vertical: 16.0,
              ),
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: constraints.maxHeight - 32,
                  maxWidth: maxWidth,
                ),
                child: IntrinsicHeight(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Top spacer - responsive
                      SizedBox(height: isSmallScreen ? 20 : 40),

                      // Header Section
                      _buildHeader(colorScheme, isSmallScreen),

                      // Spacing between header and form
                      SizedBox(height: isSmallScreen ? 24 : 40),

                      // Login Form
                      _buildLoginForm(authState, colorScheme, isSmallScreen),

                      // Bottom spacer to push sign up to bottom
                      const Spacer(),

                      // Bottom Sign Up Section
                      _buildBottomSection(colorScheme),

                      // Bottom padding
                      SizedBox(height: isSmallScreen ? 16 : 24),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildHeader(ColorScheme colorScheme, bool isSmallScreen) {
    return Column(
      children: [
        // Simple Logo
        SvgPicture.asset(
          'assets/svgs/app_logo.svg',
          width: isSmallScreen ? 48 : 64,
          height: isSmallScreen ? 48 : 64,
        ),

        SizedBox(height: isSmallScreen ? 24 : 24),

        Text(
          'A Play Organiser - Org App',
          style: AppTheme.heading2.copyWith(
            color: colorScheme.onSurface,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: isSmallScreen ? 8 : 12),
        Text(
          'Organiser portal login',
          style: AppTheme.bodyMedium.copyWith(
            color: AppTheme.textSecondary,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildLoginForm(
    AuthState authState,
    ColorScheme colorScheme,
    bool isSmallScreen,
  ) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Welcome Text
          Text(
            'Welcome back',
            style: AppTheme.heading2.copyWith(
              fontSize: isSmallScreen ? 22 : 28,
              color: colorScheme.onSurface,
              fontWeight: FontWeight.w800,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: isSmallScreen ? 4 : 8),

          Text(
            'Please sign in to your account',
            style: AppTheme.bodyLarge.copyWith(
              fontSize: isSmallScreen ? 14 : 16,
              color: colorScheme.onSurfaceVariant,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: isSmallScreen ? 32 : 48),

          // Email Field
          TextFormField(
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            style: AppTheme.bodyLarge.copyWith(color: colorScheme.onSurface),
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Enter your email address',
              labelStyle: AppTheme.bodyLarge.copyWith(
                fontSize: isSmallScreen ? 14 : 16,
                color: colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w500,
              ),
              hintStyle: AppTheme.bodyMedium.copyWith(
                fontSize: isSmallScreen ? 12 : 14,
                color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: colorScheme.outline.withValues(alpha: 0.3),
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: colorScheme.outline.withValues(alpha: 0.3),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppTheme.primaryOrange, width: 2),
              ),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: colorScheme.error, width: 2),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: colorScheme.error, width: 2),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your email';
              }
              if (!RegExp(
                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
              ).hasMatch(value)) {
                return 'Please enter a valid email';
              }
              return null;
            },
          ),

          SizedBox(height: isSmallScreen ? 20 : 32),

          // Password Field
          TextFormField(
            controller: _passwordController,
            obscureText: !_isPasswordVisible,
            style: AppTheme.bodyLarge.copyWith(color: colorScheme.onSurface),
            decoration: InputDecoration(
              labelText: 'Password',
              hintText: 'Enter your password',
              labelStyle: AppTheme.bodyLarge.copyWith(
                fontSize: isSmallScreen ? 14 : 16,
                color: colorScheme.onSurfaceVariant,
                fontWeight: FontWeight.w500,
              ),
              hintStyle: AppTheme.bodyMedium.copyWith(
                fontSize: isSmallScreen ? 12 : 14,
                color: colorScheme.onSurfaceVariant.withValues(alpha: 0.6),
              ),
              suffixIcon: IconButton(
                icon: Icon(
                  _isPasswordVisible
                      ? Ionicons.eye_off_outline
                      : Ionicons.eye_outline,
                  color: colorScheme.onSurfaceVariant,
                ),
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: colorScheme.outline.withValues(alpha: 0.3),
                ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: colorScheme.outline.withValues(alpha: 0.3),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: AppTheme.primaryOrange, width: 2),
              ),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: colorScheme.error, width: 2),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: colorScheme.error, width: 2),
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter your password';
              }
              return null;
            },
          ),

          SizedBox(height: isSmallScreen ? 16 : 24),

          // Forgot Password
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () => context.push('/forgot-password'),
              style: TextButton.styleFrom(
                foregroundColor: AppTheme.primaryOrange,
                padding: EdgeInsets.zero,
              ),
              child: Text(
                'Forgot Password?',
                style: AppTheme.bodyMedium.copyWith(
                  fontSize: isSmallScreen ? 12 : 14,
                  color: AppTheme.primaryOrange,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),

          SizedBox(height: isSmallScreen ? 32 : 48),

          // Sign In Button
          FilledButton(
            onPressed: authState.maybeWhen(
              loading: () => null,
              orElse: () => _signIn,
            ),
            style: FilledButton.styleFrom(
              backgroundColor: AppTheme.primaryOrange,
              foregroundColor: Colors.white,
              padding: EdgeInsets.symmetric(vertical: isSmallScreen ? 16 : 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 0,
            ),
            child: authState.maybeWhen(
              loading:
                  () => const SizedBox(
                    height: 20,
                    width: 20,
                    child: CircularProgressIndicator(
                      strokeWidth: 2,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                    ),
                  ),
              orElse:
                  () => Text(
                    'Sign In',
                    style: AppTheme.bodyLarge.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomSection(ColorScheme colorScheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account? ",
            style: AppTheme.bodyLarge.copyWith(
              fontSize: 14,
              color: colorScheme.onSurfaceVariant,
            ),
          ),
          TextButton(
            onPressed: () => context.push('/signup'),
            style: TextButton.styleFrom(
              foregroundColor: AppTheme.primaryOrange,
              padding: const EdgeInsets.symmetric(horizontal: 4),
            ),
            child: Text(
              'Sign Up',
              style: AppTheme.bodyLarge.copyWith(
                fontSize: 14,
                color: AppTheme.primaryOrange,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _signIn() {
    if (_formKey.currentState!.validate()) {
      ref
          .read(authControllerProvider.notifier)
          .signInWithEmail(
            email: _emailController.text.trim(),
            password: _passwordController.text,
          );
    }
  }
}
