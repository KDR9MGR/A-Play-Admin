// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'json.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NoWhen _$NoWhenFromJson(Map<String, dynamic> json) {
  return _NoWhen.fromJson(json);
}

/// @nodoc
mixin _$NoWhen {
  int? get first => throw _privateConstructorUsedError;

  /// Serializes this NoWhen to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NoWhen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoWhenCopyWith<NoWhen> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoWhenCopyWith<$Res> {
  factory $NoWhenCopyWith(NoWhen value, $Res Function(NoWhen) then) =
      _$NoWhenCopyWithImpl<$Res, NoWhen>;
  @useResult
  $Res call({int? first});
}

/// @nodoc
class _$NoWhenCopyWithImpl<$Res, $Val extends NoWhen>
    implements $NoWhenCopyWith<$Res> {
  _$NoWhenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoWhen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
  }) {
    return _then(_value.copyWith(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NoWhenImplCopyWith<$Res> implements $NoWhenCopyWith<$Res> {
  factory _$$NoWhenImplCopyWith(
          _$NoWhenImpl value, $Res Function(_$NoWhenImpl) then) =
      __$$NoWhenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? first});
}

/// @nodoc
class __$$NoWhenImplCopyWithImpl<$Res>
    extends _$NoWhenCopyWithImpl<$Res, _$NoWhenImpl>
    implements _$$NoWhenImplCopyWith<$Res> {
  __$$NoWhenImplCopyWithImpl(
      _$NoWhenImpl _value, $Res Function(_$NoWhenImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoWhen
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
  }) {
    return _then(_$NoWhenImpl(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NoWhenImpl implements _NoWhen {
  _$NoWhenImpl({this.first});

  factory _$NoWhenImpl.fromJson(Map<String, dynamic> json) =>
      _$$NoWhenImplFromJson(json);

  @override
  final int? first;

  @override
  String toString() {
    return 'NoWhen(first: $first)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoWhenImpl &&
            (identical(other.first, first) || other.first == first));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, first);

  /// Create a copy of NoWhen
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoWhenImplCopyWith<_$NoWhenImpl> get copyWith =>
      __$$NoWhenImplCopyWithImpl<_$NoWhenImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NoWhenImplToJson(
      this,
    );
  }
}

abstract class _NoWhen implements NoWhen {
  factory _NoWhen({final int? first}) = _$NoWhenImpl;

  factory _NoWhen.fromJson(Map<String, dynamic> json) = _$NoWhenImpl.fromJson;

  @override
  int? get first;

  /// Create a copy of NoWhen
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoWhenImplCopyWith<_$NoWhenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UnionJsonWithExtends _$UnionJsonWithExtendsFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'first':
      return _UnionJsonFirstWithExtends.fromJson(json);
    case 'second':
      return _UnionJsonSecondWithExtends.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'UnionJsonWithExtends',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UnionJsonWithExtends {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? first) first,
    required TResult Function(int? second) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? first)? first,
    TResult? Function(int? second)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? first)? first,
    TResult Function(int? second)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionJsonFirstWithExtends value) first,
    required TResult Function(_UnionJsonSecondWithExtends value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionJsonFirstWithExtends value)? first,
    TResult? Function(_UnionJsonSecondWithExtends value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionJsonFirstWithExtends value)? first,
    TResult Function(_UnionJsonSecondWithExtends value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UnionJsonWithExtends to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnionJsonWithExtendsCopyWith<$Res> {
  factory $UnionJsonWithExtendsCopyWith(UnionJsonWithExtends value,
          $Res Function(UnionJsonWithExtends) then) =
      _$UnionJsonWithExtendsCopyWithImpl<$Res, UnionJsonWithExtends>;
}

/// @nodoc
class _$UnionJsonWithExtendsCopyWithImpl<$Res,
        $Val extends UnionJsonWithExtends>
    implements $UnionJsonWithExtendsCopyWith<$Res> {
  _$UnionJsonWithExtendsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnionJsonWithExtends
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnionJsonFirstWithExtendsImplCopyWith<$Res> {
  factory _$$UnionJsonFirstWithExtendsImplCopyWith(
          _$UnionJsonFirstWithExtendsImpl value,
          $Res Function(_$UnionJsonFirstWithExtendsImpl) then) =
      __$$UnionJsonFirstWithExtendsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? first});
}

/// @nodoc
class __$$UnionJsonFirstWithExtendsImplCopyWithImpl<$Res>
    extends _$UnionJsonWithExtendsCopyWithImpl<$Res,
        _$UnionJsonFirstWithExtendsImpl>
    implements _$$UnionJsonFirstWithExtendsImplCopyWith<$Res> {
  __$$UnionJsonFirstWithExtendsImplCopyWithImpl(
      _$UnionJsonFirstWithExtendsImpl _value,
      $Res Function(_$UnionJsonFirstWithExtendsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionJsonWithExtends
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
  }) {
    return _then(_$UnionJsonFirstWithExtendsImpl(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionJsonFirstWithExtendsImpl extends _UnionJsonFirstWithExtends {
  _$UnionJsonFirstWithExtendsImpl({this.first, final String? $type})
      : $type = $type ?? 'first',
        super._();

  factory _$UnionJsonFirstWithExtendsImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionJsonFirstWithExtendsImplFromJson(json);

  @override
  final int? first;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnionJsonWithExtends.first(first: $first)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionJsonFirstWithExtendsImpl &&
            (identical(other.first, first) || other.first == first));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, first);

  /// Create a copy of UnionJsonWithExtends
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionJsonFirstWithExtendsImplCopyWith<_$UnionJsonFirstWithExtendsImpl>
      get copyWith => __$$UnionJsonFirstWithExtendsImplCopyWithImpl<
          _$UnionJsonFirstWithExtendsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? first) first,
    required TResult Function(int? second) second,
  }) {
    return first(this.first);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? first)? first,
    TResult? Function(int? second)? second,
  }) {
    return first?.call(this.first);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? first)? first,
    TResult Function(int? second)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this.first);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionJsonFirstWithExtends value) first,
    required TResult Function(_UnionJsonSecondWithExtends value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionJsonFirstWithExtends value)? first,
    TResult? Function(_UnionJsonSecondWithExtends value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionJsonFirstWithExtends value)? first,
    TResult Function(_UnionJsonSecondWithExtends value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionJsonFirstWithExtendsImplToJson(
      this,
    );
  }
}

abstract class _UnionJsonFirstWithExtends extends UnionJsonWithExtends {
  factory _UnionJsonFirstWithExtends({final int? first}) =
      _$UnionJsonFirstWithExtendsImpl;
  _UnionJsonFirstWithExtends._() : super._();

  factory _UnionJsonFirstWithExtends.fromJson(Map<String, dynamic> json) =
      _$UnionJsonFirstWithExtendsImpl.fromJson;

  int? get first;

  /// Create a copy of UnionJsonWithExtends
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionJsonFirstWithExtendsImplCopyWith<_$UnionJsonFirstWithExtendsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionJsonSecondWithExtendsImplCopyWith<$Res> {
  factory _$$UnionJsonSecondWithExtendsImplCopyWith(
          _$UnionJsonSecondWithExtendsImpl value,
          $Res Function(_$UnionJsonSecondWithExtendsImpl) then) =
      __$$UnionJsonSecondWithExtendsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? second});
}

/// @nodoc
class __$$UnionJsonSecondWithExtendsImplCopyWithImpl<$Res>
    extends _$UnionJsonWithExtendsCopyWithImpl<$Res,
        _$UnionJsonSecondWithExtendsImpl>
    implements _$$UnionJsonSecondWithExtendsImplCopyWith<$Res> {
  __$$UnionJsonSecondWithExtendsImplCopyWithImpl(
      _$UnionJsonSecondWithExtendsImpl _value,
      $Res Function(_$UnionJsonSecondWithExtendsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionJsonWithExtends
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? second = freezed,
  }) {
    return _then(_$UnionJsonSecondWithExtendsImpl(
      second: freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionJsonSecondWithExtendsImpl extends _UnionJsonSecondWithExtends {
  _$UnionJsonSecondWithExtendsImpl({this.second, final String? $type})
      : $type = $type ?? 'second',
        super._();

  factory _$UnionJsonSecondWithExtendsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnionJsonSecondWithExtendsImplFromJson(json);

  @override
  final int? second;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnionJsonWithExtends.second(second: $second)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionJsonSecondWithExtendsImpl &&
            (identical(other.second, second) || other.second == second));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, second);

  /// Create a copy of UnionJsonWithExtends
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionJsonSecondWithExtendsImplCopyWith<_$UnionJsonSecondWithExtendsImpl>
      get copyWith => __$$UnionJsonSecondWithExtendsImplCopyWithImpl<
          _$UnionJsonSecondWithExtendsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? first) first,
    required TResult Function(int? second) second,
  }) {
    return second(this.second);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? first)? first,
    TResult? Function(int? second)? second,
  }) {
    return second?.call(this.second);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? first)? first,
    TResult Function(int? second)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this.second);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionJsonFirstWithExtends value) first,
    required TResult Function(_UnionJsonSecondWithExtends value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionJsonFirstWithExtends value)? first,
    TResult? Function(_UnionJsonSecondWithExtends value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionJsonFirstWithExtends value)? first,
    TResult Function(_UnionJsonSecondWithExtends value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionJsonSecondWithExtendsImplToJson(
      this,
    );
  }
}

abstract class _UnionJsonSecondWithExtends extends UnionJsonWithExtends {
  factory _UnionJsonSecondWithExtends({final int? second}) =
      _$UnionJsonSecondWithExtendsImpl;
  _UnionJsonSecondWithExtends._() : super._();

  factory _UnionJsonSecondWithExtends.fromJson(Map<String, dynamic> json) =
      _$UnionJsonSecondWithExtendsImpl.fromJson;

  int? get second;

  /// Create a copy of UnionJsonWithExtends
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionJsonSecondWithExtendsImplCopyWith<_$UnionJsonSecondWithExtendsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

_PUnionJsonWithExtends _$PUnionJsonWithExtendsFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'first':
      return _PUnionJsonFirstWithExtends.fromJson(json);
    case 'second':
      return _PUnionJsonSecondWithExtends.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          '_PUnionJsonWithExtends',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PUnionJsonWithExtends {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? first) first,
    required TResult Function(int? second) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? first)? first,
    TResult? Function(int? second)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? first)? first,
    TResult Function(int? second)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PUnionJsonFirstWithExtends value) first,
    required TResult Function(_PUnionJsonSecondWithExtends value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PUnionJsonFirstWithExtends value)? first,
    TResult? Function(_PUnionJsonSecondWithExtends value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PUnionJsonFirstWithExtends value)? first,
    TResult Function(_PUnionJsonSecondWithExtends value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this _PUnionJsonWithExtends to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PUnionJsonWithExtendsCopyWith<$Res> {
  factory _$PUnionJsonWithExtendsCopyWith(_PUnionJsonWithExtends value,
          $Res Function(_PUnionJsonWithExtends) then) =
      __$PUnionJsonWithExtendsCopyWithImpl<$Res, _PUnionJsonWithExtends>;
}

/// @nodoc
class __$PUnionJsonWithExtendsCopyWithImpl<$Res,
        $Val extends _PUnionJsonWithExtends>
    implements _$PUnionJsonWithExtendsCopyWith<$Res> {
  __$PUnionJsonWithExtendsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of _PUnionJsonWithExtends
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PUnionJsonFirstWithExtendsImplCopyWith<$Res> {
  factory _$$PUnionJsonFirstWithExtendsImplCopyWith(
          _$PUnionJsonFirstWithExtendsImpl value,
          $Res Function(_$PUnionJsonFirstWithExtendsImpl) then) =
      __$$PUnionJsonFirstWithExtendsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? first});
}

/// @nodoc
class __$$PUnionJsonFirstWithExtendsImplCopyWithImpl<$Res>
    extends __$PUnionJsonWithExtendsCopyWithImpl<$Res,
        _$PUnionJsonFirstWithExtendsImpl>
    implements _$$PUnionJsonFirstWithExtendsImplCopyWith<$Res> {
  __$$PUnionJsonFirstWithExtendsImplCopyWithImpl(
      _$PUnionJsonFirstWithExtendsImpl _value,
      $Res Function(_$PUnionJsonFirstWithExtendsImpl) _then)
      : super(_value, _then);

  /// Create a copy of _PUnionJsonWithExtends
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
  }) {
    return _then(_$PUnionJsonFirstWithExtendsImpl(
      first: freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PUnionJsonFirstWithExtendsImpl extends _PUnionJsonFirstWithExtends {
  _$PUnionJsonFirstWithExtendsImpl({this.first, final String? $type})
      : $type = $type ?? 'first',
        super._();

  factory _$PUnionJsonFirstWithExtendsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PUnionJsonFirstWithExtendsImplFromJson(json);

  @override
  final int? first;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return '_PUnionJsonWithExtends.first(first: $first)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PUnionJsonFirstWithExtendsImpl &&
            (identical(other.first, first) || other.first == first));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, first);

  /// Create a copy of _PUnionJsonWithExtends
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PUnionJsonFirstWithExtendsImplCopyWith<_$PUnionJsonFirstWithExtendsImpl>
      get copyWith => __$$PUnionJsonFirstWithExtendsImplCopyWithImpl<
          _$PUnionJsonFirstWithExtendsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? first) first,
    required TResult Function(int? second) second,
  }) {
    return first(this.first);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? first)? first,
    TResult? Function(int? second)? second,
  }) {
    return first?.call(this.first);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? first)? first,
    TResult Function(int? second)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this.first);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PUnionJsonFirstWithExtends value) first,
    required TResult Function(_PUnionJsonSecondWithExtends value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PUnionJsonFirstWithExtends value)? first,
    TResult? Function(_PUnionJsonSecondWithExtends value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PUnionJsonFirstWithExtends value)? first,
    TResult Function(_PUnionJsonSecondWithExtends value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PUnionJsonFirstWithExtendsImplToJson(
      this,
    );
  }
}

abstract class _PUnionJsonFirstWithExtends extends _PUnionJsonWithExtends {
  factory _PUnionJsonFirstWithExtends({final int? first}) =
      _$PUnionJsonFirstWithExtendsImpl;
  _PUnionJsonFirstWithExtends._() : super._();

  factory _PUnionJsonFirstWithExtends.fromJson(Map<String, dynamic> json) =
      _$PUnionJsonFirstWithExtendsImpl.fromJson;

  int? get first;

  /// Create a copy of _PUnionJsonWithExtends
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PUnionJsonFirstWithExtendsImplCopyWith<_$PUnionJsonFirstWithExtendsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PUnionJsonSecondWithExtendsImplCopyWith<$Res> {
  factory _$$PUnionJsonSecondWithExtendsImplCopyWith(
          _$PUnionJsonSecondWithExtendsImpl value,
          $Res Function(_$PUnionJsonSecondWithExtendsImpl) then) =
      __$$PUnionJsonSecondWithExtendsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? second});
}

/// @nodoc
class __$$PUnionJsonSecondWithExtendsImplCopyWithImpl<$Res>
    extends __$PUnionJsonWithExtendsCopyWithImpl<$Res,
        _$PUnionJsonSecondWithExtendsImpl>
    implements _$$PUnionJsonSecondWithExtendsImplCopyWith<$Res> {
  __$$PUnionJsonSecondWithExtendsImplCopyWithImpl(
      _$PUnionJsonSecondWithExtendsImpl _value,
      $Res Function(_$PUnionJsonSecondWithExtendsImpl) _then)
      : super(_value, _then);

  /// Create a copy of _PUnionJsonWithExtends
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? second = freezed,
  }) {
    return _then(_$PUnionJsonSecondWithExtendsImpl(
      second: freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PUnionJsonSecondWithExtendsImpl extends _PUnionJsonSecondWithExtends {
  _$PUnionJsonSecondWithExtendsImpl({this.second, final String? $type})
      : $type = $type ?? 'second',
        super._();

  factory _$PUnionJsonSecondWithExtendsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$PUnionJsonSecondWithExtendsImplFromJson(json);

  @override
  final int? second;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return '_PUnionJsonWithExtends.second(second: $second)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PUnionJsonSecondWithExtendsImpl &&
            (identical(other.second, second) || other.second == second));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, second);

  /// Create a copy of _PUnionJsonWithExtends
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PUnionJsonSecondWithExtendsImplCopyWith<_$PUnionJsonSecondWithExtendsImpl>
      get copyWith => __$$PUnionJsonSecondWithExtendsImplCopyWithImpl<
          _$PUnionJsonSecondWithExtendsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? first) first,
    required TResult Function(int? second) second,
  }) {
    return second(this.second);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? first)? first,
    TResult? Function(int? second)? second,
  }) {
    return second?.call(this.second);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? first)? first,
    TResult Function(int? second)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this.second);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PUnionJsonFirstWithExtends value) first,
    required TResult Function(_PUnionJsonSecondWithExtends value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PUnionJsonFirstWithExtends value)? first,
    TResult? Function(_PUnionJsonSecondWithExtends value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PUnionJsonFirstWithExtends value)? first,
    TResult Function(_PUnionJsonSecondWithExtends value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PUnionJsonSecondWithExtendsImplToJson(
      this,
    );
  }
}

abstract class _PUnionJsonSecondWithExtends extends _PUnionJsonWithExtends {
  factory _PUnionJsonSecondWithExtends({final int? second}) =
      _$PUnionJsonSecondWithExtendsImpl;
  _PUnionJsonSecondWithExtends._() : super._();

  factory _PUnionJsonSecondWithExtends.fromJson(Map<String, dynamic> json) =
      _$PUnionJsonSecondWithExtendsImpl.fromJson;

  int? get second;

