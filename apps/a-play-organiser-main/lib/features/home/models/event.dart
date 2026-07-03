import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';
part 'event.g.dart';

@freezed
class Event with _$Event {
  const factory Event({
    required String id,
    required String title,
    required String description,
    String? coverImage,
    required DateTime startDate,
    required DateTime endDate,
    String? venueId,
    String? category,
    String? eventType,
    int? capacity,
    @Default(0.0) double price,
    double? vipPrice,
    double? earlyBirdPrice,
    @Default('draft') String status,
    String? featuredImage,
    @Default([]) List<String> images,
    String? organizerId,
    // Legacy fields for backward compatibility
    String? clubId,
    String? location,
    required DateTime createdAt,
    DateTime? updatedAt,
    String? createdBy,
  }) = _Event;

  factory Event.fromJson(Map<String, dynamic> json) => _$EventFromJson(json);
}

@freezed
class Club with _$Club {
  const factory Club({
    required String id,
    required String name,
    required String description,
    String? logoUrl,
    required DateTime createdAt,
  }) = _Club;

  factory Club.fromJson(Map<String, dynamic> json) => _$ClubFromJson(json);
}

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.loading() = _Loading;
  const factory HomeState.loaded({
    required List<Event> events,
    required List<Club> clubs,
  }) = _Loaded;
  const factory HomeState.error(String message) = _Error;
} 