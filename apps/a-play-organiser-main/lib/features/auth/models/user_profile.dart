import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile.freezed.dart';
part 'user_profile.g.dart';

@freezed
class UserProfile with _$UserProfile {
  const factory UserProfile({
    required String id,
    String? fullName,
    String? avatarUrl,
    String? phone,
    required DateTime createdAt,
    @Default(false) bool isPremium,
    @Default(false) bool isOrganizer,
    @Default(true) bool isApproved,
    @Default('user') String role,
    String? businessName,
    String? organizerCategory, // Category for organizers (lounge, club, liveShows, etc.)
  }) = _UserProfile;

  factory UserProfile.fromJson(Map<String, dynamic> json) =>
      _$UserProfileFromJson(json);
}

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.authenticated(UserProfile user) = _Authenticated;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.error(String message) = _Error;
} 
