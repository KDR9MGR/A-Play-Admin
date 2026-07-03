// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription_plan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlanFeaturesImpl _$$PlanFeaturesImplFromJson(
  Map<String, dynamic> json,
) => _$PlanFeaturesImpl(
  tier: json['tier'] as String,
  color: json['color'] as String,
  pointsMultiplier: (json['pointsMultiplier'] as num?)?.toInt() ?? 1,
  discountPercentage: (json['discountPercentage'] as num?)?.toInt() ?? 0,
  earlyBookingHours: (json['earlyBookingHours'] as num?)?.toInt() ?? 0,
  conciergeAccess: json['conciergeAccess'] as bool? ?? false,
  conciergeHours: json['conciergeHours'] as String? ?? 'none',
  conciergeRequestsPerMonth:
      (json['conciergeRequestsPerMonth'] as num?)?.toInt() ?? 0,
  vipEntry: json['vipEntry'] as bool? ?? false,
  prioritySupport: json['prioritySupport'] as bool? ?? false,
  freeReservationsPerMonth:
      (json['freeReservationsPerMonth'] as num?)?.toInt() ?? 0,
  vipLoungeAccess: json['vipLoungeAccess'] as bool? ?? false,
  eventUpgradesPerMonth: (json['eventUpgradesPerMonth'] as num?)?.toInt() ?? 0,
  pointsPerBooking: (json['pointsPerBooking'] as num?)?.toInt() ?? 10,
  pointsPerReview: (json['pointsPerReview'] as num?)?.toInt() ?? 5,
  referralLimit: (json['referralLimit'] as num?)?.toInt() ?? 5,
  supportResponseHours: (json['supportResponseHours'] as num?)?.toInt() ?? 48,
  badgeType: json['badgeType'] as String? ?? 'basic',
  allAccessVipLounge: json['allAccessVipLounge'] as bool?,
  meetGreetPerYear: (json['meetGreetPerYear'] as num?)?.toInt(),
  backstageAccessPerYear: (json['backstageAccessPerYear'] as num?)?.toInt(),
  freeParking: json['freeParking'] as bool?,
  personalCoordinator: json['personalCoordinator'] as bool?,
  quarterlyGifts: json['quarterlyGifts'] as bool?,
  animatedBadge: json['animatedBadge'] as bool?,
  inviteOnly: json['inviteOnly'] as bool?,
  exclusiveFirstAccess: json['exclusiveFirstAccess'] as bool?,
  dedicatedConcierge: json['dedicatedConcierge'] as bool?,
  privateLoungeAccess: json['privateLoungeAccess'] as bool?,
  valetService: json['valetService'] as bool?,
  dedicatedAccountManager: json['dedicatedAccountManager'] as bool?,
  luxuryGifts: json['luxuryGifts'] as bool?,
  privateEvents: json['privateEvents'] as bool?,
  celebrityAccess: json['celebrityAccess'] as bool?,
  luxuryTransport: json['luxuryTransport'] as bool?,
  internationalPerks: json['internationalPerks'] as bool?,
);

Map<String, dynamic> _$$PlanFeaturesImplToJson(_$PlanFeaturesImpl instance) =>
    <String, dynamic>{
      'tier': instance.tier,
      'color': instance.color,
      'pointsMultiplier': instance.pointsMultiplier,
      'discountPercentage': instance.discountPercentage,
      'earlyBookingHours': instance.earlyBookingHours,
      'conciergeAccess': instance.conciergeAccess,
      'conciergeHours': instance.conciergeHours,
      'conciergeRequestsPerMonth': instance.conciergeRequestsPerMonth,
      'vipEntry': instance.vipEntry,
      'prioritySupport': instance.prioritySupport,
      'freeReservationsPerMonth': instance.freeReservationsPerMonth,
      'vipLoungeAccess': instance.vipLoungeAccess,
      'eventUpgradesPerMonth': instance.eventUpgradesPerMonth,
      'pointsPerBooking': instance.pointsPerBooking,
      'pointsPerReview': instance.pointsPerReview,
      'referralLimit': instance.referralLimit,
      'supportResponseHours': instance.supportResponseHours,
      'badgeType': instance.badgeType,
      'allAccessVipLounge': instance.allAccessVipLounge,
      'meetGreetPerYear': instance.meetGreetPerYear,
      'backstageAccessPerYear': instance.backstageAccessPerYear,
      'freeParking': instance.freeParking,
      'personalCoordinator': instance.personalCoordinator,
      'quarterlyGifts': instance.quarterlyGifts,
      'animatedBadge': instance.animatedBadge,
      'inviteOnly': instance.inviteOnly,
      'exclusiveFirstAccess': instance.exclusiveFirstAccess,
      'dedicatedConcierge': instance.dedicatedConcierge,
      'privateLoungeAccess': instance.privateLoungeAccess,
      'valetService': instance.valetService,
      'dedicatedAccountManager': instance.dedicatedAccountManager,
      'luxuryGifts': instance.luxuryGifts,
      'privateEvents': instance.privateEvents,
      'celebrityAccess': instance.celebrityAccess,
      'luxuryTransport': instance.luxuryTransport,
      'internationalPerks': instance.internationalPerks,
    };

