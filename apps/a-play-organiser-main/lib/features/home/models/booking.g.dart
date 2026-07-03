// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookingImpl _$$BookingImplFromJson(Map<String, dynamic> json) =>
    _$BookingImpl(
      id: json['id'] as String,
      eventId: json['eventId'] as String,
      userId: json['userId'] as String,
      ticketType: json['ticketType'] as String? ?? 'regular',
      quantity: (json['quantity'] as num?)?.toInt() ?? 1,
      pricePaid: (json['pricePaid'] as num).toDouble(),
      discountApplied: (json['discountApplied'] as num?)?.toDouble() ?? 0.0,
      tier: json['tier'] as String?,
      status: json['status'] as String? ?? 'confirmed',
      bookingReference: json['bookingReference'] as String?,
      paymentMethod: json['paymentMethod'] as String?,
      paymentReference: json['paymentReference'] as String?,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt:
          json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$BookingImplToJson(_$BookingImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'eventId': instance.eventId,
      'userId': instance.userId,
      'ticketType': instance.ticketType,
      'quantity': instance.quantity,
      'pricePaid': instance.pricePaid,
      'discountApplied': instance.discountApplied,
      'tier': instance.tier,
      'status': instance.status,
      'bookingReference': instance.bookingReference,
      'paymentMethod': instance.paymentMethod,
      'paymentReference': instance.paymentReference,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
