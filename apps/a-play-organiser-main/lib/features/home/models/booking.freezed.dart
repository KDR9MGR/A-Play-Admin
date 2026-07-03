// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'booking.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Booking _$BookingFromJson(Map<String, dynamic> json) {
  return _Booking.fromJson(json);
}

/// @nodoc
mixin _$Booking {
  String get id => throw _privateConstructorUsedError;
  String get eventId => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String get ticketType => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get pricePaid => throw _privateConstructorUsedError;
  double get discountApplied => throw _privateConstructorUsedError;
  String? get tier => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  String? get bookingReference => throw _privateConstructorUsedError;
  String? get paymentMethod => throw _privateConstructorUsedError;
  String? get paymentReference => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Booking to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookingCopyWith<Booking> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingCopyWith<$Res> {
  factory $BookingCopyWith(Booking value, $Res Function(Booking) then) =
      _$BookingCopyWithImpl<$Res, Booking>;
  @useResult
  $Res call({
    String id,
    String eventId,
    String userId,
    String ticketType,
    int quantity,
    double pricePaid,
    double discountApplied,
    String? tier,
    String status,
    String? bookingReference,
    String? paymentMethod,
    String? paymentReference,
    DateTime createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class _$BookingCopyWithImpl<$Res, $Val extends Booking>
    implements $BookingCopyWith<$Res> {
  _$BookingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? userId = null,
    Object? ticketType = null,
    Object? quantity = null,
    Object? pricePaid = null,
    Object? discountApplied = null,
    Object? tier = freezed,
    Object? status = null,
    Object? bookingReference = freezed,
    Object? paymentMethod = freezed,
    Object? paymentReference = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            eventId:
                null == eventId
                    ? _value.eventId
                    : eventId // ignore: cast_nullable_to_non_nullable
                        as String,
            userId:
                null == userId
                    ? _value.userId
                    : userId // ignore: cast_nullable_to_non_nullable
                        as String,
            ticketType:
                null == ticketType
                    ? _value.ticketType
                    : ticketType // ignore: cast_nullable_to_non_nullable
                        as String,
            quantity:
                null == quantity
                    ? _value.quantity
                    : quantity // ignore: cast_nullable_to_non_nullable
                        as int,
            pricePaid:
                null == pricePaid
                    ? _value.pricePaid
                    : pricePaid // ignore: cast_nullable_to_non_nullable
                        as double,
            discountApplied:
                null == discountApplied
                    ? _value.discountApplied
                    : discountApplied // ignore: cast_nullable_to_non_nullable
                        as double,
            tier:
                freezed == tier
                    ? _value.tier
                    : tier // ignore: cast_nullable_to_non_nullable
                        as String?,
            status:
                null == status
                    ? _value.status
                    : status // ignore: cast_nullable_to_non_nullable
                        as String,
            bookingReference:
                freezed == bookingReference
                    ? _value.bookingReference
                    : bookingReference // ignore: cast_nullable_to_non_nullable
                        as String?,
            paymentMethod:
                freezed == paymentMethod
                    ? _value.paymentMethod
                    : paymentMethod // ignore: cast_nullable_to_non_nullable
                        as String?,
            paymentReference:
                freezed == paymentReference
                    ? _value.paymentReference
                    : paymentReference // ignore: cast_nullable_to_non_nullable
                        as String?,
            createdAt:
                null == createdAt
                    ? _value.createdAt
                    : createdAt // ignore: cast_nullable_to_non_nullable
                        as DateTime,
            updatedAt:
                freezed == updatedAt
                    ? _value.updatedAt
                    : updatedAt // ignore: cast_nullable_to_non_nullable
                        as DateTime?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BookingImplCopyWith<$Res> implements $BookingCopyWith<$Res> {
  factory _$$BookingImplCopyWith(
    _$BookingImpl value,
    $Res Function(_$BookingImpl) then,
  ) = __$$BookingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String eventId,
    String userId,
    String ticketType,
    int quantity,
    double pricePaid,
    double discountApplied,
    String? tier,
    String status,
    String? bookingReference,
    String? paymentMethod,
    String? paymentReference,
    DateTime createdAt,
    DateTime? updatedAt,
  });
}

/// @nodoc
class __$$BookingImplCopyWithImpl<$Res>
    extends _$BookingCopyWithImpl<$Res, _$BookingImpl>
    implements _$$BookingImplCopyWith<$Res> {
  __$$BookingImplCopyWithImpl(
    _$BookingImpl _value,
    $Res Function(_$BookingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? eventId = null,
    Object? userId = null,
    Object? ticketType = null,
    Object? quantity = null,
    Object? pricePaid = null,
    Object? discountApplied = null,
    Object? tier = freezed,
    Object? status = null,
    Object? bookingReference = freezed,
    Object? paymentMethod = freezed,
    Object? paymentReference = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(
      _$BookingImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        eventId:
            null == eventId
                ? _value.eventId
                : eventId // ignore: cast_nullable_to_non_nullable
                    as String,
        userId:
            null == userId
                ? _value.userId
                : userId // ignore: cast_nullable_to_non_nullable
                    as String,
        ticketType:
            null == ticketType
                ? _value.ticketType
                : ticketType // ignore: cast_nullable_to_non_nullable
                    as String,
        quantity:
            null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                    as int,
        pricePaid:
            null == pricePaid
                ? _value.pricePaid
                : pricePaid // ignore: cast_nullable_to_non_nullable
                    as double,
        discountApplied:
            null == discountApplied
                ? _value.discountApplied
                : discountApplied // ignore: cast_nullable_to_non_nullable
                    as double,
        tier:
            freezed == tier
                ? _value.tier
                : tier // ignore: cast_nullable_to_non_nullable
                    as String?,
        status:
            null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                    as String,
        bookingReference:
            freezed == bookingReference
                ? _value.bookingReference
                : bookingReference // ignore: cast_nullable_to_non_nullable
                    as String?,
        paymentMethod:
            freezed == paymentMethod
                ? _value.paymentMethod
                : paymentMethod // ignore: cast_nullable_to_non_nullable
                    as String?,
        paymentReference:
            freezed == paymentReference
                ? _value.paymentReference
                : paymentReference // ignore: cast_nullable_to_non_nullable
                    as String?,
        createdAt:
            null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                    as DateTime,
        updatedAt:
            freezed == updatedAt
                ? _value.updatedAt
                : updatedAt // ignore: cast_nullable_to_non_nullable
                    as DateTime?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingImpl implements _Booking {
  const _$BookingImpl({
    required this.id,
    required this.eventId,
    required this.userId,
    this.ticketType = 'regular',
    this.quantity = 1,
    required this.pricePaid,
    this.discountApplied = 0.0,
    this.tier,
    this.status = 'confirmed',
    this.bookingReference,
    this.paymentMethod,
    this.paymentReference,
    required this.createdAt,
    this.updatedAt,
  });

  factory _$BookingImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingImplFromJson(json);

  @override
  final String id;
  @override
  final String eventId;
  @override
  final String userId;
  @override
  @JsonKey()
  final String ticketType;
  @override
  @JsonKey()
  final int quantity;
  @override
  final double pricePaid;
  @override
  @JsonKey()
  final double discountApplied;
  @override
  final String? tier;
  @override
  @JsonKey()
  final String status;
  @override
  final String? bookingReference;
  @override
  final String? paymentMethod;
  @override
  final String? paymentReference;
  @override
  final DateTime createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Booking(id: $id, eventId: $eventId, userId: $userId, ticketType: $ticketType, quantity: $quantity, pricePaid: $pricePaid, discountApplied: $discountApplied, tier: $tier, status: $status, bookingReference: $bookingReference, paymentMethod: $paymentMethod, paymentReference: $paymentReference, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.eventId, eventId) || other.eventId == eventId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.ticketType, ticketType) ||
                other.ticketType == ticketType) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.pricePaid, pricePaid) ||
                other.pricePaid == pricePaid) &&
            (identical(other.discountApplied, discountApplied) ||
                other.discountApplied == discountApplied) &&
            (identical(other.tier, tier) || other.tier == tier) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.bookingReference, bookingReference) ||
                other.bookingReference == bookingReference) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.paymentReference, paymentReference) ||
                other.paymentReference == paymentReference) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    eventId,
    userId,
    ticketType,
    quantity,
    pricePaid,
    discountApplied,
    tier,
    status,
    bookingReference,
    paymentMethod,
    paymentReference,
    createdAt,
    updatedAt,
  );

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      __$$BookingImplCopyWithImpl<_$BookingImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingImplToJson(this);
  }
}

abstract class _Booking implements Booking {
  const factory _Booking({
    required final String id,
    required final String eventId,
    required final String userId,
    final String ticketType,
    final int quantity,
    required final double pricePaid,
    final double discountApplied,
    final String? tier,
    final String status,
    final String? bookingReference,
    final String? paymentMethod,
    final String? paymentReference,
    required final DateTime createdAt,
    final DateTime? updatedAt,
  }) = _$BookingImpl;

  factory _Booking.fromJson(Map<String, dynamic> json) = _$BookingImpl.fromJson;

  @override
  String get id;
  @override
  String get eventId;
  @override
  String get userId;
  @override
  String get ticketType;
  @override
  int get quantity;
  @override
  double get pricePaid;
  @override
  double get discountApplied;
  @override
  String? get tier;
  @override
  String get status;
  @override
  String? get bookingReference;
  @override
  String? get paymentMethod;
  @override
  String? get paymentReference;
  @override
  DateTime get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of Booking
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookingImplCopyWith<_$BookingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