  /// Create a copy of _PUnionJsonWithExtends
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PUnionJsonSecondWithExtendsImplCopyWith<_$PUnionJsonSecondWithExtendsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Regression409 _$Regression409FromJson(Map<String, dynamic> json) {
  return _Regression409.fromJson(json);
}

/// @nodoc
mixin _$Regression409 {
  dynamic get totalResults => throw _privateConstructorUsedError;

  /// Serializes this Regression409 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Regression409
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Regression409CopyWith<Regression409> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Regression409CopyWith<$Res> {
  factory $Regression409CopyWith(
          Regression409 value, $Res Function(Regression409) then) =
      _$Regression409CopyWithImpl<$Res, Regression409>;
  @useResult
  $Res call({dynamic totalResults});
}

/// @nodoc
class _$Regression409CopyWithImpl<$Res, $Val extends Regression409>
    implements $Regression409CopyWith<$Res> {
  _$Regression409CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Regression409
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = freezed,
  }) {
    return _then(_value.copyWith(
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Regression409ImplCopyWith<$Res>
    implements $Regression409CopyWith<$Res> {
  factory _$$Regression409ImplCopyWith(
          _$Regression409Impl value, $Res Function(_$Regression409Impl) then) =
      __$$Regression409ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({dynamic totalResults});
}

/// @nodoc
class __$$Regression409ImplCopyWithImpl<$Res>
    extends _$Regression409CopyWithImpl<$Res, _$Regression409Impl>
    implements _$$Regression409ImplCopyWith<$Res> {
  __$$Regression409ImplCopyWithImpl(
      _$Regression409Impl _value, $Res Function(_$Regression409Impl) _then)
      : super(_value, _then);

  /// Create a copy of Regression409
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = freezed,
  }) {
    return _then(_$Regression409Impl(
      totalResults: freezed == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Regression409Impl implements _Regression409 {
  _$Regression409Impl({this.totalResults});

  factory _$Regression409Impl.fromJson(Map<String, dynamic> json) =>
      _$$Regression409ImplFromJson(json);

  @override
  final dynamic totalResults;

  @override
  String toString() {
    return 'Regression409(totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Regression409Impl &&
            const DeepCollectionEquality()
                .equals(other.totalResults, totalResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(totalResults));

  /// Create a copy of Regression409
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Regression409ImplCopyWith<_$Regression409Impl> get copyWith =>
      __$$Regression409ImplCopyWithImpl<_$Regression409Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Regression409ImplToJson(
      this,
    );
  }
}

abstract class _Regression409 implements Regression409 {
  factory _Regression409({final dynamic totalResults}) = _$Regression409Impl;

  factory _Regression409.fromJson(Map<String, dynamic> json) =
      _$Regression409Impl.fromJson;

  @override
  dynamic get totalResults;

  /// Create a copy of Regression409
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Regression409ImplCopyWith<_$Regression409Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

Regression351 _$Regression351FromJson(Map<String, dynamic> json) {
  return _Regression351.fromJson(json);
}

/// @nodoc
mixin _$Regression351 {
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;

  /// Serializes this Regression351 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Regression351
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Regression351CopyWith<Regression351> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Regression351CopyWith<$Res> {
  factory $Regression351CopyWith(
          Regression351 value, $Res Function(Regression351) then) =
      _$Regression351CopyWithImpl<$Res, Regression351>;
  @useResult
  $Res call({@JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class _$Regression351CopyWithImpl<$Res, $Val extends Regression351>
    implements $Regression351CopyWith<$Res> {
  _$Regression351CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Regression351
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Regression351ImplCopyWith<$Res>
    implements $Regression351CopyWith<$Res> {
  factory _$$Regression351ImplCopyWith(
          _$Regression351Impl value, $Res Function(_$Regression351Impl) then) =
      __$$Regression351ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class __$$Regression351ImplCopyWithImpl<$Res>
    extends _$Regression351CopyWithImpl<$Res, _$Regression351Impl>
    implements _$$Regression351ImplCopyWith<$Res> {
  __$$Regression351ImplCopyWithImpl(
      _$Regression351Impl _value, $Res Function(_$Regression351Impl) _then)
      : super(_value, _then);

  /// Create a copy of Regression351
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalResults = null,
  }) {
    return _then(_$Regression351Impl(
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Regression351Impl implements _Regression351 {
  _$Regression351Impl(
      {@JsonKey(name: 'total_results') required this.totalResults});

  factory _$Regression351Impl.fromJson(Map<String, dynamic> json) =>
      _$$Regression351ImplFromJson(json);

  @override
  @JsonKey(name: 'total_results')
  final int totalResults;

  @override
  String toString() {
    return 'Regression351(totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Regression351Impl &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalResults);

  /// Create a copy of Regression351
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Regression351ImplCopyWith<_$Regression351Impl> get copyWith =>
      __$$Regression351ImplCopyWithImpl<_$Regression351Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Regression351ImplToJson(
      this,
    );
  }
}

abstract class _Regression351 implements Regression351 {
  factory _Regression351(
          {@JsonKey(name: 'total_results') required final int totalResults}) =
      _$Regression351Impl;

  factory _Regression351.fromJson(Map<String, dynamic> json) =
      _$Regression351Impl.fromJson;

  @override
  @JsonKey(name: 'total_results')
  int get totalResults;

  /// Create a copy of Regression351
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Regression351ImplCopyWith<_$Regression351Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

Regression323 _$Regression323FromJson(Map<String, dynamic> json) {
  return _Regression323.fromJson(json);
}

/// @nodoc
mixin _$Regression323 {
  String get id => throw _privateConstructorUsedError;
  num get amount => throw _privateConstructorUsedError;

  /// Serializes this Regression323 to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Regression323
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Regression323CopyWith<Regression323> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Regression323CopyWith<$Res> {
  factory $Regression323CopyWith(
          Regression323 value, $Res Function(Regression323) then) =
      _$Regression323CopyWithImpl<$Res, Regression323>;
  @useResult
  $Res call({String id, num amount});
}

/// @nodoc
class _$Regression323CopyWithImpl<$Res, $Val extends Regression323>
    implements $Regression323CopyWith<$Res> {
  _$Regression323CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Regression323
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Regression323ImplCopyWith<$Res>
    implements $Regression323CopyWith<$Res> {
  factory _$$Regression323ImplCopyWith(
          _$Regression323Impl value, $Res Function(_$Regression323Impl) then) =
      __$$Regression323ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, num amount});
}

/// @nodoc
class __$$Regression323ImplCopyWithImpl<$Res>
    extends _$Regression323CopyWithImpl<$Res, _$Regression323Impl>
    implements _$$Regression323ImplCopyWith<$Res> {
  __$$Regression323ImplCopyWithImpl(
      _$Regression323Impl _value, $Res Function(_$Regression323Impl) _then)
      : super(_value, _then);

  /// Create a copy of Regression323
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? amount = null,
  }) {
    return _then(_$Regression323Impl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Regression323Impl implements _Regression323 {
  const _$Regression323Impl({required this.id, required this.amount});

  factory _$Regression323Impl.fromJson(Map<String, dynamic> json) =>
      _$$Regression323ImplFromJson(json);

  @override
  final String id;
  @override
  final num amount;

  @override
  String toString() {
    return 'Regression323(id: $id, amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Regression323Impl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, amount);

  /// Create a copy of Regression323
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Regression323ImplCopyWith<_$Regression323Impl> get copyWith =>
      __$$Regression323ImplCopyWithImpl<_$Regression323Impl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Regression323ImplToJson(
      this,
    );
  }
}

abstract class _Regression323 implements Regression323 {
  const factory _Regression323(
      {required final String id,
      required final num amount}) = _$Regression323Impl;

  factory _Regression323.fromJson(Map<String, dynamic> json) =
      _$Regression323Impl.fromJson;

  @override
  String get id;
  @override
  num get amount;

  /// Create a copy of Regression323
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Regression323ImplCopyWith<_$Regression323Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Regression280 {
  String get label => throw _privateConstructorUsedError;

  /// Create a copy of Regression280
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Regression280CopyWith<Regression280> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Regression280CopyWith<$Res> {
  factory $Regression280CopyWith(
          Regression280 value, $Res Function(Regression280) then) =
      _$Regression280CopyWithImpl<$Res, Regression280>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class _$Regression280CopyWithImpl<$Res, $Val extends Regression280>
    implements $Regression280CopyWith<$Res> {
  _$Regression280CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Regression280
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Regression280ImplCopyWith<$Res>
    implements $Regression280CopyWith<$Res> {
  factory _$$Regression280ImplCopyWith(
          _$Regression280Impl value, $Res Function(_$Regression280Impl) then) =
      __$$Regression280ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$Regression280ImplCopyWithImpl<$Res>
    extends _$Regression280CopyWithImpl<$Res, _$Regression280Impl>
    implements _$$Regression280ImplCopyWith<$Res> {
  __$$Regression280ImplCopyWithImpl(
      _$Regression280Impl _value, $Res Function(_$Regression280Impl) _then)
      : super(_value, _then);

  /// Create a copy of Regression280
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$Regression280Impl(
      null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Regression280Impl implements _Regression280 {
  const _$Regression280Impl(this.label);

  @override
  final String label;

  @override
  String toString() {
    return 'Regression280(label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Regression280Impl &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label);

  /// Create a copy of Regression280
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Regression280ImplCopyWith<_$Regression280Impl> get copyWith =>
      __$$Regression280ImplCopyWithImpl<_$Regression280Impl>(this, _$identity);
}

abstract class _Regression280 implements Regression280 {
  const factory _Regression280(final String label) = _$Regression280Impl;

  @override
  String get label;

  /// Create a copy of Regression280
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Regression280ImplCopyWith<_$Regression280Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Regression280n2 {
  String get label => throw _privateConstructorUsedError;

  /// Create a copy of Regression280n2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Regression280n2CopyWith<Regression280n2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Regression280n2CopyWith<$Res> {
  factory $Regression280n2CopyWith(
          Regression280n2 value, $Res Function(Regression280n2) then) =
      _$Regression280n2CopyWithImpl<$Res, Regression280n2>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class _$Regression280n2CopyWithImpl<$Res, $Val extends Regression280n2>
    implements $Regression280n2CopyWith<$Res> {
  _$Regression280n2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Regression280n2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Regression280n2ImplCopyWith<$Res>
    implements $Regression280n2CopyWith<$Res> {
  factory _$$Regression280n2ImplCopyWith(_$Regression280n2Impl value,
          $Res Function(_$Regression280n2Impl) then) =
      __$$Regression280n2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$Regression280n2ImplCopyWithImpl<$Res>
    extends _$Regression280n2CopyWithImpl<$Res, _$Regression280n2Impl>
    implements _$$Regression280n2ImplCopyWith<$Res> {
  __$$Regression280n2ImplCopyWithImpl(
      _$Regression280n2Impl _value, $Res Function(_$Regression280n2Impl) _then)
      : super(_value, _then);

  /// Create a copy of Regression280n2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$Regression280n2Impl(
      null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Regression280n2Impl implements _Regression280n2 {
  const _$Regression280n2Impl(this.label);

  @override
  final String label;

  @override
  String toString() {
    return 'Regression280n2(label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Regression280n2Impl &&
            (identical(other.label, label) || other.label == label));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label);

  /// Create a copy of Regression280n2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Regression280n2ImplCopyWith<_$Regression280n2Impl> get copyWith =>
      __$$Regression280n2ImplCopyWithImpl<_$Regression280n2Impl>(
          this, _$identity);
}

abstract class _Regression280n2 implements Regression280n2 {
  const factory _Regression280n2(final String label) = _$Regression280n2Impl;

  @override
  String get label;

  /// Create a copy of Regression280n2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Regression280n2ImplCopyWith<_$Regression280n2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomJson _$CustomJsonFromJson(Map<String, dynamic> json) {
  return _CustomJson.fromJson(json);
}

/// @nodoc
mixin _$CustomJson {
  String get label => throw _privateConstructorUsedError;

  /// Serializes this CustomJson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomJsonCopyWith<CustomJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomJsonCopyWith<$Res> {
  factory $CustomJsonCopyWith(
          CustomJson value, $Res Function(CustomJson) then) =
      _$CustomJsonCopyWithImpl<$Res, CustomJson>;
  @useResult
  $Res call({String label});
}

/// @nodoc
class _$CustomJsonCopyWithImpl<$Res, $Val extends CustomJson>
    implements $CustomJsonCopyWith<$Res> {
  _$CustomJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomJsonImplCopyWith<$Res>
    implements $CustomJsonCopyWith<$Res> {
  factory _$$CustomJsonImplCopyWith(
          _$CustomJsonImpl value, $Res Function(_$CustomJsonImpl) then) =
      __$$CustomJsonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label});
}

/// @nodoc
class __$$CustomJsonImplCopyWithImpl<$Res>
    extends _$CustomJsonCopyWithImpl<$Res, _$CustomJsonImpl>
    implements _$$CustomJsonImplCopyWith<$Res> {
  __$$CustomJsonImplCopyWithImpl(
      _$CustomJsonImpl _value, $Res Function(_$CustomJsonImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
  }) {
    return _then(_$CustomJsonImpl(
      null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomJsonImpl implements _CustomJson {
  const _$CustomJsonImpl(this.label);

  factory _$CustomJsonImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomJsonImplFromJson(json);

  @override
  final String label;

  @override
  String toString() {
    return 'CustomJson(label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomJsonImpl &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label);

  /// Create a copy of CustomJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomJsonImplCopyWith<_$CustomJsonImpl> get copyWith =>
      __$$CustomJsonImplCopyWithImpl<_$CustomJsonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomJsonImplToJson(
      this,
    );
  }
}

abstract class _CustomJson implements CustomJson {
  const factory _CustomJson(final String label) = _$CustomJsonImpl;

  factory _CustomJson.fromJson(Map<String, dynamic> json) =
      _$CustomJsonImpl.fromJson;

  @override
  String get label;

  /// Create a copy of CustomJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomJsonImplCopyWith<_$CustomJsonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FancyCustomKey _$FancyCustomKeyFromJson(Map<String, dynamic> json) {
  switch (json['ty"\'pe']) {
    case 'first':
      return _FancyCustomKeyFirst.fromJson(json);
    case 'second':
      return _FancyCustomKeySecond.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'ty"\'pe', 'FancyCustomKey',
          'Invalid union type "${json['ty"\'pe']}"!');
  }
}

/// @nodoc
mixin _$FancyCustomKey {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FancyCustomKeyFirst value) first,
    required TResult Function(_FancyCustomKeySecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FancyCustomKeyFirst value)? first,
    TResult? Function(_FancyCustomKeySecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FancyCustomKeyFirst value)? first,
    TResult Function(_FancyCustomKeySecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this FancyCustomKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FancyCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FancyCustomKeyCopyWith<FancyCustomKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FancyCustomKeyCopyWith<$Res> {
  factory $FancyCustomKeyCopyWith(
          FancyCustomKey value, $Res Function(FancyCustomKey) then) =
      _$FancyCustomKeyCopyWithImpl<$Res, FancyCustomKey>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$FancyCustomKeyCopyWithImpl<$Res, $Val extends FancyCustomKey>
    implements $FancyCustomKeyCopyWith<$Res> {
  _$FancyCustomKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FancyCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FancyCustomKeyFirstImplCopyWith<$Res>
    implements $FancyCustomKeyCopyWith<$Res> {
  factory _$$FancyCustomKeyFirstImplCopyWith(_$FancyCustomKeyFirstImpl value,
          $Res Function(_$FancyCustomKeyFirstImpl) then) =
      __$$FancyCustomKeyFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$FancyCustomKeyFirstImplCopyWithImpl<$Res>
    extends _$FancyCustomKeyCopyWithImpl<$Res, _$FancyCustomKeyFirstImpl>
    implements _$$FancyCustomKeyFirstImplCopyWith<$Res> {
  __$$FancyCustomKeyFirstImplCopyWithImpl(_$FancyCustomKeyFirstImpl _value,
      $Res Function(_$FancyCustomKeyFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of FancyCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$FancyCustomKeyFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FancyCustomKeyFirstImpl implements _FancyCustomKeyFirst {
  const _$FancyCustomKeyFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'first';

  factory _$FancyCustomKeyFirstImpl.fromJson(Map<String, dynamic> json) =>
      _$$FancyCustomKeyFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'ty"\'pe')
  final String $type;

  @override
  String toString() {
    return 'FancyCustomKey.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FancyCustomKeyFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of FancyCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FancyCustomKeyFirstImplCopyWith<_$FancyCustomKeyFirstImpl> get copyWith =>
      __$$FancyCustomKeyFirstImplCopyWithImpl<_$FancyCustomKeyFirstImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FancyCustomKeyFirst value) first,
    required TResult Function(_FancyCustomKeySecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FancyCustomKeyFirst value)? first,
    TResult? Function(_FancyCustomKeySecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FancyCustomKeyFirst value)? first,
    TResult Function(_FancyCustomKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FancyCustomKeyFirstImplToJson(
      this,
    );
  }
}

abstract class _FancyCustomKeyFirst implements FancyCustomKey {
  const factory _FancyCustomKeyFirst(final int a) = _$FancyCustomKeyFirstImpl;

  factory _FancyCustomKeyFirst.fromJson(Map<String, dynamic> json) =
      _$FancyCustomKeyFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of FancyCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FancyCustomKeyFirstImplCopyWith<_$FancyCustomKeyFirstImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FancyCustomKeySecondImplCopyWith<$Res>
    implements $FancyCustomKeyCopyWith<$Res> {
  factory _$$FancyCustomKeySecondImplCopyWith(_$FancyCustomKeySecondImpl value,
          $Res Function(_$FancyCustomKeySecondImpl) then) =
      __$$FancyCustomKeySecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$FancyCustomKeySecondImplCopyWithImpl<$Res>
    extends _$FancyCustomKeyCopyWithImpl<$Res, _$FancyCustomKeySecondImpl>
    implements _$$FancyCustomKeySecondImplCopyWith<$Res> {
  __$$FancyCustomKeySecondImplCopyWithImpl(_$FancyCustomKeySecondImpl _value,
      $Res Function(_$FancyCustomKeySecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of FancyCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$FancyCustomKeySecondImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FancyCustomKeySecondImpl implements _FancyCustomKeySecond {
  const _$FancyCustomKeySecondImpl(this.a, {final String? $type})
      : $type = $type ?? 'second';

  factory _$FancyCustomKeySecondImpl.fromJson(Map<String, dynamic> json) =>
      _$$FancyCustomKeySecondImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'ty"\'pe')
  final String $type;

  @override
  String toString() {
    return 'FancyCustomKey.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FancyCustomKeySecondImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of FancyCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FancyCustomKeySecondImplCopyWith<_$FancyCustomKeySecondImpl>
      get copyWith =>
          __$$FancyCustomKeySecondImplCopyWithImpl<_$FancyCustomKeySecondImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FancyCustomKeyFirst value) first,
    required TResult Function(_FancyCustomKeySecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FancyCustomKeyFirst value)? first,
    TResult? Function(_FancyCustomKeySecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FancyCustomKeyFirst value)? first,
    TResult Function(_FancyCustomKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FancyCustomKeySecondImplToJson(
      this,
    );
  }
}

abstract class _FancyCustomKeySecond implements FancyCustomKey {
  const factory _FancyCustomKeySecond(final int a) = _$FancyCustomKeySecondImpl;

  factory _FancyCustomKeySecond.fromJson(Map<String, dynamic> json) =
      _$FancyCustomKeySecondImpl.fromJson;

  @override
  int get a;

  /// Create a copy of FancyCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FancyCustomKeySecondImplCopyWith<_$FancyCustomKeySecondImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PositonalOptional _$PositonalOptionalFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'first':
      return _PositonalOptionalFirst.fromJson(json);
    case 'second':
      return _PositonalOptionalSecond.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'PositonalOptional',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$PositonalOptional {
  int? get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? a) first,
    required TResult Function(int? a) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? a)? first,
    TResult? Function(int? a)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? a)? first,
    TResult Function(int? a)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PositonalOptionalFirst value) first,
    required TResult Function(_PositonalOptionalSecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PositonalOptionalFirst value)? first,
    TResult? Function(_PositonalOptionalSecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PositonalOptionalFirst value)? first,
    TResult Function(_PositonalOptionalSecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this PositonalOptional to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PositonalOptional
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PositonalOptionalCopyWith<PositonalOptional> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PositonalOptionalCopyWith<$Res> {
  factory $PositonalOptionalCopyWith(
          PositonalOptional value, $Res Function(PositonalOptional) then) =
      _$PositonalOptionalCopyWithImpl<$Res, PositonalOptional>;
  @useResult
  $Res call({int? a});
}

/// @nodoc
class _$PositonalOptionalCopyWithImpl<$Res, $Val extends PositonalOptional>
    implements $PositonalOptionalCopyWith<$Res> {
  _$PositonalOptionalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PositonalOptional
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = freezed,
  }) {
    return _then(_value.copyWith(
      a: freezed == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PositonalOptionalFirstImplCopyWith<$Res>
    implements $PositonalOptionalCopyWith<$Res> {
  factory _$$PositonalOptionalFirstImplCopyWith(
          _$PositonalOptionalFirstImpl value,
          $Res Function(_$PositonalOptionalFirstImpl) then) =
      __$$PositonalOptionalFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? a});
}

/// @nodoc
class __$$PositonalOptionalFirstImplCopyWithImpl<$Res>
    extends _$PositonalOptionalCopyWithImpl<$Res, _$PositonalOptionalFirstImpl>
    implements _$$PositonalOptionalFirstImplCopyWith<$Res> {
  __$$PositonalOptionalFirstImplCopyWithImpl(
      _$PositonalOptionalFirstImpl _value,
      $Res Function(_$PositonalOptionalFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of PositonalOptional
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = freezed,
  }) {
    return _then(_$PositonalOptionalFirstImpl(
      freezed == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PositonalOptionalFirstImpl implements _PositonalOptionalFirst {
  const _$PositonalOptionalFirstImpl([this.a, final String? $type])
      : $type = $type ?? 'first';

  factory _$PositonalOptionalFirstImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositonalOptionalFirstImplFromJson(json);

  @override
  final int? a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PositonalOptional.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositonalOptionalFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of PositonalOptional
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositonalOptionalFirstImplCopyWith<_$PositonalOptionalFirstImpl>
      get copyWith => __$$PositonalOptionalFirstImplCopyWithImpl<
          _$PositonalOptionalFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? a) first,
    required TResult Function(int? a) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? a)? first,
    TResult? Function(int? a)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? a)? first,
    TResult Function(int? a)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PositonalOptionalFirst value) first,
    required TResult Function(_PositonalOptionalSecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PositonalOptionalFirst value)? first,
    TResult? Function(_PositonalOptionalSecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PositonalOptionalFirst value)? first,
    TResult Function(_PositonalOptionalSecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PositonalOptionalFirstImplToJson(
      this,
    );
  }
}

abstract class _PositonalOptionalFirst implements PositonalOptional {
  const factory _PositonalOptionalFirst([final int? a]) =
      _$PositonalOptionalFirstImpl;

  factory _PositonalOptionalFirst.fromJson(Map<String, dynamic> json) =
      _$PositonalOptionalFirstImpl.fromJson;

  @override
  int? get a;

  /// Create a copy of PositonalOptional
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositonalOptionalFirstImplCopyWith<_$PositonalOptionalFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PositonalOptionalSecondImplCopyWith<$Res>
    implements $PositonalOptionalCopyWith<$Res> {
  factory _$$PositonalOptionalSecondImplCopyWith(
          _$PositonalOptionalSecondImpl value,
          $Res Function(_$PositonalOptionalSecondImpl) then) =
      __$$PositonalOptionalSecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? a});
}

/// @nodoc
class __$$PositonalOptionalSecondImplCopyWithImpl<$Res>
    extends _$PositonalOptionalCopyWithImpl<$Res, _$PositonalOptionalSecondImpl>
    implements _$$PositonalOptionalSecondImplCopyWith<$Res> {
  __$$PositonalOptionalSecondImplCopyWithImpl(
      _$PositonalOptionalSecondImpl _value,
      $Res Function(_$PositonalOptionalSecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of PositonalOptional
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = freezed,
  }) {
    return _then(_$PositonalOptionalSecondImpl(
      freezed == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PositonalOptionalSecondImpl implements _PositonalOptionalSecond {
  const _$PositonalOptionalSecondImpl([this.a, final String? $type])
      : $type = $type ?? 'second';

  factory _$PositonalOptionalSecondImpl.fromJson(Map<String, dynamic> json) =>
      _$$PositonalOptionalSecondImplFromJson(json);

  @override
  final int? a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'PositonalOptional.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PositonalOptionalSecondImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of PositonalOptional
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PositonalOptionalSecondImplCopyWith<_$PositonalOptionalSecondImpl>
      get copyWith => __$$PositonalOptionalSecondImplCopyWithImpl<
          _$PositonalOptionalSecondImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? a) first,
    required TResult Function(int? a) second,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? a)? first,
    TResult? Function(int? a)? second,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? a)? first,
    TResult Function(int? a)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PositonalOptionalFirst value) first,
    required TResult Function(_PositonalOptionalSecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PositonalOptionalFirst value)? first,
    TResult? Function(_PositonalOptionalSecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PositonalOptionalFirst value)? first,
    TResult Function(_PositonalOptionalSecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$PositonalOptionalSecondImplToJson(
      this,
    );
  }
}

abstract class _PositonalOptionalSecond implements PositonalOptional {
  const factory _PositonalOptionalSecond([final int? a]) =
      _$PositonalOptionalSecondImpl;

  factory _PositonalOptionalSecond.fromJson(Map<String, dynamic> json) =
      _$PositonalOptionalSecondImpl.fromJson;

  @override
  int? get a;

  /// Create a copy of PositonalOptional
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PositonalOptionalSecondImplCopyWith<_$PositonalOptionalSecondImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RawCustomKey _$RawCustomKeyFromJson(Map<String, dynamic> json) {
  switch (json['\$type']) {
    case 'first':
      return _RawCustomKeyFirst.fromJson(json);
    case 'second':
      return _RawCustomKeySecond.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '\$type', 'RawCustomKey',
          'Invalid union type "${json['\$type']}"!');
  }
}

/// @nodoc
mixin _$RawCustomKey {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RawCustomKeyFirst value) first,
    required TResult Function(_RawCustomKeySecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RawCustomKeyFirst value)? first,
    TResult? Function(_RawCustomKeySecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RawCustomKeyFirst value)? first,
    TResult Function(_RawCustomKeySecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this RawCustomKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RawCustomKeyCopyWith<RawCustomKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawCustomKeyCopyWith<$Res> {
  factory $RawCustomKeyCopyWith(
          RawCustomKey value, $Res Function(RawCustomKey) then) =
      _$RawCustomKeyCopyWithImpl<$Res, RawCustomKey>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$RawCustomKeyCopyWithImpl<$Res, $Val extends RawCustomKey>
    implements $RawCustomKeyCopyWith<$Res> {
  _$RawCustomKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RawCustomKeyFirstImplCopyWith<$Res>
    implements $RawCustomKeyCopyWith<$Res> {
  factory _$$RawCustomKeyFirstImplCopyWith(_$RawCustomKeyFirstImpl value,
          $Res Function(_$RawCustomKeyFirstImpl) then) =
      __$$RawCustomKeyFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$RawCustomKeyFirstImplCopyWithImpl<$Res>
    extends _$RawCustomKeyCopyWithImpl<$Res, _$RawCustomKeyFirstImpl>
    implements _$$RawCustomKeyFirstImplCopyWith<$Res> {
  __$$RawCustomKeyFirstImplCopyWithImpl(_$RawCustomKeyFirstImpl _value,
      $Res Function(_$RawCustomKeyFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of RawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$RawCustomKeyFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RawCustomKeyFirstImpl implements _RawCustomKeyFirst {
  const _$RawCustomKeyFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'first';

  factory _$RawCustomKeyFirstImpl.fromJson(Map<String, dynamic> json) =>
      _$$RawCustomKeyFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: '\$type')
  final String $type;

  @override
  String toString() {
    return 'RawCustomKey.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RawCustomKeyFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of RawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RawCustomKeyFirstImplCopyWith<_$RawCustomKeyFirstImpl> get copyWith =>
      __$$RawCustomKeyFirstImplCopyWithImpl<_$RawCustomKeyFirstImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RawCustomKeyFirst value) first,
    required TResult Function(_RawCustomKeySecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RawCustomKeyFirst value)? first,
    TResult? Function(_RawCustomKeySecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RawCustomKeyFirst value)? first,
    TResult Function(_RawCustomKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RawCustomKeyFirstImplToJson(
      this,
    );
  }
}

abstract class _RawCustomKeyFirst implements RawCustomKey {
  const factory _RawCustomKeyFirst(final int a) = _$RawCustomKeyFirstImpl;

  factory _RawCustomKeyFirst.fromJson(Map<String, dynamic> json) =
      _$RawCustomKeyFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of RawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RawCustomKeyFirstImplCopyWith<_$RawCustomKeyFirstImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RawCustomKeySecondImplCopyWith<$Res>
    implements $RawCustomKeyCopyWith<$Res> {
  factory _$$RawCustomKeySecondImplCopyWith(_$RawCustomKeySecondImpl value,
          $Res Function(_$RawCustomKeySecondImpl) then) =
      __$$RawCustomKeySecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$RawCustomKeySecondImplCopyWithImpl<$Res>
    extends _$RawCustomKeyCopyWithImpl<$Res, _$RawCustomKeySecondImpl>
    implements _$$RawCustomKeySecondImplCopyWith<$Res> {
  __$$RawCustomKeySecondImplCopyWithImpl(_$RawCustomKeySecondImpl _value,
      $Res Function(_$RawCustomKeySecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of RawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$RawCustomKeySecondImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RawCustomKeySecondImpl implements _RawCustomKeySecond {
  const _$RawCustomKeySecondImpl(this.a, {final String? $type})
      : $type = $type ?? 'second';

  factory _$RawCustomKeySecondImpl.fromJson(Map<String, dynamic> json) =>
      _$$RawCustomKeySecondImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: '\$type')
  final String $type;

  @override
  String toString() {
    return 'RawCustomKey.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RawCustomKeySecondImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of RawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RawCustomKeySecondImplCopyWith<_$RawCustomKeySecondImpl> get copyWith =>
      __$$RawCustomKeySecondImplCopyWithImpl<_$RawCustomKeySecondImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RawCustomKeyFirst value) first,
    required TResult Function(_RawCustomKeySecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RawCustomKeyFirst value)? first,
    TResult? Function(_RawCustomKeySecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RawCustomKeyFirst value)? first,
    TResult Function(_RawCustomKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RawCustomKeySecondImplToJson(
      this,
    );
  }
}

abstract class _RawCustomKeySecond implements RawCustomKey {
  const factory _RawCustomKeySecond(final int a) = _$RawCustomKeySecondImpl;

  factory _RawCustomKeySecond.fromJson(Map<String, dynamic> json) =
      _$RawCustomKeySecondImpl.fromJson;

  @override
  int get a;

  /// Create a copy of RawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RawCustomKeySecondImplCopyWith<_$RawCustomKeySecondImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomKey _$CustomKeyFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'first':
      return _CustomKeyFirst.fromJson(json);
    case 'second':
      return _CustomKeySecond.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'CustomKey', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$CustomKey {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomKeyFirst value) first,
    required TResult Function(_CustomKeySecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomKeyFirst value)? first,
    TResult? Function(_CustomKeySecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomKeyFirst value)? first,
    TResult Function(_CustomKeySecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this CustomKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomKeyCopyWith<CustomKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomKeyCopyWith<$Res> {
  factory $CustomKeyCopyWith(CustomKey value, $Res Function(CustomKey) then) =
      _$CustomKeyCopyWithImpl<$Res, CustomKey>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$CustomKeyCopyWithImpl<$Res, $Val extends CustomKey>
    implements $CustomKeyCopyWith<$Res> {
  _$CustomKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomKeyFirstImplCopyWith<$Res>
    implements $CustomKeyCopyWith<$Res> {
  factory _$$CustomKeyFirstImplCopyWith(_$CustomKeyFirstImpl value,
          $Res Function(_$CustomKeyFirstImpl) then) =
      __$$CustomKeyFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$CustomKeyFirstImplCopyWithImpl<$Res>
    extends _$CustomKeyCopyWithImpl<$Res, _$CustomKeyFirstImpl>
    implements _$$CustomKeyFirstImplCopyWith<$Res> {
  __$$CustomKeyFirstImplCopyWithImpl(
      _$CustomKeyFirstImpl _value, $Res Function(_$CustomKeyFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$CustomKeyFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomKeyFirstImpl implements _CustomKeyFirst {
  const _$CustomKeyFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'first';

  factory _$CustomKeyFirstImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomKeyFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'CustomKey.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomKeyFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of CustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomKeyFirstImplCopyWith<_$CustomKeyFirstImpl> get copyWith =>
      __$$CustomKeyFirstImplCopyWithImpl<_$CustomKeyFirstImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomKeyFirst value) first,
    required TResult Function(_CustomKeySecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomKeyFirst value)? first,
    TResult? Function(_CustomKeySecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomKeyFirst value)? first,
    TResult Function(_CustomKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomKeyFirstImplToJson(
      this,
    );
  }
}

abstract class _CustomKeyFirst implements CustomKey {
  const factory _CustomKeyFirst(final int a) = _$CustomKeyFirstImpl;

  factory _CustomKeyFirst.fromJson(Map<String, dynamic> json) =
      _$CustomKeyFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of CustomKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomKeyFirstImplCopyWith<_$CustomKeyFirstImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomKeySecondImplCopyWith<$Res>
    implements $CustomKeyCopyWith<$Res> {
  factory _$$CustomKeySecondImplCopyWith(_$CustomKeySecondImpl value,
          $Res Function(_$CustomKeySecondImpl) then) =
      __$$CustomKeySecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$CustomKeySecondImplCopyWithImpl<$Res>
    extends _$CustomKeyCopyWithImpl<$Res, _$CustomKeySecondImpl>
    implements _$$CustomKeySecondImplCopyWith<$Res> {
  __$$CustomKeySecondImplCopyWithImpl(
      _$CustomKeySecondImpl _value, $Res Function(_$CustomKeySecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$CustomKeySecondImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomKeySecondImpl implements _CustomKeySecond {
  const _$CustomKeySecondImpl(this.a, {final String? $type})
      : $type = $type ?? 'second';

  factory _$CustomKeySecondImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomKeySecondImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'CustomKey.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomKeySecondImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of CustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomKeySecondImplCopyWith<_$CustomKeySecondImpl> get copyWith =>
      __$$CustomKeySecondImplCopyWithImpl<_$CustomKeySecondImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomKeyFirst value) first,
    required TResult Function(_CustomKeySecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomKeyFirst value)? first,
    TResult? Function(_CustomKeySecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomKeyFirst value)? first,
    TResult Function(_CustomKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomKeySecondImplToJson(
      this,
    );
  }
}

abstract class _CustomKeySecond implements CustomKey {
  const factory _CustomKeySecond(final int a) = _$CustomKeySecondImpl;

  factory _CustomKeySecond.fromJson(Map<String, dynamic> json) =
      _$CustomKeySecondImpl.fromJson;

  @override
  int get a;

  /// Create a copy of CustomKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomKeySecondImplCopyWith<_$CustomKeySecondImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CustomUnionValue _$CustomUnionValueFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'first':
      return _CustomUnionValueFirst.fromJson(json);
    case 'SECOND':
      return _CustomUnionValueSecond.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'CustomUnionValue',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$CustomUnionValue {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomUnionValueFirst value) first,
    required TResult Function(_CustomUnionValueSecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomUnionValueFirst value)? first,
    TResult? Function(_CustomUnionValueSecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomUnionValueFirst value)? first,
    TResult Function(_CustomUnionValueSecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this CustomUnionValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CustomUnionValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomUnionValueCopyWith<CustomUnionValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomUnionValueCopyWith<$Res> {
  factory $CustomUnionValueCopyWith(
          CustomUnionValue value, $Res Function(CustomUnionValue) then) =
      _$CustomUnionValueCopyWithImpl<$Res, CustomUnionValue>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$CustomUnionValueCopyWithImpl<$Res, $Val extends CustomUnionValue>
    implements $CustomUnionValueCopyWith<$Res> {
  _$CustomUnionValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomUnionValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomUnionValueFirstImplCopyWith<$Res>
    implements $CustomUnionValueCopyWith<$Res> {
  factory _$$CustomUnionValueFirstImplCopyWith(
          _$CustomUnionValueFirstImpl value,
          $Res Function(_$CustomUnionValueFirstImpl) then) =
      __$$CustomUnionValueFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$CustomUnionValueFirstImplCopyWithImpl<$Res>
    extends _$CustomUnionValueCopyWithImpl<$Res, _$CustomUnionValueFirstImpl>
    implements _$$CustomUnionValueFirstImplCopyWith<$Res> {
  __$$CustomUnionValueFirstImplCopyWithImpl(_$CustomUnionValueFirstImpl _value,
      $Res Function(_$CustomUnionValueFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomUnionValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$CustomUnionValueFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomUnionValueFirstImpl implements _CustomUnionValueFirst {
  const _$CustomUnionValueFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'first';

  factory _$CustomUnionValueFirstImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomUnionValueFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CustomUnionValue.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomUnionValueFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of CustomUnionValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomUnionValueFirstImplCopyWith<_$CustomUnionValueFirstImpl>
      get copyWith => __$$CustomUnionValueFirstImplCopyWithImpl<
          _$CustomUnionValueFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomUnionValueFirst value) first,
    required TResult Function(_CustomUnionValueSecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomUnionValueFirst value)? first,
    TResult? Function(_CustomUnionValueSecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomUnionValueFirst value)? first,
    TResult Function(_CustomUnionValueSecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomUnionValueFirstImplToJson(
      this,
    );
  }
}

abstract class _CustomUnionValueFirst implements CustomUnionValue {
  const factory _CustomUnionValueFirst(final int a) =
      _$CustomUnionValueFirstImpl;

  factory _CustomUnionValueFirst.fromJson(Map<String, dynamic> json) =
      _$CustomUnionValueFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of CustomUnionValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomUnionValueFirstImplCopyWith<_$CustomUnionValueFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomUnionValueSecondImplCopyWith<$Res>
    implements $CustomUnionValueCopyWith<$Res> {
  factory _$$CustomUnionValueSecondImplCopyWith(
          _$CustomUnionValueSecondImpl value,
          $Res Function(_$CustomUnionValueSecondImpl) then) =
      __$$CustomUnionValueSecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$CustomUnionValueSecondImplCopyWithImpl<$Res>
    extends _$CustomUnionValueCopyWithImpl<$Res, _$CustomUnionValueSecondImpl>
    implements _$$CustomUnionValueSecondImplCopyWith<$Res> {
  __$$CustomUnionValueSecondImplCopyWithImpl(
      _$CustomUnionValueSecondImpl _value,
      $Res Function(_$CustomUnionValueSecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomUnionValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$CustomUnionValueSecondImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomUnionValueSecondImpl implements _CustomUnionValueSecond {
  const _$CustomUnionValueSecondImpl(this.a, {final String? $type})
      : $type = $type ?? 'SECOND';

  factory _$CustomUnionValueSecondImpl.fromJson(Map<String, dynamic> json) =>
      _$$CustomUnionValueSecondImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'CustomUnionValue.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomUnionValueSecondImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of CustomUnionValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomUnionValueSecondImplCopyWith<_$CustomUnionValueSecondImpl>
      get copyWith => __$$CustomUnionValueSecondImplCopyWithImpl<
          _$CustomUnionValueSecondImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CustomUnionValueFirst value) first,
    required TResult Function(_CustomUnionValueSecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CustomUnionValueFirst value)? first,
    TResult? Function(_CustomUnionValueSecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CustomUnionValueFirst value)? first,
    TResult Function(_CustomUnionValueSecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomUnionValueSecondImplToJson(
      this,
    );
  }
}

abstract class _CustomUnionValueSecond implements CustomUnionValue {
  const factory _CustomUnionValueSecond(final int a) =
      _$CustomUnionValueSecondImpl;

  factory _CustomUnionValueSecond.fromJson(Map<String, dynamic> json) =
      _$CustomUnionValueSecondImpl.fromJson;

  @override
  int get a;

  /// Create a copy of CustomUnionValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomUnionValueSecondImplCopyWith<_$CustomUnionValueSecondImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnionFallback _$UnionFallbackFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'first':
      return _UnionFallbackFirst.fromJson(json);
    case 'second':
      return _UnionFallbackSecond.fromJson(json);

    default:
      return _UnionFallbackFallback.fromJson(json);
  }
}

/// @nodoc
mixin _$UnionFallback {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
    required TResult Function(int a) fallback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
    TResult? Function(int a)? fallback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    TResult Function(int a)? fallback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionFallbackFirst value) first,
    required TResult Function(_UnionFallbackSecond value) second,
    required TResult Function(_UnionFallbackFallback value) fallback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionFallbackFirst value)? first,
    TResult? Function(_UnionFallbackSecond value)? second,
    TResult? Function(_UnionFallbackFallback value)? fallback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionFallbackFirst value)? first,
    TResult Function(_UnionFallbackSecond value)? second,
    TResult Function(_UnionFallbackFallback value)? fallback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UnionFallback to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnionFallbackCopyWith<UnionFallback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnionFallbackCopyWith<$Res> {
  factory $UnionFallbackCopyWith(
          UnionFallback value, $Res Function(UnionFallback) then) =
      _$UnionFallbackCopyWithImpl<$Res, UnionFallback>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$UnionFallbackCopyWithImpl<$Res, $Val extends UnionFallback>
    implements $UnionFallbackCopyWith<$Res> {
  _$UnionFallbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnionFallbackFirstImplCopyWith<$Res>
    implements $UnionFallbackCopyWith<$Res> {
  factory _$$UnionFallbackFirstImplCopyWith(_$UnionFallbackFirstImpl value,
          $Res Function(_$UnionFallbackFirstImpl) then) =
      __$$UnionFallbackFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnionFallbackFirstImplCopyWithImpl<$Res>
    extends _$UnionFallbackCopyWithImpl<$Res, _$UnionFallbackFirstImpl>
    implements _$$UnionFallbackFirstImplCopyWith<$Res> {
  __$$UnionFallbackFirstImplCopyWithImpl(_$UnionFallbackFirstImpl _value,
      $Res Function(_$UnionFallbackFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnionFallbackFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionFallbackFirstImpl implements _UnionFallbackFirst {
  const _$UnionFallbackFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'first';

  factory _$UnionFallbackFirstImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionFallbackFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnionFallback.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionFallbackFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionFallbackFirstImplCopyWith<_$UnionFallbackFirstImpl> get copyWith =>
      __$$UnionFallbackFirstImplCopyWithImpl<_$UnionFallbackFirstImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
    required TResult Function(int a) fallback,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
    TResult? Function(int a)? fallback,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    TResult Function(int a)? fallback,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionFallbackFirst value) first,
    required TResult Function(_UnionFallbackSecond value) second,
    required TResult Function(_UnionFallbackFallback value) fallback,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionFallbackFirst value)? first,
    TResult? Function(_UnionFallbackSecond value)? second,
    TResult? Function(_UnionFallbackFallback value)? fallback,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionFallbackFirst value)? first,
    TResult Function(_UnionFallbackSecond value)? second,
    TResult Function(_UnionFallbackFallback value)? fallback,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionFallbackFirstImplToJson(
      this,
    );
  }
}

abstract class _UnionFallbackFirst implements UnionFallback {
  const factory _UnionFallbackFirst(final int a) = _$UnionFallbackFirstImpl;

  factory _UnionFallbackFirst.fromJson(Map<String, dynamic> json) =
      _$UnionFallbackFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionFallbackFirstImplCopyWith<_$UnionFallbackFirstImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionFallbackSecondImplCopyWith<$Res>
    implements $UnionFallbackCopyWith<$Res> {
  factory _$$UnionFallbackSecondImplCopyWith(_$UnionFallbackSecondImpl value,
          $Res Function(_$UnionFallbackSecondImpl) then) =
      __$$UnionFallbackSecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnionFallbackSecondImplCopyWithImpl<$Res>
    extends _$UnionFallbackCopyWithImpl<$Res, _$UnionFallbackSecondImpl>
    implements _$$UnionFallbackSecondImplCopyWith<$Res> {
  __$$UnionFallbackSecondImplCopyWithImpl(_$UnionFallbackSecondImpl _value,
      $Res Function(_$UnionFallbackSecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnionFallbackSecondImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionFallbackSecondImpl implements _UnionFallbackSecond {
  const _$UnionFallbackSecondImpl(this.a, {final String? $type})
      : $type = $type ?? 'second';

  factory _$UnionFallbackSecondImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionFallbackSecondImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnionFallback.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionFallbackSecondImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionFallbackSecondImplCopyWith<_$UnionFallbackSecondImpl> get copyWith =>
      __$$UnionFallbackSecondImplCopyWithImpl<_$UnionFallbackSecondImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
    required TResult Function(int a) fallback,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
    TResult? Function(int a)? fallback,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    TResult Function(int a)? fallback,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionFallbackFirst value) first,
    required TResult Function(_UnionFallbackSecond value) second,
    required TResult Function(_UnionFallbackFallback value) fallback,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionFallbackFirst value)? first,
    TResult? Function(_UnionFallbackSecond value)? second,
    TResult? Function(_UnionFallbackFallback value)? fallback,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionFallbackFirst value)? first,
    TResult Function(_UnionFallbackSecond value)? second,
    TResult Function(_UnionFallbackFallback value)? fallback,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionFallbackSecondImplToJson(
      this,
    );
  }
}

abstract class _UnionFallbackSecond implements UnionFallback {
  const factory _UnionFallbackSecond(final int a) = _$UnionFallbackSecondImpl;

  factory _UnionFallbackSecond.fromJson(Map<String, dynamic> json) =
      _$UnionFallbackSecondImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionFallbackSecondImplCopyWith<_$UnionFallbackSecondImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionFallbackFallbackImplCopyWith<$Res>
    implements $UnionFallbackCopyWith<$Res> {
  factory _$$UnionFallbackFallbackImplCopyWith(
          _$UnionFallbackFallbackImpl value,
          $Res Function(_$UnionFallbackFallbackImpl) then) =
      __$$UnionFallbackFallbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnionFallbackFallbackImplCopyWithImpl<$Res>
    extends _$UnionFallbackCopyWithImpl<$Res, _$UnionFallbackFallbackImpl>
    implements _$$UnionFallbackFallbackImplCopyWith<$Res> {
  __$$UnionFallbackFallbackImplCopyWithImpl(_$UnionFallbackFallbackImpl _value,
      $Res Function(_$UnionFallbackFallbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnionFallbackFallbackImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionFallbackFallbackImpl implements _UnionFallbackFallback {
  const _$UnionFallbackFallbackImpl(this.a, {final String? $type})
      : $type = $type ?? 'fallback';

  factory _$UnionFallbackFallbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionFallbackFallbackImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnionFallback.fallback(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionFallbackFallbackImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionFallbackFallbackImplCopyWith<_$UnionFallbackFallbackImpl>
      get copyWith => __$$UnionFallbackFallbackImplCopyWithImpl<
          _$UnionFallbackFallbackImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
    required TResult Function(int a) fallback,
  }) {
    return fallback(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
    TResult? Function(int a)? fallback,
  }) {
    return fallback?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    TResult Function(int a)? fallback,
    required TResult orElse(),
  }) {
    if (fallback != null) {
      return fallback(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionFallbackFirst value) first,
    required TResult Function(_UnionFallbackSecond value) second,
    required TResult Function(_UnionFallbackFallback value) fallback,
  }) {
    return fallback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionFallbackFirst value)? first,
    TResult? Function(_UnionFallbackSecond value)? second,
    TResult? Function(_UnionFallbackFallback value)? fallback,
  }) {
    return fallback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionFallbackFirst value)? first,
    TResult Function(_UnionFallbackSecond value)? second,
    TResult Function(_UnionFallbackFallback value)? fallback,
    required TResult orElse(),
  }) {
    if (fallback != null) {
      return fallback(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionFallbackFallbackImplToJson(
      this,
    );
  }
}

abstract class _UnionFallbackFallback implements UnionFallback {
  const factory _UnionFallbackFallback(final int a) =
      _$UnionFallbackFallbackImpl;

  factory _UnionFallbackFallback.fromJson(Map<String, dynamic> json) =
      _$UnionFallbackFallbackImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionFallbackFallbackImplCopyWith<_$UnionFallbackFallbackImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnionDefaultFallback _$UnionDefaultFallbackFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'first':
      return _UnionDefaultFallbackFirst.fromJson(json);
    case 'second':
      return _UnionDefaultFallbackSecond.fromJson(json);

    default:
      return _UnionDefaultFallback.fromJson(json);
  }
}

/// @nodoc
mixin _$UnionDefaultFallback {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int a) $default, {
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int a)? $default, {
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int a)? $default, {
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UnionDefaultFallback value) $default, {
    required TResult Function(_UnionDefaultFallbackFirst value) first,
    required TResult Function(_UnionDefaultFallbackSecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UnionDefaultFallback value)? $default, {
    TResult? Function(_UnionDefaultFallbackFirst value)? first,
    TResult? Function(_UnionDefaultFallbackSecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UnionDefaultFallback value)? $default, {
    TResult Function(_UnionDefaultFallbackFirst value)? first,
    TResult Function(_UnionDefaultFallbackSecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UnionDefaultFallback to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnionDefaultFallbackCopyWith<UnionDefaultFallback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnionDefaultFallbackCopyWith<$Res> {
  factory $UnionDefaultFallbackCopyWith(UnionDefaultFallback value,
          $Res Function(UnionDefaultFallback) then) =
      _$UnionDefaultFallbackCopyWithImpl<$Res, UnionDefaultFallback>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$UnionDefaultFallbackCopyWithImpl<$Res,
        $Val extends UnionDefaultFallback>
    implements $UnionDefaultFallbackCopyWith<$Res> {
  _$UnionDefaultFallbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnionDefaultFallbackImplCopyWith<$Res>
    implements $UnionDefaultFallbackCopyWith<$Res> {
  factory _$$UnionDefaultFallbackImplCopyWith(_$UnionDefaultFallbackImpl value,
          $Res Function(_$UnionDefaultFallbackImpl) then) =
      __$$UnionDefaultFallbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnionDefaultFallbackImplCopyWithImpl<$Res>
    extends _$UnionDefaultFallbackCopyWithImpl<$Res, _$UnionDefaultFallbackImpl>
    implements _$$UnionDefaultFallbackImplCopyWith<$Res> {
  __$$UnionDefaultFallbackImplCopyWithImpl(_$UnionDefaultFallbackImpl _value,
      $Res Function(_$UnionDefaultFallbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnionDefaultFallbackImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionDefaultFallbackImpl implements _UnionDefaultFallback {
  const _$UnionDefaultFallbackImpl(this.a, {final String? $type})
      : $type = $type ?? 'default';

  factory _$UnionDefaultFallbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionDefaultFallbackImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnionDefaultFallback(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionDefaultFallbackImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionDefaultFallbackImplCopyWith<_$UnionDefaultFallbackImpl>
      get copyWith =>
          __$$UnionDefaultFallbackImplCopyWithImpl<_$UnionDefaultFallbackImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int a) $default, {
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return $default(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int a)? $default, {
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return $default?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int a)? $default, {
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UnionDefaultFallback value) $default, {
    required TResult Function(_UnionDefaultFallbackFirst value) first,
    required TResult Function(_UnionDefaultFallbackSecond value) second,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UnionDefaultFallback value)? $default, {
    TResult? Function(_UnionDefaultFallbackFirst value)? first,
    TResult? Function(_UnionDefaultFallbackSecond value)? second,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UnionDefaultFallback value)? $default, {
    TResult Function(_UnionDefaultFallbackFirst value)? first,
    TResult Function(_UnionDefaultFallbackSecond value)? second,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionDefaultFallbackImplToJson(
      this,
    );
  }
}

abstract class _UnionDefaultFallback implements UnionDefaultFallback {
  const factory _UnionDefaultFallback(final int a) = _$UnionDefaultFallbackImpl;

  factory _UnionDefaultFallback.fromJson(Map<String, dynamic> json) =
      _$UnionDefaultFallbackImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionDefaultFallbackImplCopyWith<_$UnionDefaultFallbackImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionDefaultFallbackFirstImplCopyWith<$Res>
    implements $UnionDefaultFallbackCopyWith<$Res> {
  factory _$$UnionDefaultFallbackFirstImplCopyWith(
          _$UnionDefaultFallbackFirstImpl value,
          $Res Function(_$UnionDefaultFallbackFirstImpl) then) =
      __$$UnionDefaultFallbackFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnionDefaultFallbackFirstImplCopyWithImpl<$Res>
    extends _$UnionDefaultFallbackCopyWithImpl<$Res,
        _$UnionDefaultFallbackFirstImpl>
    implements _$$UnionDefaultFallbackFirstImplCopyWith<$Res> {
  __$$UnionDefaultFallbackFirstImplCopyWithImpl(
      _$UnionDefaultFallbackFirstImpl _value,
      $Res Function(_$UnionDefaultFallbackFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnionDefaultFallbackFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionDefaultFallbackFirstImpl implements _UnionDefaultFallbackFirst {
  const _$UnionDefaultFallbackFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'first';

  factory _$UnionDefaultFallbackFirstImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionDefaultFallbackFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnionDefaultFallback.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionDefaultFallbackFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionDefaultFallbackFirstImplCopyWith<_$UnionDefaultFallbackFirstImpl>
      get copyWith => __$$UnionDefaultFallbackFirstImplCopyWithImpl<
          _$UnionDefaultFallbackFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int a) $default, {
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int a)? $default, {
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int a)? $default, {
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UnionDefaultFallback value) $default, {
    required TResult Function(_UnionDefaultFallbackFirst value) first,
    required TResult Function(_UnionDefaultFallbackSecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UnionDefaultFallback value)? $default, {
    TResult? Function(_UnionDefaultFallbackFirst value)? first,
    TResult? Function(_UnionDefaultFallbackSecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UnionDefaultFallback value)? $default, {
    TResult Function(_UnionDefaultFallbackFirst value)? first,
    TResult Function(_UnionDefaultFallbackSecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionDefaultFallbackFirstImplToJson(
      this,
    );
  }
}

abstract class _UnionDefaultFallbackFirst implements UnionDefaultFallback {
  const factory _UnionDefaultFallbackFirst(final int a) =
      _$UnionDefaultFallbackFirstImpl;

  factory _UnionDefaultFallbackFirst.fromJson(Map<String, dynamic> json) =
      _$UnionDefaultFallbackFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionDefaultFallbackFirstImplCopyWith<_$UnionDefaultFallbackFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionDefaultFallbackSecondImplCopyWith<$Res>
    implements $UnionDefaultFallbackCopyWith<$Res> {
  factory _$$UnionDefaultFallbackSecondImplCopyWith(
          _$UnionDefaultFallbackSecondImpl value,
          $Res Function(_$UnionDefaultFallbackSecondImpl) then) =
      __$$UnionDefaultFallbackSecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnionDefaultFallbackSecondImplCopyWithImpl<$Res>
    extends _$UnionDefaultFallbackCopyWithImpl<$Res,
        _$UnionDefaultFallbackSecondImpl>
    implements _$$UnionDefaultFallbackSecondImplCopyWith<$Res> {
  __$$UnionDefaultFallbackSecondImplCopyWithImpl(
      _$UnionDefaultFallbackSecondImpl _value,
      $Res Function(_$UnionDefaultFallbackSecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnionDefaultFallbackSecondImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionDefaultFallbackSecondImpl implements _UnionDefaultFallbackSecond {
  const _$UnionDefaultFallbackSecondImpl(this.a, {final String? $type})
      : $type = $type ?? 'second';

  factory _$UnionDefaultFallbackSecondImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnionDefaultFallbackSecondImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnionDefaultFallback.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionDefaultFallbackSecondImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionDefaultFallbackSecondImplCopyWith<_$UnionDefaultFallbackSecondImpl>
      get copyWith => __$$UnionDefaultFallbackSecondImplCopyWithImpl<
          _$UnionDefaultFallbackSecondImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int a) $default, {
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int a)? $default, {
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int a)? $default, {
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UnionDefaultFallback value) $default, {
    required TResult Function(_UnionDefaultFallbackFirst value) first,
    required TResult Function(_UnionDefaultFallbackSecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UnionDefaultFallback value)? $default, {
    TResult? Function(_UnionDefaultFallbackFirst value)? first,
    TResult? Function(_UnionDefaultFallbackSecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UnionDefaultFallback value)? $default, {
    TResult Function(_UnionDefaultFallbackFirst value)? first,
    TResult Function(_UnionDefaultFallbackSecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionDefaultFallbackSecondImplToJson(
      this,
    );
  }
}

abstract class _UnionDefaultFallbackSecond implements UnionDefaultFallback {
  const factory _UnionDefaultFallbackSecond(final int a) =
      _$UnionDefaultFallbackSecondImpl;

  factory _UnionDefaultFallbackSecond.fromJson(Map<String, dynamic> json) =
      _$UnionDefaultFallbackSecondImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionDefaultFallbackSecondImplCopyWith<_$UnionDefaultFallbackSecondImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnionKeyDefaultFallback _$UnionKeyDefaultFallbackFromJson(
    Map<String, dynamic> json) {
  switch (json['key']) {
    case 'first':
      return _UnionKeyDefaultFallbackFirst.fromJson(json);

    default:
      return _UnionKeyDefaultFallback.fromJson(json);
  }
}

/// @nodoc
mixin _$UnionKeyDefaultFallback {
  String get key => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String key) $default, {
    required TResult Function(String key) first,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String key)? $default, {
    TResult? Function(String key)? first,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String key)? $default, {
    TResult Function(String key)? first,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UnionKeyDefaultFallback value) $default, {
    required TResult Function(_UnionKeyDefaultFallbackFirst value) first,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UnionKeyDefaultFallback value)? $default, {
    TResult? Function(_UnionKeyDefaultFallbackFirst value)? first,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UnionKeyDefaultFallback value)? $default, {
    TResult Function(_UnionKeyDefaultFallbackFirst value)? first,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UnionKeyDefaultFallback to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnionKeyDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnionKeyDefaultFallbackCopyWith<UnionKeyDefaultFallback> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnionKeyDefaultFallbackCopyWith<$Res> {
  factory $UnionKeyDefaultFallbackCopyWith(UnionKeyDefaultFallback value,
          $Res Function(UnionKeyDefaultFallback) then) =
      _$UnionKeyDefaultFallbackCopyWithImpl<$Res, UnionKeyDefaultFallback>;
  @useResult
  $Res call({String key});
}

/// @nodoc
class _$UnionKeyDefaultFallbackCopyWithImpl<$Res,
        $Val extends UnionKeyDefaultFallback>
    implements $UnionKeyDefaultFallbackCopyWith<$Res> {
  _$UnionKeyDefaultFallbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnionKeyDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnionKeyDefaultFallbackImplCopyWith<$Res>
    implements $UnionKeyDefaultFallbackCopyWith<$Res> {
  factory _$$UnionKeyDefaultFallbackImplCopyWith(
          _$UnionKeyDefaultFallbackImpl value,
          $Res Function(_$UnionKeyDefaultFallbackImpl) then) =
      __$$UnionKeyDefaultFallbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$UnionKeyDefaultFallbackImplCopyWithImpl<$Res>
    extends _$UnionKeyDefaultFallbackCopyWithImpl<$Res,
        _$UnionKeyDefaultFallbackImpl>
    implements _$$UnionKeyDefaultFallbackImplCopyWith<$Res> {
  __$$UnionKeyDefaultFallbackImplCopyWithImpl(
      _$UnionKeyDefaultFallbackImpl _value,
      $Res Function(_$UnionKeyDefaultFallbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionKeyDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$UnionKeyDefaultFallbackImpl(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionKeyDefaultFallbackImpl implements _UnionKeyDefaultFallback {
  const _$UnionKeyDefaultFallbackImpl(this.key);

  factory _$UnionKeyDefaultFallbackImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionKeyDefaultFallbackImplFromJson(json);

  @override
  final String key;

  @override
  String toString() {
    return 'UnionKeyDefaultFallback(key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionKeyDefaultFallbackImpl &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key);

  /// Create a copy of UnionKeyDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionKeyDefaultFallbackImplCopyWith<_$UnionKeyDefaultFallbackImpl>
      get copyWith => __$$UnionKeyDefaultFallbackImplCopyWithImpl<
          _$UnionKeyDefaultFallbackImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String key) $default, {
    required TResult Function(String key) first,
  }) {
    return $default(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String key)? $default, {
    TResult? Function(String key)? first,
  }) {
    return $default?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String key)? $default, {
    TResult Function(String key)? first,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UnionKeyDefaultFallback value) $default, {
    required TResult Function(_UnionKeyDefaultFallbackFirst value) first,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UnionKeyDefaultFallback value)? $default, {
    TResult? Function(_UnionKeyDefaultFallbackFirst value)? first,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UnionKeyDefaultFallback value)? $default, {
    TResult Function(_UnionKeyDefaultFallbackFirst value)? first,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionKeyDefaultFallbackImplToJson(
      this,
    );
  }
}

abstract class _UnionKeyDefaultFallback implements UnionKeyDefaultFallback {
  const factory _UnionKeyDefaultFallback(final String key) =
      _$UnionKeyDefaultFallbackImpl;

  factory _UnionKeyDefaultFallback.fromJson(Map<String, dynamic> json) =
      _$UnionKeyDefaultFallbackImpl.fromJson;

  @override
  String get key;

  /// Create a copy of UnionKeyDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionKeyDefaultFallbackImplCopyWith<_$UnionKeyDefaultFallbackImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionKeyDefaultFallbackFirstImplCopyWith<$Res>
    implements $UnionKeyDefaultFallbackCopyWith<$Res> {
  factory _$$UnionKeyDefaultFallbackFirstImplCopyWith(
          _$UnionKeyDefaultFallbackFirstImpl value,
          $Res Function(_$UnionKeyDefaultFallbackFirstImpl) then) =
      __$$UnionKeyDefaultFallbackFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String key});
}

/// @nodoc
class __$$UnionKeyDefaultFallbackFirstImplCopyWithImpl<$Res>
    extends _$UnionKeyDefaultFallbackCopyWithImpl<$Res,
        _$UnionKeyDefaultFallbackFirstImpl>
    implements _$$UnionKeyDefaultFallbackFirstImplCopyWith<$Res> {
  __$$UnionKeyDefaultFallbackFirstImplCopyWithImpl(
      _$UnionKeyDefaultFallbackFirstImpl _value,
      $Res Function(_$UnionKeyDefaultFallbackFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionKeyDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? key = null,
  }) {
    return _then(_$UnionKeyDefaultFallbackFirstImpl(
      null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionKeyDefaultFallbackFirstImpl
    implements _UnionKeyDefaultFallbackFirst {
  const _$UnionKeyDefaultFallbackFirstImpl(this.key);

  factory _$UnionKeyDefaultFallbackFirstImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnionKeyDefaultFallbackFirstImplFromJson(json);

  @override
  final String key;

  @override
  String toString() {
    return 'UnionKeyDefaultFallback.first(key: $key)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionKeyDefaultFallbackFirstImpl &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, key);

  /// Create a copy of UnionKeyDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionKeyDefaultFallbackFirstImplCopyWith<
          _$UnionKeyDefaultFallbackFirstImpl>
      get copyWith => __$$UnionKeyDefaultFallbackFirstImplCopyWithImpl<
          _$UnionKeyDefaultFallbackFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String key) $default, {
    required TResult Function(String key) first,
  }) {
    return first(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String key)? $default, {
    TResult? Function(String key)? first,
  }) {
    return first?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String key)? $default, {
    TResult Function(String key)? first,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UnionKeyDefaultFallback value) $default, {
    required TResult Function(_UnionKeyDefaultFallbackFirst value) first,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UnionKeyDefaultFallback value)? $default, {
    TResult? Function(_UnionKeyDefaultFallbackFirst value)? first,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UnionKeyDefaultFallback value)? $default, {
    TResult Function(_UnionKeyDefaultFallbackFirst value)? first,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionKeyDefaultFallbackFirstImplToJson(
      this,
    );
  }
}

abstract class _UnionKeyDefaultFallbackFirst
    implements UnionKeyDefaultFallback {
  const factory _UnionKeyDefaultFallbackFirst(final String key) =
      _$UnionKeyDefaultFallbackFirstImpl;

  factory _UnionKeyDefaultFallbackFirst.fromJson(Map<String, dynamic> json) =
      _$UnionKeyDefaultFallbackFirstImpl.fromJson;

  @override
  String get key;

  /// Create a copy of UnionKeyDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionKeyDefaultFallbackFirstImplCopyWith<
          _$UnionKeyDefaultFallbackFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnionValueCasePascal _$UnionValueCasePascalFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'First':
      return _UnionValueCasePascalFirst.fromJson(json);
    case 'SecondValue':
      return _UnionValueCasePascalSecondValue.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'UnionValueCasePascal',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UnionValueCasePascal {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionValueCasePascalFirst value) first,
    required TResult Function(_UnionValueCasePascalSecondValue value)
        secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionValueCasePascalFirst value)? first,
    TResult? Function(_UnionValueCasePascalSecondValue value)? secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionValueCasePascalFirst value)? first,
    TResult Function(_UnionValueCasePascalSecondValue value)? secondValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UnionValueCasePascal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnionValueCasePascal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnionValueCasePascalCopyWith<UnionValueCasePascal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnionValueCasePascalCopyWith<$Res> {
  factory $UnionValueCasePascalCopyWith(UnionValueCasePascal value,
          $Res Function(UnionValueCasePascal) then) =
      _$UnionValueCasePascalCopyWithImpl<$Res, UnionValueCasePascal>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$UnionValueCasePascalCopyWithImpl<$Res,
        $Val extends UnionValueCasePascal>
    implements $UnionValueCasePascalCopyWith<$Res> {
  _$UnionValueCasePascalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnionValueCasePascal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnionValueCasePascalFirstImplCopyWith<$Res>
    implements $UnionValueCasePascalCopyWith<$Res> {
  factory _$$UnionValueCasePascalFirstImplCopyWith(
          _$UnionValueCasePascalFirstImpl value,
          $Res Function(_$UnionValueCasePascalFirstImpl) then) =
      __$$UnionValueCasePascalFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnionValueCasePascalFirstImplCopyWithImpl<$Res>
    extends _$UnionValueCasePascalCopyWithImpl<$Res,
        _$UnionValueCasePascalFirstImpl>
    implements _$$UnionValueCasePascalFirstImplCopyWith<$Res> {
  __$$UnionValueCasePascalFirstImplCopyWithImpl(
      _$UnionValueCasePascalFirstImpl _value,
      $Res Function(_$UnionValueCasePascalFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionValueCasePascal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnionValueCasePascalFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionValueCasePascalFirstImpl implements _UnionValueCasePascalFirst {
  const _$UnionValueCasePascalFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'First';

  factory _$UnionValueCasePascalFirstImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionValueCasePascalFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnionValueCasePascal.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionValueCasePascalFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnionValueCasePascal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionValueCasePascalFirstImplCopyWith<_$UnionValueCasePascalFirstImpl>
      get copyWith => __$$UnionValueCasePascalFirstImplCopyWithImpl<
          _$UnionValueCasePascalFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionValueCasePascalFirst value) first,
    required TResult Function(_UnionValueCasePascalSecondValue value)
        secondValue,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionValueCasePascalFirst value)? first,
    TResult? Function(_UnionValueCasePascalSecondValue value)? secondValue,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionValueCasePascalFirst value)? first,
    TResult Function(_UnionValueCasePascalSecondValue value)? secondValue,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionValueCasePascalFirstImplToJson(
      this,
    );
  }
}

abstract class _UnionValueCasePascalFirst implements UnionValueCasePascal {
  const factory _UnionValueCasePascalFirst(final int a) =
      _$UnionValueCasePascalFirstImpl;

  factory _UnionValueCasePascalFirst.fromJson(Map<String, dynamic> json) =
      _$UnionValueCasePascalFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnionValueCasePascal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionValueCasePascalFirstImplCopyWith<_$UnionValueCasePascalFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionValueCasePascalSecondValueImplCopyWith<$Res>
    implements $UnionValueCasePascalCopyWith<$Res> {
  factory _$$UnionValueCasePascalSecondValueImplCopyWith(
          _$UnionValueCasePascalSecondValueImpl value,
          $Res Function(_$UnionValueCasePascalSecondValueImpl) then) =
      __$$UnionValueCasePascalSecondValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnionValueCasePascalSecondValueImplCopyWithImpl<$Res>
    extends _$UnionValueCasePascalCopyWithImpl<$Res,
        _$UnionValueCasePascalSecondValueImpl>
    implements _$$UnionValueCasePascalSecondValueImplCopyWith<$Res> {
  __$$UnionValueCasePascalSecondValueImplCopyWithImpl(
      _$UnionValueCasePascalSecondValueImpl _value,
      $Res Function(_$UnionValueCasePascalSecondValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionValueCasePascal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnionValueCasePascalSecondValueImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionValueCasePascalSecondValueImpl
    implements _UnionValueCasePascalSecondValue {
  const _$UnionValueCasePascalSecondValueImpl(this.a, {final String? $type})
      : $type = $type ?? 'SecondValue';

  factory _$UnionValueCasePascalSecondValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnionValueCasePascalSecondValueImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnionValueCasePascal.secondValue(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionValueCasePascalSecondValueImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnionValueCasePascal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionValueCasePascalSecondValueImplCopyWith<
          _$UnionValueCasePascalSecondValueImpl>
      get copyWith => __$$UnionValueCasePascalSecondValueImplCopyWithImpl<
          _$UnionValueCasePascalSecondValueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) {
    return secondValue(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) {
    return secondValue?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) {
    if (secondValue != null) {
      return secondValue(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionValueCasePascalFirst value) first,
    required TResult Function(_UnionValueCasePascalSecondValue value)
        secondValue,
  }) {
    return secondValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionValueCasePascalFirst value)? first,
    TResult? Function(_UnionValueCasePascalSecondValue value)? secondValue,
  }) {
    return secondValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionValueCasePascalFirst value)? first,
    TResult Function(_UnionValueCasePascalSecondValue value)? secondValue,
    required TResult orElse(),
  }) {
    if (secondValue != null) {
      return secondValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionValueCasePascalSecondValueImplToJson(
      this,
    );
  }
}

abstract class _UnionValueCasePascalSecondValue
    implements UnionValueCasePascal {
  const factory _UnionValueCasePascalSecondValue(final int a) =
      _$UnionValueCasePascalSecondValueImpl;

  factory _UnionValueCasePascalSecondValue.fromJson(Map<String, dynamic> json) =
      _$UnionValueCasePascalSecondValueImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnionValueCasePascal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionValueCasePascalSecondValueImplCopyWith<
          _$UnionValueCasePascalSecondValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnionValueCaseKebab _$UnionValueCaseKebabFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'first':
      return _UnionValueCaseKebabFirst.fromJson(json);
    case 'second-value':
      return _UnionValueCaseKebabSecondValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UnionValueCaseKebab',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UnionValueCaseKebab {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionValueCaseKebabFirst value) first,
    required TResult Function(_UnionValueCaseKebabSecondValue value)
        secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionValueCaseKebabFirst value)? first,
    TResult? Function(_UnionValueCaseKebabSecondValue value)? secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionValueCaseKebabFirst value)? first,
    TResult Function(_UnionValueCaseKebabSecondValue value)? secondValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UnionValueCaseKebab to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnionValueCaseKebab
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnionValueCaseKebabCopyWith<UnionValueCaseKebab> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnionValueCaseKebabCopyWith<$Res> {
  factory $UnionValueCaseKebabCopyWith(
          UnionValueCaseKebab value, $Res Function(UnionValueCaseKebab) then) =
      _$UnionValueCaseKebabCopyWithImpl<$Res, UnionValueCaseKebab>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$UnionValueCaseKebabCopyWithImpl<$Res, $Val extends UnionValueCaseKebab>
    implements $UnionValueCaseKebabCopyWith<$Res> {
  _$UnionValueCaseKebabCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnionValueCaseKebab
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnionValueCaseKebabFirstImplCopyWith<$Res>
    implements $UnionValueCaseKebabCopyWith<$Res> {
  factory _$$UnionValueCaseKebabFirstImplCopyWith(
          _$UnionValueCaseKebabFirstImpl value,
          $Res Function(_$UnionValueCaseKebabFirstImpl) then) =
      __$$UnionValueCaseKebabFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnionValueCaseKebabFirstImplCopyWithImpl<$Res>
    extends _$UnionValueCaseKebabCopyWithImpl<$Res,
        _$UnionValueCaseKebabFirstImpl>
    implements _$$UnionValueCaseKebabFirstImplCopyWith<$Res> {
  __$$UnionValueCaseKebabFirstImplCopyWithImpl(
      _$UnionValueCaseKebabFirstImpl _value,
      $Res Function(_$UnionValueCaseKebabFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionValueCaseKebab
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnionValueCaseKebabFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionValueCaseKebabFirstImpl implements _UnionValueCaseKebabFirst {
  const _$UnionValueCaseKebabFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'first';

  factory _$UnionValueCaseKebabFirstImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionValueCaseKebabFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnionValueCaseKebab.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionValueCaseKebabFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnionValueCaseKebab
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionValueCaseKebabFirstImplCopyWith<_$UnionValueCaseKebabFirstImpl>
      get copyWith => __$$UnionValueCaseKebabFirstImplCopyWithImpl<
          _$UnionValueCaseKebabFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionValueCaseKebabFirst value) first,
    required TResult Function(_UnionValueCaseKebabSecondValue value)
        secondValue,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionValueCaseKebabFirst value)? first,
    TResult? Function(_UnionValueCaseKebabSecondValue value)? secondValue,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionValueCaseKebabFirst value)? first,
    TResult Function(_UnionValueCaseKebabSecondValue value)? secondValue,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionValueCaseKebabFirstImplToJson(
      this,
    );
  }
}

abstract class _UnionValueCaseKebabFirst implements UnionValueCaseKebab {
  const factory _UnionValueCaseKebabFirst(final int a) =
      _$UnionValueCaseKebabFirstImpl;

  factory _UnionValueCaseKebabFirst.fromJson(Map<String, dynamic> json) =
      _$UnionValueCaseKebabFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnionValueCaseKebab
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionValueCaseKebabFirstImplCopyWith<_$UnionValueCaseKebabFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionValueCaseKebabSecondValueImplCopyWith<$Res>
    implements $UnionValueCaseKebabCopyWith<$Res> {
  factory _$$UnionValueCaseKebabSecondValueImplCopyWith(
          _$UnionValueCaseKebabSecondValueImpl value,
          $Res Function(_$UnionValueCaseKebabSecondValueImpl) then) =
      __$$UnionValueCaseKebabSecondValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnionValueCaseKebabSecondValueImplCopyWithImpl<$Res>
    extends _$UnionValueCaseKebabCopyWithImpl<$Res,
        _$UnionValueCaseKebabSecondValueImpl>
    implements _$$UnionValueCaseKebabSecondValueImplCopyWith<$Res> {
  __$$UnionValueCaseKebabSecondValueImplCopyWithImpl(
      _$UnionValueCaseKebabSecondValueImpl _value,
      $Res Function(_$UnionValueCaseKebabSecondValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionValueCaseKebab
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnionValueCaseKebabSecondValueImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionValueCaseKebabSecondValueImpl
    implements _UnionValueCaseKebabSecondValue {
  const _$UnionValueCaseKebabSecondValueImpl(this.a, {final String? $type})
      : $type = $type ?? 'second-value';

  factory _$UnionValueCaseKebabSecondValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnionValueCaseKebabSecondValueImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnionValueCaseKebab.secondValue(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionValueCaseKebabSecondValueImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnionValueCaseKebab
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionValueCaseKebabSecondValueImplCopyWith<
          _$UnionValueCaseKebabSecondValueImpl>
      get copyWith => __$$UnionValueCaseKebabSecondValueImplCopyWithImpl<
          _$UnionValueCaseKebabSecondValueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) {
    return secondValue(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) {
    return secondValue?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) {
    if (secondValue != null) {
      return secondValue(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionValueCaseKebabFirst value) first,
    required TResult Function(_UnionValueCaseKebabSecondValue value)
        secondValue,
  }) {
    return secondValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionValueCaseKebabFirst value)? first,
    TResult? Function(_UnionValueCaseKebabSecondValue value)? secondValue,
  }) {
    return secondValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionValueCaseKebabFirst value)? first,
    TResult Function(_UnionValueCaseKebabSecondValue value)? secondValue,
    required TResult orElse(),
  }) {
    if (secondValue != null) {
      return secondValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionValueCaseKebabSecondValueImplToJson(
      this,
    );
  }
}

abstract class _UnionValueCaseKebabSecondValue implements UnionValueCaseKebab {
  const factory _UnionValueCaseKebabSecondValue(final int a) =
      _$UnionValueCaseKebabSecondValueImpl;

  factory _UnionValueCaseKebabSecondValue.fromJson(Map<String, dynamic> json) =
      _$UnionValueCaseKebabSecondValueImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnionValueCaseKebab
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionValueCaseKebabSecondValueImplCopyWith<
          _$UnionValueCaseKebabSecondValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnionValueCaseSnake _$UnionValueCaseSnakeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'first':
      return _UnionValueCaseSnakeFirst.fromJson(json);
    case 'second_value':
      return _UnionValueCaseSnakeSecondValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UnionValueCaseSnake',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UnionValueCaseSnake {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionValueCaseSnakeFirst value) first,
    required TResult Function(_UnionValueCaseSnakeSecondValue value)
        secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionValueCaseSnakeFirst value)? first,
    TResult? Function(_UnionValueCaseSnakeSecondValue value)? secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionValueCaseSnakeFirst value)? first,
    TResult Function(_UnionValueCaseSnakeSecondValue value)? secondValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UnionValueCaseSnake to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnionValueCaseSnake
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnionValueCaseSnakeCopyWith<UnionValueCaseSnake> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnionValueCaseSnakeCopyWith<$Res> {
  factory $UnionValueCaseSnakeCopyWith(
          UnionValueCaseSnake value, $Res Function(UnionValueCaseSnake) then) =
      _$UnionValueCaseSnakeCopyWithImpl<$Res, UnionValueCaseSnake>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$UnionValueCaseSnakeCopyWithImpl<$Res, $Val extends UnionValueCaseSnake>
    implements $UnionValueCaseSnakeCopyWith<$Res> {
  _$UnionValueCaseSnakeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnionValueCaseSnake
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnionValueCaseSnakeFirstImplCopyWith<$Res>
    implements $UnionValueCaseSnakeCopyWith<$Res> {
  factory _$$UnionValueCaseSnakeFirstImplCopyWith(
          _$UnionValueCaseSnakeFirstImpl value,
          $Res Function(_$UnionValueCaseSnakeFirstImpl) then) =
      __$$UnionValueCaseSnakeFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnionValueCaseSnakeFirstImplCopyWithImpl<$Res>
    extends _$UnionValueCaseSnakeCopyWithImpl<$Res,
        _$UnionValueCaseSnakeFirstImpl>
    implements _$$UnionValueCaseSnakeFirstImplCopyWith<$Res> {
  __$$UnionValueCaseSnakeFirstImplCopyWithImpl(
      _$UnionValueCaseSnakeFirstImpl _value,
      $Res Function(_$UnionValueCaseSnakeFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionValueCaseSnake
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnionValueCaseSnakeFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionValueCaseSnakeFirstImpl implements _UnionValueCaseSnakeFirst {
  const _$UnionValueCaseSnakeFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'first';

  factory _$UnionValueCaseSnakeFirstImpl.fromJson(Map<String, dynamic> json) =>
      _$$UnionValueCaseSnakeFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnionValueCaseSnake.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionValueCaseSnakeFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnionValueCaseSnake
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionValueCaseSnakeFirstImplCopyWith<_$UnionValueCaseSnakeFirstImpl>
      get copyWith => __$$UnionValueCaseSnakeFirstImplCopyWithImpl<
          _$UnionValueCaseSnakeFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionValueCaseSnakeFirst value) first,
    required TResult Function(_UnionValueCaseSnakeSecondValue value)
        secondValue,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionValueCaseSnakeFirst value)? first,
    TResult? Function(_UnionValueCaseSnakeSecondValue value)? secondValue,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionValueCaseSnakeFirst value)? first,
    TResult Function(_UnionValueCaseSnakeSecondValue value)? secondValue,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionValueCaseSnakeFirstImplToJson(
      this,
    );
  }
}

abstract class _UnionValueCaseSnakeFirst implements UnionValueCaseSnake {
  const factory _UnionValueCaseSnakeFirst(final int a) =
      _$UnionValueCaseSnakeFirstImpl;

  factory _UnionValueCaseSnakeFirst.fromJson(Map<String, dynamic> json) =
      _$UnionValueCaseSnakeFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnionValueCaseSnake
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionValueCaseSnakeFirstImplCopyWith<_$UnionValueCaseSnakeFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionValueCaseSnakeSecondValueImplCopyWith<$Res>
    implements $UnionValueCaseSnakeCopyWith<$Res> {
  factory _$$UnionValueCaseSnakeSecondValueImplCopyWith(
          _$UnionValueCaseSnakeSecondValueImpl value,
          $Res Function(_$UnionValueCaseSnakeSecondValueImpl) then) =
      __$$UnionValueCaseSnakeSecondValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnionValueCaseSnakeSecondValueImplCopyWithImpl<$Res>
    extends _$UnionValueCaseSnakeCopyWithImpl<$Res,
        _$UnionValueCaseSnakeSecondValueImpl>
    implements _$$UnionValueCaseSnakeSecondValueImplCopyWith<$Res> {
  __$$UnionValueCaseSnakeSecondValueImplCopyWithImpl(
      _$UnionValueCaseSnakeSecondValueImpl _value,
      $Res Function(_$UnionValueCaseSnakeSecondValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionValueCaseSnake
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnionValueCaseSnakeSecondValueImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionValueCaseSnakeSecondValueImpl
    implements _UnionValueCaseSnakeSecondValue {
  const _$UnionValueCaseSnakeSecondValueImpl(this.a, {final String? $type})
      : $type = $type ?? 'second_value';

  factory _$UnionValueCaseSnakeSecondValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnionValueCaseSnakeSecondValueImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnionValueCaseSnake.secondValue(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionValueCaseSnakeSecondValueImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnionValueCaseSnake
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionValueCaseSnakeSecondValueImplCopyWith<
          _$UnionValueCaseSnakeSecondValueImpl>
      get copyWith => __$$UnionValueCaseSnakeSecondValueImplCopyWithImpl<
          _$UnionValueCaseSnakeSecondValueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) {
    return secondValue(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) {
    return secondValue?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) {
    if (secondValue != null) {
      return secondValue(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionValueCaseSnakeFirst value) first,
    required TResult Function(_UnionValueCaseSnakeSecondValue value)
        secondValue,
  }) {
    return secondValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionValueCaseSnakeFirst value)? first,
    TResult? Function(_UnionValueCaseSnakeSecondValue value)? secondValue,
  }) {
    return secondValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionValueCaseSnakeFirst value)? first,
    TResult Function(_UnionValueCaseSnakeSecondValue value)? secondValue,
    required TResult orElse(),
  }) {
    if (secondValue != null) {
      return secondValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionValueCaseSnakeSecondValueImplToJson(
      this,
    );
  }
}

abstract class _UnionValueCaseSnakeSecondValue implements UnionValueCaseSnake {
  const factory _UnionValueCaseSnakeSecondValue(final int a) =
      _$UnionValueCaseSnakeSecondValueImpl;

  factory _UnionValueCaseSnakeSecondValue.fromJson(Map<String, dynamic> json) =
      _$UnionValueCaseSnakeSecondValueImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnionValueCaseSnake
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionValueCaseSnakeSecondValueImplCopyWith<
          _$UnionValueCaseSnakeSecondValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnionValueCaseScreamingSnake _$UnionValueCaseScreamingSnakeFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'FIRST':
      return _UnionValueCaseScreamingSnakeFirst.fromJson(json);
    case 'SECOND_VALUE':
      return _UnionValueCaseScreamingSnakeSecondValue.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'UnionValueCaseScreamingSnake',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UnionValueCaseScreamingSnake {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionValueCaseScreamingSnakeFirst value) first,
    required TResult Function(_UnionValueCaseScreamingSnakeSecondValue value)
        secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionValueCaseScreamingSnakeFirst value)? first,
    TResult? Function(_UnionValueCaseScreamingSnakeSecondValue value)?
        secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionValueCaseScreamingSnakeFirst value)? first,
    TResult Function(_UnionValueCaseScreamingSnakeSecondValue value)?
        secondValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UnionValueCaseScreamingSnake to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnionValueCaseScreamingSnake
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnionValueCaseScreamingSnakeCopyWith<UnionValueCaseScreamingSnake>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnionValueCaseScreamingSnakeCopyWith<$Res> {
  factory $UnionValueCaseScreamingSnakeCopyWith(
          UnionValueCaseScreamingSnake value,
          $Res Function(UnionValueCaseScreamingSnake) then) =
      _$UnionValueCaseScreamingSnakeCopyWithImpl<$Res,
          UnionValueCaseScreamingSnake>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$UnionValueCaseScreamingSnakeCopyWithImpl<$Res,
        $Val extends UnionValueCaseScreamingSnake>
    implements $UnionValueCaseScreamingSnakeCopyWith<$Res> {
  _$UnionValueCaseScreamingSnakeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnionValueCaseScreamingSnake
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnionValueCaseScreamingSnakeFirstImplCopyWith<$Res>
    implements $UnionValueCaseScreamingSnakeCopyWith<$Res> {
  factory _$$UnionValueCaseScreamingSnakeFirstImplCopyWith(
          _$UnionValueCaseScreamingSnakeFirstImpl value,
          $Res Function(_$UnionValueCaseScreamingSnakeFirstImpl) then) =
      __$$UnionValueCaseScreamingSnakeFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnionValueCaseScreamingSnakeFirstImplCopyWithImpl<$Res>
    extends _$UnionValueCaseScreamingSnakeCopyWithImpl<$Res,
        _$UnionValueCaseScreamingSnakeFirstImpl>
    implements _$$UnionValueCaseScreamingSnakeFirstImplCopyWith<$Res> {
  __$$UnionValueCaseScreamingSnakeFirstImplCopyWithImpl(
      _$UnionValueCaseScreamingSnakeFirstImpl _value,
      $Res Function(_$UnionValueCaseScreamingSnakeFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionValueCaseScreamingSnake
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnionValueCaseScreamingSnakeFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionValueCaseScreamingSnakeFirstImpl
    implements _UnionValueCaseScreamingSnakeFirst {
  const _$UnionValueCaseScreamingSnakeFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'FIRST';

  factory _$UnionValueCaseScreamingSnakeFirstImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnionValueCaseScreamingSnakeFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnionValueCaseScreamingSnake.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionValueCaseScreamingSnakeFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnionValueCaseScreamingSnake
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionValueCaseScreamingSnakeFirstImplCopyWith<
          _$UnionValueCaseScreamingSnakeFirstImpl>
      get copyWith => __$$UnionValueCaseScreamingSnakeFirstImplCopyWithImpl<
          _$UnionValueCaseScreamingSnakeFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionValueCaseScreamingSnakeFirst value) first,
    required TResult Function(_UnionValueCaseScreamingSnakeSecondValue value)
        secondValue,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionValueCaseScreamingSnakeFirst value)? first,
    TResult? Function(_UnionValueCaseScreamingSnakeSecondValue value)?
        secondValue,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionValueCaseScreamingSnakeFirst value)? first,
    TResult Function(_UnionValueCaseScreamingSnakeSecondValue value)?
        secondValue,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionValueCaseScreamingSnakeFirstImplToJson(
      this,
    );
  }
}

abstract class _UnionValueCaseScreamingSnakeFirst
    implements UnionValueCaseScreamingSnake {
  const factory _UnionValueCaseScreamingSnakeFirst(final int a) =
      _$UnionValueCaseScreamingSnakeFirstImpl;

  factory _UnionValueCaseScreamingSnakeFirst.fromJson(
          Map<String, dynamic> json) =
      _$UnionValueCaseScreamingSnakeFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnionValueCaseScreamingSnake
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionValueCaseScreamingSnakeFirstImplCopyWith<
          _$UnionValueCaseScreamingSnakeFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionValueCaseScreamingSnakeSecondValueImplCopyWith<$Res>
    implements $UnionValueCaseScreamingSnakeCopyWith<$Res> {
  factory _$$UnionValueCaseScreamingSnakeSecondValueImplCopyWith(
          _$UnionValueCaseScreamingSnakeSecondValueImpl value,
          $Res Function(_$UnionValueCaseScreamingSnakeSecondValueImpl) then) =
      __$$UnionValueCaseScreamingSnakeSecondValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnionValueCaseScreamingSnakeSecondValueImplCopyWithImpl<$Res>
    extends _$UnionValueCaseScreamingSnakeCopyWithImpl<$Res,
        _$UnionValueCaseScreamingSnakeSecondValueImpl>
    implements _$$UnionValueCaseScreamingSnakeSecondValueImplCopyWith<$Res> {
  __$$UnionValueCaseScreamingSnakeSecondValueImplCopyWithImpl(
      _$UnionValueCaseScreamingSnakeSecondValueImpl _value,
      $Res Function(_$UnionValueCaseScreamingSnakeSecondValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionValueCaseScreamingSnake
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnionValueCaseScreamingSnakeSecondValueImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UnionValueCaseScreamingSnakeSecondValueImpl
    implements _UnionValueCaseScreamingSnakeSecondValue {
  const _$UnionValueCaseScreamingSnakeSecondValueImpl(this.a,
      {final String? $type})
      : $type = $type ?? 'SECOND_VALUE';

  factory _$UnionValueCaseScreamingSnakeSecondValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnionValueCaseScreamingSnakeSecondValueImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnionValueCaseScreamingSnake.secondValue(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionValueCaseScreamingSnakeSecondValueImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnionValueCaseScreamingSnake
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionValueCaseScreamingSnakeSecondValueImplCopyWith<
          _$UnionValueCaseScreamingSnakeSecondValueImpl>
      get copyWith =>
          __$$UnionValueCaseScreamingSnakeSecondValueImplCopyWithImpl<
              _$UnionValueCaseScreamingSnakeSecondValueImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) {
    return secondValue(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) {
    return secondValue?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) {
    if (secondValue != null) {
      return secondValue(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionValueCaseScreamingSnakeFirst value) first,
    required TResult Function(_UnionValueCaseScreamingSnakeSecondValue value)
        secondValue,
  }) {
    return secondValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionValueCaseScreamingSnakeFirst value)? first,
    TResult? Function(_UnionValueCaseScreamingSnakeSecondValue value)?
        secondValue,
  }) {
    return secondValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionValueCaseScreamingSnakeFirst value)? first,
    TResult Function(_UnionValueCaseScreamingSnakeSecondValue value)?
        secondValue,
    required TResult orElse(),
  }) {
    if (secondValue != null) {
      return secondValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnionValueCaseScreamingSnakeSecondValueImplToJson(
      this,
    );
  }
}

abstract class _UnionValueCaseScreamingSnakeSecondValue
    implements UnionValueCaseScreamingSnake {
  const factory _UnionValueCaseScreamingSnakeSecondValue(final int a) =
      _$UnionValueCaseScreamingSnakeSecondValueImpl;

  factory _UnionValueCaseScreamingSnakeSecondValue.fromJson(
          Map<String, dynamic> json) =
      _$UnionValueCaseScreamingSnakeSecondValueImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnionValueCaseScreamingSnake
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionValueCaseScreamingSnakeSecondValueImplCopyWith<
          _$UnionValueCaseScreamingSnakeSecondValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RuntimeTypeKey _$RuntimeTypeKeyFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'first':
      return _RuntimeTypeKeyFirst.fromJson(json);
    case 'second':
      return _RuntimeTypeKeySecond.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'RuntimeTypeKey',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RuntimeTypeKey {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RuntimeTypeKeyFirst value) first,
    required TResult Function(_RuntimeTypeKeySecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RuntimeTypeKeyFirst value)? first,
    TResult? Function(_RuntimeTypeKeySecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RuntimeTypeKeyFirst value)? first,
    TResult Function(_RuntimeTypeKeySecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this RuntimeTypeKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RuntimeTypeKeyCopyWith<RuntimeTypeKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuntimeTypeKeyCopyWith<$Res> {
  factory $RuntimeTypeKeyCopyWith(
          RuntimeTypeKey value, $Res Function(RuntimeTypeKey) then) =
      _$RuntimeTypeKeyCopyWithImpl<$Res, RuntimeTypeKey>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$RuntimeTypeKeyCopyWithImpl<$Res, $Val extends RuntimeTypeKey>
    implements $RuntimeTypeKeyCopyWith<$Res> {
  _$RuntimeTypeKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RuntimeTypeKeyFirstImplCopyWith<$Res>
    implements $RuntimeTypeKeyCopyWith<$Res> {
  factory _$$RuntimeTypeKeyFirstImplCopyWith(_$RuntimeTypeKeyFirstImpl value,
          $Res Function(_$RuntimeTypeKeyFirstImpl) then) =
      __$$RuntimeTypeKeyFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$RuntimeTypeKeyFirstImplCopyWithImpl<$Res>
    extends _$RuntimeTypeKeyCopyWithImpl<$Res, _$RuntimeTypeKeyFirstImpl>
    implements _$$RuntimeTypeKeyFirstImplCopyWith<$Res> {
  __$$RuntimeTypeKeyFirstImplCopyWithImpl(_$RuntimeTypeKeyFirstImpl _value,
      $Res Function(_$RuntimeTypeKeyFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of RuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$RuntimeTypeKeyFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RuntimeTypeKeyFirstImpl implements _RuntimeTypeKeyFirst {
  const _$RuntimeTypeKeyFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'first';

  factory _$RuntimeTypeKeyFirstImpl.fromJson(Map<String, dynamic> json) =>
      _$$RuntimeTypeKeyFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RuntimeTypeKey.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RuntimeTypeKeyFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of RuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RuntimeTypeKeyFirstImplCopyWith<_$RuntimeTypeKeyFirstImpl> get copyWith =>
      __$$RuntimeTypeKeyFirstImplCopyWithImpl<_$RuntimeTypeKeyFirstImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RuntimeTypeKeyFirst value) first,
    required TResult Function(_RuntimeTypeKeySecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RuntimeTypeKeyFirst value)? first,
    TResult? Function(_RuntimeTypeKeySecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RuntimeTypeKeyFirst value)? first,
    TResult Function(_RuntimeTypeKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RuntimeTypeKeyFirstImplToJson(
      this,
    );
  }
}

abstract class _RuntimeTypeKeyFirst implements RuntimeTypeKey {
  const factory _RuntimeTypeKeyFirst(final int a) = _$RuntimeTypeKeyFirstImpl;

  factory _RuntimeTypeKeyFirst.fromJson(Map<String, dynamic> json) =
      _$RuntimeTypeKeyFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of RuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RuntimeTypeKeyFirstImplCopyWith<_$RuntimeTypeKeyFirstImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RuntimeTypeKeySecondImplCopyWith<$Res>
    implements $RuntimeTypeKeyCopyWith<$Res> {
  factory _$$RuntimeTypeKeySecondImplCopyWith(_$RuntimeTypeKeySecondImpl value,
          $Res Function(_$RuntimeTypeKeySecondImpl) then) =
      __$$RuntimeTypeKeySecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$RuntimeTypeKeySecondImplCopyWithImpl<$Res>
    extends _$RuntimeTypeKeyCopyWithImpl<$Res, _$RuntimeTypeKeySecondImpl>
    implements _$$RuntimeTypeKeySecondImplCopyWith<$Res> {
  __$$RuntimeTypeKeySecondImplCopyWithImpl(_$RuntimeTypeKeySecondImpl _value,
      $Res Function(_$RuntimeTypeKeySecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of RuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$RuntimeTypeKeySecondImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RuntimeTypeKeySecondImpl implements _RuntimeTypeKeySecond {
  const _$RuntimeTypeKeySecondImpl(this.a, {final String? $type})
      : $type = $type ?? 'second';

  factory _$RuntimeTypeKeySecondImpl.fromJson(Map<String, dynamic> json) =>
      _$$RuntimeTypeKeySecondImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RuntimeTypeKey.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RuntimeTypeKeySecondImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of RuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RuntimeTypeKeySecondImplCopyWith<_$RuntimeTypeKeySecondImpl>
      get copyWith =>
          __$$RuntimeTypeKeySecondImplCopyWithImpl<_$RuntimeTypeKeySecondImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RuntimeTypeKeyFirst value) first,
    required TResult Function(_RuntimeTypeKeySecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RuntimeTypeKeyFirst value)? first,
    TResult? Function(_RuntimeTypeKeySecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RuntimeTypeKeyFirst value)? first,
    TResult Function(_RuntimeTypeKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RuntimeTypeKeySecondImplToJson(
      this,
    );
  }
}

abstract class _RuntimeTypeKeySecond implements RuntimeTypeKey {
  const factory _RuntimeTypeKeySecond(final int a) = _$RuntimeTypeKeySecondImpl;

  factory _RuntimeTypeKeySecond.fromJson(Map<String, dynamic> json) =
      _$RuntimeTypeKeySecondImpl.fromJson;

  @override
  int get a;

  /// Create a copy of RuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RuntimeTypeKeySecondImplCopyWith<_$RuntimeTypeKeySecondImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RawRuntimeTypeKey _$RawRuntimeTypeKeyFromJson(Map<String, dynamic> json) {
  switch (json['\$runtimeType']) {
    case 'first':
      return _RawRuntimeTypeKeyFirst.fromJson(json);
    case 'second':
      return _RawRuntimeTypeKeySecond.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '\$runtimeType', 'RawRuntimeTypeKey',
          'Invalid union type "${json['\$runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RawRuntimeTypeKey {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RawRuntimeTypeKeyFirst value) first,
    required TResult Function(_RawRuntimeTypeKeySecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RawRuntimeTypeKeyFirst value)? first,
    TResult? Function(_RawRuntimeTypeKeySecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RawRuntimeTypeKeyFirst value)? first,
    TResult Function(_RawRuntimeTypeKeySecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this RawRuntimeTypeKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RawRuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RawRuntimeTypeKeyCopyWith<RawRuntimeTypeKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawRuntimeTypeKeyCopyWith<$Res> {
  factory $RawRuntimeTypeKeyCopyWith(
          RawRuntimeTypeKey value, $Res Function(RawRuntimeTypeKey) then) =
      _$RawRuntimeTypeKeyCopyWithImpl<$Res, RawRuntimeTypeKey>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$RawRuntimeTypeKeyCopyWithImpl<$Res, $Val extends RawRuntimeTypeKey>
    implements $RawRuntimeTypeKeyCopyWith<$Res> {
  _$RawRuntimeTypeKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RawRuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RawRuntimeTypeKeyFirstImplCopyWith<$Res>
    implements $RawRuntimeTypeKeyCopyWith<$Res> {
  factory _$$RawRuntimeTypeKeyFirstImplCopyWith(
          _$RawRuntimeTypeKeyFirstImpl value,
          $Res Function(_$RawRuntimeTypeKeyFirstImpl) then) =
      __$$RawRuntimeTypeKeyFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$RawRuntimeTypeKeyFirstImplCopyWithImpl<$Res>
    extends _$RawRuntimeTypeKeyCopyWithImpl<$Res, _$RawRuntimeTypeKeyFirstImpl>
    implements _$$RawRuntimeTypeKeyFirstImplCopyWith<$Res> {
  __$$RawRuntimeTypeKeyFirstImplCopyWithImpl(
      _$RawRuntimeTypeKeyFirstImpl _value,
      $Res Function(_$RawRuntimeTypeKeyFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of RawRuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$RawRuntimeTypeKeyFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RawRuntimeTypeKeyFirstImpl implements _RawRuntimeTypeKeyFirst {
  const _$RawRuntimeTypeKeyFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'first';

  factory _$RawRuntimeTypeKeyFirstImpl.fromJson(Map<String, dynamic> json) =>
      _$$RawRuntimeTypeKeyFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: '\$runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RawRuntimeTypeKey.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RawRuntimeTypeKeyFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of RawRuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RawRuntimeTypeKeyFirstImplCopyWith<_$RawRuntimeTypeKeyFirstImpl>
      get copyWith => __$$RawRuntimeTypeKeyFirstImplCopyWithImpl<
          _$RawRuntimeTypeKeyFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RawRuntimeTypeKeyFirst value) first,
    required TResult Function(_RawRuntimeTypeKeySecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RawRuntimeTypeKeyFirst value)? first,
    TResult? Function(_RawRuntimeTypeKeySecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RawRuntimeTypeKeyFirst value)? first,
    TResult Function(_RawRuntimeTypeKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RawRuntimeTypeKeyFirstImplToJson(
      this,
    );
  }
}

abstract class _RawRuntimeTypeKeyFirst implements RawRuntimeTypeKey {
  const factory _RawRuntimeTypeKeyFirst(final int a) =
      _$RawRuntimeTypeKeyFirstImpl;

  factory _RawRuntimeTypeKeyFirst.fromJson(Map<String, dynamic> json) =
      _$RawRuntimeTypeKeyFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of RawRuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RawRuntimeTypeKeyFirstImplCopyWith<_$RawRuntimeTypeKeyFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RawRuntimeTypeKeySecondImplCopyWith<$Res>
    implements $RawRuntimeTypeKeyCopyWith<$Res> {
  factory _$$RawRuntimeTypeKeySecondImplCopyWith(
          _$RawRuntimeTypeKeySecondImpl value,
          $Res Function(_$RawRuntimeTypeKeySecondImpl) then) =
      __$$RawRuntimeTypeKeySecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$RawRuntimeTypeKeySecondImplCopyWithImpl<$Res>
    extends _$RawRuntimeTypeKeyCopyWithImpl<$Res, _$RawRuntimeTypeKeySecondImpl>
    implements _$$RawRuntimeTypeKeySecondImplCopyWith<$Res> {
  __$$RawRuntimeTypeKeySecondImplCopyWithImpl(
      _$RawRuntimeTypeKeySecondImpl _value,
      $Res Function(_$RawRuntimeTypeKeySecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of RawRuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$RawRuntimeTypeKeySecondImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RawRuntimeTypeKeySecondImpl implements _RawRuntimeTypeKeySecond {
  const _$RawRuntimeTypeKeySecondImpl(this.a, {final String? $type})
      : $type = $type ?? 'second';

  factory _$RawRuntimeTypeKeySecondImpl.fromJson(Map<String, dynamic> json) =>
      _$$RawRuntimeTypeKeySecondImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: '\$runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RawRuntimeTypeKey.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RawRuntimeTypeKeySecondImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of RawRuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RawRuntimeTypeKeySecondImplCopyWith<_$RawRuntimeTypeKeySecondImpl>
      get copyWith => __$$RawRuntimeTypeKeySecondImplCopyWithImpl<
          _$RawRuntimeTypeKeySecondImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RawRuntimeTypeKeyFirst value) first,
    required TResult Function(_RawRuntimeTypeKeySecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RawRuntimeTypeKeyFirst value)? first,
    TResult? Function(_RawRuntimeTypeKeySecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RawRuntimeTypeKeyFirst value)? first,
    TResult Function(_RawRuntimeTypeKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RawRuntimeTypeKeySecondImplToJson(
      this,
    );
  }
}

abstract class _RawRuntimeTypeKeySecond implements RawRuntimeTypeKey {
  const factory _RawRuntimeTypeKeySecond(final int a) =
      _$RawRuntimeTypeKeySecondImpl;

  factory _RawRuntimeTypeKeySecond.fromJson(Map<String, dynamic> json) =
      _$RawRuntimeTypeKeySecondImpl.fromJson;

  @override
  int get a;

  /// Create a copy of RawRuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RawRuntimeTypeKeySecondImplCopyWith<_$RawRuntimeTypeKeySecondImpl>
      get copyWith => throw _privateConstructorUsedError;
}

FancyRuntimeTypeKey _$FancyRuntimeTypeKeyFromJson(Map<String, dynamic> json) {
  switch (json['run"\'timeType']) {
    case 'first':
      return _FancyRuntimeTypeKeyFirst.fromJson(json);
    case 'second':
      return _FancyRuntimeTypeKeySecond.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'run"\'timeType',
          'FancyRuntimeTypeKey',
          'Invalid union type "${json['run"\'timeType']}"!');
  }
}

/// @nodoc
mixin _$FancyRuntimeTypeKey {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FancyRuntimeTypeKeyFirst value) first,
    required TResult Function(_FancyRuntimeTypeKeySecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FancyRuntimeTypeKeyFirst value)? first,
    TResult? Function(_FancyRuntimeTypeKeySecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FancyRuntimeTypeKeyFirst value)? first,
    TResult Function(_FancyRuntimeTypeKeySecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this FancyRuntimeTypeKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FancyRuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FancyRuntimeTypeKeyCopyWith<FancyRuntimeTypeKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FancyRuntimeTypeKeyCopyWith<$Res> {
  factory $FancyRuntimeTypeKeyCopyWith(
          FancyRuntimeTypeKey value, $Res Function(FancyRuntimeTypeKey) then) =
      _$FancyRuntimeTypeKeyCopyWithImpl<$Res, FancyRuntimeTypeKey>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$FancyRuntimeTypeKeyCopyWithImpl<$Res, $Val extends FancyRuntimeTypeKey>
    implements $FancyRuntimeTypeKeyCopyWith<$Res> {
  _$FancyRuntimeTypeKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FancyRuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FancyRuntimeTypeKeyFirstImplCopyWith<$Res>
    implements $FancyRuntimeTypeKeyCopyWith<$Res> {
  factory _$$FancyRuntimeTypeKeyFirstImplCopyWith(
          _$FancyRuntimeTypeKeyFirstImpl value,
          $Res Function(_$FancyRuntimeTypeKeyFirstImpl) then) =
      __$$FancyRuntimeTypeKeyFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$FancyRuntimeTypeKeyFirstImplCopyWithImpl<$Res>
    extends _$FancyRuntimeTypeKeyCopyWithImpl<$Res,
        _$FancyRuntimeTypeKeyFirstImpl>
    implements _$$FancyRuntimeTypeKeyFirstImplCopyWith<$Res> {
  __$$FancyRuntimeTypeKeyFirstImplCopyWithImpl(
      _$FancyRuntimeTypeKeyFirstImpl _value,
      $Res Function(_$FancyRuntimeTypeKeyFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of FancyRuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$FancyRuntimeTypeKeyFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FancyRuntimeTypeKeyFirstImpl implements _FancyRuntimeTypeKeyFirst {
  const _$FancyRuntimeTypeKeyFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'first';

  factory _$FancyRuntimeTypeKeyFirstImpl.fromJson(Map<String, dynamic> json) =>
      _$$FancyRuntimeTypeKeyFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'run"\'timeType')
  final String $type;

  @override
  String toString() {
    return 'FancyRuntimeTypeKey.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FancyRuntimeTypeKeyFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of FancyRuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FancyRuntimeTypeKeyFirstImplCopyWith<_$FancyRuntimeTypeKeyFirstImpl>
      get copyWith => __$$FancyRuntimeTypeKeyFirstImplCopyWithImpl<
          _$FancyRuntimeTypeKeyFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FancyRuntimeTypeKeyFirst value) first,
    required TResult Function(_FancyRuntimeTypeKeySecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FancyRuntimeTypeKeyFirst value)? first,
    TResult? Function(_FancyRuntimeTypeKeySecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FancyRuntimeTypeKeyFirst value)? first,
    TResult Function(_FancyRuntimeTypeKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FancyRuntimeTypeKeyFirstImplToJson(
      this,
    );
  }
}

abstract class _FancyRuntimeTypeKeyFirst implements FancyRuntimeTypeKey {
  const factory _FancyRuntimeTypeKeyFirst(final int a) =
      _$FancyRuntimeTypeKeyFirstImpl;

  factory _FancyRuntimeTypeKeyFirst.fromJson(Map<String, dynamic> json) =
      _$FancyRuntimeTypeKeyFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of FancyRuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FancyRuntimeTypeKeyFirstImplCopyWith<_$FancyRuntimeTypeKeyFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FancyRuntimeTypeKeySecondImplCopyWith<$Res>
    implements $FancyRuntimeTypeKeyCopyWith<$Res> {
  factory _$$FancyRuntimeTypeKeySecondImplCopyWith(
          _$FancyRuntimeTypeKeySecondImpl value,
          $Res Function(_$FancyRuntimeTypeKeySecondImpl) then) =
      __$$FancyRuntimeTypeKeySecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$FancyRuntimeTypeKeySecondImplCopyWithImpl<$Res>
    extends _$FancyRuntimeTypeKeyCopyWithImpl<$Res,
        _$FancyRuntimeTypeKeySecondImpl>
    implements _$$FancyRuntimeTypeKeySecondImplCopyWith<$Res> {
  __$$FancyRuntimeTypeKeySecondImplCopyWithImpl(
      _$FancyRuntimeTypeKeySecondImpl _value,
      $Res Function(_$FancyRuntimeTypeKeySecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of FancyRuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$FancyRuntimeTypeKeySecondImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FancyRuntimeTypeKeySecondImpl implements _FancyRuntimeTypeKeySecond {
  const _$FancyRuntimeTypeKeySecondImpl(this.a, {final String? $type})
      : $type = $type ?? 'second';

  factory _$FancyRuntimeTypeKeySecondImpl.fromJson(Map<String, dynamic> json) =>
      _$$FancyRuntimeTypeKeySecondImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'run"\'timeType')
  final String $type;

  @override
  String toString() {
    return 'FancyRuntimeTypeKey.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FancyRuntimeTypeKeySecondImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of FancyRuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FancyRuntimeTypeKeySecondImplCopyWith<_$FancyRuntimeTypeKeySecondImpl>
      get copyWith => __$$FancyRuntimeTypeKeySecondImplCopyWithImpl<
          _$FancyRuntimeTypeKeySecondImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FancyRuntimeTypeKeyFirst value) first,
    required TResult Function(_FancyRuntimeTypeKeySecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FancyRuntimeTypeKeyFirst value)? first,
    TResult? Function(_FancyRuntimeTypeKeySecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FancyRuntimeTypeKeyFirst value)? first,
    TResult Function(_FancyRuntimeTypeKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FancyRuntimeTypeKeySecondImplToJson(
      this,
    );
  }
}

abstract class _FancyRuntimeTypeKeySecond implements FancyRuntimeTypeKey {
  const factory _FancyRuntimeTypeKeySecond(final int a) =
      _$FancyRuntimeTypeKeySecondImpl;

  factory _FancyRuntimeTypeKeySecond.fromJson(Map<String, dynamic> json) =
      _$FancyRuntimeTypeKeySecondImpl.fromJson;

  @override
  int get a;

  /// Create a copy of FancyRuntimeTypeKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FancyRuntimeTypeKeySecondImplCopyWith<_$FancyRuntimeTypeKeySecondImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RuntimeTypeUnrecognizedKeys _$RuntimeTypeUnrecognizedKeysFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'first':
      return _RuntimeTypeUnrecognizedKeysFirst.fromJson(json);
    case 'second':
      return _RuntimeTypeUnrecognizedKeysSecond.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'RuntimeTypeUnrecognizedKeys',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RuntimeTypeUnrecognizedKeys {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RuntimeTypeUnrecognizedKeysFirst value) first,
    required TResult Function(_RuntimeTypeUnrecognizedKeysSecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RuntimeTypeUnrecognizedKeysFirst value)? first,
    TResult? Function(_RuntimeTypeUnrecognizedKeysSecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RuntimeTypeUnrecognizedKeysFirst value)? first,
    TResult Function(_RuntimeTypeUnrecognizedKeysSecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this RuntimeTypeUnrecognizedKeys to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RuntimeTypeUnrecognizedKeys
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RuntimeTypeUnrecognizedKeysCopyWith<RuntimeTypeUnrecognizedKeys>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuntimeTypeUnrecognizedKeysCopyWith<$Res> {
  factory $RuntimeTypeUnrecognizedKeysCopyWith(
          RuntimeTypeUnrecognizedKeys value,
          $Res Function(RuntimeTypeUnrecognizedKeys) then) =
      _$RuntimeTypeUnrecognizedKeysCopyWithImpl<$Res,
          RuntimeTypeUnrecognizedKeys>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$RuntimeTypeUnrecognizedKeysCopyWithImpl<$Res,
        $Val extends RuntimeTypeUnrecognizedKeys>
    implements $RuntimeTypeUnrecognizedKeysCopyWith<$Res> {
  _$RuntimeTypeUnrecognizedKeysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RuntimeTypeUnrecognizedKeys
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RuntimeTypeUnrecognizedKeysFirstImplCopyWith<$Res>
    implements $RuntimeTypeUnrecognizedKeysCopyWith<$Res> {
  factory _$$RuntimeTypeUnrecognizedKeysFirstImplCopyWith(
          _$RuntimeTypeUnrecognizedKeysFirstImpl value,
          $Res Function(_$RuntimeTypeUnrecognizedKeysFirstImpl) then) =
      __$$RuntimeTypeUnrecognizedKeysFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$RuntimeTypeUnrecognizedKeysFirstImplCopyWithImpl<$Res>
    extends _$RuntimeTypeUnrecognizedKeysCopyWithImpl<$Res,
        _$RuntimeTypeUnrecognizedKeysFirstImpl>
    implements _$$RuntimeTypeUnrecognizedKeysFirstImplCopyWith<$Res> {
  __$$RuntimeTypeUnrecognizedKeysFirstImplCopyWithImpl(
      _$RuntimeTypeUnrecognizedKeysFirstImpl _value,
      $Res Function(_$RuntimeTypeUnrecognizedKeysFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of RuntimeTypeUnrecognizedKeys
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$RuntimeTypeUnrecognizedKeysFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$RuntimeTypeUnrecognizedKeysFirstImpl
    implements _RuntimeTypeUnrecognizedKeysFirst {
  const _$RuntimeTypeUnrecognizedKeysFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'first';

  factory _$RuntimeTypeUnrecognizedKeysFirstImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RuntimeTypeUnrecognizedKeysFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RuntimeTypeUnrecognizedKeys.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RuntimeTypeUnrecognizedKeysFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of RuntimeTypeUnrecognizedKeys
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RuntimeTypeUnrecognizedKeysFirstImplCopyWith<
          _$RuntimeTypeUnrecognizedKeysFirstImpl>
      get copyWith => __$$RuntimeTypeUnrecognizedKeysFirstImplCopyWithImpl<
          _$RuntimeTypeUnrecognizedKeysFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RuntimeTypeUnrecognizedKeysFirst value) first,
    required TResult Function(_RuntimeTypeUnrecognizedKeysSecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RuntimeTypeUnrecognizedKeysFirst value)? first,
    TResult? Function(_RuntimeTypeUnrecognizedKeysSecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RuntimeTypeUnrecognizedKeysFirst value)? first,
    TResult Function(_RuntimeTypeUnrecognizedKeysSecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RuntimeTypeUnrecognizedKeysFirstImplToJson(
      this,
    );
  }
}

abstract class _RuntimeTypeUnrecognizedKeysFirst
    implements RuntimeTypeUnrecognizedKeys {
  const factory _RuntimeTypeUnrecognizedKeysFirst(final int a) =
      _$RuntimeTypeUnrecognizedKeysFirstImpl;

  factory _RuntimeTypeUnrecognizedKeysFirst.fromJson(
          Map<String, dynamic> json) =
      _$RuntimeTypeUnrecognizedKeysFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of RuntimeTypeUnrecognizedKeys
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RuntimeTypeUnrecognizedKeysFirstImplCopyWith<
          _$RuntimeTypeUnrecognizedKeysFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RuntimeTypeUnrecognizedKeysSecondImplCopyWith<$Res>
    implements $RuntimeTypeUnrecognizedKeysCopyWith<$Res> {
  factory _$$RuntimeTypeUnrecognizedKeysSecondImplCopyWith(
          _$RuntimeTypeUnrecognizedKeysSecondImpl value,
          $Res Function(_$RuntimeTypeUnrecognizedKeysSecondImpl) then) =
      __$$RuntimeTypeUnrecognizedKeysSecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$RuntimeTypeUnrecognizedKeysSecondImplCopyWithImpl<$Res>
    extends _$RuntimeTypeUnrecognizedKeysCopyWithImpl<$Res,
        _$RuntimeTypeUnrecognizedKeysSecondImpl>
    implements _$$RuntimeTypeUnrecognizedKeysSecondImplCopyWith<$Res> {
  __$$RuntimeTypeUnrecognizedKeysSecondImplCopyWithImpl(
      _$RuntimeTypeUnrecognizedKeysSecondImpl _value,
      $Res Function(_$RuntimeTypeUnrecognizedKeysSecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of RuntimeTypeUnrecognizedKeys
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$RuntimeTypeUnrecognizedKeysSecondImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$RuntimeTypeUnrecognizedKeysSecondImpl
    implements _RuntimeTypeUnrecognizedKeysSecond {
  const _$RuntimeTypeUnrecognizedKeysSecondImpl(this.a, {final String? $type})
      : $type = $type ?? 'second';

  factory _$RuntimeTypeUnrecognizedKeysSecondImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RuntimeTypeUnrecognizedKeysSecondImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RuntimeTypeUnrecognizedKeys.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RuntimeTypeUnrecognizedKeysSecondImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of RuntimeTypeUnrecognizedKeys
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RuntimeTypeUnrecognizedKeysSecondImplCopyWith<
          _$RuntimeTypeUnrecognizedKeysSecondImpl>
      get copyWith => __$$RuntimeTypeUnrecognizedKeysSecondImplCopyWithImpl<
          _$RuntimeTypeUnrecognizedKeysSecondImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RuntimeTypeUnrecognizedKeysFirst value) first,
    required TResult Function(_RuntimeTypeUnrecognizedKeysSecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RuntimeTypeUnrecognizedKeysFirst value)? first,
    TResult? Function(_RuntimeTypeUnrecognizedKeysSecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RuntimeTypeUnrecognizedKeysFirst value)? first,
    TResult Function(_RuntimeTypeUnrecognizedKeysSecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RuntimeTypeUnrecognizedKeysSecondImplToJson(
      this,
    );
  }
}

abstract class _RuntimeTypeUnrecognizedKeysSecond
    implements RuntimeTypeUnrecognizedKeys {
  const factory _RuntimeTypeUnrecognizedKeysSecond(final int a) =
      _$RuntimeTypeUnrecognizedKeysSecondImpl;

  factory _RuntimeTypeUnrecognizedKeysSecond.fromJson(
          Map<String, dynamic> json) =
      _$RuntimeTypeUnrecognizedKeysSecondImpl.fromJson;

  @override
  int get a;

  /// Create a copy of RuntimeTypeUnrecognizedKeys
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RuntimeTypeUnrecognizedKeysSecondImplCopyWith<
          _$RuntimeTypeUnrecognizedKeysSecondImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RuntimeTypeRawCustomKey _$RuntimeTypeRawCustomKeyFromJson(
    Map<String, dynamic> json) {
  switch (json['\$runtimeType']) {
    case 'first':
      return _RuntimeTypeRawCustomKeyFirst.fromJson(json);
    case 'second':
      return _RuntimeTypeRawCustomKeySecond.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          '\$runtimeType',
          'RuntimeTypeRawCustomKey',
          'Invalid union type "${json['\$runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RuntimeTypeRawCustomKey {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RuntimeTypeRawCustomKeyFirst value) first,
    required TResult Function(_RuntimeTypeRawCustomKeySecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RuntimeTypeRawCustomKeyFirst value)? first,
    TResult? Function(_RuntimeTypeRawCustomKeySecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RuntimeTypeRawCustomKeyFirst value)? first,
    TResult Function(_RuntimeTypeRawCustomKeySecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this RuntimeTypeRawCustomKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RuntimeTypeRawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RuntimeTypeRawCustomKeyCopyWith<RuntimeTypeRawCustomKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RuntimeTypeRawCustomKeyCopyWith<$Res> {
  factory $RuntimeTypeRawCustomKeyCopyWith(RuntimeTypeRawCustomKey value,
          $Res Function(RuntimeTypeRawCustomKey) then) =
      _$RuntimeTypeRawCustomKeyCopyWithImpl<$Res, RuntimeTypeRawCustomKey>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$RuntimeTypeRawCustomKeyCopyWithImpl<$Res,
        $Val extends RuntimeTypeRawCustomKey>
    implements $RuntimeTypeRawCustomKeyCopyWith<$Res> {
  _$RuntimeTypeRawCustomKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RuntimeTypeRawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RuntimeTypeRawCustomKeyFirstImplCopyWith<$Res>
    implements $RuntimeTypeRawCustomKeyCopyWith<$Res> {
  factory _$$RuntimeTypeRawCustomKeyFirstImplCopyWith(
          _$RuntimeTypeRawCustomKeyFirstImpl value,
          $Res Function(_$RuntimeTypeRawCustomKeyFirstImpl) then) =
      __$$RuntimeTypeRawCustomKeyFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$RuntimeTypeRawCustomKeyFirstImplCopyWithImpl<$Res>
    extends _$RuntimeTypeRawCustomKeyCopyWithImpl<$Res,
        _$RuntimeTypeRawCustomKeyFirstImpl>
    implements _$$RuntimeTypeRawCustomKeyFirstImplCopyWith<$Res> {
  __$$RuntimeTypeRawCustomKeyFirstImplCopyWithImpl(
      _$RuntimeTypeRawCustomKeyFirstImpl _value,
      $Res Function(_$RuntimeTypeRawCustomKeyFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of RuntimeTypeRawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$RuntimeTypeRawCustomKeyFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$RuntimeTypeRawCustomKeyFirstImpl
    implements _RuntimeTypeRawCustomKeyFirst {
  const _$RuntimeTypeRawCustomKeyFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'first';

  factory _$RuntimeTypeRawCustomKeyFirstImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RuntimeTypeRawCustomKeyFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: '\$runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RuntimeTypeRawCustomKey.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RuntimeTypeRawCustomKeyFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of RuntimeTypeRawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RuntimeTypeRawCustomKeyFirstImplCopyWith<
          _$RuntimeTypeRawCustomKeyFirstImpl>
      get copyWith => __$$RuntimeTypeRawCustomKeyFirstImplCopyWithImpl<
          _$RuntimeTypeRawCustomKeyFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RuntimeTypeRawCustomKeyFirst value) first,
    required TResult Function(_RuntimeTypeRawCustomKeySecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RuntimeTypeRawCustomKeyFirst value)? first,
    TResult? Function(_RuntimeTypeRawCustomKeySecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RuntimeTypeRawCustomKeyFirst value)? first,
    TResult Function(_RuntimeTypeRawCustomKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RuntimeTypeRawCustomKeyFirstImplToJson(
      this,
    );
  }
}

abstract class _RuntimeTypeRawCustomKeyFirst
    implements RuntimeTypeRawCustomKey {
  const factory _RuntimeTypeRawCustomKeyFirst(final int a) =
      _$RuntimeTypeRawCustomKeyFirstImpl;

  factory _RuntimeTypeRawCustomKeyFirst.fromJson(Map<String, dynamic> json) =
      _$RuntimeTypeRawCustomKeyFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of RuntimeTypeRawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RuntimeTypeRawCustomKeyFirstImplCopyWith<
          _$RuntimeTypeRawCustomKeyFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RuntimeTypeRawCustomKeySecondImplCopyWith<$Res>
    implements $RuntimeTypeRawCustomKeyCopyWith<$Res> {
  factory _$$RuntimeTypeRawCustomKeySecondImplCopyWith(
          _$RuntimeTypeRawCustomKeySecondImpl value,
          $Res Function(_$RuntimeTypeRawCustomKeySecondImpl) then) =
      __$$RuntimeTypeRawCustomKeySecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$RuntimeTypeRawCustomKeySecondImplCopyWithImpl<$Res>
    extends _$RuntimeTypeRawCustomKeyCopyWithImpl<$Res,
        _$RuntimeTypeRawCustomKeySecondImpl>
    implements _$$RuntimeTypeRawCustomKeySecondImplCopyWith<$Res> {
  __$$RuntimeTypeRawCustomKeySecondImplCopyWithImpl(
      _$RuntimeTypeRawCustomKeySecondImpl _value,
      $Res Function(_$RuntimeTypeRawCustomKeySecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of RuntimeTypeRawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$RuntimeTypeRawCustomKeySecondImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$RuntimeTypeRawCustomKeySecondImpl
    implements _RuntimeTypeRawCustomKeySecond {
  const _$RuntimeTypeRawCustomKeySecondImpl(this.a, {final String? $type})
      : $type = $type ?? 'second';

  factory _$RuntimeTypeRawCustomKeySecondImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RuntimeTypeRawCustomKeySecondImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: '\$runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RuntimeTypeRawCustomKey.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RuntimeTypeRawCustomKeySecondImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of RuntimeTypeRawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RuntimeTypeRawCustomKeySecondImplCopyWith<
          _$RuntimeTypeRawCustomKeySecondImpl>
      get copyWith => __$$RuntimeTypeRawCustomKeySecondImplCopyWithImpl<
          _$RuntimeTypeRawCustomKeySecondImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RuntimeTypeRawCustomKeyFirst value) first,
    required TResult Function(_RuntimeTypeRawCustomKeySecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RuntimeTypeRawCustomKeyFirst value)? first,
    TResult? Function(_RuntimeTypeRawCustomKeySecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RuntimeTypeRawCustomKeyFirst value)? first,
    TResult Function(_RuntimeTypeRawCustomKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RuntimeTypeRawCustomKeySecondImplToJson(
      this,
    );
  }
}

abstract class _RuntimeTypeRawCustomKeySecond
    implements RuntimeTypeRawCustomKey {
  const factory _RuntimeTypeRawCustomKeySecond(final int a) =
      _$RuntimeTypeRawCustomKeySecondImpl;

  factory _RuntimeTypeRawCustomKeySecond.fromJson(Map<String, dynamic> json) =
      _$RuntimeTypeRawCustomKeySecondImpl.fromJson;

  @override
  int get a;

  /// Create a copy of RuntimeTypeRawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RuntimeTypeRawCustomKeySecondImplCopyWith<
          _$RuntimeTypeRawCustomKeySecondImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnrecognizedKeysFancyCustomKey _$UnrecognizedKeysFancyCustomKeyFromJson(
    Map<String, dynamic> json) {
  switch (json['ty"\'pe']) {
    case 'first':
      return _UnrecognizedKeysFancyCustomKeyFirst.fromJson(json);
    case 'second':
      return _UnrecognizedKeysFancyCustomKeySecond.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'ty"\'pe',
          'UnrecognizedKeysFancyCustomKey',
          'Invalid union type "${json['ty"\'pe']}"!');
  }
}

/// @nodoc
mixin _$UnrecognizedKeysFancyCustomKey {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysFancyCustomKeyFirst value) first,
    required TResult Function(_UnrecognizedKeysFancyCustomKeySecond value)
        second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysFancyCustomKeyFirst value)? first,
    TResult? Function(_UnrecognizedKeysFancyCustomKeySecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysFancyCustomKeyFirst value)? first,
    TResult Function(_UnrecognizedKeysFancyCustomKeySecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UnrecognizedKeysFancyCustomKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnrecognizedKeysFancyCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnrecognizedKeysFancyCustomKeyCopyWith<UnrecognizedKeysFancyCustomKey>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnrecognizedKeysFancyCustomKeyCopyWith<$Res> {
  factory $UnrecognizedKeysFancyCustomKeyCopyWith(
          UnrecognizedKeysFancyCustomKey value,
          $Res Function(UnrecognizedKeysFancyCustomKey) then) =
      _$UnrecognizedKeysFancyCustomKeyCopyWithImpl<$Res,
          UnrecognizedKeysFancyCustomKey>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$UnrecognizedKeysFancyCustomKeyCopyWithImpl<$Res,
        $Val extends UnrecognizedKeysFancyCustomKey>
    implements $UnrecognizedKeysFancyCustomKeyCopyWith<$Res> {
  _$UnrecognizedKeysFancyCustomKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnrecognizedKeysFancyCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnrecognizedKeysFancyCustomKeyFirstImplCopyWith<$Res>
    implements $UnrecognizedKeysFancyCustomKeyCopyWith<$Res> {
  factory _$$UnrecognizedKeysFancyCustomKeyFirstImplCopyWith(
          _$UnrecognizedKeysFancyCustomKeyFirstImpl value,
          $Res Function(_$UnrecognizedKeysFancyCustomKeyFirstImpl) then) =
      __$$UnrecognizedKeysFancyCustomKeyFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysFancyCustomKeyFirstImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysFancyCustomKeyCopyWithImpl<$Res,
        _$UnrecognizedKeysFancyCustomKeyFirstImpl>
    implements _$$UnrecognizedKeysFancyCustomKeyFirstImplCopyWith<$Res> {
  __$$UnrecognizedKeysFancyCustomKeyFirstImplCopyWithImpl(
      _$UnrecognizedKeysFancyCustomKeyFirstImpl _value,
      $Res Function(_$UnrecognizedKeysFancyCustomKeyFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysFancyCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysFancyCustomKeyFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysFancyCustomKeyFirstImpl
    implements _UnrecognizedKeysFancyCustomKeyFirst {
  const _$UnrecognizedKeysFancyCustomKeyFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'first';

  factory _$UnrecognizedKeysFancyCustomKeyFirstImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysFancyCustomKeyFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'ty"\'pe')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysFancyCustomKey.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysFancyCustomKeyFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysFancyCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysFancyCustomKeyFirstImplCopyWith<
          _$UnrecognizedKeysFancyCustomKeyFirstImpl>
      get copyWith => __$$UnrecognizedKeysFancyCustomKeyFirstImplCopyWithImpl<
          _$UnrecognizedKeysFancyCustomKeyFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysFancyCustomKeyFirst value) first,
    required TResult Function(_UnrecognizedKeysFancyCustomKeySecond value)
        second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysFancyCustomKeyFirst value)? first,
    TResult? Function(_UnrecognizedKeysFancyCustomKeySecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysFancyCustomKeyFirst value)? first,
    TResult Function(_UnrecognizedKeysFancyCustomKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysFancyCustomKeyFirstImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysFancyCustomKeyFirst
    implements UnrecognizedKeysFancyCustomKey {
  const factory _UnrecognizedKeysFancyCustomKeyFirst(final int a) =
      _$UnrecognizedKeysFancyCustomKeyFirstImpl;

  factory _UnrecognizedKeysFancyCustomKeyFirst.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysFancyCustomKeyFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysFancyCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysFancyCustomKeyFirstImplCopyWith<
          _$UnrecognizedKeysFancyCustomKeyFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnrecognizedKeysFancyCustomKeySecondImplCopyWith<$Res>
    implements $UnrecognizedKeysFancyCustomKeyCopyWith<$Res> {
  factory _$$UnrecognizedKeysFancyCustomKeySecondImplCopyWith(
          _$UnrecognizedKeysFancyCustomKeySecondImpl value,
          $Res Function(_$UnrecognizedKeysFancyCustomKeySecondImpl) then) =
      __$$UnrecognizedKeysFancyCustomKeySecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysFancyCustomKeySecondImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysFancyCustomKeyCopyWithImpl<$Res,
        _$UnrecognizedKeysFancyCustomKeySecondImpl>
    implements _$$UnrecognizedKeysFancyCustomKeySecondImplCopyWith<$Res> {
  __$$UnrecognizedKeysFancyCustomKeySecondImplCopyWithImpl(
      _$UnrecognizedKeysFancyCustomKeySecondImpl _value,
      $Res Function(_$UnrecognizedKeysFancyCustomKeySecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysFancyCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysFancyCustomKeySecondImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysFancyCustomKeySecondImpl
    implements _UnrecognizedKeysFancyCustomKeySecond {
  const _$UnrecognizedKeysFancyCustomKeySecondImpl(this.a,
      {final String? $type})
      : $type = $type ?? 'second';

  factory _$UnrecognizedKeysFancyCustomKeySecondImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysFancyCustomKeySecondImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'ty"\'pe')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysFancyCustomKey.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysFancyCustomKeySecondImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysFancyCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysFancyCustomKeySecondImplCopyWith<
          _$UnrecognizedKeysFancyCustomKeySecondImpl>
      get copyWith => __$$UnrecognizedKeysFancyCustomKeySecondImplCopyWithImpl<
          _$UnrecognizedKeysFancyCustomKeySecondImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysFancyCustomKeyFirst value) first,
    required TResult Function(_UnrecognizedKeysFancyCustomKeySecond value)
        second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysFancyCustomKeyFirst value)? first,
    TResult? Function(_UnrecognizedKeysFancyCustomKeySecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysFancyCustomKeyFirst value)? first,
    TResult Function(_UnrecognizedKeysFancyCustomKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysFancyCustomKeySecondImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysFancyCustomKeySecond
    implements UnrecognizedKeysFancyCustomKey {
  const factory _UnrecognizedKeysFancyCustomKeySecond(final int a) =
      _$UnrecognizedKeysFancyCustomKeySecondImpl;

  factory _UnrecognizedKeysFancyCustomKeySecond.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysFancyCustomKeySecondImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysFancyCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysFancyCustomKeySecondImplCopyWith<
          _$UnrecognizedKeysFancyCustomKeySecondImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnrecognizedKeysRawCustomKey _$UnrecognizedKeysRawCustomKeyFromJson(
    Map<String, dynamic> json) {
  switch (json['\$type']) {
    case 'first':
      return _UnrecognizedKeysRawCustomKeyFirst.fromJson(json);
    case 'second':
      return _UnrecognizedKeysRawCustomKeySecond.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          '\$type',
          'UnrecognizedKeysRawCustomKey',
          'Invalid union type "${json['\$type']}"!');
  }
}

/// @nodoc
mixin _$UnrecognizedKeysRawCustomKey {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysRawCustomKeyFirst value) first,
    required TResult Function(_UnrecognizedKeysRawCustomKeySecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysRawCustomKeyFirst value)? first,
    TResult? Function(_UnrecognizedKeysRawCustomKeySecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysRawCustomKeyFirst value)? first,
    TResult Function(_UnrecognizedKeysRawCustomKeySecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UnrecognizedKeysRawCustomKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnrecognizedKeysRawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnrecognizedKeysRawCustomKeyCopyWith<UnrecognizedKeysRawCustomKey>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnrecognizedKeysRawCustomKeyCopyWith<$Res> {
  factory $UnrecognizedKeysRawCustomKeyCopyWith(
          UnrecognizedKeysRawCustomKey value,
          $Res Function(UnrecognizedKeysRawCustomKey) then) =
      _$UnrecognizedKeysRawCustomKeyCopyWithImpl<$Res,
          UnrecognizedKeysRawCustomKey>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$UnrecognizedKeysRawCustomKeyCopyWithImpl<$Res,
        $Val extends UnrecognizedKeysRawCustomKey>
    implements $UnrecognizedKeysRawCustomKeyCopyWith<$Res> {
  _$UnrecognizedKeysRawCustomKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnrecognizedKeysRawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnrecognizedKeysRawCustomKeyFirstImplCopyWith<$Res>
    implements $UnrecognizedKeysRawCustomKeyCopyWith<$Res> {
  factory _$$UnrecognizedKeysRawCustomKeyFirstImplCopyWith(
          _$UnrecognizedKeysRawCustomKeyFirstImpl value,
          $Res Function(_$UnrecognizedKeysRawCustomKeyFirstImpl) then) =
      __$$UnrecognizedKeysRawCustomKeyFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysRawCustomKeyFirstImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysRawCustomKeyCopyWithImpl<$Res,
        _$UnrecognizedKeysRawCustomKeyFirstImpl>
    implements _$$UnrecognizedKeysRawCustomKeyFirstImplCopyWith<$Res> {
  __$$UnrecognizedKeysRawCustomKeyFirstImplCopyWithImpl(
      _$UnrecognizedKeysRawCustomKeyFirstImpl _value,
      $Res Function(_$UnrecognizedKeysRawCustomKeyFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysRawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysRawCustomKeyFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysRawCustomKeyFirstImpl
    implements _UnrecognizedKeysRawCustomKeyFirst {
  const _$UnrecognizedKeysRawCustomKeyFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'first';

  factory _$UnrecognizedKeysRawCustomKeyFirstImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysRawCustomKeyFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: '\$type')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysRawCustomKey.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysRawCustomKeyFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysRawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysRawCustomKeyFirstImplCopyWith<
          _$UnrecognizedKeysRawCustomKeyFirstImpl>
      get copyWith => __$$UnrecognizedKeysRawCustomKeyFirstImplCopyWithImpl<
          _$UnrecognizedKeysRawCustomKeyFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysRawCustomKeyFirst value) first,
    required TResult Function(_UnrecognizedKeysRawCustomKeySecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysRawCustomKeyFirst value)? first,
    TResult? Function(_UnrecognizedKeysRawCustomKeySecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysRawCustomKeyFirst value)? first,
    TResult Function(_UnrecognizedKeysRawCustomKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysRawCustomKeyFirstImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysRawCustomKeyFirst
    implements UnrecognizedKeysRawCustomKey {
  const factory _UnrecognizedKeysRawCustomKeyFirst(final int a) =
      _$UnrecognizedKeysRawCustomKeyFirstImpl;

  factory _UnrecognizedKeysRawCustomKeyFirst.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysRawCustomKeyFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysRawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysRawCustomKeyFirstImplCopyWith<
          _$UnrecognizedKeysRawCustomKeyFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnrecognizedKeysRawCustomKeySecondImplCopyWith<$Res>
    implements $UnrecognizedKeysRawCustomKeyCopyWith<$Res> {
  factory _$$UnrecognizedKeysRawCustomKeySecondImplCopyWith(
          _$UnrecognizedKeysRawCustomKeySecondImpl value,
          $Res Function(_$UnrecognizedKeysRawCustomKeySecondImpl) then) =
      __$$UnrecognizedKeysRawCustomKeySecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysRawCustomKeySecondImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysRawCustomKeyCopyWithImpl<$Res,
        _$UnrecognizedKeysRawCustomKeySecondImpl>
    implements _$$UnrecognizedKeysRawCustomKeySecondImplCopyWith<$Res> {
  __$$UnrecognizedKeysRawCustomKeySecondImplCopyWithImpl(
      _$UnrecognizedKeysRawCustomKeySecondImpl _value,
      $Res Function(_$UnrecognizedKeysRawCustomKeySecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysRawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysRawCustomKeySecondImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysRawCustomKeySecondImpl
    implements _UnrecognizedKeysRawCustomKeySecond {
  const _$UnrecognizedKeysRawCustomKeySecondImpl(this.a, {final String? $type})
      : $type = $type ?? 'second';

  factory _$UnrecognizedKeysRawCustomKeySecondImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysRawCustomKeySecondImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: '\$type')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysRawCustomKey.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysRawCustomKeySecondImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysRawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysRawCustomKeySecondImplCopyWith<
          _$UnrecognizedKeysRawCustomKeySecondImpl>
      get copyWith => __$$UnrecognizedKeysRawCustomKeySecondImplCopyWithImpl<
          _$UnrecognizedKeysRawCustomKeySecondImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysRawCustomKeyFirst value) first,
    required TResult Function(_UnrecognizedKeysRawCustomKeySecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysRawCustomKeyFirst value)? first,
    TResult? Function(_UnrecognizedKeysRawCustomKeySecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysRawCustomKeyFirst value)? first,
    TResult Function(_UnrecognizedKeysRawCustomKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysRawCustomKeySecondImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysRawCustomKeySecond
    implements UnrecognizedKeysRawCustomKey {
  const factory _UnrecognizedKeysRawCustomKeySecond(final int a) =
      _$UnrecognizedKeysRawCustomKeySecondImpl;

  factory _UnrecognizedKeysRawCustomKeySecond.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysRawCustomKeySecondImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysRawCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysRawCustomKeySecondImplCopyWith<
          _$UnrecognizedKeysRawCustomKeySecondImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnrecognizedKeysCustomKey _$UnrecognizedKeysCustomKeyFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'first':
      return _UnrecognizedKeysCustomKeyFirst.fromJson(json);
    case 'second':
      return _UnrecognizedKeysCustomKeySecond.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'UnrecognizedKeysCustomKey',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$UnrecognizedKeysCustomKey {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysCustomKeyFirst value) first,
    required TResult Function(_UnrecognizedKeysCustomKeySecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysCustomKeyFirst value)? first,
    TResult? Function(_UnrecognizedKeysCustomKeySecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysCustomKeyFirst value)? first,
    TResult Function(_UnrecognizedKeysCustomKeySecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UnrecognizedKeysCustomKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnrecognizedKeysCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnrecognizedKeysCustomKeyCopyWith<UnrecognizedKeysCustomKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnrecognizedKeysCustomKeyCopyWith<$Res> {
  factory $UnrecognizedKeysCustomKeyCopyWith(UnrecognizedKeysCustomKey value,
          $Res Function(UnrecognizedKeysCustomKey) then) =
      _$UnrecognizedKeysCustomKeyCopyWithImpl<$Res, UnrecognizedKeysCustomKey>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$UnrecognizedKeysCustomKeyCopyWithImpl<$Res,
        $Val extends UnrecognizedKeysCustomKey>
    implements $UnrecognizedKeysCustomKeyCopyWith<$Res> {
  _$UnrecognizedKeysCustomKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnrecognizedKeysCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnrecognizedKeysCustomKeyFirstImplCopyWith<$Res>
    implements $UnrecognizedKeysCustomKeyCopyWith<$Res> {
  factory _$$UnrecognizedKeysCustomKeyFirstImplCopyWith(
          _$UnrecognizedKeysCustomKeyFirstImpl value,
          $Res Function(_$UnrecognizedKeysCustomKeyFirstImpl) then) =
      __$$UnrecognizedKeysCustomKeyFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysCustomKeyFirstImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysCustomKeyCopyWithImpl<$Res,
        _$UnrecognizedKeysCustomKeyFirstImpl>
    implements _$$UnrecognizedKeysCustomKeyFirstImplCopyWith<$Res> {
  __$$UnrecognizedKeysCustomKeyFirstImplCopyWithImpl(
      _$UnrecognizedKeysCustomKeyFirstImpl _value,
      $Res Function(_$UnrecognizedKeysCustomKeyFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysCustomKeyFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysCustomKeyFirstImpl
    implements _UnrecognizedKeysCustomKeyFirst {
  const _$UnrecognizedKeysCustomKeyFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'first';

  factory _$UnrecognizedKeysCustomKeyFirstImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysCustomKeyFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysCustomKey.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysCustomKeyFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysCustomKeyFirstImplCopyWith<
          _$UnrecognizedKeysCustomKeyFirstImpl>
      get copyWith => __$$UnrecognizedKeysCustomKeyFirstImplCopyWithImpl<
          _$UnrecognizedKeysCustomKeyFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysCustomKeyFirst value) first,
    required TResult Function(_UnrecognizedKeysCustomKeySecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysCustomKeyFirst value)? first,
    TResult? Function(_UnrecognizedKeysCustomKeySecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysCustomKeyFirst value)? first,
    TResult Function(_UnrecognizedKeysCustomKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysCustomKeyFirstImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysCustomKeyFirst
    implements UnrecognizedKeysCustomKey {
  const factory _UnrecognizedKeysCustomKeyFirst(final int a) =
      _$UnrecognizedKeysCustomKeyFirstImpl;

  factory _UnrecognizedKeysCustomKeyFirst.fromJson(Map<String, dynamic> json) =
      _$UnrecognizedKeysCustomKeyFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysCustomKeyFirstImplCopyWith<
          _$UnrecognizedKeysCustomKeyFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnrecognizedKeysCustomKeySecondImplCopyWith<$Res>
    implements $UnrecognizedKeysCustomKeyCopyWith<$Res> {
  factory _$$UnrecognizedKeysCustomKeySecondImplCopyWith(
          _$UnrecognizedKeysCustomKeySecondImpl value,
          $Res Function(_$UnrecognizedKeysCustomKeySecondImpl) then) =
      __$$UnrecognizedKeysCustomKeySecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysCustomKeySecondImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysCustomKeyCopyWithImpl<$Res,
        _$UnrecognizedKeysCustomKeySecondImpl>
    implements _$$UnrecognizedKeysCustomKeySecondImplCopyWith<$Res> {
  __$$UnrecognizedKeysCustomKeySecondImplCopyWithImpl(
      _$UnrecognizedKeysCustomKeySecondImpl _value,
      $Res Function(_$UnrecognizedKeysCustomKeySecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysCustomKeySecondImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysCustomKeySecondImpl
    implements _UnrecognizedKeysCustomKeySecond {
  const _$UnrecognizedKeysCustomKeySecondImpl(this.a, {final String? $type})
      : $type = $type ?? 'second';

  factory _$UnrecognizedKeysCustomKeySecondImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysCustomKeySecondImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysCustomKey.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysCustomKeySecondImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysCustomKeySecondImplCopyWith<
          _$UnrecognizedKeysCustomKeySecondImpl>
      get copyWith => __$$UnrecognizedKeysCustomKeySecondImplCopyWithImpl<
          _$UnrecognizedKeysCustomKeySecondImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysCustomKeyFirst value) first,
    required TResult Function(_UnrecognizedKeysCustomKeySecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysCustomKeyFirst value)? first,
    TResult? Function(_UnrecognizedKeysCustomKeySecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysCustomKeyFirst value)? first,
    TResult Function(_UnrecognizedKeysCustomKeySecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysCustomKeySecondImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysCustomKeySecond
    implements UnrecognizedKeysCustomKey {
  const factory _UnrecognizedKeysCustomKeySecond(final int a) =
      _$UnrecognizedKeysCustomKeySecondImpl;

  factory _UnrecognizedKeysCustomKeySecond.fromJson(Map<String, dynamic> json) =
      _$UnrecognizedKeysCustomKeySecondImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysCustomKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysCustomKeySecondImplCopyWith<
          _$UnrecognizedKeysCustomKeySecondImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnrecognizedKeysCustomUnionValue _$UnrecognizedKeysCustomUnionValueFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'first':
      return _UnrecognizedKeysCustomUnionValueFirst.fromJson(json);
    case 'SECOND':
      return UnrecognizedKeys_CustomUnionValueSecond.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'UnrecognizedKeysCustomUnionValue',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UnrecognizedKeysCustomUnionValue {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysCustomUnionValueFirst value)
        first,
    required TResult Function(UnrecognizedKeys_CustomUnionValueSecond value)
        second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysCustomUnionValueFirst value)? first,
    TResult? Function(UnrecognizedKeys_CustomUnionValueSecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysCustomUnionValueFirst value)? first,
    TResult Function(UnrecognizedKeys_CustomUnionValueSecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UnrecognizedKeysCustomUnionValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnrecognizedKeysCustomUnionValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnrecognizedKeysCustomUnionValueCopyWith<UnrecognizedKeysCustomUnionValue>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnrecognizedKeysCustomUnionValueCopyWith<$Res> {
  factory $UnrecognizedKeysCustomUnionValueCopyWith(
          UnrecognizedKeysCustomUnionValue value,
          $Res Function(UnrecognizedKeysCustomUnionValue) then) =
      _$UnrecognizedKeysCustomUnionValueCopyWithImpl<$Res,
          UnrecognizedKeysCustomUnionValue>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$UnrecognizedKeysCustomUnionValueCopyWithImpl<$Res,
        $Val extends UnrecognizedKeysCustomUnionValue>
    implements $UnrecognizedKeysCustomUnionValueCopyWith<$Res> {
  _$UnrecognizedKeysCustomUnionValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnrecognizedKeysCustomUnionValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnrecognizedKeysCustomUnionValueFirstImplCopyWith<$Res>
    implements $UnrecognizedKeysCustomUnionValueCopyWith<$Res> {
  factory _$$UnrecognizedKeysCustomUnionValueFirstImplCopyWith(
          _$UnrecognizedKeysCustomUnionValueFirstImpl value,
          $Res Function(_$UnrecognizedKeysCustomUnionValueFirstImpl) then) =
      __$$UnrecognizedKeysCustomUnionValueFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysCustomUnionValueFirstImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysCustomUnionValueCopyWithImpl<$Res,
        _$UnrecognizedKeysCustomUnionValueFirstImpl>
    implements _$$UnrecognizedKeysCustomUnionValueFirstImplCopyWith<$Res> {
  __$$UnrecognizedKeysCustomUnionValueFirstImplCopyWithImpl(
      _$UnrecognizedKeysCustomUnionValueFirstImpl _value,
      $Res Function(_$UnrecognizedKeysCustomUnionValueFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysCustomUnionValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysCustomUnionValueFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysCustomUnionValueFirstImpl
    implements _UnrecognizedKeysCustomUnionValueFirst {
  const _$UnrecognizedKeysCustomUnionValueFirstImpl(this.a,
      {final String? $type})
      : $type = $type ?? 'first';

  factory _$UnrecognizedKeysCustomUnionValueFirstImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysCustomUnionValueFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysCustomUnionValue.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysCustomUnionValueFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysCustomUnionValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysCustomUnionValueFirstImplCopyWith<
          _$UnrecognizedKeysCustomUnionValueFirstImpl>
      get copyWith => __$$UnrecognizedKeysCustomUnionValueFirstImplCopyWithImpl<
          _$UnrecognizedKeysCustomUnionValueFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysCustomUnionValueFirst value)
        first,
    required TResult Function(UnrecognizedKeys_CustomUnionValueSecond value)
        second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysCustomUnionValueFirst value)? first,
    TResult? Function(UnrecognizedKeys_CustomUnionValueSecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysCustomUnionValueFirst value)? first,
    TResult Function(UnrecognizedKeys_CustomUnionValueSecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysCustomUnionValueFirstImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysCustomUnionValueFirst
    implements UnrecognizedKeysCustomUnionValue {
  const factory _UnrecognizedKeysCustomUnionValueFirst(final int a) =
      _$UnrecognizedKeysCustomUnionValueFirstImpl;

  factory _UnrecognizedKeysCustomUnionValueFirst.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysCustomUnionValueFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysCustomUnionValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysCustomUnionValueFirstImplCopyWith<
          _$UnrecognizedKeysCustomUnionValueFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnrecognizedKeys_CustomUnionValueSecondImplCopyWith<$Res>
    implements $UnrecognizedKeysCustomUnionValueCopyWith<$Res> {
  factory _$$UnrecognizedKeys_CustomUnionValueSecondImplCopyWith(
          _$UnrecognizedKeys_CustomUnionValueSecondImpl value,
          $Res Function(_$UnrecognizedKeys_CustomUnionValueSecondImpl) then) =
      __$$UnrecognizedKeys_CustomUnionValueSecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeys_CustomUnionValueSecondImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysCustomUnionValueCopyWithImpl<$Res,
        _$UnrecognizedKeys_CustomUnionValueSecondImpl>
    implements _$$UnrecognizedKeys_CustomUnionValueSecondImplCopyWith<$Res> {
  __$$UnrecognizedKeys_CustomUnionValueSecondImplCopyWithImpl(
      _$UnrecognizedKeys_CustomUnionValueSecondImpl _value,
      $Res Function(_$UnrecognizedKeys_CustomUnionValueSecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysCustomUnionValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeys_CustomUnionValueSecondImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeys_CustomUnionValueSecondImpl
    implements UnrecognizedKeys_CustomUnionValueSecond {
  const _$UnrecognizedKeys_CustomUnionValueSecondImpl(this.a,
      {final String? $type})
      : $type = $type ?? 'SECOND';

  factory _$UnrecognizedKeys_CustomUnionValueSecondImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeys_CustomUnionValueSecondImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysCustomUnionValue.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeys_CustomUnionValueSecondImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysCustomUnionValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeys_CustomUnionValueSecondImplCopyWith<
          _$UnrecognizedKeys_CustomUnionValueSecondImpl>
      get copyWith =>
          __$$UnrecognizedKeys_CustomUnionValueSecondImplCopyWithImpl<
              _$UnrecognizedKeys_CustomUnionValueSecondImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysCustomUnionValueFirst value)
        first,
    required TResult Function(UnrecognizedKeys_CustomUnionValueSecond value)
        second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysCustomUnionValueFirst value)? first,
    TResult? Function(UnrecognizedKeys_CustomUnionValueSecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysCustomUnionValueFirst value)? first,
    TResult Function(UnrecognizedKeys_CustomUnionValueSecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeys_CustomUnionValueSecondImplToJson(
      this,
    );
  }
}

abstract class UnrecognizedKeys_CustomUnionValueSecond
    implements UnrecognizedKeysCustomUnionValue {
  const factory UnrecognizedKeys_CustomUnionValueSecond(final int a) =
      _$UnrecognizedKeys_CustomUnionValueSecondImpl;

  factory UnrecognizedKeys_CustomUnionValueSecond.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeys_CustomUnionValueSecondImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysCustomUnionValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeys_CustomUnionValueSecondImplCopyWith<
          _$UnrecognizedKeys_CustomUnionValueSecondImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnrecognizedKeysUnionFallback _$UnrecognizedKeysUnionFallbackFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'first':
      return _UnrecognizedKeysUnionFallbackFirst.fromJson(json);
    case 'second':
      return _UnrecognizedKeysUnionFallbackSecond.fromJson(json);

    default:
      return _UnrecognizedKeysUnionFallbackFallback.fromJson(json);
  }
}

/// @nodoc
mixin _$UnrecognizedKeysUnionFallback {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
    required TResult Function(int a) fallback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
    TResult? Function(int a)? fallback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    TResult Function(int a)? fallback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysUnionFallbackFirst value) first,
    required TResult Function(_UnrecognizedKeysUnionFallbackSecond value)
        second,
    required TResult Function(_UnrecognizedKeysUnionFallbackFallback value)
        fallback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysUnionFallbackFirst value)? first,
    TResult? Function(_UnrecognizedKeysUnionFallbackSecond value)? second,
    TResult? Function(_UnrecognizedKeysUnionFallbackFallback value)? fallback,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysUnionFallbackFirst value)? first,
    TResult Function(_UnrecognizedKeysUnionFallbackSecond value)? second,
    TResult Function(_UnrecognizedKeysUnionFallbackFallback value)? fallback,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UnrecognizedKeysUnionFallback to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnrecognizedKeysUnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnrecognizedKeysUnionFallbackCopyWith<UnrecognizedKeysUnionFallback>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnrecognizedKeysUnionFallbackCopyWith<$Res> {
  factory $UnrecognizedKeysUnionFallbackCopyWith(
          UnrecognizedKeysUnionFallback value,
          $Res Function(UnrecognizedKeysUnionFallback) then) =
      _$UnrecognizedKeysUnionFallbackCopyWithImpl<$Res,
          UnrecognizedKeysUnionFallback>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$UnrecognizedKeysUnionFallbackCopyWithImpl<$Res,
        $Val extends UnrecognizedKeysUnionFallback>
    implements $UnrecognizedKeysUnionFallbackCopyWith<$Res> {
  _$UnrecognizedKeysUnionFallbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnrecognizedKeysUnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnrecognizedKeysUnionFallbackFirstImplCopyWith<$Res>
    implements $UnrecognizedKeysUnionFallbackCopyWith<$Res> {
  factory _$$UnrecognizedKeysUnionFallbackFirstImplCopyWith(
          _$UnrecognizedKeysUnionFallbackFirstImpl value,
          $Res Function(_$UnrecognizedKeysUnionFallbackFirstImpl) then) =
      __$$UnrecognizedKeysUnionFallbackFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysUnionFallbackFirstImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysUnionFallbackCopyWithImpl<$Res,
        _$UnrecognizedKeysUnionFallbackFirstImpl>
    implements _$$UnrecognizedKeysUnionFallbackFirstImplCopyWith<$Res> {
  __$$UnrecognizedKeysUnionFallbackFirstImplCopyWithImpl(
      _$UnrecognizedKeysUnionFallbackFirstImpl _value,
      $Res Function(_$UnrecognizedKeysUnionFallbackFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysUnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysUnionFallbackFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysUnionFallbackFirstImpl
    implements _UnrecognizedKeysUnionFallbackFirst {
  const _$UnrecognizedKeysUnionFallbackFirstImpl(this.a, {final String? $type})
      : $type = $type ?? 'first';

  factory _$UnrecognizedKeysUnionFallbackFirstImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysUnionFallbackFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysUnionFallback.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysUnionFallbackFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysUnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysUnionFallbackFirstImplCopyWith<
          _$UnrecognizedKeysUnionFallbackFirstImpl>
      get copyWith => __$$UnrecognizedKeysUnionFallbackFirstImplCopyWithImpl<
          _$UnrecognizedKeysUnionFallbackFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
    required TResult Function(int a) fallback,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
    TResult? Function(int a)? fallback,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    TResult Function(int a)? fallback,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysUnionFallbackFirst value) first,
    required TResult Function(_UnrecognizedKeysUnionFallbackSecond value)
        second,
    required TResult Function(_UnrecognizedKeysUnionFallbackFallback value)
        fallback,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysUnionFallbackFirst value)? first,
    TResult? Function(_UnrecognizedKeysUnionFallbackSecond value)? second,
    TResult? Function(_UnrecognizedKeysUnionFallbackFallback value)? fallback,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysUnionFallbackFirst value)? first,
    TResult Function(_UnrecognizedKeysUnionFallbackSecond value)? second,
    TResult Function(_UnrecognizedKeysUnionFallbackFallback value)? fallback,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysUnionFallbackFirstImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysUnionFallbackFirst
    implements UnrecognizedKeysUnionFallback {
  const factory _UnrecognizedKeysUnionFallbackFirst(final int a) =
      _$UnrecognizedKeysUnionFallbackFirstImpl;

  factory _UnrecognizedKeysUnionFallbackFirst.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysUnionFallbackFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysUnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysUnionFallbackFirstImplCopyWith<
          _$UnrecognizedKeysUnionFallbackFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnrecognizedKeysUnionFallbackSecondImplCopyWith<$Res>
    implements $UnrecognizedKeysUnionFallbackCopyWith<$Res> {
  factory _$$UnrecognizedKeysUnionFallbackSecondImplCopyWith(
          _$UnrecognizedKeysUnionFallbackSecondImpl value,
          $Res Function(_$UnrecognizedKeysUnionFallbackSecondImpl) then) =
      __$$UnrecognizedKeysUnionFallbackSecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysUnionFallbackSecondImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysUnionFallbackCopyWithImpl<$Res,
        _$UnrecognizedKeysUnionFallbackSecondImpl>
    implements _$$UnrecognizedKeysUnionFallbackSecondImplCopyWith<$Res> {
  __$$UnrecognizedKeysUnionFallbackSecondImplCopyWithImpl(
      _$UnrecognizedKeysUnionFallbackSecondImpl _value,
      $Res Function(_$UnrecognizedKeysUnionFallbackSecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysUnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysUnionFallbackSecondImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysUnionFallbackSecondImpl
    implements _UnrecognizedKeysUnionFallbackSecond {
  const _$UnrecognizedKeysUnionFallbackSecondImpl(this.a, {final String? $type})
      : $type = $type ?? 'second';

  factory _$UnrecognizedKeysUnionFallbackSecondImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysUnionFallbackSecondImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysUnionFallback.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysUnionFallbackSecondImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysUnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysUnionFallbackSecondImplCopyWith<
          _$UnrecognizedKeysUnionFallbackSecondImpl>
      get copyWith => __$$UnrecognizedKeysUnionFallbackSecondImplCopyWithImpl<
          _$UnrecognizedKeysUnionFallbackSecondImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
    required TResult Function(int a) fallback,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
    TResult? Function(int a)? fallback,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    TResult Function(int a)? fallback,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysUnionFallbackFirst value) first,
    required TResult Function(_UnrecognizedKeysUnionFallbackSecond value)
        second,
    required TResult Function(_UnrecognizedKeysUnionFallbackFallback value)
        fallback,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysUnionFallbackFirst value)? first,
    TResult? Function(_UnrecognizedKeysUnionFallbackSecond value)? second,
    TResult? Function(_UnrecognizedKeysUnionFallbackFallback value)? fallback,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysUnionFallbackFirst value)? first,
    TResult Function(_UnrecognizedKeysUnionFallbackSecond value)? second,
    TResult Function(_UnrecognizedKeysUnionFallbackFallback value)? fallback,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysUnionFallbackSecondImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysUnionFallbackSecond
    implements UnrecognizedKeysUnionFallback {
  const factory _UnrecognizedKeysUnionFallbackSecond(final int a) =
      _$UnrecognizedKeysUnionFallbackSecondImpl;

  factory _UnrecognizedKeysUnionFallbackSecond.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysUnionFallbackSecondImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysUnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysUnionFallbackSecondImplCopyWith<
          _$UnrecognizedKeysUnionFallbackSecondImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnrecognizedKeysUnionFallbackFallbackImplCopyWith<$Res>
    implements $UnrecognizedKeysUnionFallbackCopyWith<$Res> {
  factory _$$UnrecognizedKeysUnionFallbackFallbackImplCopyWith(
          _$UnrecognizedKeysUnionFallbackFallbackImpl value,
          $Res Function(_$UnrecognizedKeysUnionFallbackFallbackImpl) then) =
      __$$UnrecognizedKeysUnionFallbackFallbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysUnionFallbackFallbackImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysUnionFallbackCopyWithImpl<$Res,
        _$UnrecognizedKeysUnionFallbackFallbackImpl>
    implements _$$UnrecognizedKeysUnionFallbackFallbackImplCopyWith<$Res> {
  __$$UnrecognizedKeysUnionFallbackFallbackImplCopyWithImpl(
      _$UnrecognizedKeysUnionFallbackFallbackImpl _value,
      $Res Function(_$UnrecognizedKeysUnionFallbackFallbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysUnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysUnionFallbackFallbackImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysUnionFallbackFallbackImpl
    implements _UnrecognizedKeysUnionFallbackFallback {
  const _$UnrecognizedKeysUnionFallbackFallbackImpl(this.a,
      {final String? $type})
      : $type = $type ?? 'fallback';

  factory _$UnrecognizedKeysUnionFallbackFallbackImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysUnionFallbackFallbackImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysUnionFallback.fallback(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysUnionFallbackFallbackImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysUnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysUnionFallbackFallbackImplCopyWith<
          _$UnrecognizedKeysUnionFallbackFallbackImpl>
      get copyWith => __$$UnrecognizedKeysUnionFallbackFallbackImplCopyWithImpl<
          _$UnrecognizedKeysUnionFallbackFallbackImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) second,
    required TResult Function(int a) fallback,
  }) {
    return fallback(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
    TResult? Function(int a)? fallback,
  }) {
    return fallback?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    TResult Function(int a)? fallback,
    required TResult orElse(),
  }) {
    if (fallback != null) {
      return fallback(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysUnionFallbackFirst value) first,
    required TResult Function(_UnrecognizedKeysUnionFallbackSecond value)
        second,
    required TResult Function(_UnrecognizedKeysUnionFallbackFallback value)
        fallback,
  }) {
    return fallback(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysUnionFallbackFirst value)? first,
    TResult? Function(_UnrecognizedKeysUnionFallbackSecond value)? second,
    TResult? Function(_UnrecognizedKeysUnionFallbackFallback value)? fallback,
  }) {
    return fallback?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysUnionFallbackFirst value)? first,
    TResult Function(_UnrecognizedKeysUnionFallbackSecond value)? second,
    TResult Function(_UnrecognizedKeysUnionFallbackFallback value)? fallback,
    required TResult orElse(),
  }) {
    if (fallback != null) {
      return fallback(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysUnionFallbackFallbackImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysUnionFallbackFallback
    implements UnrecognizedKeysUnionFallback {
  const factory _UnrecognizedKeysUnionFallbackFallback(final int a) =
      _$UnrecognizedKeysUnionFallbackFallbackImpl;

  factory _UnrecognizedKeysUnionFallbackFallback.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysUnionFallbackFallbackImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysUnionFallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysUnionFallbackFallbackImplCopyWith<
          _$UnrecognizedKeysUnionFallbackFallbackImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnrecognizedKeysUnionDefaultFallback
    _$UnrecognizedKeysUnionDefaultFallbackFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'first':
      return _UnrecognizedKeysUnionDefaultFallbackFirst.fromJson(json);
    case 'second':
      return _UnrecognizedKeysUnionDefaultFallbackSecond.fromJson(json);

    default:
      return _UnrecognizedKeysUnionDefaultFallback.fromJson(json);
  }
}

/// @nodoc
mixin _$UnrecognizedKeysUnionDefaultFallback {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int a) $default, {
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int a)? $default, {
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int a)? $default, {
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UnrecognizedKeysUnionDefaultFallback value) $default, {
    required TResult Function(_UnrecognizedKeysUnionDefaultFallbackFirst value)
        first,
    required TResult Function(_UnrecognizedKeysUnionDefaultFallbackSecond value)
        second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UnrecognizedKeysUnionDefaultFallback value)? $default, {
    TResult? Function(_UnrecognizedKeysUnionDefaultFallbackFirst value)? first,
    TResult? Function(_UnrecognizedKeysUnionDefaultFallbackSecond value)?
        second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UnrecognizedKeysUnionDefaultFallback value)? $default, {
    TResult Function(_UnrecognizedKeysUnionDefaultFallbackFirst value)? first,
    TResult Function(_UnrecognizedKeysUnionDefaultFallbackSecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UnrecognizedKeysUnionDefaultFallback to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnrecognizedKeysUnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnrecognizedKeysUnionDefaultFallbackCopyWith<
          UnrecognizedKeysUnionDefaultFallback>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnrecognizedKeysUnionDefaultFallbackCopyWith<$Res> {
  factory $UnrecognizedKeysUnionDefaultFallbackCopyWith(
          UnrecognizedKeysUnionDefaultFallback value,
          $Res Function(UnrecognizedKeysUnionDefaultFallback) then) =
      _$UnrecognizedKeysUnionDefaultFallbackCopyWithImpl<$Res,
          UnrecognizedKeysUnionDefaultFallback>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$UnrecognizedKeysUnionDefaultFallbackCopyWithImpl<$Res,
        $Val extends UnrecognizedKeysUnionDefaultFallback>
    implements $UnrecognizedKeysUnionDefaultFallbackCopyWith<$Res> {
  _$UnrecognizedKeysUnionDefaultFallbackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnrecognizedKeysUnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnrecognizedKeysUnionDefaultFallbackImplCopyWith<$Res>
    implements $UnrecognizedKeysUnionDefaultFallbackCopyWith<$Res> {
  factory _$$UnrecognizedKeysUnionDefaultFallbackImplCopyWith(
          _$UnrecognizedKeysUnionDefaultFallbackImpl value,
          $Res Function(_$UnrecognizedKeysUnionDefaultFallbackImpl) then) =
      __$$UnrecognizedKeysUnionDefaultFallbackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysUnionDefaultFallbackImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysUnionDefaultFallbackCopyWithImpl<$Res,
        _$UnrecognizedKeysUnionDefaultFallbackImpl>
    implements _$$UnrecognizedKeysUnionDefaultFallbackImplCopyWith<$Res> {
  __$$UnrecognizedKeysUnionDefaultFallbackImplCopyWithImpl(
      _$UnrecognizedKeysUnionDefaultFallbackImpl _value,
      $Res Function(_$UnrecognizedKeysUnionDefaultFallbackImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysUnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysUnionDefaultFallbackImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysUnionDefaultFallbackImpl
    implements _UnrecognizedKeysUnionDefaultFallback {
  const _$UnrecognizedKeysUnionDefaultFallbackImpl(this.a,
      {final String? $type})
      : $type = $type ?? 'default';

  factory _$UnrecognizedKeysUnionDefaultFallbackImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysUnionDefaultFallbackImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysUnionDefaultFallback(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysUnionDefaultFallbackImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysUnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysUnionDefaultFallbackImplCopyWith<
          _$UnrecognizedKeysUnionDefaultFallbackImpl>
      get copyWith => __$$UnrecognizedKeysUnionDefaultFallbackImplCopyWithImpl<
          _$UnrecognizedKeysUnionDefaultFallbackImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int a) $default, {
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return $default(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int a)? $default, {
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return $default?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int a)? $default, {
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UnrecognizedKeysUnionDefaultFallback value) $default, {
    required TResult Function(_UnrecognizedKeysUnionDefaultFallbackFirst value)
        first,
    required TResult Function(_UnrecognizedKeysUnionDefaultFallbackSecond value)
        second,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UnrecognizedKeysUnionDefaultFallback value)? $default, {
    TResult? Function(_UnrecognizedKeysUnionDefaultFallbackFirst value)? first,
    TResult? Function(_UnrecognizedKeysUnionDefaultFallbackSecond value)?
        second,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UnrecognizedKeysUnionDefaultFallback value)? $default, {
    TResult Function(_UnrecognizedKeysUnionDefaultFallbackFirst value)? first,
    TResult Function(_UnrecognizedKeysUnionDefaultFallbackSecond value)? second,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysUnionDefaultFallbackImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysUnionDefaultFallback
    implements UnrecognizedKeysUnionDefaultFallback {
  const factory _UnrecognizedKeysUnionDefaultFallback(final int a) =
      _$UnrecognizedKeysUnionDefaultFallbackImpl;

  factory _UnrecognizedKeysUnionDefaultFallback.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysUnionDefaultFallbackImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysUnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysUnionDefaultFallbackImplCopyWith<
          _$UnrecognizedKeysUnionDefaultFallbackImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnrecognizedKeysUnionDefaultFallbackFirstImplCopyWith<$Res>
    implements $UnrecognizedKeysUnionDefaultFallbackCopyWith<$Res> {
  factory _$$UnrecognizedKeysUnionDefaultFallbackFirstImplCopyWith(
          _$UnrecognizedKeysUnionDefaultFallbackFirstImpl value,
          $Res Function(_$UnrecognizedKeysUnionDefaultFallbackFirstImpl) then) =
      __$$UnrecognizedKeysUnionDefaultFallbackFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysUnionDefaultFallbackFirstImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysUnionDefaultFallbackCopyWithImpl<$Res,
        _$UnrecognizedKeysUnionDefaultFallbackFirstImpl>
    implements _$$UnrecognizedKeysUnionDefaultFallbackFirstImplCopyWith<$Res> {
  __$$UnrecognizedKeysUnionDefaultFallbackFirstImplCopyWithImpl(
      _$UnrecognizedKeysUnionDefaultFallbackFirstImpl _value,
      $Res Function(_$UnrecognizedKeysUnionDefaultFallbackFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysUnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysUnionDefaultFallbackFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysUnionDefaultFallbackFirstImpl
    implements _UnrecognizedKeysUnionDefaultFallbackFirst {
  const _$UnrecognizedKeysUnionDefaultFallbackFirstImpl(this.a,
      {final String? $type})
      : $type = $type ?? 'first';

  factory _$UnrecognizedKeysUnionDefaultFallbackFirstImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysUnionDefaultFallbackFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysUnionDefaultFallback.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysUnionDefaultFallbackFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysUnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysUnionDefaultFallbackFirstImplCopyWith<
          _$UnrecognizedKeysUnionDefaultFallbackFirstImpl>
      get copyWith =>
          __$$UnrecognizedKeysUnionDefaultFallbackFirstImplCopyWithImpl<
                  _$UnrecognizedKeysUnionDefaultFallbackFirstImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int a) $default, {
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int a)? $default, {
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int a)? $default, {
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UnrecognizedKeysUnionDefaultFallback value) $default, {
    required TResult Function(_UnrecognizedKeysUnionDefaultFallbackFirst value)
        first,
    required TResult Function(_UnrecognizedKeysUnionDefaultFallbackSecond value)
        second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UnrecognizedKeysUnionDefaultFallback value)? $default, {
    TResult? Function(_UnrecognizedKeysUnionDefaultFallbackFirst value)? first,
    TResult? Function(_UnrecognizedKeysUnionDefaultFallbackSecond value)?
        second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UnrecognizedKeysUnionDefaultFallback value)? $default, {
    TResult Function(_UnrecognizedKeysUnionDefaultFallbackFirst value)? first,
    TResult Function(_UnrecognizedKeysUnionDefaultFallbackSecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysUnionDefaultFallbackFirstImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysUnionDefaultFallbackFirst
    implements UnrecognizedKeysUnionDefaultFallback {
  const factory _UnrecognizedKeysUnionDefaultFallbackFirst(final int a) =
      _$UnrecognizedKeysUnionDefaultFallbackFirstImpl;

  factory _UnrecognizedKeysUnionDefaultFallbackFirst.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysUnionDefaultFallbackFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysUnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysUnionDefaultFallbackFirstImplCopyWith<
          _$UnrecognizedKeysUnionDefaultFallbackFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnrecognizedKeysUnionDefaultFallbackSecondImplCopyWith<$Res>
    implements $UnrecognizedKeysUnionDefaultFallbackCopyWith<$Res> {
  factory _$$UnrecognizedKeysUnionDefaultFallbackSecondImplCopyWith(
          _$UnrecognizedKeysUnionDefaultFallbackSecondImpl value,
          $Res Function(_$UnrecognizedKeysUnionDefaultFallbackSecondImpl)
              then) =
      __$$UnrecognizedKeysUnionDefaultFallbackSecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysUnionDefaultFallbackSecondImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysUnionDefaultFallbackCopyWithImpl<$Res,
        _$UnrecognizedKeysUnionDefaultFallbackSecondImpl>
    implements _$$UnrecognizedKeysUnionDefaultFallbackSecondImplCopyWith<$Res> {
  __$$UnrecognizedKeysUnionDefaultFallbackSecondImplCopyWithImpl(
      _$UnrecognizedKeysUnionDefaultFallbackSecondImpl _value,
      $Res Function(_$UnrecognizedKeysUnionDefaultFallbackSecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysUnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysUnionDefaultFallbackSecondImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysUnionDefaultFallbackSecondImpl
    implements _UnrecognizedKeysUnionDefaultFallbackSecond {
  const _$UnrecognizedKeysUnionDefaultFallbackSecondImpl(this.a,
      {final String? $type})
      : $type = $type ?? 'second';

  factory _$UnrecognizedKeysUnionDefaultFallbackSecondImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysUnionDefaultFallbackSecondImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysUnionDefaultFallback.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysUnionDefaultFallbackSecondImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysUnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysUnionDefaultFallbackSecondImplCopyWith<
          _$UnrecognizedKeysUnionDefaultFallbackSecondImpl>
      get copyWith =>
          __$$UnrecognizedKeysUnionDefaultFallbackSecondImplCopyWithImpl<
                  _$UnrecognizedKeysUnionDefaultFallbackSecondImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(int a) $default, {
    required TResult Function(int a) first,
    required TResult Function(int a) second,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int a)? $default, {
    TResult? Function(int a)? first,
    TResult? Function(int a)? second,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int a)? $default, {
    TResult Function(int a)? first,
    TResult Function(int a)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UnrecognizedKeysUnionDefaultFallback value) $default, {
    required TResult Function(_UnrecognizedKeysUnionDefaultFallbackFirst value)
        first,
    required TResult Function(_UnrecognizedKeysUnionDefaultFallbackSecond value)
        second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_UnrecognizedKeysUnionDefaultFallback value)? $default, {
    TResult? Function(_UnrecognizedKeysUnionDefaultFallbackFirst value)? first,
    TResult? Function(_UnrecognizedKeysUnionDefaultFallbackSecond value)?
        second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UnrecognizedKeysUnionDefaultFallback value)? $default, {
    TResult Function(_UnrecognizedKeysUnionDefaultFallbackFirst value)? first,
    TResult Function(_UnrecognizedKeysUnionDefaultFallbackSecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysUnionDefaultFallbackSecondImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysUnionDefaultFallbackSecond
    implements UnrecognizedKeysUnionDefaultFallback {
  const factory _UnrecognizedKeysUnionDefaultFallbackSecond(final int a) =
      _$UnrecognizedKeysUnionDefaultFallbackSecondImpl;

  factory _UnrecognizedKeysUnionDefaultFallbackSecond.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysUnionDefaultFallbackSecondImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysUnionDefaultFallback
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysUnionDefaultFallbackSecondImplCopyWith<
          _$UnrecognizedKeysUnionDefaultFallbackSecondImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnrecognizedKeysUnionValueCasePascal
    _$UnrecognizedKeysUnionValueCasePascalFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'First':
      return _UnrecognizedKeysUnionValueCasePascalFirst.fromJson(json);
    case 'SecondValue':
      return _UnrecognizedKeysUnionValueCasePascalSecondValue.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'UnrecognizedKeysUnionValueCasePascal',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UnrecognizedKeysUnionValueCasePascal {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysUnionValueCasePascalFirst value)
        first,
    required TResult Function(
            _UnrecognizedKeysUnionValueCasePascalSecondValue value)
        secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysUnionValueCasePascalFirst value)? first,
    TResult? Function(_UnrecognizedKeysUnionValueCasePascalSecondValue value)?
        secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysUnionValueCasePascalFirst value)? first,
    TResult Function(_UnrecognizedKeysUnionValueCasePascalSecondValue value)?
        secondValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UnrecognizedKeysUnionValueCasePascal to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnrecognizedKeysUnionValueCasePascal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnrecognizedKeysUnionValueCasePascalCopyWith<
          UnrecognizedKeysUnionValueCasePascal>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnrecognizedKeysUnionValueCasePascalCopyWith<$Res> {
  factory $UnrecognizedKeysUnionValueCasePascalCopyWith(
          UnrecognizedKeysUnionValueCasePascal value,
          $Res Function(UnrecognizedKeysUnionValueCasePascal) then) =
      _$UnrecognizedKeysUnionValueCasePascalCopyWithImpl<$Res,
          UnrecognizedKeysUnionValueCasePascal>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$UnrecognizedKeysUnionValueCasePascalCopyWithImpl<$Res,
        $Val extends UnrecognizedKeysUnionValueCasePascal>
    implements $UnrecognizedKeysUnionValueCasePascalCopyWith<$Res> {
  _$UnrecognizedKeysUnionValueCasePascalCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnrecognizedKeysUnionValueCasePascal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnrecognizedKeysUnionValueCasePascalFirstImplCopyWith<$Res>
    implements $UnrecognizedKeysUnionValueCasePascalCopyWith<$Res> {
  factory _$$UnrecognizedKeysUnionValueCasePascalFirstImplCopyWith(
          _$UnrecognizedKeysUnionValueCasePascalFirstImpl value,
          $Res Function(_$UnrecognizedKeysUnionValueCasePascalFirstImpl) then) =
      __$$UnrecognizedKeysUnionValueCasePascalFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysUnionValueCasePascalFirstImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysUnionValueCasePascalCopyWithImpl<$Res,
        _$UnrecognizedKeysUnionValueCasePascalFirstImpl>
    implements _$$UnrecognizedKeysUnionValueCasePascalFirstImplCopyWith<$Res> {
  __$$UnrecognizedKeysUnionValueCasePascalFirstImplCopyWithImpl(
      _$UnrecognizedKeysUnionValueCasePascalFirstImpl _value,
      $Res Function(_$UnrecognizedKeysUnionValueCasePascalFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysUnionValueCasePascal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysUnionValueCasePascalFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysUnionValueCasePascalFirstImpl
    implements _UnrecognizedKeysUnionValueCasePascalFirst {
  const _$UnrecognizedKeysUnionValueCasePascalFirstImpl(this.a,
      {final String? $type})
      : $type = $type ?? 'First';

  factory _$UnrecognizedKeysUnionValueCasePascalFirstImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysUnionValueCasePascalFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysUnionValueCasePascal.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysUnionValueCasePascalFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysUnionValueCasePascal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysUnionValueCasePascalFirstImplCopyWith<
          _$UnrecognizedKeysUnionValueCasePascalFirstImpl>
      get copyWith =>
          __$$UnrecognizedKeysUnionValueCasePascalFirstImplCopyWithImpl<
                  _$UnrecognizedKeysUnionValueCasePascalFirstImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysUnionValueCasePascalFirst value)
        first,
    required TResult Function(
            _UnrecognizedKeysUnionValueCasePascalSecondValue value)
        secondValue,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysUnionValueCasePascalFirst value)? first,
    TResult? Function(_UnrecognizedKeysUnionValueCasePascalSecondValue value)?
        secondValue,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysUnionValueCasePascalFirst value)? first,
    TResult Function(_UnrecognizedKeysUnionValueCasePascalSecondValue value)?
        secondValue,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysUnionValueCasePascalFirstImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysUnionValueCasePascalFirst
    implements UnrecognizedKeysUnionValueCasePascal {
  const factory _UnrecognizedKeysUnionValueCasePascalFirst(final int a) =
      _$UnrecognizedKeysUnionValueCasePascalFirstImpl;

  factory _UnrecognizedKeysUnionValueCasePascalFirst.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysUnionValueCasePascalFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysUnionValueCasePascal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysUnionValueCasePascalFirstImplCopyWith<
          _$UnrecognizedKeysUnionValueCasePascalFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnrecognizedKeysUnionValueCasePascalSecondValueImplCopyWith<
    $Res> implements $UnrecognizedKeysUnionValueCasePascalCopyWith<$Res> {
  factory _$$UnrecognizedKeysUnionValueCasePascalSecondValueImplCopyWith(
          _$UnrecognizedKeysUnionValueCasePascalSecondValueImpl value,
          $Res Function(_$UnrecognizedKeysUnionValueCasePascalSecondValueImpl)
              then) =
      __$$UnrecognizedKeysUnionValueCasePascalSecondValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysUnionValueCasePascalSecondValueImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysUnionValueCasePascalCopyWithImpl<$Res,
        _$UnrecognizedKeysUnionValueCasePascalSecondValueImpl>
    implements
        _$$UnrecognizedKeysUnionValueCasePascalSecondValueImplCopyWith<$Res> {
  __$$UnrecognizedKeysUnionValueCasePascalSecondValueImplCopyWithImpl(
      _$UnrecognizedKeysUnionValueCasePascalSecondValueImpl _value,
      $Res Function(_$UnrecognizedKeysUnionValueCasePascalSecondValueImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysUnionValueCasePascal
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysUnionValueCasePascalSecondValueImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysUnionValueCasePascalSecondValueImpl
    implements _UnrecognizedKeysUnionValueCasePascalSecondValue {
  const _$UnrecognizedKeysUnionValueCasePascalSecondValueImpl(this.a,
      {final String? $type})
      : $type = $type ?? 'SecondValue';

  factory _$UnrecognizedKeysUnionValueCasePascalSecondValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysUnionValueCasePascalSecondValueImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysUnionValueCasePascal.secondValue(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysUnionValueCasePascalSecondValueImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysUnionValueCasePascal
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysUnionValueCasePascalSecondValueImplCopyWith<
          _$UnrecognizedKeysUnionValueCasePascalSecondValueImpl>
      get copyWith =>
          __$$UnrecognizedKeysUnionValueCasePascalSecondValueImplCopyWithImpl<
                  _$UnrecognizedKeysUnionValueCasePascalSecondValueImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) {
    return secondValue(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) {
    return secondValue?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) {
    if (secondValue != null) {
      return secondValue(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysUnionValueCasePascalFirst value)
        first,
    required TResult Function(
            _UnrecognizedKeysUnionValueCasePascalSecondValue value)
        secondValue,
  }) {
    return secondValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysUnionValueCasePascalFirst value)? first,
    TResult? Function(_UnrecognizedKeysUnionValueCasePascalSecondValue value)?
        secondValue,
  }) {
    return secondValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysUnionValueCasePascalFirst value)? first,
    TResult Function(_UnrecognizedKeysUnionValueCasePascalSecondValue value)?
        secondValue,
    required TResult orElse(),
  }) {
    if (secondValue != null) {
      return secondValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysUnionValueCasePascalSecondValueImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysUnionValueCasePascalSecondValue
    implements UnrecognizedKeysUnionValueCasePascal {
  const factory _UnrecognizedKeysUnionValueCasePascalSecondValue(final int a) =
      _$UnrecognizedKeysUnionValueCasePascalSecondValueImpl;

  factory _UnrecognizedKeysUnionValueCasePascalSecondValue.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysUnionValueCasePascalSecondValueImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysUnionValueCasePascal
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysUnionValueCasePascalSecondValueImplCopyWith<
          _$UnrecognizedKeysUnionValueCasePascalSecondValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnrecognizedKeysUnionValueCaseKebab
    _$UnrecognizedKeysUnionValueCaseKebabFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'first':
      return _UnrecognizedKeysUnionValueCaseKebabFirst.fromJson(json);
    case 'second-value':
      return _UnrecognizedKeysUnionValueCaseKebabSecondValue.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'UnrecognizedKeysUnionValueCaseKebab',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UnrecognizedKeysUnionValueCaseKebab {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysUnionValueCaseKebabFirst value)
        first,
    required TResult Function(
            _UnrecognizedKeysUnionValueCaseKebabSecondValue value)
        secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysUnionValueCaseKebabFirst value)? first,
    TResult? Function(_UnrecognizedKeysUnionValueCaseKebabSecondValue value)?
        secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysUnionValueCaseKebabFirst value)? first,
    TResult Function(_UnrecognizedKeysUnionValueCaseKebabSecondValue value)?
        secondValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UnrecognizedKeysUnionValueCaseKebab to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnrecognizedKeysUnionValueCaseKebab
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnrecognizedKeysUnionValueCaseKebabCopyWith<
          UnrecognizedKeysUnionValueCaseKebab>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnrecognizedKeysUnionValueCaseKebabCopyWith<$Res> {
  factory $UnrecognizedKeysUnionValueCaseKebabCopyWith(
          UnrecognizedKeysUnionValueCaseKebab value,
          $Res Function(UnrecognizedKeysUnionValueCaseKebab) then) =
      _$UnrecognizedKeysUnionValueCaseKebabCopyWithImpl<$Res,
          UnrecognizedKeysUnionValueCaseKebab>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$UnrecognizedKeysUnionValueCaseKebabCopyWithImpl<$Res,
        $Val extends UnrecognizedKeysUnionValueCaseKebab>
    implements $UnrecognizedKeysUnionValueCaseKebabCopyWith<$Res> {
  _$UnrecognizedKeysUnionValueCaseKebabCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnrecognizedKeysUnionValueCaseKebab
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnrecognizedKeysUnionValueCaseKebabFirstImplCopyWith<$Res>
    implements $UnrecognizedKeysUnionValueCaseKebabCopyWith<$Res> {
  factory _$$UnrecognizedKeysUnionValueCaseKebabFirstImplCopyWith(
          _$UnrecognizedKeysUnionValueCaseKebabFirstImpl value,
          $Res Function(_$UnrecognizedKeysUnionValueCaseKebabFirstImpl) then) =
      __$$UnrecognizedKeysUnionValueCaseKebabFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysUnionValueCaseKebabFirstImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysUnionValueCaseKebabCopyWithImpl<$Res,
        _$UnrecognizedKeysUnionValueCaseKebabFirstImpl>
    implements _$$UnrecognizedKeysUnionValueCaseKebabFirstImplCopyWith<$Res> {
  __$$UnrecognizedKeysUnionValueCaseKebabFirstImplCopyWithImpl(
      _$UnrecognizedKeysUnionValueCaseKebabFirstImpl _value,
      $Res Function(_$UnrecognizedKeysUnionValueCaseKebabFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysUnionValueCaseKebab
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysUnionValueCaseKebabFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysUnionValueCaseKebabFirstImpl
    implements _UnrecognizedKeysUnionValueCaseKebabFirst {
  const _$UnrecognizedKeysUnionValueCaseKebabFirstImpl(this.a,
      {final String? $type})
      : $type = $type ?? 'first';

  factory _$UnrecognizedKeysUnionValueCaseKebabFirstImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysUnionValueCaseKebabFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysUnionValueCaseKebab.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysUnionValueCaseKebabFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysUnionValueCaseKebab
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysUnionValueCaseKebabFirstImplCopyWith<
          _$UnrecognizedKeysUnionValueCaseKebabFirstImpl>
      get copyWith =>
          __$$UnrecognizedKeysUnionValueCaseKebabFirstImplCopyWithImpl<
              _$UnrecognizedKeysUnionValueCaseKebabFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysUnionValueCaseKebabFirst value)
        first,
    required TResult Function(
            _UnrecognizedKeysUnionValueCaseKebabSecondValue value)
        secondValue,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysUnionValueCaseKebabFirst value)? first,
    TResult? Function(_UnrecognizedKeysUnionValueCaseKebabSecondValue value)?
        secondValue,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysUnionValueCaseKebabFirst value)? first,
    TResult Function(_UnrecognizedKeysUnionValueCaseKebabSecondValue value)?
        secondValue,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysUnionValueCaseKebabFirstImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysUnionValueCaseKebabFirst
    implements UnrecognizedKeysUnionValueCaseKebab {
  const factory _UnrecognizedKeysUnionValueCaseKebabFirst(final int a) =
      _$UnrecognizedKeysUnionValueCaseKebabFirstImpl;

  factory _UnrecognizedKeysUnionValueCaseKebabFirst.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysUnionValueCaseKebabFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysUnionValueCaseKebab
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysUnionValueCaseKebabFirstImplCopyWith<
          _$UnrecognizedKeysUnionValueCaseKebabFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnrecognizedKeysUnionValueCaseKebabSecondValueImplCopyWith<
    $Res> implements $UnrecognizedKeysUnionValueCaseKebabCopyWith<$Res> {
  factory _$$UnrecognizedKeysUnionValueCaseKebabSecondValueImplCopyWith(
          _$UnrecognizedKeysUnionValueCaseKebabSecondValueImpl value,
          $Res Function(_$UnrecognizedKeysUnionValueCaseKebabSecondValueImpl)
              then) =
      __$$UnrecognizedKeysUnionValueCaseKebabSecondValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysUnionValueCaseKebabSecondValueImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysUnionValueCaseKebabCopyWithImpl<$Res,
        _$UnrecognizedKeysUnionValueCaseKebabSecondValueImpl>
    implements
        _$$UnrecognizedKeysUnionValueCaseKebabSecondValueImplCopyWith<$Res> {
  __$$UnrecognizedKeysUnionValueCaseKebabSecondValueImplCopyWithImpl(
      _$UnrecognizedKeysUnionValueCaseKebabSecondValueImpl _value,
      $Res Function(_$UnrecognizedKeysUnionValueCaseKebabSecondValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysUnionValueCaseKebab
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysUnionValueCaseKebabSecondValueImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysUnionValueCaseKebabSecondValueImpl
    implements _UnrecognizedKeysUnionValueCaseKebabSecondValue {
  const _$UnrecognizedKeysUnionValueCaseKebabSecondValueImpl(this.a,
      {final String? $type})
      : $type = $type ?? 'second-value';

  factory _$UnrecognizedKeysUnionValueCaseKebabSecondValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysUnionValueCaseKebabSecondValueImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysUnionValueCaseKebab.secondValue(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysUnionValueCaseKebabSecondValueImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysUnionValueCaseKebab
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysUnionValueCaseKebabSecondValueImplCopyWith<
          _$UnrecognizedKeysUnionValueCaseKebabSecondValueImpl>
      get copyWith =>
          __$$UnrecognizedKeysUnionValueCaseKebabSecondValueImplCopyWithImpl<
                  _$UnrecognizedKeysUnionValueCaseKebabSecondValueImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) {
    return secondValue(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) {
    return secondValue?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) {
    if (secondValue != null) {
      return secondValue(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysUnionValueCaseKebabFirst value)
        first,
    required TResult Function(
            _UnrecognizedKeysUnionValueCaseKebabSecondValue value)
        secondValue,
  }) {
    return secondValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysUnionValueCaseKebabFirst value)? first,
    TResult? Function(_UnrecognizedKeysUnionValueCaseKebabSecondValue value)?
        secondValue,
  }) {
    return secondValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysUnionValueCaseKebabFirst value)? first,
    TResult Function(_UnrecognizedKeysUnionValueCaseKebabSecondValue value)?
        secondValue,
    required TResult orElse(),
  }) {
    if (secondValue != null) {
      return secondValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysUnionValueCaseKebabSecondValueImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysUnionValueCaseKebabSecondValue
    implements UnrecognizedKeysUnionValueCaseKebab {
  const factory _UnrecognizedKeysUnionValueCaseKebabSecondValue(final int a) =
      _$UnrecognizedKeysUnionValueCaseKebabSecondValueImpl;

  factory _UnrecognizedKeysUnionValueCaseKebabSecondValue.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysUnionValueCaseKebabSecondValueImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysUnionValueCaseKebab
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysUnionValueCaseKebabSecondValueImplCopyWith<
          _$UnrecognizedKeysUnionValueCaseKebabSecondValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnrecognizedKeysUnionValueCaseSnake
    _$UnrecognizedKeysUnionValueCaseSnakeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'first':
      return _UnrecognizedKeysUnionValueCaseSnakeFirst.fromJson(json);
    case 'second_value':
      return _UnrecognizedKeysUnionValueCaseSnakeSecondValue.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'UnrecognizedKeysUnionValueCaseSnake',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UnrecognizedKeysUnionValueCaseSnake {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysUnionValueCaseSnakeFirst value)
        first,
    required TResult Function(
            _UnrecognizedKeysUnionValueCaseSnakeSecondValue value)
        secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysUnionValueCaseSnakeFirst value)? first,
    TResult? Function(_UnrecognizedKeysUnionValueCaseSnakeSecondValue value)?
        secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysUnionValueCaseSnakeFirst value)? first,
    TResult Function(_UnrecognizedKeysUnionValueCaseSnakeSecondValue value)?
        secondValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UnrecognizedKeysUnionValueCaseSnake to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnrecognizedKeysUnionValueCaseSnake
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnrecognizedKeysUnionValueCaseSnakeCopyWith<
          UnrecognizedKeysUnionValueCaseSnake>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnrecognizedKeysUnionValueCaseSnakeCopyWith<$Res> {
  factory $UnrecognizedKeysUnionValueCaseSnakeCopyWith(
          UnrecognizedKeysUnionValueCaseSnake value,
          $Res Function(UnrecognizedKeysUnionValueCaseSnake) then) =
      _$UnrecognizedKeysUnionValueCaseSnakeCopyWithImpl<$Res,
          UnrecognizedKeysUnionValueCaseSnake>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$UnrecognizedKeysUnionValueCaseSnakeCopyWithImpl<$Res,
        $Val extends UnrecognizedKeysUnionValueCaseSnake>
    implements $UnrecognizedKeysUnionValueCaseSnakeCopyWith<$Res> {
  _$UnrecognizedKeysUnionValueCaseSnakeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnrecognizedKeysUnionValueCaseSnake
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnrecognizedKeysUnionValueCaseSnakeFirstImplCopyWith<$Res>
    implements $UnrecognizedKeysUnionValueCaseSnakeCopyWith<$Res> {
  factory _$$UnrecognizedKeysUnionValueCaseSnakeFirstImplCopyWith(
          _$UnrecognizedKeysUnionValueCaseSnakeFirstImpl value,
          $Res Function(_$UnrecognizedKeysUnionValueCaseSnakeFirstImpl) then) =
      __$$UnrecognizedKeysUnionValueCaseSnakeFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysUnionValueCaseSnakeFirstImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysUnionValueCaseSnakeCopyWithImpl<$Res,
        _$UnrecognizedKeysUnionValueCaseSnakeFirstImpl>
    implements _$$UnrecognizedKeysUnionValueCaseSnakeFirstImplCopyWith<$Res> {
  __$$UnrecognizedKeysUnionValueCaseSnakeFirstImplCopyWithImpl(
      _$UnrecognizedKeysUnionValueCaseSnakeFirstImpl _value,
      $Res Function(_$UnrecognizedKeysUnionValueCaseSnakeFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysUnionValueCaseSnake
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysUnionValueCaseSnakeFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysUnionValueCaseSnakeFirstImpl
    implements _UnrecognizedKeysUnionValueCaseSnakeFirst {
  const _$UnrecognizedKeysUnionValueCaseSnakeFirstImpl(this.a,
      {final String? $type})
      : $type = $type ?? 'first';

  factory _$UnrecognizedKeysUnionValueCaseSnakeFirstImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysUnionValueCaseSnakeFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysUnionValueCaseSnake.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysUnionValueCaseSnakeFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysUnionValueCaseSnake
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysUnionValueCaseSnakeFirstImplCopyWith<
          _$UnrecognizedKeysUnionValueCaseSnakeFirstImpl>
      get copyWith =>
          __$$UnrecognizedKeysUnionValueCaseSnakeFirstImplCopyWithImpl<
              _$UnrecognizedKeysUnionValueCaseSnakeFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysUnionValueCaseSnakeFirst value)
        first,
    required TResult Function(
            _UnrecognizedKeysUnionValueCaseSnakeSecondValue value)
        secondValue,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysUnionValueCaseSnakeFirst value)? first,
    TResult? Function(_UnrecognizedKeysUnionValueCaseSnakeSecondValue value)?
        secondValue,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysUnionValueCaseSnakeFirst value)? first,
    TResult Function(_UnrecognizedKeysUnionValueCaseSnakeSecondValue value)?
        secondValue,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysUnionValueCaseSnakeFirstImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysUnionValueCaseSnakeFirst
    implements UnrecognizedKeysUnionValueCaseSnake {
  const factory _UnrecognizedKeysUnionValueCaseSnakeFirst(final int a) =
      _$UnrecognizedKeysUnionValueCaseSnakeFirstImpl;

  factory _UnrecognizedKeysUnionValueCaseSnakeFirst.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysUnionValueCaseSnakeFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysUnionValueCaseSnake
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysUnionValueCaseSnakeFirstImplCopyWith<
          _$UnrecognizedKeysUnionValueCaseSnakeFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnrecognizedKeysUnionValueCaseSnakeSecondValueImplCopyWith<
    $Res> implements $UnrecognizedKeysUnionValueCaseSnakeCopyWith<$Res> {
  factory _$$UnrecognizedKeysUnionValueCaseSnakeSecondValueImplCopyWith(
          _$UnrecognizedKeysUnionValueCaseSnakeSecondValueImpl value,
          $Res Function(_$UnrecognizedKeysUnionValueCaseSnakeSecondValueImpl)
              then) =
      __$$UnrecognizedKeysUnionValueCaseSnakeSecondValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysUnionValueCaseSnakeSecondValueImplCopyWithImpl<$Res>
    extends _$UnrecognizedKeysUnionValueCaseSnakeCopyWithImpl<$Res,
        _$UnrecognizedKeysUnionValueCaseSnakeSecondValueImpl>
    implements
        _$$UnrecognizedKeysUnionValueCaseSnakeSecondValueImplCopyWith<$Res> {
  __$$UnrecognizedKeysUnionValueCaseSnakeSecondValueImplCopyWithImpl(
      _$UnrecognizedKeysUnionValueCaseSnakeSecondValueImpl _value,
      $Res Function(_$UnrecognizedKeysUnionValueCaseSnakeSecondValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysUnionValueCaseSnake
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysUnionValueCaseSnakeSecondValueImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysUnionValueCaseSnakeSecondValueImpl
    implements _UnrecognizedKeysUnionValueCaseSnakeSecondValue {
  const _$UnrecognizedKeysUnionValueCaseSnakeSecondValueImpl(this.a,
      {final String? $type})
      : $type = $type ?? 'second_value';

  factory _$UnrecognizedKeysUnionValueCaseSnakeSecondValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysUnionValueCaseSnakeSecondValueImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysUnionValueCaseSnake.secondValue(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysUnionValueCaseSnakeSecondValueImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysUnionValueCaseSnake
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysUnionValueCaseSnakeSecondValueImplCopyWith<
          _$UnrecognizedKeysUnionValueCaseSnakeSecondValueImpl>
      get copyWith =>
          __$$UnrecognizedKeysUnionValueCaseSnakeSecondValueImplCopyWithImpl<
                  _$UnrecognizedKeysUnionValueCaseSnakeSecondValueImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) {
    return secondValue(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) {
    return secondValue?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) {
    if (secondValue != null) {
      return secondValue(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnrecognizedKeysUnionValueCaseSnakeFirst value)
        first,
    required TResult Function(
            _UnrecognizedKeysUnionValueCaseSnakeSecondValue value)
        secondValue,
  }) {
    return secondValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysUnionValueCaseSnakeFirst value)? first,
    TResult? Function(_UnrecognizedKeysUnionValueCaseSnakeSecondValue value)?
        secondValue,
  }) {
    return secondValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysUnionValueCaseSnakeFirst value)? first,
    TResult Function(_UnrecognizedKeysUnionValueCaseSnakeSecondValue value)?
        secondValue,
    required TResult orElse(),
  }) {
    if (secondValue != null) {
      return secondValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysUnionValueCaseSnakeSecondValueImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysUnionValueCaseSnakeSecondValue
    implements UnrecognizedKeysUnionValueCaseSnake {
  const factory _UnrecognizedKeysUnionValueCaseSnakeSecondValue(final int a) =
      _$UnrecognizedKeysUnionValueCaseSnakeSecondValueImpl;

  factory _UnrecognizedKeysUnionValueCaseSnakeSecondValue.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysUnionValueCaseSnakeSecondValueImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysUnionValueCaseSnake
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysUnionValueCaseSnakeSecondValueImplCopyWith<
          _$UnrecognizedKeysUnionValueCaseSnakeSecondValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

UnrecognizedKeysUnionValueCaseScreamingSnake
    _$UnrecognizedKeysUnionValueCaseScreamingSnakeFromJson(
        Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'FIRST':
      return _UnrecognizedKeysUnionValueCaseScreamingSnakeFirst.fromJson(json);
    case 'SECOND_VALUE':
      return _UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValue.fromJson(
          json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'UnrecognizedKeysUnionValueCaseScreamingSnake',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$UnrecognizedKeysUnionValueCaseScreamingSnake {
  int get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _UnrecognizedKeysUnionValueCaseScreamingSnakeFirst value)
        first,
    required TResult Function(
            _UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValue value)
        secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysUnionValueCaseScreamingSnakeFirst value)?
        first,
    TResult? Function(
            _UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValue value)?
        secondValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysUnionValueCaseScreamingSnakeFirst value)?
        first,
    TResult Function(
            _UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValue value)?
        secondValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this UnrecognizedKeysUnionValueCaseScreamingSnake to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UnrecognizedKeysUnionValueCaseScreamingSnake
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnrecognizedKeysUnionValueCaseScreamingSnakeCopyWith<
          UnrecognizedKeysUnionValueCaseScreamingSnake>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnrecognizedKeysUnionValueCaseScreamingSnakeCopyWith<$Res> {
  factory $UnrecognizedKeysUnionValueCaseScreamingSnakeCopyWith(
          UnrecognizedKeysUnionValueCaseScreamingSnake value,
          $Res Function(UnrecognizedKeysUnionValueCaseScreamingSnake) then) =
      _$UnrecognizedKeysUnionValueCaseScreamingSnakeCopyWithImpl<$Res,
          UnrecognizedKeysUnionValueCaseScreamingSnake>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$UnrecognizedKeysUnionValueCaseScreamingSnakeCopyWithImpl<$Res,
        $Val extends UnrecognizedKeysUnionValueCaseScreamingSnake>
    implements $UnrecognizedKeysUnionValueCaseScreamingSnakeCopyWith<$Res> {
  _$UnrecognizedKeysUnionValueCaseScreamingSnakeCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnrecognizedKeysUnionValueCaseScreamingSnake
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImplCopyWith<
        $Res>
    implements $UnrecognizedKeysUnionValueCaseScreamingSnakeCopyWith<$Res> {
  factory _$$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImplCopyWith(
          _$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImpl value,
          $Res Function(_$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImpl)
              then) =
      __$$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImplCopyWithImpl<
        $Res>
    extends _$UnrecognizedKeysUnionValueCaseScreamingSnakeCopyWithImpl<$Res,
        _$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImpl>
    implements
        _$$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImplCopyWith<$Res> {
  __$$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImplCopyWithImpl(
      _$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImpl _value,
      $Res Function(_$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysUnionValueCaseScreamingSnake
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImpl
    implements _UnrecognizedKeysUnionValueCaseScreamingSnakeFirst {
  const _$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImpl(this.a,
      {final String? $type})
      : $type = $type ?? 'FIRST';

  factory _$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImplFromJson(json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysUnionValueCaseScreamingSnake.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysUnionValueCaseScreamingSnake
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImplCopyWith<
          _$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImpl>
      get copyWith =>
          __$$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImplCopyWithImpl<
                  _$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _UnrecognizedKeysUnionValueCaseScreamingSnakeFirst value)
        first,
    required TResult Function(
            _UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValue value)
        secondValue,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysUnionValueCaseScreamingSnakeFirst value)?
        first,
    TResult? Function(
            _UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValue value)?
        secondValue,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysUnionValueCaseScreamingSnakeFirst value)?
        first,
    TResult Function(
            _UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValue value)?
        secondValue,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysUnionValueCaseScreamingSnakeFirst
    implements UnrecognizedKeysUnionValueCaseScreamingSnake {
  const factory _UnrecognizedKeysUnionValueCaseScreamingSnakeFirst(
      final int a) = _$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImpl;

  factory _UnrecognizedKeysUnionValueCaseScreamingSnakeFirst.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysUnionValueCaseScreamingSnake
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImplCopyWith<
          _$UnrecognizedKeysUnionValueCaseScreamingSnakeFirstImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImplCopyWith<
        $Res>
    implements $UnrecognizedKeysUnionValueCaseScreamingSnakeCopyWith<$Res> {
  factory _$$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImplCopyWith(
          _$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImpl value,
          $Res Function(
                  _$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImpl)
              then) =
      __$$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImplCopyWithImpl<
        $Res>
    extends _$UnrecognizedKeysUnionValueCaseScreamingSnakeCopyWithImpl<$Res,
        _$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImpl>
    implements
        _$$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImplCopyWith<
            $Res> {
  __$$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImplCopyWithImpl(
      _$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImpl _value,
      $Res Function(
              _$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImpl)
          _then)
      : super(_value, _then);

  /// Create a copy of UnrecognizedKeysUnionValueCaseScreamingSnake
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(disallowUnrecognizedKeys: true)
class _$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImpl
    implements _UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValue {
  const _$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImpl(this.a,
      {final String? $type})
      : $type = $type ?? 'SECOND_VALUE';

  factory _$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImplFromJson(
          json);

  @override
  final int a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UnrecognizedKeysUnionValueCaseScreamingSnake.secondValue(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other
                is _$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of UnrecognizedKeysUnionValueCaseScreamingSnake
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImplCopyWith<
          _$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImpl>
      get copyWith =>
          __$$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImplCopyWithImpl<
                  _$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(int a) secondValue,
  }) {
    return secondValue(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(int a)? secondValue,
  }) {
    return secondValue?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(int a)? secondValue,
    required TResult orElse(),
  }) {
    if (secondValue != null) {
      return secondValue(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _UnrecognizedKeysUnionValueCaseScreamingSnakeFirst value)
        first,
    required TResult Function(
            _UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValue value)
        secondValue,
  }) {
    return secondValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnrecognizedKeysUnionValueCaseScreamingSnakeFirst value)?
        first,
    TResult? Function(
            _UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValue value)?
        secondValue,
  }) {
    return secondValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnrecognizedKeysUnionValueCaseScreamingSnakeFirst value)?
        first,
    TResult Function(
            _UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValue value)?
        secondValue,
    required TResult orElse(),
  }) {
    if (secondValue != null) {
      return secondValue(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImplToJson(
      this,
    );
  }
}

abstract class _UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValue
    implements UnrecognizedKeysUnionValueCaseScreamingSnake {
  const factory _UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValue(
          final int a) =
      _$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImpl;

  factory _UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValue.fromJson(
          Map<String, dynamic> json) =
      _$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImpl.fromJson;

  @override
  int get a;

  /// Create a copy of UnrecognizedKeysUnionValueCaseScreamingSnake
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImplCopyWith<
          _$UnrecognizedKeysUnionValueCaseScreamingSnakeSecondValueImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Single _$SingleFromJson(Map<String, dynamic> json) {
  return _Single.fromJson(json);
}

/// @nodoc
mixin _$Single {
  int get a => throw _privateConstructorUsedError;

  /// Serializes this Single to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Single
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SingleCopyWith<Single> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleCopyWith<$Res> {
  factory $SingleCopyWith(Single value, $Res Function(Single) then) =
      _$SingleCopyWithImpl<$Res, Single>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$SingleCopyWithImpl<$Res, $Val extends Single>
    implements $SingleCopyWith<$Res> {
  _$SingleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Single
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SingleImplCopyWith<$Res> implements $SingleCopyWith<$Res> {
  factory _$$SingleImplCopyWith(
          _$SingleImpl value, $Res Function(_$SingleImpl) then) =
      __$$SingleImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$SingleImplCopyWithImpl<$Res>
    extends _$SingleCopyWithImpl<$Res, _$SingleImpl>
    implements _$$SingleImplCopyWith<$Res> {
  __$$SingleImplCopyWithImpl(
      _$SingleImpl _value, $Res Function(_$SingleImpl) _then)
      : super(_value, _then);

  /// Create a copy of Single
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$SingleImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SingleImpl implements _Single {
  const _$SingleImpl(this.a);

  factory _$SingleImpl.fromJson(Map<String, dynamic> json) =>
      _$$SingleImplFromJson(json);

  @override
  final int a;

  @override
  String toString() {
    return 'Single(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SingleImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of Single
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SingleImplCopyWith<_$SingleImpl> get copyWith =>
      __$$SingleImplCopyWithImpl<_$SingleImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SingleImplToJson(
      this,
    );
  }
}

abstract class _Single implements Single {
  const factory _Single(final int a) = _$SingleImpl;

  factory _Single.fromJson(Map<String, dynamic> json) = _$SingleImpl.fromJson;

  @override
  int get a;

  /// Create a copy of Single
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SingleImplCopyWith<_$SingleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Json _$JsonFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return JsonDefault.fromJson(json);
    case 'first':
      return First.fromJson(json);
    case 'second':
      return Second.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Json',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Json {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String a) first,
    required TResult Function(int b) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String a)? first,
    TResult? Function(int b)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String a)? first,
    TResult Function(int b)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(JsonDefault value) $default, {
    required TResult Function(First value) first,
    required TResult Function(Second value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(JsonDefault value)? $default, {
    TResult? Function(First value)? first,
    TResult? Function(Second value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(JsonDefault value)? $default, {
    TResult Function(First value)? first,
    TResult Function(Second value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Json to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JsonCopyWith<$Res> {
  factory $JsonCopyWith(Json value, $Res Function(Json) then) =
      _$JsonCopyWithImpl<$Res, Json>;
}

/// @nodoc
class _$JsonCopyWithImpl<$Res, $Val extends Json>
    implements $JsonCopyWith<$Res> {
  _$JsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Json
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$JsonDefaultImplCopyWith<$Res> {
  factory _$$JsonDefaultImplCopyWith(
          _$JsonDefaultImpl value, $Res Function(_$JsonDefaultImpl) then) =
      __$$JsonDefaultImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JsonDefaultImplCopyWithImpl<$Res>
    extends _$JsonCopyWithImpl<$Res, _$JsonDefaultImpl>
    implements _$$JsonDefaultImplCopyWith<$Res> {
  __$$JsonDefaultImplCopyWithImpl(
      _$JsonDefaultImpl _value, $Res Function(_$JsonDefaultImpl) _then)
      : super(_value, _then);

  /// Create a copy of Json
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$JsonDefaultImpl implements JsonDefault {
  const _$JsonDefaultImpl({final String? $type}) : $type = $type ?? 'default';

  factory _$JsonDefaultImpl.fromJson(Map<String, dynamic> json) =>
      _$$JsonDefaultImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Json()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JsonDefaultImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String a) first,
    required TResult Function(int b) second,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String a)? first,
    TResult? Function(int b)? second,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String a)? first,
    TResult Function(int b)? second,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(JsonDefault value) $default, {
    required TResult Function(First value) first,
    required TResult Function(Second value) second,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(JsonDefault value)? $default, {
    TResult? Function(First value)? first,
    TResult? Function(Second value)? second,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(JsonDefault value)? $default, {
    TResult Function(First value)? first,
    TResult Function(Second value)? second,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$JsonDefaultImplToJson(
      this,
    );
  }
}

abstract class JsonDefault implements Json {
  const factory JsonDefault() = _$JsonDefaultImpl;

  factory JsonDefault.fromJson(Map<String, dynamic> json) =
      _$JsonDefaultImpl.fromJson;
}

/// @nodoc
abstract class _$$FirstImplCopyWith<$Res> {
  factory _$$FirstImplCopyWith(
          _$FirstImpl value, $Res Function(_$FirstImpl) then) =
      __$$FirstImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String a});
}

/// @nodoc
class __$$FirstImplCopyWithImpl<$Res>
    extends _$JsonCopyWithImpl<$Res, _$FirstImpl>
    implements _$$FirstImplCopyWith<$Res> {
  __$$FirstImplCopyWithImpl(
      _$FirstImpl _value, $Res Function(_$FirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of Json
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$FirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirstImpl implements First {
  const _$FirstImpl(this.a, {final String? $type}) : $type = $type ?? 'first';

  factory _$FirstImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirstImplFromJson(json);

  @override
  final String a;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Json.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of Json
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstImplCopyWith<_$FirstImpl> get copyWith =>
      __$$FirstImplCopyWithImpl<_$FirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String a) first,
    required TResult Function(int b) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String a)? first,
    TResult? Function(int b)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String a)? first,
    TResult Function(int b)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(JsonDefault value) $default, {
    required TResult Function(First value) first,
    required TResult Function(Second value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(JsonDefault value)? $default, {
    TResult? Function(First value)? first,
    TResult? Function(Second value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(JsonDefault value)? $default, {
    TResult Function(First value)? first,
    TResult Function(Second value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FirstImplToJson(
      this,
    );
  }
}

abstract class First implements Json {
  const factory First(final String a) = _$FirstImpl;

  factory First.fromJson(Map<String, dynamic> json) = _$FirstImpl.fromJson;

  String get a;

  /// Create a copy of Json
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirstImplCopyWith<_$FirstImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SecondImplCopyWith<$Res> {
  factory _$$SecondImplCopyWith(
          _$SecondImpl value, $Res Function(_$SecondImpl) then) =
      __$$SecondImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int b});
}

/// @nodoc
class __$$SecondImplCopyWithImpl<$Res>
    extends _$JsonCopyWithImpl<$Res, _$SecondImpl>
    implements _$$SecondImplCopyWith<$Res> {
  __$$SecondImplCopyWithImpl(
      _$SecondImpl _value, $Res Function(_$SecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of Json
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? b = null,
  }) {
    return _then(_$SecondImpl(
      null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SecondImpl implements Second {
  const _$SecondImpl(this.b, {final String? $type}) : $type = $type ?? 'second';

  factory _$SecondImpl.fromJson(Map<String, dynamic> json) =>
      _$$SecondImplFromJson(json);

  @override
  final int b;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Json.second(b: $b)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecondImpl &&
            (identical(other.b, b) || other.b == b));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, b);

  /// Create a copy of Json
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SecondImplCopyWith<_$SecondImpl> get copyWith =>
      __$$SecondImplCopyWithImpl<_$SecondImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String a) first,
    required TResult Function(int b) second,
  }) {
    return second(b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String a)? first,
    TResult? Function(int b)? second,
  }) {
    return second?.call(b);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String a)? first,
    TResult Function(int b)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(b);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(JsonDefault value) $default, {
    required TResult Function(First value) first,
    required TResult Function(Second value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(JsonDefault value)? $default, {
    TResult? Function(First value)? first,
    TResult? Function(Second value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(JsonDefault value)? $default, {
    TResult Function(First value)? first,
    TResult Function(Second value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SecondImplToJson(
      this,
    );
  }
}

abstract class Second implements Json {
  const factory Second(final int b) = _$SecondImpl;

  factory Second.fromJson(Map<String, dynamic> json) = _$SecondImpl.fromJson;

  int get b;

  /// Create a copy of Json
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SecondImplCopyWith<_$SecondImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoJson {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String a) first,
    required TResult Function(int b) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String a)? first,
    TResult? Function(int b)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String a)? first,
    TResult Function(int b)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(NoDefault value) $default, {
    required TResult Function(NoFirst value) first,
    required TResult Function(NoSecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(NoDefault value)? $default, {
    TResult? Function(NoFirst value)? first,
    TResult? Function(NoSecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(NoDefault value)? $default, {
    TResult Function(NoFirst value)? first,
    TResult Function(NoSecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoJsonCopyWith<$Res> {
  factory $NoJsonCopyWith(NoJson value, $Res Function(NoJson) then) =
      _$NoJsonCopyWithImpl<$Res, NoJson>;
}

/// @nodoc
class _$NoJsonCopyWithImpl<$Res, $Val extends NoJson>
    implements $NoJsonCopyWith<$Res> {
  _$NoJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoJson
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NoDefaultImplCopyWith<$Res> {
  factory _$$NoDefaultImplCopyWith(
          _$NoDefaultImpl value, $Res Function(_$NoDefaultImpl) then) =
      __$$NoDefaultImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoDefaultImplCopyWithImpl<$Res>
    extends _$NoJsonCopyWithImpl<$Res, _$NoDefaultImpl>
    implements _$$NoDefaultImplCopyWith<$Res> {
  __$$NoDefaultImplCopyWithImpl(
      _$NoDefaultImpl _value, $Res Function(_$NoDefaultImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoJson
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoDefaultImpl implements NoDefault {
  const _$NoDefaultImpl();

  @override
  String toString() {
    return 'NoJson()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NoDefaultImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String a) first,
    required TResult Function(int b) second,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String a)? first,
    TResult? Function(int b)? second,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String a)? first,
    TResult Function(int b)? second,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(NoDefault value) $default, {
    required TResult Function(NoFirst value) first,
    required TResult Function(NoSecond value) second,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(NoDefault value)? $default, {
    TResult? Function(NoFirst value)? first,
    TResult? Function(NoSecond value)? second,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(NoDefault value)? $default, {
    TResult Function(NoFirst value)? first,
    TResult Function(NoSecond value)? second,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class NoDefault implements NoJson {
  const factory NoDefault() = _$NoDefaultImpl;
}

/// @nodoc
abstract class _$$NoFirstImplCopyWith<$Res> {
  factory _$$NoFirstImplCopyWith(
          _$NoFirstImpl value, $Res Function(_$NoFirstImpl) then) =
      __$$NoFirstImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String a});
}

/// @nodoc
class __$$NoFirstImplCopyWithImpl<$Res>
    extends _$NoJsonCopyWithImpl<$Res, _$NoFirstImpl>
    implements _$$NoFirstImplCopyWith<$Res> {
  __$$NoFirstImplCopyWithImpl(
      _$NoFirstImpl _value, $Res Function(_$NoFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$NoFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoFirstImpl implements NoFirst {
  const _$NoFirstImpl(this.a);

  @override
  final String a;

  @override
  String toString() {
    return 'NoJson.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoFirstImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of NoJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoFirstImplCopyWith<_$NoFirstImpl> get copyWith =>
      __$$NoFirstImplCopyWithImpl<_$NoFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String a) first,
    required TResult Function(int b) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String a)? first,
    TResult? Function(int b)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String a)? first,
    TResult Function(int b)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(NoDefault value) $default, {
    required TResult Function(NoFirst value) first,
    required TResult Function(NoSecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(NoDefault value)? $default, {
    TResult? Function(NoFirst value)? first,
    TResult? Function(NoSecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(NoDefault value)? $default, {
    TResult Function(NoFirst value)? first,
    TResult Function(NoSecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }
}

abstract class NoFirst implements NoJson {
  const factory NoFirst(final String a) = _$NoFirstImpl;

  String get a;

  /// Create a copy of NoJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoFirstImplCopyWith<_$NoFirstImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoSecondImplCopyWith<$Res> {
  factory _$$NoSecondImplCopyWith(
          _$NoSecondImpl value, $Res Function(_$NoSecondImpl) then) =
      __$$NoSecondImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int b});
}

/// @nodoc
class __$$NoSecondImplCopyWithImpl<$Res>
    extends _$NoJsonCopyWithImpl<$Res, _$NoSecondImpl>
    implements _$$NoSecondImplCopyWith<$Res> {
  __$$NoSecondImplCopyWithImpl(
      _$NoSecondImpl _value, $Res Function(_$NoSecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? b = null,
  }) {
    return _then(_$NoSecondImpl(
      null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$NoSecondImpl implements NoSecond {
  const _$NoSecondImpl(this.b);

  @override
  final int b;

  @override
  String toString() {
    return 'NoJson.second(b: $b)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoSecondImpl &&
            (identical(other.b, b) || other.b == b));
  }

  @override
  int get hashCode => Object.hash(runtimeType, b);

  /// Create a copy of NoJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoSecondImplCopyWith<_$NoSecondImpl> get copyWith =>
      __$$NoSecondImplCopyWithImpl<_$NoSecondImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(String a) first,
    required TResult Function(int b) second,
  }) {
    return second(b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(String a)? first,
    TResult? Function(int b)? second,
  }) {
    return second?.call(b);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(String a)? first,
    TResult Function(int b)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(b);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(NoDefault value) $default, {
    required TResult Function(NoFirst value) first,
    required TResult Function(NoSecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(NoDefault value)? $default, {
    TResult? Function(NoFirst value)? first,
    TResult? Function(NoSecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(NoDefault value)? $default, {
    TResult Function(NoFirst value)? first,
    TResult Function(NoSecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }
}

abstract class NoSecond implements NoJson {
  const factory NoSecond(final int b) = _$NoSecondImpl;

  int get b;

  /// Create a copy of NoJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoSecondImplCopyWith<_$NoSecondImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Decorator _$DecoratorFromJson(Map<String, dynamic> json) {
  return _Decorator.fromJson(json);
}

/// @nodoc
mixin _$Decorator {
  @JsonKey(name: 'what')
  String get a => throw _privateConstructorUsedError;

  /// Serializes this Decorator to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Decorator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DecoratorCopyWith<Decorator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecoratorCopyWith<$Res> {
  factory $DecoratorCopyWith(Decorator value, $Res Function(Decorator) then) =
      _$DecoratorCopyWithImpl<$Res, Decorator>;
  @useResult
  $Res call({@JsonKey(name: 'what') String a});
}

/// @nodoc
class _$DecoratorCopyWithImpl<$Res, $Val extends Decorator>
    implements $DecoratorCopyWith<$Res> {
  _$DecoratorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Decorator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_value.copyWith(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DecoratorImplCopyWith<$Res>
    implements $DecoratorCopyWith<$Res> {
  factory _$$DecoratorImplCopyWith(
          _$DecoratorImpl value, $Res Function(_$DecoratorImpl) then) =
      __$$DecoratorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'what') String a});
}

/// @nodoc
class __$$DecoratorImplCopyWithImpl<$Res>
    extends _$DecoratorCopyWithImpl<$Res, _$DecoratorImpl>
    implements _$$DecoratorImplCopyWith<$Res> {
  __$$DecoratorImplCopyWithImpl(
      _$DecoratorImpl _value, $Res Function(_$DecoratorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Decorator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$DecoratorImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DecoratorImpl implements _Decorator {
  _$DecoratorImpl(@JsonKey(name: 'what') this.a);

  factory _$DecoratorImpl.fromJson(Map<String, dynamic> json) =>
      _$$DecoratorImplFromJson(json);

  @override
  @JsonKey(name: 'what')
  final String a;

  @override
  String toString() {
    return 'Decorator(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecoratorImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of Decorator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecoratorImplCopyWith<_$DecoratorImpl> get copyWith =>
      __$$DecoratorImplCopyWithImpl<_$DecoratorImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DecoratorImplToJson(
      this,
    );
  }
}

abstract class _Decorator implements Decorator {
  factory _Decorator(@JsonKey(name: 'what') final String a) = _$DecoratorImpl;

  factory _Decorator.fromJson(Map<String, dynamic> json) =
      _$DecoratorImpl.fromJson;

  @override
  @JsonKey(name: 'what')
  String get a;

  /// Create a copy of Decorator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecoratorImplCopyWith<_$DecoratorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Generic<T> _$GenericFromJson<T>(Map<String, dynamic> json) {
  return _Generic<T>.fromJson(json);
}

/// @nodoc
mixin _$Generic<T> {
  @DataConverter()
  T get a => throw _privateConstructorUsedError;

  /// Serializes this Generic to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Generic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenericCopyWith<T, Generic<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericCopyWith<T, $Res> {
  factory $GenericCopyWith(Generic<T> value, $Res Function(Generic<T>) then) =
      _$GenericCopyWithImpl<T, $Res, Generic<T>>;
  @useResult
  $Res call({@DataConverter() T a});
}

/// @nodoc
class _$GenericCopyWithImpl<T, $Res, $Val extends Generic<T>>
    implements $GenericCopyWith<T, $Res> {
  _$GenericCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Generic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = freezed,
  }) {
    return _then(_value.copyWith(
      a: freezed == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenericImplCopyWith<T, $Res>
    implements $GenericCopyWith<T, $Res> {
  factory _$$GenericImplCopyWith(
          _$GenericImpl<T> value, $Res Function(_$GenericImpl<T>) then) =
      __$$GenericImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({@DataConverter() T a});
}

/// @nodoc
class __$$GenericImplCopyWithImpl<T, $Res>
    extends _$GenericCopyWithImpl<T, $Res, _$GenericImpl<T>>
    implements _$$GenericImplCopyWith<T, $Res> {
  __$$GenericImplCopyWithImpl(
      _$GenericImpl<T> _value, $Res Function(_$GenericImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Generic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = freezed,
  }) {
    return _then(_$GenericImpl<T>(
      freezed == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenericImpl<T> implements _Generic<T> {
  _$GenericImpl(@DataConverter() this.a);

  factory _$GenericImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenericImplFromJson(json);

  @override
  @DataConverter()
  final T a;

  @override
  String toString() {
    return 'Generic<$T>(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericImpl<T> &&
            const DeepCollectionEquality().equals(other.a, a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(a));

  /// Create a copy of Generic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericImplCopyWith<T, _$GenericImpl<T>> get copyWith =>
      __$$GenericImplCopyWithImpl<T, _$GenericImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenericImplToJson<T>(
      this,
    );
  }
}

abstract class _Generic<T> implements Generic<T> {
  factory _Generic(@DataConverter() final T a) = _$GenericImpl<T>;

  factory _Generic.fromJson(Map<String, dynamic> json) =
      _$GenericImpl<T>.fromJson;

  @override
  @DataConverter()
  T get a;

  /// Create a copy of Generic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericImplCopyWith<T, _$GenericImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

DefaultValue _$DefaultValueFromJson(Map<String, dynamic> json) {
  return _DefaultValue.fromJson(json);
}

/// @nodoc
mixin _$DefaultValue {
  int get value => throw _privateConstructorUsedError;

  /// Serializes this DefaultValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DefaultValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DefaultValueCopyWith<DefaultValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultValueCopyWith<$Res> {
  factory $DefaultValueCopyWith(
          DefaultValue value, $Res Function(DefaultValue) then) =
      _$DefaultValueCopyWithImpl<$Res, DefaultValue>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$DefaultValueCopyWithImpl<$Res, $Val extends DefaultValue>
    implements $DefaultValueCopyWith<$Res> {
  _$DefaultValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DefaultValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultValueImplCopyWith<$Res>
    implements $DefaultValueCopyWith<$Res> {
  factory _$$DefaultValueImplCopyWith(
          _$DefaultValueImpl value, $Res Function(_$DefaultValueImpl) then) =
      __$$DefaultValueImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$DefaultValueImplCopyWithImpl<$Res>
    extends _$DefaultValueCopyWithImpl<$Res, _$DefaultValueImpl>
    implements _$$DefaultValueImplCopyWith<$Res> {
  __$$DefaultValueImplCopyWithImpl(
      _$DefaultValueImpl _value, $Res Function(_$DefaultValueImpl) _then)
      : super(_value, _then);

  /// Create a copy of DefaultValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$DefaultValueImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefaultValueImpl implements _DefaultValue {
  _$DefaultValueImpl([this.value = 42]);

  factory _$DefaultValueImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefaultValueImplFromJson(json);

  @override
  @JsonKey()
  final int value;

  @override
  String toString() {
    return 'DefaultValue(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultValueImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of DefaultValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultValueImplCopyWith<_$DefaultValueImpl> get copyWith =>
      __$$DefaultValueImplCopyWithImpl<_$DefaultValueImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefaultValueImplToJson(
      this,
    );
  }
}

abstract class _DefaultValue implements DefaultValue {
  factory _DefaultValue([final int value]) = _$DefaultValueImpl;

  factory _DefaultValue.fromJson(Map<String, dynamic> json) =
      _$DefaultValueImpl.fromJson;

  @override
  int get value;

  /// Create a copy of DefaultValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DefaultValueImplCopyWith<_$DefaultValueImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DefaultValueJsonKey _$DefaultValueJsonKeyFromJson(Map<String, dynamic> json) {
  return _DefaultValueJsonKey.fromJson(json);
}

/// @nodoc
mixin _$DefaultValueJsonKey {
  @JsonKey(defaultValue: 21)
  int get value => throw _privateConstructorUsedError;

  /// Serializes this DefaultValueJsonKey to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DefaultValueJsonKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DefaultValueJsonKeyCopyWith<DefaultValueJsonKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultValueJsonKeyCopyWith<$Res> {
  factory $DefaultValueJsonKeyCopyWith(
          DefaultValueJsonKey value, $Res Function(DefaultValueJsonKey) then) =
      _$DefaultValueJsonKeyCopyWithImpl<$Res, DefaultValueJsonKey>;
  @useResult
  $Res call({@JsonKey(defaultValue: 21) int value});
}

/// @nodoc
class _$DefaultValueJsonKeyCopyWithImpl<$Res, $Val extends DefaultValueJsonKey>
    implements $DefaultValueJsonKeyCopyWith<$Res> {
  _$DefaultValueJsonKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DefaultValueJsonKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DefaultValueJsonKeyImplCopyWith<$Res>
    implements $DefaultValueJsonKeyCopyWith<$Res> {
  factory _$$DefaultValueJsonKeyImplCopyWith(_$DefaultValueJsonKeyImpl value,
          $Res Function(_$DefaultValueJsonKeyImpl) then) =
      __$$DefaultValueJsonKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(defaultValue: 21) int value});
}

/// @nodoc
class __$$DefaultValueJsonKeyImplCopyWithImpl<$Res>
    extends _$DefaultValueJsonKeyCopyWithImpl<$Res, _$DefaultValueJsonKeyImpl>
    implements _$$DefaultValueJsonKeyImplCopyWith<$Res> {
  __$$DefaultValueJsonKeyImplCopyWithImpl(_$DefaultValueJsonKeyImpl _value,
      $Res Function(_$DefaultValueJsonKeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of DefaultValueJsonKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$DefaultValueJsonKeyImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DefaultValueJsonKeyImpl implements _DefaultValueJsonKey {
  _$DefaultValueJsonKeyImpl([@JsonKey(defaultValue: 21) this.value = 42]);

  factory _$DefaultValueJsonKeyImpl.fromJson(Map<String, dynamic> json) =>
      _$$DefaultValueJsonKeyImplFromJson(json);

  @override
  @JsonKey(defaultValue: 21)
  final int value;

  @override
  String toString() {
    return 'DefaultValueJsonKey(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultValueJsonKeyImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of DefaultValueJsonKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultValueJsonKeyImplCopyWith<_$DefaultValueJsonKeyImpl> get copyWith =>
      __$$DefaultValueJsonKeyImplCopyWithImpl<_$DefaultValueJsonKeyImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DefaultValueJsonKeyImplToJson(
      this,
    );
  }
}

abstract class _DefaultValueJsonKey implements DefaultValueJsonKey {
  factory _DefaultValueJsonKey([@JsonKey(defaultValue: 21) final int value]) =
      _$DefaultValueJsonKeyImpl;

  factory _DefaultValueJsonKey.fromJson(Map<String, dynamic> json) =
      _$DefaultValueJsonKeyImpl.fromJson;

  @override
  @JsonKey(defaultValue: 21)
  int get value;

  /// Create a copy of DefaultValueJsonKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DefaultValueJsonKeyImplCopyWith<_$DefaultValueJsonKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ClassDecorator _$ClassDecoratorFromJson(Map<String, dynamic> json) {
  return ClassDecoratorDefault.fromJson(json);
}

/// @nodoc
mixin _$ClassDecorator {
  String get complexName => throw _privateConstructorUsedError;

  /// Serializes this ClassDecorator to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClassDecorator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassDecoratorCopyWith<ClassDecorator> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassDecoratorCopyWith<$Res> {
  factory $ClassDecoratorCopyWith(
          ClassDecorator value, $Res Function(ClassDecorator) then) =
      _$ClassDecoratorCopyWithImpl<$Res, ClassDecorator>;
  @useResult
  $Res call({String complexName});
}

/// @nodoc
class _$ClassDecoratorCopyWithImpl<$Res, $Val extends ClassDecorator>
    implements $ClassDecoratorCopyWith<$Res> {
  _$ClassDecoratorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassDecorator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complexName = null,
  }) {
    return _then(_value.copyWith(
      complexName: null == complexName
          ? _value.complexName
          : complexName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassDecoratorDefaultImplCopyWith<$Res>
    implements $ClassDecoratorCopyWith<$Res> {
  factory _$$ClassDecoratorDefaultImplCopyWith(
          _$ClassDecoratorDefaultImpl value,
          $Res Function(_$ClassDecoratorDefaultImpl) then) =
      __$$ClassDecoratorDefaultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String complexName});
}

/// @nodoc
class __$$ClassDecoratorDefaultImplCopyWithImpl<$Res>
    extends _$ClassDecoratorCopyWithImpl<$Res, _$ClassDecoratorDefaultImpl>
    implements _$$ClassDecoratorDefaultImplCopyWith<$Res> {
  __$$ClassDecoratorDefaultImplCopyWithImpl(_$ClassDecoratorDefaultImpl _value,
      $Res Function(_$ClassDecoratorDefaultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassDecorator
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complexName = null,
  }) {
    return _then(_$ClassDecoratorDefaultImpl(
      null == complexName
          ? _value.complexName
          : complexName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ClassDecoratorDefaultImpl implements ClassDecoratorDefault {
  const _$ClassDecoratorDefaultImpl(this.complexName);

  factory _$ClassDecoratorDefaultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClassDecoratorDefaultImplFromJson(json);

  @override
  final String complexName;

  @override
  String toString() {
    return 'ClassDecorator(complexName: $complexName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassDecoratorDefaultImpl &&
            (identical(other.complexName, complexName) ||
                other.complexName == complexName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, complexName);

  /// Create a copy of ClassDecorator
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassDecoratorDefaultImplCopyWith<_$ClassDecoratorDefaultImpl>
      get copyWith => __$$ClassDecoratorDefaultImplCopyWithImpl<
          _$ClassDecoratorDefaultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClassDecoratorDefaultImplToJson(
      this,
    );
  }
}

abstract class ClassDecoratorDefault implements ClassDecorator {
  const factory ClassDecoratorDefault(final String complexName) =
      _$ClassDecoratorDefaultImpl;

  factory ClassDecoratorDefault.fromJson(Map<String, dynamic> json) =
      _$ClassDecoratorDefaultImpl.fromJson;

  @override
  String get complexName;

  /// Create a copy of ClassDecorator
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassDecoratorDefaultImplCopyWith<_$ClassDecoratorDefaultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DurationValue _$DurationValueFromJson(Map<String, dynamic> json) {
  return DurationValueDefault.fromJson(json);
}

/// @nodoc
mixin _$DurationValue {
  Duration get complexName => throw _privateConstructorUsedError;

  /// Serializes this DurationValue to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DurationValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DurationValueCopyWith<DurationValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DurationValueCopyWith<$Res> {
  factory $DurationValueCopyWith(
          DurationValue value, $Res Function(DurationValue) then) =
      _$DurationValueCopyWithImpl<$Res, DurationValue>;
  @useResult
  $Res call({Duration complexName});
}

/// @nodoc
class _$DurationValueCopyWithImpl<$Res, $Val extends DurationValue>
    implements $DurationValueCopyWith<$Res> {
  _$DurationValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DurationValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complexName = null,
  }) {
    return _then(_value.copyWith(
      complexName: null == complexName
          ? _value.complexName
          : complexName // ignore: cast_nullable_to_non_nullable
              as Duration,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DurationValueDefaultImplCopyWith<$Res>
    implements $DurationValueCopyWith<$Res> {
  factory _$$DurationValueDefaultImplCopyWith(_$DurationValueDefaultImpl value,
          $Res Function(_$DurationValueDefaultImpl) then) =
      __$$DurationValueDefaultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Duration complexName});
}

/// @nodoc
class __$$DurationValueDefaultImplCopyWithImpl<$Res>
    extends _$DurationValueCopyWithImpl<$Res, _$DurationValueDefaultImpl>
    implements _$$DurationValueDefaultImplCopyWith<$Res> {
  __$$DurationValueDefaultImplCopyWithImpl(_$DurationValueDefaultImpl _value,
      $Res Function(_$DurationValueDefaultImpl) _then)
      : super(_value, _then);

  /// Create a copy of DurationValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? complexName = null,
  }) {
    return _then(_$DurationValueDefaultImpl(
      null == complexName
          ? _value.complexName
          : complexName // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DurationValueDefaultImpl implements DurationValueDefault {
  const _$DurationValueDefaultImpl(this.complexName);

  factory _$DurationValueDefaultImpl.fromJson(Map<String, dynamic> json) =>
      _$$DurationValueDefaultImplFromJson(json);

  @override
  final Duration complexName;

  @override
  String toString() {
    return 'DurationValue(complexName: $complexName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DurationValueDefaultImpl &&
            (identical(other.complexName, complexName) ||
                other.complexName == complexName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, complexName);

  /// Create a copy of DurationValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DurationValueDefaultImplCopyWith<_$DurationValueDefaultImpl>
      get copyWith =>
          __$$DurationValueDefaultImplCopyWithImpl<_$DurationValueDefaultImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DurationValueDefaultImplToJson(
      this,
    );
  }
}

abstract class DurationValueDefault implements DurationValue {
  const factory DurationValueDefault(final Duration complexName) =
      _$DurationValueDefaultImpl;

  factory DurationValueDefault.fromJson(Map<String, dynamic> json) =
      _$DurationValueDefaultImpl.fromJson;

  @override
  Duration get complexName;

  /// Create a copy of DurationValue
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DurationValueDefaultImplCopyWith<_$DurationValueDefaultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

EnumJson _$EnumJsonFromJson(Map<String, dynamic> json) {
  return _EnumJson.fromJson(json);
}

/// @nodoc
mixin _$EnumJson {
  @JsonKey(
      disallowNullValue: true,
      required: true,
      unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  Enum? get status => throw _privateConstructorUsedError;

  /// Serializes this EnumJson to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EnumJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EnumJsonCopyWith<EnumJson> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnumJsonCopyWith<$Res> {
  factory $EnumJsonCopyWith(EnumJson value, $Res Function(EnumJson) then) =
      _$EnumJsonCopyWithImpl<$Res, EnumJson>;
  @useResult
  $Res call(
      {@JsonKey(
          disallowNullValue: true,
          required: true,
          unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      Enum? status});
}

/// @nodoc
class _$EnumJsonCopyWithImpl<$Res, $Val extends EnumJson>
    implements $EnumJsonCopyWith<$Res> {
  _$EnumJsonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EnumJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Enum?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EnumJsonImplCopyWith<$Res>
    implements $EnumJsonCopyWith<$Res> {
  factory _$$EnumJsonImplCopyWith(
          _$EnumJsonImpl value, $Res Function(_$EnumJsonImpl) then) =
      __$$EnumJsonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(
          disallowNullValue: true,
          required: true,
          unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      Enum? status});
}

/// @nodoc
class __$$EnumJsonImplCopyWithImpl<$Res>
    extends _$EnumJsonCopyWithImpl<$Res, _$EnumJsonImpl>
    implements _$$EnumJsonImplCopyWith<$Res> {
  __$$EnumJsonImplCopyWithImpl(
      _$EnumJsonImpl _value, $Res Function(_$EnumJsonImpl) _then)
      : super(_value, _then);

  /// Create a copy of EnumJson
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
  }) {
    return _then(_$EnumJsonImpl(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Enum?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EnumJsonImpl implements _EnumJson {
  _$EnumJsonImpl(
      {@JsonKey(
          disallowNullValue: true,
          required: true,
          unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      this.status});

  factory _$EnumJsonImpl.fromJson(Map<String, dynamic> json) =>
      _$$EnumJsonImplFromJson(json);

  @override
  @JsonKey(
      disallowNullValue: true,
      required: true,
      unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  final Enum? status;

  @override
  String toString() {
    return 'EnumJson(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EnumJsonImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of EnumJson
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EnumJsonImplCopyWith<_$EnumJsonImpl> get copyWith =>
      __$$EnumJsonImplCopyWithImpl<_$EnumJsonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EnumJsonImplToJson(
      this,
    );
  }
}

abstract class _EnumJson implements EnumJson {
  factory _EnumJson(
      {@JsonKey(
          disallowNullValue: true,
          required: true,
          unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
      final Enum? status}) = _$EnumJsonImpl;

  factory _EnumJson.fromJson(Map<String, dynamic> json) =
      _$EnumJsonImpl.fromJson;

  @override
  @JsonKey(
      disallowNullValue: true,
      required: true,
      unknownEnumValue: JsonKey.nullForUndefinedEnumValue)
  Enum? get status;

  /// Create a copy of EnumJson
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EnumJsonImplCopyWith<_$EnumJsonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GenericWithArgumentFactories<T> _$GenericWithArgumentFactoriesFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _GenericWithArgumentFactories<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$GenericWithArgumentFactories<T> {
  T get value => throw _privateConstructorUsedError;
  String get value2 => throw _privateConstructorUsedError;

  /// Serializes this GenericWithArgumentFactories to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GenericWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenericWithArgumentFactoriesCopyWith<T, GenericWithArgumentFactories<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericWithArgumentFactoriesCopyWith<T, $Res> {
  factory $GenericWithArgumentFactoriesCopyWith(
          GenericWithArgumentFactories<T> value,
          $Res Function(GenericWithArgumentFactories<T>) then) =
      _$GenericWithArgumentFactoriesCopyWithImpl<T, $Res,
          GenericWithArgumentFactories<T>>;
  @useResult
  $Res call({T value, String value2});
}

/// @nodoc
class _$GenericWithArgumentFactoriesCopyWithImpl<T, $Res,
        $Val extends GenericWithArgumentFactories<T>>
    implements $GenericWithArgumentFactoriesCopyWith<T, $Res> {
  _$GenericWithArgumentFactoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenericWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? value2 = null,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      value2: null == value2
          ? _value.value2
          : value2 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenericWithArgumentFactoriesImplCopyWith<T, $Res>
    implements $GenericWithArgumentFactoriesCopyWith<T, $Res> {
  factory _$$GenericWithArgumentFactoriesImplCopyWith(
          _$GenericWithArgumentFactoriesImpl<T> value,
          $Res Function(_$GenericWithArgumentFactoriesImpl<T>) then) =
      __$$GenericWithArgumentFactoriesImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T value, String value2});
}

/// @nodoc
class __$$GenericWithArgumentFactoriesImplCopyWithImpl<T, $Res>
    extends _$GenericWithArgumentFactoriesCopyWithImpl<T, $Res,
        _$GenericWithArgumentFactoriesImpl<T>>
    implements _$$GenericWithArgumentFactoriesImplCopyWith<T, $Res> {
  __$$GenericWithArgumentFactoriesImplCopyWithImpl(
      _$GenericWithArgumentFactoriesImpl<T> _value,
      $Res Function(_$GenericWithArgumentFactoriesImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GenericWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? value2 = null,
  }) {
    return _then(_$GenericWithArgumentFactoriesImpl<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      null == value2
          ? _value.value2
          : value2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$GenericWithArgumentFactoriesImpl<T>
    implements _GenericWithArgumentFactories<T> {
  _$GenericWithArgumentFactoriesImpl(this.value, this.value2);

  factory _$GenericWithArgumentFactoriesImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$GenericWithArgumentFactoriesImplFromJson(json, fromJsonT);

  @override
  final T value;
  @override
  final String value2;

  @override
  String toString() {
    return 'GenericWithArgumentFactories<$T>(value: $value, value2: $value2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericWithArgumentFactoriesImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.value2, value2) || other.value2 == value2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(value), value2);

  /// Create a copy of GenericWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericWithArgumentFactoriesImplCopyWith<T,
          _$GenericWithArgumentFactoriesImpl<T>>
      get copyWith => __$$GenericWithArgumentFactoriesImplCopyWithImpl<T,
          _$GenericWithArgumentFactoriesImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$GenericWithArgumentFactoriesImplToJson<T>(this, toJsonT);
  }
}

abstract class _GenericWithArgumentFactories<T>
    implements GenericWithArgumentFactories<T> {
  factory _GenericWithArgumentFactories(final T value, final String value2) =
      _$GenericWithArgumentFactoriesImpl<T>;

  factory _GenericWithArgumentFactories.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$GenericWithArgumentFactoriesImpl<T>.fromJson;

  @override
  T get value;
  @override
  String get value2;

  /// Create a copy of GenericWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericWithArgumentFactoriesImplCopyWith<T,
          _$GenericWithArgumentFactoriesImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

GenericTupleWithArgumentFactories<T, S>
    _$GenericTupleWithArgumentFactoriesFromJson<T, S>(Map<String, dynamic> json,
        T Function(Object?) fromJsonT, S Function(Object?) fromJsonS) {
  return _GenericTupleWithArgumentFactories<T, S>.fromJson(
      json, fromJsonT, fromJsonS);
}

/// @nodoc
mixin _$GenericTupleWithArgumentFactories<T, S> {
  T get value1 => throw _privateConstructorUsedError;
  S get value2 => throw _privateConstructorUsedError;
  String get value3 => throw _privateConstructorUsedError;

  /// Serializes this GenericTupleWithArgumentFactories to a JSON map.
  Map<String, dynamic> toJson(
          Object? Function(T) toJsonT, Object? Function(S) toJsonS) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GenericTupleWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenericTupleWithArgumentFactoriesCopyWith<T, S,
          GenericTupleWithArgumentFactories<T, S>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericTupleWithArgumentFactoriesCopyWith<T, S, $Res> {
  factory $GenericTupleWithArgumentFactoriesCopyWith(
          GenericTupleWithArgumentFactories<T, S> value,
          $Res Function(GenericTupleWithArgumentFactories<T, S>) then) =
      _$GenericTupleWithArgumentFactoriesCopyWithImpl<T, S, $Res,
          GenericTupleWithArgumentFactories<T, S>>;
  @useResult
  $Res call({T value1, S value2, String value3});
}

/// @nodoc
class _$GenericTupleWithArgumentFactoriesCopyWithImpl<T, S, $Res,
        $Val extends GenericTupleWithArgumentFactories<T, S>>
    implements $GenericTupleWithArgumentFactoriesCopyWith<T, S, $Res> {
  _$GenericTupleWithArgumentFactoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenericTupleWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value1 = freezed,
    Object? value2 = freezed,
    Object? value3 = null,
  }) {
    return _then(_value.copyWith(
      value1: freezed == value1
          ? _value.value1
          : value1 // ignore: cast_nullable_to_non_nullable
              as T,
      value2: freezed == value2
          ? _value.value2
          : value2 // ignore: cast_nullable_to_non_nullable
              as S,
      value3: null == value3
          ? _value.value3
          : value3 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenericTupleWithArgumentFactoriesImplCopyWith<T, S, $Res>
    implements $GenericTupleWithArgumentFactoriesCopyWith<T, S, $Res> {
  factory _$$GenericTupleWithArgumentFactoriesImplCopyWith(
          _$GenericTupleWithArgumentFactoriesImpl<T, S> value,
          $Res Function(_$GenericTupleWithArgumentFactoriesImpl<T, S>) then) =
      __$$GenericTupleWithArgumentFactoriesImplCopyWithImpl<T, S, $Res>;
  @override
  @useResult
  $Res call({T value1, S value2, String value3});
}

/// @nodoc
class __$$GenericTupleWithArgumentFactoriesImplCopyWithImpl<T, S, $Res>
    extends _$GenericTupleWithArgumentFactoriesCopyWithImpl<T, S, $Res,
        _$GenericTupleWithArgumentFactoriesImpl<T, S>>
    implements _$$GenericTupleWithArgumentFactoriesImplCopyWith<T, S, $Res> {
  __$$GenericTupleWithArgumentFactoriesImplCopyWithImpl(
      _$GenericTupleWithArgumentFactoriesImpl<T, S> _value,
      $Res Function(_$GenericTupleWithArgumentFactoriesImpl<T, S>) _then)
      : super(_value, _then);

  /// Create a copy of GenericTupleWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value1 = freezed,
    Object? value2 = freezed,
    Object? value3 = null,
  }) {
    return _then(_$GenericTupleWithArgumentFactoriesImpl<T, S>(
      freezed == value1
          ? _value.value1
          : value1 // ignore: cast_nullable_to_non_nullable
              as T,
      freezed == value2
          ? _value.value2
          : value2 // ignore: cast_nullable_to_non_nullable
              as S,
      null == value3
          ? _value.value3
          : value3 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$GenericTupleWithArgumentFactoriesImpl<T, S>
    implements _GenericTupleWithArgumentFactories<T, S> {
  _$GenericTupleWithArgumentFactoriesImpl(
      this.value1, this.value2, this.value3);

  factory _$GenericTupleWithArgumentFactoriesImpl.fromJson(
          Map<String, dynamic> json,
          T Function(Object?) fromJsonT,
          S Function(Object?) fromJsonS) =>
      _$$GenericTupleWithArgumentFactoriesImplFromJson(
          json, fromJsonT, fromJsonS);

  @override
  final T value1;
  @override
  final S value2;
  @override
  final String value3;

  @override
  String toString() {
    return 'GenericTupleWithArgumentFactories<$T, $S>(value1: $value1, value2: $value2, value3: $value3)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericTupleWithArgumentFactoriesImpl<T, S> &&
            const DeepCollectionEquality().equals(other.value1, value1) &&
            const DeepCollectionEquality().equals(other.value2, value2) &&
            (identical(other.value3, value3) || other.value3 == value3));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value1),
      const DeepCollectionEquality().hash(value2),
      value3);

  /// Create a copy of GenericTupleWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericTupleWithArgumentFactoriesImplCopyWith<T, S,
          _$GenericTupleWithArgumentFactoriesImpl<T, S>>
      get copyWith => __$$GenericTupleWithArgumentFactoriesImplCopyWithImpl<T,
          S, _$GenericTupleWithArgumentFactoriesImpl<T, S>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(
      Object? Function(T) toJsonT, Object? Function(S) toJsonS) {
    return _$$GenericTupleWithArgumentFactoriesImplToJson<T, S>(
        this, toJsonT, toJsonS);
  }
}

abstract class _GenericTupleWithArgumentFactories<T, S>
    implements GenericTupleWithArgumentFactories<T, S> {
  factory _GenericTupleWithArgumentFactories(
          final T value1, final S value2, final String value3) =
      _$GenericTupleWithArgumentFactoriesImpl<T, S>;

  factory _GenericTupleWithArgumentFactories.fromJson(Map<String, dynamic> json,
          T Function(Object?) fromJsonT, S Function(Object?) fromJsonS) =
      _$GenericTupleWithArgumentFactoriesImpl<T, S>.fromJson;

  @override
  T get value1;
  @override
  S get value2;
  @override
  String get value3;

  /// Create a copy of GenericTupleWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericTupleWithArgumentFactoriesImplCopyWith<T, S,
          _$GenericTupleWithArgumentFactoriesImpl<T, S>>
      get copyWith => throw _privateConstructorUsedError;
}

GenericMultiCtorWithArgumentFactories<T, S>
    _$GenericMultiCtorWithArgumentFactoriesFromJson<T, S>(
        Map<String, dynamic> json,
        T Function(Object?) fromJsonT,
        S Function(Object?) fromJsonS) {
  switch (json['runtimeType']) {
    case 'default':
      return _GenericMultiCtorWithArgumentFactories<T, S>.fromJson(
          json, fromJsonT, fromJsonS);
    case 'first':
      return _GenericMultiCtorWithArgumentFactoriesVal<T, S>.fromJson(
          json, fromJsonT, fromJsonS);
    case 'second':
      return _GenericMultiCtorWithArgumentFactoriesSec<T, S>.fromJson(
          json, fromJsonT, fromJsonS);
    case 'both':
      return _GenericMultiCtorWithArgumentFactoriesBoth<T, S>.fromJson(
          json, fromJsonT, fromJsonS);
    case 'none':
      return _GenericMultiCtorWithArgumentFactoriesNone<T, S>.fromJson(
          json, fromJsonT, fromJsonS);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'GenericMultiCtorWithArgumentFactories',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$GenericMultiCtorWithArgumentFactories<T, S> {
  String get another => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T first, S second, String another) $default, {
    required TResult Function(T first, String another) first,
    required TResult Function(S second, String another) second,
    required TResult Function(T first, S second, String another) both,
    required TResult Function(String another) none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T first, S second, String another)? $default, {
    TResult? Function(T first, String another)? first,
    TResult? Function(S second, String another)? second,
    TResult? Function(T first, S second, String another)? both,
    TResult? Function(String another)? none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T first, S second, String another)? $default, {
    TResult Function(T first, String another)? first,
    TResult Function(S second, String another)? second,
    TResult Function(T first, S second, String another)? both,
    TResult Function(String another)? none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GenericMultiCtorWithArgumentFactories<T, S> value)
        $default, {
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesVal<T, S> value)
        first,
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesSec<T, S> value)
        second,
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesBoth<T, S> value)
        both,
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesNone<T, S> value)
        none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GenericMultiCtorWithArgumentFactories<T, S> value)?
        $default, {
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesVal<T, S> value)?
        first,
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesSec<T, S> value)?
        second,
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesBoth<T, S> value)?
        both,
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesNone<T, S> value)?
        none,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GenericMultiCtorWithArgumentFactories<T, S> value)?
        $default, {
    TResult Function(_GenericMultiCtorWithArgumentFactoriesVal<T, S> value)?
        first,
    TResult Function(_GenericMultiCtorWithArgumentFactoriesSec<T, S> value)?
        second,
    TResult Function(_GenericMultiCtorWithArgumentFactoriesBoth<T, S> value)?
        both,
    TResult Function(_GenericMultiCtorWithArgumentFactoriesNone<T, S> value)?
        none,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this GenericMultiCtorWithArgumentFactories to a JSON map.
  Map<String, dynamic> toJson(
          Object? Function(T) toJsonT, Object? Function(S) toJsonS) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GenericMultiCtorWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenericMultiCtorWithArgumentFactoriesCopyWith<T, S,
          GenericMultiCtorWithArgumentFactories<T, S>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericMultiCtorWithArgumentFactoriesCopyWith<T, S, $Res> {
  factory $GenericMultiCtorWithArgumentFactoriesCopyWith(
          GenericMultiCtorWithArgumentFactories<T, S> value,
          $Res Function(GenericMultiCtorWithArgumentFactories<T, S>) then) =
      _$GenericMultiCtorWithArgumentFactoriesCopyWithImpl<T, S, $Res,
          GenericMultiCtorWithArgumentFactories<T, S>>;
  @useResult
  $Res call({String another});
}

/// @nodoc
class _$GenericMultiCtorWithArgumentFactoriesCopyWithImpl<T, S, $Res,
        $Val extends GenericMultiCtorWithArgumentFactories<T, S>>
    implements $GenericMultiCtorWithArgumentFactoriesCopyWith<T, S, $Res> {
  _$GenericMultiCtorWithArgumentFactoriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenericMultiCtorWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? another = null,
  }) {
    return _then(_value.copyWith(
      another: null == another
          ? _value.another
          : another // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenericMultiCtorWithArgumentFactoriesImplCopyWith<T, S, $Res>
    implements $GenericMultiCtorWithArgumentFactoriesCopyWith<T, S, $Res> {
  factory _$$GenericMultiCtorWithArgumentFactoriesImplCopyWith(
          _$GenericMultiCtorWithArgumentFactoriesImpl<T, S> value,
          $Res Function(_$GenericMultiCtorWithArgumentFactoriesImpl<T, S>)
              then) =
      __$$GenericMultiCtorWithArgumentFactoriesImplCopyWithImpl<T, S, $Res>;
  @override
  @useResult
  $Res call({T first, S second, String another});
}

/// @nodoc
class __$$GenericMultiCtorWithArgumentFactoriesImplCopyWithImpl<T, S, $Res>
    extends _$GenericMultiCtorWithArgumentFactoriesCopyWithImpl<T, S, $Res,
        _$GenericMultiCtorWithArgumentFactoriesImpl<T, S>>
    implements
        _$$GenericMultiCtorWithArgumentFactoriesImplCopyWith<T, S, $Res> {
  __$$GenericMultiCtorWithArgumentFactoriesImplCopyWithImpl(
      _$GenericMultiCtorWithArgumentFactoriesImpl<T, S> _value,
      $Res Function(_$GenericMultiCtorWithArgumentFactoriesImpl<T, S>) _then)
      : super(_value, _then);

  /// Create a copy of GenericMultiCtorWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? second = freezed,
    Object? another = null,
  }) {
    return _then(_$GenericMultiCtorWithArgumentFactoriesImpl<T, S>(
      freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as T,
      freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as S,
      null == another
          ? _value.another
          : another // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$GenericMultiCtorWithArgumentFactoriesImpl<T, S>
    implements _GenericMultiCtorWithArgumentFactories<T, S> {
  _$GenericMultiCtorWithArgumentFactoriesImpl(
      this.first, this.second, this.another,
      {final String? $type})
      : $type = $type ?? 'default';

  factory _$GenericMultiCtorWithArgumentFactoriesImpl.fromJson(
          Map<String, dynamic> json,
          T Function(Object?) fromJsonT,
          S Function(Object?) fromJsonS) =>
      _$$GenericMultiCtorWithArgumentFactoriesImplFromJson(
          json, fromJsonT, fromJsonS);

  @override
  final T first;
  @override
  final S second;
  @override
  final String another;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GenericMultiCtorWithArgumentFactories<$T, $S>(first: $first, second: $second, another: $another)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericMultiCtorWithArgumentFactoriesImpl<T, S> &&
            const DeepCollectionEquality().equals(other.first, first) &&
            const DeepCollectionEquality().equals(other.second, second) &&
            (identical(other.another, another) || other.another == another));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(first),
      const DeepCollectionEquality().hash(second),
      another);

  /// Create a copy of GenericMultiCtorWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericMultiCtorWithArgumentFactoriesImplCopyWith<T, S,
          _$GenericMultiCtorWithArgumentFactoriesImpl<T, S>>
      get copyWith => __$$GenericMultiCtorWithArgumentFactoriesImplCopyWithImpl<
          T,
          S,
          _$GenericMultiCtorWithArgumentFactoriesImpl<T, S>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T first, S second, String another) $default, {
    required TResult Function(T first, String another) first,
    required TResult Function(S second, String another) second,
    required TResult Function(T first, S second, String another) both,
    required TResult Function(String another) none,
  }) {
    return $default(this.first, this.second, another);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T first, S second, String another)? $default, {
    TResult? Function(T first, String another)? first,
    TResult? Function(S second, String another)? second,
    TResult? Function(T first, S second, String another)? both,
    TResult? Function(String another)? none,
  }) {
    return $default?.call(this.first, this.second, another);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T first, S second, String another)? $default, {
    TResult Function(T first, String another)? first,
    TResult Function(S second, String another)? second,
    TResult Function(T first, S second, String another)? both,
    TResult Function(String another)? none,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this.first, this.second, another);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GenericMultiCtorWithArgumentFactories<T, S> value)
        $default, {
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesVal<T, S> value)
        first,
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesSec<T, S> value)
        second,
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesBoth<T, S> value)
        both,
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesNone<T, S> value)
        none,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GenericMultiCtorWithArgumentFactories<T, S> value)?
        $default, {
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesVal<T, S> value)?
        first,
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesSec<T, S> value)?
        second,
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesBoth<T, S> value)?
        both,
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesNone<T, S> value)?
        none,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GenericMultiCtorWithArgumentFactories<T, S> value)?
        $default, {
    TResult Function(_GenericMultiCtorWithArgumentFactoriesVal<T, S> value)?
        first,
    TResult Function(_GenericMultiCtorWithArgumentFactoriesSec<T, S> value)?
        second,
    TResult Function(_GenericMultiCtorWithArgumentFactoriesBoth<T, S> value)?
        both,
    TResult Function(_GenericMultiCtorWithArgumentFactoriesNone<T, S> value)?
        none,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(
      Object? Function(T) toJsonT, Object? Function(S) toJsonS) {
    return _$$GenericMultiCtorWithArgumentFactoriesImplToJson<T, S>(
        this, toJsonT, toJsonS);
  }
}

abstract class _GenericMultiCtorWithArgumentFactories<T, S>
    implements GenericMultiCtorWithArgumentFactories<T, S> {
  factory _GenericMultiCtorWithArgumentFactories(
          final T first, final S second, final String another) =
      _$GenericMultiCtorWithArgumentFactoriesImpl<T, S>;

  factory _GenericMultiCtorWithArgumentFactories.fromJson(
          Map<String, dynamic> json,
          T Function(Object?) fromJsonT,
          S Function(Object?) fromJsonS) =
      _$GenericMultiCtorWithArgumentFactoriesImpl<T, S>.fromJson;

  T get first;
  S get second;
  @override
  String get another;

  /// Create a copy of GenericMultiCtorWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericMultiCtorWithArgumentFactoriesImplCopyWith<T, S,
          _$GenericMultiCtorWithArgumentFactoriesImpl<T, S>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenericMultiCtorWithArgumentFactoriesValImplCopyWith<T, S,
        $Res>
    implements $GenericMultiCtorWithArgumentFactoriesCopyWith<T, S, $Res> {
  factory _$$GenericMultiCtorWithArgumentFactoriesValImplCopyWith(
          _$GenericMultiCtorWithArgumentFactoriesValImpl<T, S> value,
          $Res Function(_$GenericMultiCtorWithArgumentFactoriesValImpl<T, S>)
              then) =
      __$$GenericMultiCtorWithArgumentFactoriesValImplCopyWithImpl<T, S, $Res>;
  @override
  @useResult
  $Res call({T first, String another});
}

/// @nodoc
class __$$GenericMultiCtorWithArgumentFactoriesValImplCopyWithImpl<T, S, $Res>
    extends _$GenericMultiCtorWithArgumentFactoriesCopyWithImpl<T, S, $Res,
        _$GenericMultiCtorWithArgumentFactoriesValImpl<T, S>>
    implements
        _$$GenericMultiCtorWithArgumentFactoriesValImplCopyWith<T, S, $Res> {
  __$$GenericMultiCtorWithArgumentFactoriesValImplCopyWithImpl(
      _$GenericMultiCtorWithArgumentFactoriesValImpl<T, S> _value,
      $Res Function(_$GenericMultiCtorWithArgumentFactoriesValImpl<T, S>) _then)
      : super(_value, _then);

  /// Create a copy of GenericMultiCtorWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? another = null,
  }) {
    return _then(_$GenericMultiCtorWithArgumentFactoriesValImpl<T, S>(
      freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as T,
      null == another
          ? _value.another
          : another // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$GenericMultiCtorWithArgumentFactoriesValImpl<T, S>
    implements _GenericMultiCtorWithArgumentFactoriesVal<T, S> {
  _$GenericMultiCtorWithArgumentFactoriesValImpl(this.first, this.another,
      {final String? $type})
      : $type = $type ?? 'first';

  factory _$GenericMultiCtorWithArgumentFactoriesValImpl.fromJson(
          Map<String, dynamic> json,
          T Function(Object?) fromJsonT,
          S Function(Object?) fromJsonS) =>
      _$$GenericMultiCtorWithArgumentFactoriesValImplFromJson(
          json, fromJsonT, fromJsonS);

  @override
  final T first;
  @override
  final String another;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GenericMultiCtorWithArgumentFactories<$T, $S>.first(first: $first, another: $another)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericMultiCtorWithArgumentFactoriesValImpl<T, S> &&
            const DeepCollectionEquality().equals(other.first, first) &&
            (identical(other.another, another) || other.another == another));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(first), another);

  /// Create a copy of GenericMultiCtorWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericMultiCtorWithArgumentFactoriesValImplCopyWith<T, S,
          _$GenericMultiCtorWithArgumentFactoriesValImpl<T, S>>
      get copyWith =>
          __$$GenericMultiCtorWithArgumentFactoriesValImplCopyWithImpl<T, S,
                  _$GenericMultiCtorWithArgumentFactoriesValImpl<T, S>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T first, S second, String another) $default, {
    required TResult Function(T first, String another) first,
    required TResult Function(S second, String another) second,
    required TResult Function(T first, S second, String another) both,
    required TResult Function(String another) none,
  }) {
    return first(this.first, another);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T first, S second, String another)? $default, {
    TResult? Function(T first, String another)? first,
    TResult? Function(S second, String another)? second,
    TResult? Function(T first, S second, String another)? both,
    TResult? Function(String another)? none,
  }) {
    return first?.call(this.first, another);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T first, S second, String another)? $default, {
    TResult Function(T first, String another)? first,
    TResult Function(S second, String another)? second,
    TResult Function(T first, S second, String another)? both,
    TResult Function(String another)? none,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this.first, another);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GenericMultiCtorWithArgumentFactories<T, S> value)
        $default, {
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesVal<T, S> value)
        first,
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesSec<T, S> value)
        second,
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesBoth<T, S> value)
        both,
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesNone<T, S> value)
        none,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GenericMultiCtorWithArgumentFactories<T, S> value)?
        $default, {
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesVal<T, S> value)?
        first,
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesSec<T, S> value)?
        second,
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesBoth<T, S> value)?
        both,
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesNone<T, S> value)?
        none,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GenericMultiCtorWithArgumentFactories<T, S> value)?
        $default, {
    TResult Function(_GenericMultiCtorWithArgumentFactoriesVal<T, S> value)?
        first,
    TResult Function(_GenericMultiCtorWithArgumentFactoriesSec<T, S> value)?
        second,
    TResult Function(_GenericMultiCtorWithArgumentFactoriesBoth<T, S> value)?
        both,
    TResult Function(_GenericMultiCtorWithArgumentFactoriesNone<T, S> value)?
        none,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(
      Object? Function(T) toJsonT, Object? Function(S) toJsonS) {
    return _$$GenericMultiCtorWithArgumentFactoriesValImplToJson<T, S>(
        this, toJsonT, toJsonS);
  }
}

abstract class _GenericMultiCtorWithArgumentFactoriesVal<T, S>
    implements GenericMultiCtorWithArgumentFactories<T, S> {
  factory _GenericMultiCtorWithArgumentFactoriesVal(
          final T first, final String another) =
      _$GenericMultiCtorWithArgumentFactoriesValImpl<T, S>;

  factory _GenericMultiCtorWithArgumentFactoriesVal.fromJson(
          Map<String, dynamic> json,
          T Function(Object?) fromJsonT,
          S Function(Object?) fromJsonS) =
      _$GenericMultiCtorWithArgumentFactoriesValImpl<T, S>.fromJson;

  T get first;
  @override
  String get another;

  /// Create a copy of GenericMultiCtorWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericMultiCtorWithArgumentFactoriesValImplCopyWith<T, S,
          _$GenericMultiCtorWithArgumentFactoriesValImpl<T, S>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenericMultiCtorWithArgumentFactoriesSecImplCopyWith<T, S,
        $Res>
    implements $GenericMultiCtorWithArgumentFactoriesCopyWith<T, S, $Res> {
  factory _$$GenericMultiCtorWithArgumentFactoriesSecImplCopyWith(
          _$GenericMultiCtorWithArgumentFactoriesSecImpl<T, S> value,
          $Res Function(_$GenericMultiCtorWithArgumentFactoriesSecImpl<T, S>)
              then) =
      __$$GenericMultiCtorWithArgumentFactoriesSecImplCopyWithImpl<T, S, $Res>;
  @override
  @useResult
  $Res call({S second, String another});
}

/// @nodoc
class __$$GenericMultiCtorWithArgumentFactoriesSecImplCopyWithImpl<T, S, $Res>
    extends _$GenericMultiCtorWithArgumentFactoriesCopyWithImpl<T, S, $Res,
        _$GenericMultiCtorWithArgumentFactoriesSecImpl<T, S>>
    implements
        _$$GenericMultiCtorWithArgumentFactoriesSecImplCopyWith<T, S, $Res> {
  __$$GenericMultiCtorWithArgumentFactoriesSecImplCopyWithImpl(
      _$GenericMultiCtorWithArgumentFactoriesSecImpl<T, S> _value,
      $Res Function(_$GenericMultiCtorWithArgumentFactoriesSecImpl<T, S>) _then)
      : super(_value, _then);

  /// Create a copy of GenericMultiCtorWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? second = freezed,
    Object? another = null,
  }) {
    return _then(_$GenericMultiCtorWithArgumentFactoriesSecImpl<T, S>(
      freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as S,
      null == another
          ? _value.another
          : another // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$GenericMultiCtorWithArgumentFactoriesSecImpl<T, S>
    implements _GenericMultiCtorWithArgumentFactoriesSec<T, S> {
  _$GenericMultiCtorWithArgumentFactoriesSecImpl(this.second, this.another,
      {final String? $type})
      : $type = $type ?? 'second';

  factory _$GenericMultiCtorWithArgumentFactoriesSecImpl.fromJson(
          Map<String, dynamic> json,
          T Function(Object?) fromJsonT,
          S Function(Object?) fromJsonS) =>
      _$$GenericMultiCtorWithArgumentFactoriesSecImplFromJson(
          json, fromJsonT, fromJsonS);

  @override
  final S second;
  @override
  final String another;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GenericMultiCtorWithArgumentFactories<$T, $S>.second(second: $second, another: $another)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericMultiCtorWithArgumentFactoriesSecImpl<T, S> &&
            const DeepCollectionEquality().equals(other.second, second) &&
            (identical(other.another, another) || other.another == another));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(second), another);

  /// Create a copy of GenericMultiCtorWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericMultiCtorWithArgumentFactoriesSecImplCopyWith<T, S,
          _$GenericMultiCtorWithArgumentFactoriesSecImpl<T, S>>
      get copyWith =>
          __$$GenericMultiCtorWithArgumentFactoriesSecImplCopyWithImpl<T, S,
                  _$GenericMultiCtorWithArgumentFactoriesSecImpl<T, S>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T first, S second, String another) $default, {
    required TResult Function(T first, String another) first,
    required TResult Function(S second, String another) second,
    required TResult Function(T first, S second, String another) both,
    required TResult Function(String another) none,
  }) {
    return second(this.second, another);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T first, S second, String another)? $default, {
    TResult? Function(T first, String another)? first,
    TResult? Function(S second, String another)? second,
    TResult? Function(T first, S second, String another)? both,
    TResult? Function(String another)? none,
  }) {
    return second?.call(this.second, another);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T first, S second, String another)? $default, {
    TResult Function(T first, String another)? first,
    TResult Function(S second, String another)? second,
    TResult Function(T first, S second, String another)? both,
    TResult Function(String another)? none,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this.second, another);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GenericMultiCtorWithArgumentFactories<T, S> value)
        $default, {
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesVal<T, S> value)
        first,
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesSec<T, S> value)
        second,
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesBoth<T, S> value)
        both,
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesNone<T, S> value)
        none,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GenericMultiCtorWithArgumentFactories<T, S> value)?
        $default, {
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesVal<T, S> value)?
        first,
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesSec<T, S> value)?
        second,
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesBoth<T, S> value)?
        both,
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesNone<T, S> value)?
        none,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GenericMultiCtorWithArgumentFactories<T, S> value)?
        $default, {
    TResult Function(_GenericMultiCtorWithArgumentFactoriesVal<T, S> value)?
        first,
    TResult Function(_GenericMultiCtorWithArgumentFactoriesSec<T, S> value)?
        second,
    TResult Function(_GenericMultiCtorWithArgumentFactoriesBoth<T, S> value)?
        both,
    TResult Function(_GenericMultiCtorWithArgumentFactoriesNone<T, S> value)?
        none,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(
      Object? Function(T) toJsonT, Object? Function(S) toJsonS) {
    return _$$GenericMultiCtorWithArgumentFactoriesSecImplToJson<T, S>(
        this, toJsonT, toJsonS);
  }
}

abstract class _GenericMultiCtorWithArgumentFactoriesSec<T, S>
    implements GenericMultiCtorWithArgumentFactories<T, S> {
  factory _GenericMultiCtorWithArgumentFactoriesSec(
          final S second, final String another) =
      _$GenericMultiCtorWithArgumentFactoriesSecImpl<T, S>;

  factory _GenericMultiCtorWithArgumentFactoriesSec.fromJson(
          Map<String, dynamic> json,
          T Function(Object?) fromJsonT,
          S Function(Object?) fromJsonS) =
      _$GenericMultiCtorWithArgumentFactoriesSecImpl<T, S>.fromJson;

  S get second;
  @override
  String get another;

  /// Create a copy of GenericMultiCtorWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericMultiCtorWithArgumentFactoriesSecImplCopyWith<T, S,
          _$GenericMultiCtorWithArgumentFactoriesSecImpl<T, S>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenericMultiCtorWithArgumentFactoriesBothImplCopyWith<T, S,
        $Res>
    implements $GenericMultiCtorWithArgumentFactoriesCopyWith<T, S, $Res> {
  factory _$$GenericMultiCtorWithArgumentFactoriesBothImplCopyWith(
          _$GenericMultiCtorWithArgumentFactoriesBothImpl<T, S> value,
          $Res Function(_$GenericMultiCtorWithArgumentFactoriesBothImpl<T, S>)
              then) =
      __$$GenericMultiCtorWithArgumentFactoriesBothImplCopyWithImpl<T, S, $Res>;
  @override
  @useResult
  $Res call({T first, S second, String another});
}

/// @nodoc
class __$$GenericMultiCtorWithArgumentFactoriesBothImplCopyWithImpl<T, S, $Res>
    extends _$GenericMultiCtorWithArgumentFactoriesCopyWithImpl<T, S, $Res,
        _$GenericMultiCtorWithArgumentFactoriesBothImpl<T, S>>
    implements
        _$$GenericMultiCtorWithArgumentFactoriesBothImplCopyWith<T, S, $Res> {
  __$$GenericMultiCtorWithArgumentFactoriesBothImplCopyWithImpl(
      _$GenericMultiCtorWithArgumentFactoriesBothImpl<T, S> _value,
      $Res Function(_$GenericMultiCtorWithArgumentFactoriesBothImpl<T, S>)
          _then)
      : super(_value, _then);

  /// Create a copy of GenericMultiCtorWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? second = freezed,
    Object? another = null,
  }) {
    return _then(_$GenericMultiCtorWithArgumentFactoriesBothImpl<T, S>(
      freezed == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as T,
      freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as S,
      null == another
          ? _value.another
          : another // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$GenericMultiCtorWithArgumentFactoriesBothImpl<T, S>
    implements _GenericMultiCtorWithArgumentFactoriesBoth<T, S> {
  _$GenericMultiCtorWithArgumentFactoriesBothImpl(
      this.first, this.second, this.another,
      {final String? $type})
      : $type = $type ?? 'both';

  factory _$GenericMultiCtorWithArgumentFactoriesBothImpl.fromJson(
          Map<String, dynamic> json,
          T Function(Object?) fromJsonT,
          S Function(Object?) fromJsonS) =>
      _$$GenericMultiCtorWithArgumentFactoriesBothImplFromJson(
          json, fromJsonT, fromJsonS);

  @override
  final T first;
  @override
  final S second;
  @override
  final String another;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GenericMultiCtorWithArgumentFactories<$T, $S>.both(first: $first, second: $second, another: $another)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericMultiCtorWithArgumentFactoriesBothImpl<T, S> &&
            const DeepCollectionEquality().equals(other.first, first) &&
            const DeepCollectionEquality().equals(other.second, second) &&
            (identical(other.another, another) || other.another == another));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(first),
      const DeepCollectionEquality().hash(second),
      another);

  /// Create a copy of GenericMultiCtorWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericMultiCtorWithArgumentFactoriesBothImplCopyWith<T, S,
          _$GenericMultiCtorWithArgumentFactoriesBothImpl<T, S>>
      get copyWith =>
          __$$GenericMultiCtorWithArgumentFactoriesBothImplCopyWithImpl<T, S,
                  _$GenericMultiCtorWithArgumentFactoriesBothImpl<T, S>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T first, S second, String another) $default, {
    required TResult Function(T first, String another) first,
    required TResult Function(S second, String another) second,
    required TResult Function(T first, S second, String another) both,
    required TResult Function(String another) none,
  }) {
    return both(this.first, this.second, another);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T first, S second, String another)? $default, {
    TResult? Function(T first, String another)? first,
    TResult? Function(S second, String another)? second,
    TResult? Function(T first, S second, String another)? both,
    TResult? Function(String another)? none,
  }) {
    return both?.call(this.first, this.second, another);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T first, S second, String another)? $default, {
    TResult Function(T first, String another)? first,
    TResult Function(S second, String another)? second,
    TResult Function(T first, S second, String another)? both,
    TResult Function(String another)? none,
    required TResult orElse(),
  }) {
    if (both != null) {
      return both(this.first, this.second, another);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GenericMultiCtorWithArgumentFactories<T, S> value)
        $default, {
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesVal<T, S> value)
        first,
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesSec<T, S> value)
        second,
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesBoth<T, S> value)
        both,
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesNone<T, S> value)
        none,
  }) {
    return both(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GenericMultiCtorWithArgumentFactories<T, S> value)?
        $default, {
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesVal<T, S> value)?
        first,
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesSec<T, S> value)?
        second,
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesBoth<T, S> value)?
        both,
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesNone<T, S> value)?
        none,
  }) {
    return both?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GenericMultiCtorWithArgumentFactories<T, S> value)?
        $default, {
    TResult Function(_GenericMultiCtorWithArgumentFactoriesVal<T, S> value)?
        first,
    TResult Function(_GenericMultiCtorWithArgumentFactoriesSec<T, S> value)?
        second,
    TResult Function(_GenericMultiCtorWithArgumentFactoriesBoth<T, S> value)?
        both,
    TResult Function(_GenericMultiCtorWithArgumentFactoriesNone<T, S> value)?
        none,
    required TResult orElse(),
  }) {
    if (both != null) {
      return both(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(
      Object? Function(T) toJsonT, Object? Function(S) toJsonS) {
    return _$$GenericMultiCtorWithArgumentFactoriesBothImplToJson<T, S>(
        this, toJsonT, toJsonS);
  }
}

abstract class _GenericMultiCtorWithArgumentFactoriesBoth<T, S>
    implements GenericMultiCtorWithArgumentFactories<T, S> {
  factory _GenericMultiCtorWithArgumentFactoriesBoth(
          final T first, final S second, final String another) =
      _$GenericMultiCtorWithArgumentFactoriesBothImpl<T, S>;

  factory _GenericMultiCtorWithArgumentFactoriesBoth.fromJson(
          Map<String, dynamic> json,
          T Function(Object?) fromJsonT,
          S Function(Object?) fromJsonS) =
      _$GenericMultiCtorWithArgumentFactoriesBothImpl<T, S>.fromJson;

  T get first;
  S get second;
  @override
  String get another;

  /// Create a copy of GenericMultiCtorWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericMultiCtorWithArgumentFactoriesBothImplCopyWith<T, S,
          _$GenericMultiCtorWithArgumentFactoriesBothImpl<T, S>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenericMultiCtorWithArgumentFactoriesNoneImplCopyWith<T, S,
        $Res>
    implements $GenericMultiCtorWithArgumentFactoriesCopyWith<T, S, $Res> {
  factory _$$GenericMultiCtorWithArgumentFactoriesNoneImplCopyWith(
          _$GenericMultiCtorWithArgumentFactoriesNoneImpl<T, S> value,
          $Res Function(_$GenericMultiCtorWithArgumentFactoriesNoneImpl<T, S>)
              then) =
      __$$GenericMultiCtorWithArgumentFactoriesNoneImplCopyWithImpl<T, S, $Res>;
  @override
  @useResult
  $Res call({String another});
}

/// @nodoc
class __$$GenericMultiCtorWithArgumentFactoriesNoneImplCopyWithImpl<T, S, $Res>
    extends _$GenericMultiCtorWithArgumentFactoriesCopyWithImpl<T, S, $Res,
        _$GenericMultiCtorWithArgumentFactoriesNoneImpl<T, S>>
    implements
        _$$GenericMultiCtorWithArgumentFactoriesNoneImplCopyWith<T, S, $Res> {
  __$$GenericMultiCtorWithArgumentFactoriesNoneImplCopyWithImpl(
      _$GenericMultiCtorWithArgumentFactoriesNoneImpl<T, S> _value,
      $Res Function(_$GenericMultiCtorWithArgumentFactoriesNoneImpl<T, S>)
          _then)
      : super(_value, _then);

  /// Create a copy of GenericMultiCtorWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? another = null,
  }) {
    return _then(_$GenericMultiCtorWithArgumentFactoriesNoneImpl<T, S>(
      null == another
          ? _value.another
          : another // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$GenericMultiCtorWithArgumentFactoriesNoneImpl<T, S>
    implements _GenericMultiCtorWithArgumentFactoriesNone<T, S> {
  _$GenericMultiCtorWithArgumentFactoriesNoneImpl(this.another,
      {final String? $type})
      : $type = $type ?? 'none';

  factory _$GenericMultiCtorWithArgumentFactoriesNoneImpl.fromJson(
          Map<String, dynamic> json,
          T Function(Object?) fromJsonT,
          S Function(Object?) fromJsonS) =>
      _$$GenericMultiCtorWithArgumentFactoriesNoneImplFromJson(
          json, fromJsonT, fromJsonS);

  @override
  final String another;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'GenericMultiCtorWithArgumentFactories<$T, $S>.none(another: $another)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericMultiCtorWithArgumentFactoriesNoneImpl<T, S> &&
            (identical(other.another, another) || other.another == another));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, another);

  /// Create a copy of GenericMultiCtorWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericMultiCtorWithArgumentFactoriesNoneImplCopyWith<T, S,
          _$GenericMultiCtorWithArgumentFactoriesNoneImpl<T, S>>
      get copyWith =>
          __$$GenericMultiCtorWithArgumentFactoriesNoneImplCopyWithImpl<T, S,
                  _$GenericMultiCtorWithArgumentFactoriesNoneImpl<T, S>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T first, S second, String another) $default, {
    required TResult Function(T first, String another) first,
    required TResult Function(S second, String another) second,
    required TResult Function(T first, S second, String another) both,
    required TResult Function(String another) none,
  }) {
    return none(another);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T first, S second, String another)? $default, {
    TResult? Function(T first, String another)? first,
    TResult? Function(S second, String another)? second,
    TResult? Function(T first, S second, String another)? both,
    TResult? Function(String another)? none,
  }) {
    return none?.call(another);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T first, S second, String another)? $default, {
    TResult Function(T first, String another)? first,
    TResult Function(S second, String another)? second,
    TResult Function(T first, S second, String another)? both,
    TResult Function(String another)? none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(another);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_GenericMultiCtorWithArgumentFactories<T, S> value)
        $default, {
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesVal<T, S> value)
        first,
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesSec<T, S> value)
        second,
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesBoth<T, S> value)
        both,
    required TResult Function(
            _GenericMultiCtorWithArgumentFactoriesNone<T, S> value)
        none,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_GenericMultiCtorWithArgumentFactories<T, S> value)?
        $default, {
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesVal<T, S> value)?
        first,
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesSec<T, S> value)?
        second,
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesBoth<T, S> value)?
        both,
    TResult? Function(_GenericMultiCtorWithArgumentFactoriesNone<T, S> value)?
        none,
  }) {
    return none?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_GenericMultiCtorWithArgumentFactories<T, S> value)?
        $default, {
    TResult Function(_GenericMultiCtorWithArgumentFactoriesVal<T, S> value)?
        first,
    TResult Function(_GenericMultiCtorWithArgumentFactoriesSec<T, S> value)?
        second,
    TResult Function(_GenericMultiCtorWithArgumentFactoriesBoth<T, S> value)?
        both,
    TResult Function(_GenericMultiCtorWithArgumentFactoriesNone<T, S> value)?
        none,
    required TResult orElse(),
  }) {
    if (none != null) {
      return none(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(
      Object? Function(T) toJsonT, Object? Function(S) toJsonS) {
    return _$$GenericMultiCtorWithArgumentFactoriesNoneImplToJson<T, S>(
        this, toJsonT, toJsonS);
  }
}

abstract class _GenericMultiCtorWithArgumentFactoriesNone<T, S>
    implements GenericMultiCtorWithArgumentFactories<T, S> {
  factory _GenericMultiCtorWithArgumentFactoriesNone(final String another) =
      _$GenericMultiCtorWithArgumentFactoriesNoneImpl<T, S>;

  factory _GenericMultiCtorWithArgumentFactoriesNone.fromJson(
          Map<String, dynamic> json,
          T Function(Object?) fromJsonT,
          S Function(Object?) fromJsonS) =
      _$GenericMultiCtorWithArgumentFactoriesNoneImpl<T, S>.fromJson;

  @override
  String get another;

  /// Create a copy of GenericMultiCtorWithArgumentFactories
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericMultiCtorWithArgumentFactoriesNoneImplCopyWith<T, S,
          _$GenericMultiCtorWithArgumentFactoriesNoneImpl<T, S>>
      get copyWith => throw _privateConstructorUsedError;
}
