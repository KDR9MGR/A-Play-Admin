import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking.freezed.dart';
part 'booking.g.dart';

@freezed
class Booking with _$Booking {
  const factory Booking({
    required String id,
    required String eventId,
    required String userId,
    @Default('regular') String ticketType,
    @Default(1) int quantity,
    required double pricePaid,
    @Default(0.0) double discountApplied,
    String? tier,
    @Default('confirmed') String status,
    String? bookingReference,
    String? paymentMethod,
    String? paymentReference,
    required DateTime createdAt,
    DateTime? updatedAt,
  }) = _Booking;

  factory Booking.fromJson(Map<String, dynamic> json) => _$BookingFromJson(json);
}
