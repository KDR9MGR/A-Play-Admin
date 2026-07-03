import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/user_profile.dart';
import '../services/auth_service.dart';
import '../../../core/utils/app_failure.dart';
import '../../../core/utils/error_message_mapper.dart';

final authServiceProvider = Provider<AuthService>((ref) => AuthService());

final authControllerProvider =
    StateNotifierProvider<AuthController, AuthState>((ref) {
  final authService = ref.watch(authServiceProvider);
  return AuthController(authService, ref);
});

final authStateChangesProvider = StreamProvider<AuthState>((ref) {
  final authService = ref.watch(authServiceProvider);
  return authService.authStateChanges;
});

// Success message provider for showing success feedback
final authSuccessMessageProvider = StateProvider<String?>((ref) => null);

class AuthController extends StateNotifier<AuthState> {
  final AuthService _authService;
  final Ref _ref;

  AuthController(this._authService, this._ref) : super(const AuthState.initial()) {
    _checkInitialAuthState();
  }

  Future<void> _checkInitialAuthState() async {
    // Only set loading if we're in initial state
    if (state == const AuthState.initial()) {
      state = const AuthState.loading();
    }

    final result = await _authService.getCurrentUser();
    result.fold(
      (failure) => state = AuthState.error(_failureMessage(failure)),
      (user) => state = user != null
          ? AuthState.authenticated(user)
          : const AuthState.unauthenticated(),
    );
  }

  Future<void> signInWithEmail({
    required String email,
    required String password,
  }) async {
    state = const AuthState.loading();

    final result = await _authService.signInWithEmail(
      email: email,
      password: password,
    );

    result.fold(
      (failure) => state = AuthState.error(_failureMessage(failure)),
      (user) {
        state = AuthState.authenticated(user);
        final displayName = user.isOrganizer
            ? ((user.businessName?.isNotEmpty == true)
                ? user.businessName!
                : (user.fullName ?? 'Organiser'))
            : (user.fullName ?? 'User');
        _ref.read(authSuccessMessageProvider.notifier).state =
            'Welcome back, $displayName!';
      },
    );
  }

  Future<void> signUpWithEmail({
    required String email,
    required String password,
    required String fullName,
    String? phone,
    bool isOrganizer = false,
    required String businessName,
    String? organizerCategory,
  }) async {
    state = const AuthState.loading();

    final result = await _authService.signUpWithEmail(
      email: email,
      password: password,
      fullName: fullName,
      phone: phone,
      isOrganizer: isOrganizer,
      businessName: businessName,
      organizerCategory: organizerCategory,
    );

    result.fold(
      (failure) {
        final message = _failureMessage(failure);
        if (message.toLowerCase().contains('check your email') &&
            message.toLowerCase().contains('confirm')) {
          state = const AuthState.unauthenticated();
          _ref.read(authSuccessMessageProvider.notifier).state = message;
          return;
        }
        state = AuthState.error(message);
      },
      (user) {
        state = AuthState.authenticated(user);
        _ref.read(authSuccessMessageProvider.notifier).state =
            isOrganizer
                ? 'Account created successfully! Welcome to A Play Organiser.'
                : 'Account created successfully! Welcome aboard.';
      },
    );
  }

  Future<void> signOut() async {
    state = const AuthState.loading();
    
    final result = await _authService.signOut();
    
    result.fold(
      (failure) => state = AuthState.error(_failureMessage(failure)),
      (_) => state = const AuthState.unauthenticated(),
    );
  }

  Future<void> refreshUser() async {
    final result = await _authService.getCurrentUser();
    result.fold(
      (failure) => state = AuthState.error(_failureMessage(failure)),
      (user) => state = user != null
          ? AuthState.authenticated(user)
          : const AuthState.unauthenticated(),
    );
  }

  Future<void> deleteAccount() async {
    state = const AuthState.loading();

    final result = await _authService.deleteAccount();

    result.fold(
      (failure) => state = AuthState.error(_failureMessage(failure)),
      (_) => state = const AuthState.unauthenticated(),
    );
  }
}

String _failureMessage(AppFailure failure) {
  return failure.when(
    serverFailure: (message) => ErrorMessageMapper.getUserFriendlyMessage(message),
    networkFailure: (message) => ErrorMessageMapper.getUserFriendlyMessage(message),
    authFailure: (message) => ErrorMessageMapper.getUserFriendlyMessage(message),
    unknownFailure: (message) => ErrorMessageMapper.getUserFriendlyMessage(message),
  );
}