_$SubscriptionPlanImpl _$$SubscriptionPlanImplFromJson(
  Map<String, dynamic> json,
) => _$SubscriptionPlanImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String?,
  priceMonthly: (json['priceMonthly'] as num?)?.toDouble() ?? 0.0,
  priceYearly: (json['priceYearly'] as num?)?.toDouble() ?? 0.0,
  tierLevel: (json['tierLevel'] as num?)?.toInt() ?? 1,
  features: PlanFeatures.fromJson(json['features'] as Map<String, dynamic>),
  benefits:
      (json['benefits'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  isActive: json['isActive'] as bool? ?? true,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$SubscriptionPlanImplToJson(
  _$SubscriptionPlanImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'description': instance.description,
  'priceMonthly': instance.priceMonthly,
  'priceYearly': instance.priceYearly,
  'tierLevel': instance.tierLevel,
  'features': instance.features,
  'benefits': instance.benefits,
  'isActive': instance.isActive,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};

_$UserSubscriptionImpl _$$UserSubscriptionImplFromJson(
  Map<String, dynamic> json,
) => _$UserSubscriptionImpl(
  id: json['id'] as String,
  userId: json['userId'] as String,
  planId: json['planId'] as String,
  tier: json['tier'] as String,
  billingCycle: json['billingCycle'] as String? ?? 'monthly',
  status: json['status'] as String? ?? 'active',
  startDate: DateTime.parse(json['startDate'] as String),
  endDate: DateTime.parse(json['endDate'] as String),
  paymentMethod: json['paymentMethod'] as String?,
  paymentReference: json['paymentReference'] as String?,
  rewardPoints: (json['rewardPoints'] as num?)?.toInt() ?? 0,
  referralCode: json['referralCode'] as String?,
  plan:
      json['plan'] == null
          ? null
          : SubscriptionPlan.fromJson(json['plan'] as Map<String, dynamic>),
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt: DateTime.parse(json['updatedAt'] as String),
);

Map<String, dynamic> _$$UserSubscriptionImplToJson(
  _$UserSubscriptionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'planId': instance.planId,
  'tier': instance.tier,
  'billingCycle': instance.billingCycle,
  'status': instance.status,
  'startDate': instance.startDate.toIso8601String(),
  'endDate': instance.endDate.toIso8601String(),
  'paymentMethod': instance.paymentMethod,
  'paymentReference': instance.paymentReference,
  'rewardPoints': instance.rewardPoints,
  'referralCode': instance.referralCode,
  'plan': instance.plan,
  'createdAt': instance.createdAt.toIso8601String(),
  'updatedAt': instance.updatedAt.toIso8601String(),
};

_$PointRedemptionImpl _$$PointRedemptionImplFromJson(
  Map<String, dynamic> json,
) => _$PointRedemptionImpl(
  id: json['id'] as String,
  userId: json['userId'] as String,
  pointsSpent: (json['pointsSpent'] as num).toInt(),
  rewardType: json['rewardType'] as String,
  rewardValue: (json['rewardValue'] as num).toDouble(),
  description: json['description'] as String,
  status: json['status'] as String? ?? 'pending',
  createdAt: DateTime.parse(json['createdAt'] as String),
  expiresAt:
      json['expiresAt'] == null
          ? null
          : DateTime.parse(json['expiresAt'] as String),
);

Map<String, dynamic> _$$PointRedemptionImplToJson(
  _$PointRedemptionImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'userId': instance.userId,
  'pointsSpent': instance.pointsSpent,
  'rewardType': instance.rewardType,
  'rewardValue': instance.rewardValue,
  'description': instance.description,
  'status': instance.status,
  'createdAt': instance.createdAt.toIso8601String(),
  'expiresAt': instance.expiresAt?.toIso8601String(),
};

_$ReferralImpl _$$ReferralImplFromJson(Map<String, dynamic> json) =>
    _$ReferralImpl(
      id: json['id'] as String,
      referrerUserId: json['referrerUserId'] as String,
      referredUserId: json['referredUserId'] as String,
      referralCode: json['referralCode'] as String,
      subscriptionPlanId: json['subscriptionPlanId'] as String?,
      tier: json['tier'] as String?,
      status: json['status'] as String? ?? 'pending',
      pointsAwarded: (json['pointsAwarded'] as num?)?.toInt() ?? 0,
      bonusApplied: json['bonusApplied'] as bool? ?? false,
      createdAt: DateTime.parse(json['createdAt'] as String),
      completedAt:
          json['completedAt'] == null
              ? null
              : DateTime.parse(json['completedAt'] as String),
    );

Map<String, dynamic> _$$ReferralImplToJson(_$ReferralImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'referrerUserId': instance.referrerUserId,
      'referredUserId': instance.referredUserId,
      'referralCode': instance.referralCode,
      'subscriptionPlanId': instance.subscriptionPlanId,
      'tier': instance.tier,
      'status': instance.status,
      'pointsAwarded': instance.pointsAwarded,
      'bonusApplied': instance.bonusApplied,
      'createdAt': instance.createdAt.toIso8601String(),
      'completedAt': instance.completedAt?.toIso8601String(),
    };
