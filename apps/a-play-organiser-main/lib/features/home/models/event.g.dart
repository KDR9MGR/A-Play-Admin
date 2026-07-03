// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  coverImage: json['coverImage'] as String?,
  startDate: DateTime.parse(json['startDate'] as String),
  endDate: DateTime.parse(json['endDate'] as String),
  venueId: json['venueId'] as String?,
  category: json['category'] as String?,
  eventType: json['eventType'] as String?,
  capacity: (json['capacity'] as num?)?.toInt(),
  price: (json['price'] as num?)?.toDouble() ?? 0.0,
  vipPrice: (json['vipPrice'] as num?)?.toDouble(),
  earlyBirdPrice: (json['earlyBirdPrice'] as num?)?.toDouble(),
  status: json['status'] as String? ?? 'draft',
  featuredImage: json['featuredImage'] as String?,
  images:
      (json['images'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const [],
  organizerId: json['organizerId'] as String?,
  clubId: json['clubId'] as String?,
  location: json['location'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
  updatedAt:
      json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
  createdBy: json['createdBy'] as String?,
);

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'coverImage': instance.coverImage,
      'startDate': instance.startDate.toIso8601String(),
      'endDate': instance.endDate.toIso8601String(),
      'venueId': instance.venueId,
      'category': instance.category,
      'eventType': instance.eventType,
      'capacity': instance.capacity,
      'price': instance.price,
      'vipPrice': instance.vipPrice,
      'earlyBirdPrice': instance.earlyBirdPrice,
      'status': instance.status,
      'featuredImage': instance.featuredImage,
      'images': instance.images,
      'organizerId': instance.organizerId,
      'clubId': instance.clubId,
      'location': instance.location,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'createdBy': instance.createdBy,
    };

_$ClubImpl _$$ClubImplFromJson(Map<String, dynamic> json) => _$ClubImpl(
  id: json['id'] as String,
  name: json['name'] as String,
  description: json['description'] as String,
  logoUrl: json['logoUrl'] as String?,
  createdAt: DateTime.parse(json['createdAt'] as String),
);

Map<String, dynamic> _$$ClubImplToJson(_$ClubImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'logoUrl': instance.logoUrl,
      'createdAt': instance.createdAt.toIso8601String(),
    };
