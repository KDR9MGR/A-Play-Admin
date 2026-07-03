import 'package:flutter/foundation.dart';
import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart' hide AuthState;

import '../../../core/utils/app_failure.dart';
import '../../../core/utils/error_message_mapper.dart';
import '../models/user_profile.dart';
import 'email_service.dart';

class AuthService {
  final SupabaseClient _supabase = Supabase.instance.client;
  final EmailService _emailService = EmailService();

  bool _isUndefinedColumn(PostgrestException e) {
    final message = (e.message).toLowerCase();
    final details = (e.details ?? '').toString().toLowerCase();
    final hint = (e.hint ?? '').toString().toLowerCase();

    if (e.code == '42703') return true;

    final combined = '$message $details $hint';
    return combined.contains('column') &&
        (combined.contains('does not exist') ||
            combined.contains('could not find') ||
            combined.contains('unknown column'));
  }

  Map<String, dynamic> _fallbackProfileResponseFromUser(User user) {
    final meta = user.userMetadata ?? <String, dynamic>{};
    final isOrganizer = meta['is_organizer'] == true ||
        meta['isOrganizer'] == true ||
        meta['role']?.toString().toLowerCase() == 'organizer';
    final role = meta['role']?.toString() ?? (isOrganizer ? 'organizer' : 'user');

    return <String, dynamic>{
      'id': user.id,
      'full_name': (meta['full_name'] ?? meta['fullName'])?.toString(),
      'avatar_url': meta['avatar_url'] ?? meta['avatarUrl'],
      'phone': meta['phone']?.toString(),
      'created_at': user.createdAt,
      'is_premium': meta['is_premium'] ?? meta['isPremium'] ?? false,
      'is_organizer': isOrganizer,
      'is_approved': meta['is_approved'] ?? meta['isApproved'] ?? isOrganizer,
      'role': role,
      'business_name': (meta['business_name'] ?? meta['businessName'])?.toString(),
      'organizer_category':
          (meta['organizer_category'] ?? meta['organizerCategory'])?.toString(),
    };
  }

  Future<void> _safeUpsertProfile(Map<String, dynamic> upsertData) async {
    try {
      await _supabase.from('profiles').upsert(upsertData);
      return;
    } on PostgrestException catch (e) {
      if (!_isUndefinedColumn(e)) rethrow;

      final retryData = Map<String, dynamic>.from(upsertData)
        ..remove('business_name')
        ..remove('organizer_category')
        ..remove('phone')
        ..remove('avatar_url');

      await _supabase.from('profiles').upsert(retryData);
    }
  }

  Future<Map<String, dynamic>?> _ensureProfile(User user) async {
    Map<String, dynamic>? profileResponse;
    try {
      profileResponse = await _supabase
          .from('profiles')
          .select()
          .eq('id', user.id)
          .maybeSingle();
    } on PostgrestException catch (e) {
      debugPrint('[AuthService] profile select failed: ${e.message}');
      return _fallbackProfileResponseFromUser(user);
    }

    if (profileResponse != null) {
      return profileResponse;
    }

    final meta = user.userMetadata ?? <String, dynamic>{};
    final isOrganizer = meta['is_organizer'] == true ||
        meta['isOrganizer'] == true ||
        meta['role']?.toString().toLowerCase() == 'organizer';
    final role = meta['role']?.toString() ?? (isOrganizer ? 'organizer' : 'user');

    final upsertData = <String, dynamic>{
      'id': user.id,
      'full_name': (meta['full_name'] ?? meta['fullName'])?.toString(),
      'is_organizer': isOrganizer,
      'is_approved': isOrganizer,
      'role': role,
    };
    final phoneVal = meta['phone']?.toString();
    if (phoneVal?.isNotEmpty == true) upsertData['phone'] = phoneVal;
    final bizVal = (meta['business_name'] ?? meta['businessName'])?.toString();
    if (bizVal?.isNotEmpty == true) upsertData['business_name'] = bizVal;
    final catVal = (meta['organizer_category'] ?? meta['organizerCategory'])?.toString();
    if (catVal?.isNotEmpty == true) upsertData['organizer_category'] = catVal!.toLowerCase();

    try {
      await _safeUpsertProfile(upsertData);
    } on PostgrestException catch (e) {
      debugPrint('[AuthService] profile upsert failed: ${e.message}');
      return _fallbackProfileResponseFromUser(user);
    }

    try {
      profileResponse = await _supabase
          .from('profiles')
          .select()
          .eq('id', user.id)
          .maybeSingle();
    } on PostgrestException catch (e) {
      debugPrint('[AuthService] profile re-select failed: ${e.message}');
      return _fallbackProfileResponseFromUser(user);
    }

    return profileResponse ?? _fallbackProfileResponseFromUser(user);
  }

