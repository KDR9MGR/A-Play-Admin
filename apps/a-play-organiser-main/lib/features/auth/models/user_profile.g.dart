// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileImpl _$$UserProfileImplFromJson(Map<String, dynamic> json) =>
    _$UserProfileImpl(
      id: json['id'] as String,
      fullName: json['fullName'] as String?,
      avatarUrl: json['avatarUrl'] as String?,
      phone: json['phone'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      isPremium: json['isPremium'] as bool? ?? false,
      isOrganizer: json['isOrganizer'] as bool? ?? false,
      isApproved: json['isApproved'] as bool? ?? true,
      role: json['role'] as String? ?? 'user',
      businessName: json['businessName'] as String?,
      organizerCategory: json['organizerCategory'] as String?,
    );

Map<String, dynamic> _$$UserProfileImplToJson(_$UserProfileImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'avatarUrl': instance.avatarUrl,
      'phone': instance.phone,
      'createdAt': instance.createdAt.toIso8601String(),
      'isPremium': instance.isPremium,
      'isOrganizer': instance.isOrganizer,
      'isApproved': instance.isApproved,
      'role': instance.role,
      'businessName': instance.businessName,
      'organizerCategory': instance.organizerCategory,
    };
