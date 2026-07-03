import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscription_plan.freezed.dart';
part 'subscription_plan.g.dart';

@freezed
class PlanFeatures with _$PlanFeatures {
  const factory PlanFeatures({
    required String tier,
    required String color,
    @Default(1) int pointsMultiplier,
    @Default(0) int discountPercentage,
    @Default(0) int earlyBookingHours,
    @Default(false) bool conciergeAccess,
    @Default('none') String conciergeHours,
    @Default(0) int conciergeRequestsPerMonth,
    @Default(false) bool vipEntry,
    @Default(false) bool prioritySupport,
    @Default(0) int freeReservationsPerMonth,
    @Default(false) bool vipLoungeAccess,
    @Default(0) int eventUpgradesPerMonth,
    @Default(10) int pointsPerBooking,
    @Default(5) int pointsPerReview,
    @Default(5) int referralLimit,
    @Default(48) int supportResponseHours,
    @Default('basic') String badgeType,
    // Premium features (Platinum & Black)
    bool? allAccessVipLounge,
    int? meetGreetPerYear,
    int? backstageAccessPerYear,
    bool? freeParking,
    bool? personalCoordinator,
    bool? quarterlyGifts,
    bool? animatedBadge,
    // Black tier exclusive
    bool? inviteOnly,
    bool? exclusiveFirstAccess,
    bool? dedicatedConcierge,
    bool? privateLoungeAccess,
    bool? valetService,
    bool? dedicatedAccountManager,
    bool? luxuryGifts,
    bool? privateEvents,
    bool? celebrityAccess,
    bool? luxuryTransport,
    bool? internationalPerks,
  }) = _PlanFeatures;

  factory PlanFeatures.fromJson(Map<String, dynamic> json) =>
      _$PlanFeaturesFromJson(json);
}

@freezed
class SubscriptionPlan with _$SubscriptionPlan {
  const factory SubscriptionPlan({
    required String id,
    required String name,
    String? description,
    @Default(0.0) double priceMonthly,
    @Default(0.0) double priceYearly,
    @Default(1) int tierLevel,
    required PlanFeatures features,
    @Default([]) List<String> benefits,
    @Default(true) bool isActive,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _SubscriptionPlan;

  factory SubscriptionPlan.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionPlanFromJson(json);
}

@freezed
class UserSubscription with _$UserSubscription {
  const factory UserSubscription({
    required String id,
    required String userId,
    required String planId,
    required String tier,
    @Default('monthly') String billingCycle,
    @Default('active') String status,
    required DateTime startDate,
    required DateTime endDate,
    String? paymentMethod,
    String? paymentReference,
    @Default(0) int rewardPoints,
    String? referralCode,
    SubscriptionPlan? plan,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _UserSubscription;

  factory UserSubscription.fromJson(Map<String, dynamic> json) =>
      _$UserSubscriptionFromJson(json);
}

@freezed
class PointRedemption with _$PointRedemption {
  const factory PointRedemption({
    required String id,
    required String userId,
    required int pointsSpent,
    required String rewardType,
    required double rewardValue,
    required String description,
    @Default('pending') String status,
    required DateTime createdAt,
    DateTime? expiresAt,
  }) = _PointRedemption;

  factory PointRedemption.fromJson(Map<String, dynamic> json) =>
      _$PointRedemptionFromJson(json);
}

@freezed
class Referral with _$Referral {
  const factory Referral({
    required String id,
    required String referrerUserId,
    required String referredUserId,
    required String referralCode,
    String? subscriptionPlanId,
    String? tier,
    @Default('pending') String status,
    @Default(0) int pointsAwarded,
    @Default(false) bool bonusApplied,
    required DateTime createdAt,
    DateTime? completedAt,
  }) = _Referral;

  factory Referral.fromJson(Map<String, dynamic> json) =>
      _$ReferralFromJson(json);
}