  Future<Either<AppFailure, UserProfile?>> getCurrentUser() async {
    try {
      final user = _supabase.auth.currentUser;
      if (user == null) {
        return const Right(null);
      }

      Map<String, dynamic>? response;
      try {
        response = await _supabase
            .from('profiles')
            .select()
            .eq('id', user.id)
            .maybeSingle();
      } on PostgrestException catch (e) {
        debugPrint('[AuthService] getCurrentUser profile fetch failed: ${e.message}');
        final fallback = UserProfile.fromJson(_fallbackProfileResponseFromUser(user));
        return Right(fallback);
      }

      if (response == null) {
        final fallback = UserProfile.fromJson(_fallbackProfileResponseFromUser(user));
        return Right(fallback);
      }

      final profile = UserProfile.fromJson({
        'id': response['id'],
        'fullName': response['full_name'],
        'avatarUrl': response['avatar_url'],
        'phone': response['phone'],
        'createdAt': response['created_at'] ?? DateTime.now().toIso8601String(),
        'isPremium': response['is_premium'] ?? false,
        'isOrganizer': response['is_organizer'] ?? false,
        'isApproved': response['is_approved'] ?? true,
        'role': response['role'] ?? 'user',
        'businessName': response['business_name'],
        'organizerCategory': response['organizer_category'],
      });

      return Right(profile);
    } on AuthException catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.authFailure(message));
    } on PostgrestException catch (e) {
      final user = _supabase.auth.currentUser;
      if (user != null) {
        final fallback = UserProfile.fromJson(_fallbackProfileResponseFromUser(user));
        return Right(fallback);
      }
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.serverFailure(message));
    } catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.networkFailure(message));
    }
  }

  Future<Either<AppFailure, UserProfile>> signInWithEmail({
    required String email,
    required String password,
  }) async {
    try {
      final response = await _supabase.auth.signInWithPassword(
        email: email,
        password: password,
      );

      if (response.user == null) {
        return const Left(AppFailure.authFailure('Invalid email or password. Please try again.'));
      }

      final user = response.user!;

      final profileResponse = await _ensureProfile(user);

      if (profileResponse == null) {
        final fallback = UserProfile.fromJson(_fallbackProfileResponseFromUser(user));
        return Right(fallback);
      }

      final profile = UserProfile.fromJson({
        'id': profileResponse['id'],
        'fullName': profileResponse['full_name'],
        'avatarUrl': profileResponse['avatar_url'],
        'phone': profileResponse['phone'],
        'createdAt': profileResponse['created_at'] ?? DateTime.now().toIso8601String(),
        'isPremium': profileResponse['is_premium'] ?? false,
        'isOrganizer': profileResponse['is_organizer'] ?? false,
        'isApproved': profileResponse['is_approved'] ?? true,
        'role': profileResponse['role'] ?? 'user',
        'businessName': profileResponse['business_name'],
        'organizerCategory': profileResponse['organizer_category'],
      });

      // Send welcome email asynchronously (don't wait for it)
      _emailService.sendWelcomeEmail(
        email: email,
        fullName: profile.fullName ?? 'User',
        isOrganizer: profile.isOrganizer,
      ).then((sent) {
        if (!sent) {
          debugPrint('[AuthService] welcome email not sent after login');
        }
      }).catchError((e) {
        debugPrint('[AuthService] welcome email error after login: $e');
      });

      return Right(profile);
    } on AuthException catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.authFailure(message));
    } on PostgrestException catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.serverFailure(message));
    } catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.networkFailure(message));
    }
  }

  Future<Either<AppFailure, UserProfile>> signUpWithEmail({
    required String email,
    required String password,
    required String fullName,
    String? phone,
    bool isOrganizer = false,
    required String businessName,
    String? organizerCategory,
  }) async {
    try {
      final normalizedCategory = organizerCategory?.toLowerCase();
      final response = await _supabase.auth.signUp(
        email: email,
        password: password,
        data: {
          'full_name': fullName,
          'phone': phone,
          'is_organizer': isOrganizer,
          'role': isOrganizer ? 'organizer' : 'user',
          'business_name': businessName,
          'organizer_category': normalizedCategory,
        },
      );

      if (response.user == null) {
        return const Left(AppFailure.authFailure('Unable to create account. Please try again.'));
      }

      // Check if email confirmation is required
      if (response.session == null) {
        // Email confirmation required - user created but not signed in
        return const Left(AppFailure.authFailure('Account created! Please check your email to confirm your account before signing in.'));
      }

      // Build column-safe payload – omit optional columns when empty / null
      final profileData = <String, dynamic>{
        'id': response.user!.id,
        'full_name': fullName,
        'is_organizer': isOrganizer,
        'is_approved': isOrganizer,
        'role': isOrganizer ? 'organizer' : 'user',
      };
      if (phone?.trim().isNotEmpty == true) profileData['phone'] = phone!.trim();
      if (businessName.trim().isNotEmpty) profileData['business_name'] = businessName.trim();
      if (normalizedCategory != null && normalizedCategory.isNotEmpty) {
        profileData['organizer_category'] = normalizedCategory;
      }

      try {
        debugPrint('[AuthService] attempting profile upsert with: $profileData');
        await _safeUpsertProfile(profileData);
      } on PostgrestException catch (e) {
        debugPrint('[AuthService] profile upsert failed: ${e.message} – continuing with metadata profile');
      }

      // Try to send welcome email using the correct function name and parameters
      _emailService.sendWelcomeEmail(
        email: email,
        fullName: fullName,
        isOrganizer: isOrganizer,
      ).then((sent) {
        if (!sent) {
          debugPrint('[AuthService] welcome email not sent after signup');
        }
      }).catchError((e) {
        debugPrint('[AuthService] welcome email error after signup: $e');
      });

      final createdAt = DateTime.tryParse(response.user!.createdAt) ?? DateTime.now();

      final profile = UserProfile(
        id: response.user!.id,
        fullName: fullName,
        phone: phone,
        createdAt: createdAt,
        isOrganizer: isOrganizer,
        isApproved: isOrganizer,
        role: isOrganizer ? 'organizer' : 'user',
        businessName: businessName,
        organizerCategory: normalizedCategory,
      );

      return Right(profile);
    } on AuthException catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.authFailure(message));
    } on PostgrestException catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.serverFailure(message));
    } catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.networkFailure(message));
    }
  }

  Future<Either<AppFailure, void>> signOut() async {
    try {
      await _supabase.auth.signOut();
      return const Right(null);
    } on AuthException catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.authFailure(message));
    } catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.networkFailure(message));
    }
  }

  Future<Either<AppFailure, void>> deleteAccount() async {
    try {
      final user = _supabase.auth.currentUser;
      if (user == null) {
        return const Left(AppFailure.authFailure('Please sign in to delete your account.'));
      }

      // Delete user profile from profiles table
      await _supabase.from('profiles').delete().eq('id', user.id);

      // Delete the user account from Supabase Auth
      // Note: This requires RPC function or admin API in production
      // For now, we'll sign out and let the backend handle full deletion
      await _supabase.auth.signOut();

      return const Right(null);
    } on AuthException catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.authFailure(message));
    } on PostgrestException catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.serverFailure(message));
    } catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.networkFailure(message));
    }
  }

  String? get currentUserEmail => _supabase.auth.currentUser?.email;

  Future<Either<AppFailure, Map<String, dynamic>?>> getUserSubscription({
    required String userId,
  }) async {
    try {
      final response = await _supabase
          .from('user_subscriptions')
          .select('reward_points, tier')
          .eq('user_id', userId)
          .maybeSingle();
      return Right(response);
    } on PostgrestException catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.serverFailure(message));
    } catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.networkFailure(message));
    }
  }

  Future<Either<AppFailure, void>> updateProfile({
    required String fullName,
    String? phone,
    String? businessName,
  }) async {
    try {
      final user = _supabase.auth.currentUser;
      if (user == null) {
        return const Left(AppFailure.authFailure('User not authenticated'));
      }

      await _supabase.from('profiles').update({
        'full_name': fullName.trim(),
        'phone': (phone ?? '').trim().isEmpty ? null : phone!.trim(),
        'business_name':
            (businessName ?? '').trim().isEmpty ? null : businessName!.trim(),
      }).eq('id', user.id);

      return const Right(null);
    } on PostgrestException catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.serverFailure(message));
    } on AuthException catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.authFailure(message));
    } catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.networkFailure(message));
    }
  }

  Future<Either<AppFailure, void>> resendSignupConfirmationEmail(
    String email,
  ) async {
    try {
      await _supabase.auth.resend(
        type: OtpType.signup,
        email: email.trim(),
      );
      return const Right(null);
    } on AuthException catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.authFailure(message));
    } catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.networkFailure(message));
    }
  }

  Future<Either<AppFailure, void>> sendPasswordResetEmail({
    required String email,
    String? redirectTo,
  }) async {
    try {
      await _supabase.auth.resetPasswordForEmail(
        email.trim(),
        redirectTo: (redirectTo?.trim().isNotEmpty == true) ? redirectTo : null,
      );
      return const Right(null);
    } on AuthException catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.authFailure(message));
    } catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.networkFailure(message));
    }
  }

  Future<Either<AppFailure, void>> updatePassword(String password) async {
    try {
      await _supabase.auth.updateUser(
        UserAttributes(password: password),
      );
      return const Right(null);
    } on AuthException catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.authFailure(message));
    } catch (e) {
      final message = ErrorMessageMapper.getUserFriendlyMessage(e);
      return Left(AppFailure.networkFailure(message));
    }
  }

  Stream<AuthState> get authStateChanges {
    return _supabase.auth.onAuthStateChange.asyncMap((data) async {
      final user = data.session?.user;
      if (user == null) {
        return const AuthState.unauthenticated();
      }

      try {
        final profileResponse = await _ensureProfile(user);

        if (profileResponse == null) {
          return AuthState.authenticated(
            UserProfile.fromJson(_fallbackProfileResponseFromUser(user)),
          );
        }

        final profile = UserProfile.fromJson({
          'id': profileResponse['id'],
          'fullName': profileResponse['full_name'],
          'avatarUrl': profileResponse['avatar_url'],
          'phone': profileResponse['phone'],
          'createdAt': profileResponse['created_at'] ?? DateTime.now().toIso8601String(),
          'isPremium': profileResponse['is_premium'] ?? false,
          'isOrganizer': profileResponse['is_organizer'] ?? false,
          'isApproved': profileResponse['is_approved'] ?? true,
          'role': profileResponse['role'] ?? 'user',
          'businessName': profileResponse['business_name'],
          'organizerCategory': profileResponse['organizer_category'],
        });

        return AuthState.authenticated(profile);
      } on PostgrestException catch (e) {
        debugPrint('[AuthService] authStateChanges profile error: ${e.message}');
        return AuthState.authenticated(
          UserProfile.fromJson(_fallbackProfileResponseFromUser(user)),
        );
      } catch (e) {
        final message = ErrorMessageMapper.getUserFriendlyMessage(e);
        return AuthState.error(message);
      }
    });
  }
} 
