// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'generic.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AnyGeneric<T> {
  T get value => throw _privateConstructorUsedError;

  /// Create a copy of AnyGeneric
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AnyGenericCopyWith<T, AnyGeneric<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnyGenericCopyWith<T, $Res> {
  factory $AnyGenericCopyWith(
          AnyGeneric<T> value, $Res Function(AnyGeneric<T>) then) =
      _$AnyGenericCopyWithImpl<T, $Res, AnyGeneric<T>>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class _$AnyGenericCopyWithImpl<T, $Res, $Val extends AnyGeneric<T>>
    implements $AnyGenericCopyWith<T, $Res> {
  _$AnyGenericCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AnyGeneric
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AnyGenericImplCopyWith<T, $Res>
    implements $AnyGenericCopyWith<T, $Res> {
  factory _$$AnyGenericImplCopyWith(
          _$AnyGenericImpl<T> value, $Res Function(_$AnyGenericImpl<T>) then) =
      __$$AnyGenericImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$AnyGenericImplCopyWithImpl<T, $Res>
    extends _$AnyGenericCopyWithImpl<T, $Res, _$AnyGenericImpl<T>>
    implements _$$AnyGenericImplCopyWith<T, $Res> {
  __$$AnyGenericImplCopyWithImpl(
      _$AnyGenericImpl<T> _value, $Res Function(_$AnyGenericImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AnyGeneric
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$AnyGenericImpl<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AnyGenericImpl<T> implements _AnyGeneric<T> {
  _$AnyGenericImpl(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'AnyGeneric<$T>(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnyGenericImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of AnyGeneric
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AnyGenericImplCopyWith<T, _$AnyGenericImpl<T>> get copyWith =>
      __$$AnyGenericImplCopyWithImpl<T, _$AnyGenericImpl<T>>(this, _$identity);
}

abstract class _AnyGeneric<T> implements AnyGeneric<T> {
  factory _AnyGeneric(final T value) = _$AnyGenericImpl<T>;

  @override
  T get value;

  /// Create a copy of AnyGeneric
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AnyGenericImplCopyWith<T, _$AnyGenericImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NullableGeneric<T extends Object?> {
  T get value => throw _privateConstructorUsedError;

  /// Create a copy of NullableGeneric
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NullableGenericCopyWith<T, NullableGeneric<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NullableGenericCopyWith<T extends Object?, $Res> {
  factory $NullableGenericCopyWith(
          NullableGeneric<T> value, $Res Function(NullableGeneric<T>) then) =
      _$NullableGenericCopyWithImpl<T, $Res, NullableGeneric<T>>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class _$NullableGenericCopyWithImpl<T extends Object?, $Res,
        $Val extends NullableGeneric<T>>
    implements $NullableGenericCopyWith<T, $Res> {
  _$NullableGenericCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NullableGeneric
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NullableGenericImplCopyWith<T extends Object?, $Res>
    implements $NullableGenericCopyWith<T, $Res> {
  factory _$$NullableGenericImplCopyWith(_$NullableGenericImpl<T> value,
          $Res Function(_$NullableGenericImpl<T>) then) =
      __$$NullableGenericImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$NullableGenericImplCopyWithImpl<T extends Object?, $Res>
    extends _$NullableGenericCopyWithImpl<T, $Res, _$NullableGenericImpl<T>>
    implements _$$NullableGenericImplCopyWith<T, $Res> {
  __$$NullableGenericImplCopyWithImpl(_$NullableGenericImpl<T> _value,
      $Res Function(_$NullableGenericImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of NullableGeneric
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$NullableGenericImpl<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NullableGenericImpl<T extends Object?> implements _NullableGeneric<T> {
  _$NullableGenericImpl(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'NullableGeneric<$T>(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NullableGenericImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of NullableGeneric
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NullableGenericImplCopyWith<T, _$NullableGenericImpl<T>> get copyWith =>
      __$$NullableGenericImplCopyWithImpl<T, _$NullableGenericImpl<T>>(
          this, _$identity);
}

abstract class _NullableGeneric<T extends Object?>
    implements NullableGeneric<T> {
  factory _NullableGeneric(final T value) = _$NullableGenericImpl<T>;

  @override
  T get value;

  /// Create a copy of NullableGeneric
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NullableGenericImplCopyWith<T, _$NullableGenericImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NonNullableGeneric<T extends Object> {
  T get value => throw _privateConstructorUsedError;

  /// Create a copy of NonNullableGeneric
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NonNullableGenericCopyWith<T, NonNullableGeneric<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonNullableGenericCopyWith<T extends Object, $Res> {
  factory $NonNullableGenericCopyWith(NonNullableGeneric<T> value,
          $Res Function(NonNullableGeneric<T>) then) =
      _$NonNullableGenericCopyWithImpl<T, $Res, NonNullableGeneric<T>>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class _$NonNullableGenericCopyWithImpl<T extends Object, $Res,
        $Val extends NonNullableGeneric<T>>
    implements $NonNullableGenericCopyWith<T, $Res> {
  _$NonNullableGenericCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NonNullableGeneric
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
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NonNullableGenericImplCopyWith<T extends Object, $Res>
    implements $NonNullableGenericCopyWith<T, $Res> {
  factory _$$NonNullableGenericImplCopyWith(_$NonNullableGenericImpl<T> value,
          $Res Function(_$NonNullableGenericImpl<T>) then) =
      __$$NonNullableGenericImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$NonNullableGenericImplCopyWithImpl<T extends Object, $Res>
    extends _$NonNullableGenericCopyWithImpl<T, $Res,
        _$NonNullableGenericImpl<T>>
    implements _$$NonNullableGenericImplCopyWith<T, $Res> {
  __$$NonNullableGenericImplCopyWithImpl(_$NonNullableGenericImpl<T> _value,
      $Res Function(_$NonNullableGenericImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of NonNullableGeneric
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$NonNullableGenericImpl<T>(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NonNullableGenericImpl<T extends Object>
    implements _NonNullableGeneric<T> {
  _$NonNullableGenericImpl(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'NonNullableGeneric<$T>(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NonNullableGenericImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of NonNullableGeneric
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NonNullableGenericImplCopyWith<T, _$NonNullableGenericImpl<T>>
      get copyWith => __$$NonNullableGenericImplCopyWithImpl<T,
          _$NonNullableGenericImpl<T>>(this, _$identity);
}

abstract class _NonNullableGeneric<T extends Object>
    implements NonNullableGeneric<T> {
  factory _NonNullableGeneric(final T value) = _$NonNullableGenericImpl<T>;

  @override
  T get value;

  /// Create a copy of NonNullableGeneric
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NonNullableGenericImplCopyWith<T, _$NonNullableGenericImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GenericOrNull<T extends Object> {
  T? get value => throw _privateConstructorUsedError;

  /// Create a copy of GenericOrNull
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenericOrNullCopyWith<T, GenericOrNull<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericOrNullCopyWith<T extends Object, $Res> {
  factory $GenericOrNullCopyWith(
          GenericOrNull<T> value, $Res Function(GenericOrNull<T>) then) =
      _$GenericOrNullCopyWithImpl<T, $Res, GenericOrNull<T>>;
  @useResult
  $Res call({T? value});
}

/// @nodoc
class _$GenericOrNullCopyWithImpl<T extends Object, $Res,
    $Val extends GenericOrNull<T>> implements $GenericOrNullCopyWith<T, $Res> {
  _$GenericOrNullCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenericOrNull
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenericOrNullImplCopyWith<T extends Object, $Res>
    implements $GenericOrNullCopyWith<T, $Res> {
  factory _$$GenericOrNullImplCopyWith(_$GenericOrNullImpl<T> value,
          $Res Function(_$GenericOrNullImpl<T>) then) =
      __$$GenericOrNullImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T? value});
}

/// @nodoc
class __$$GenericOrNullImplCopyWithImpl<T extends Object, $Res>
    extends _$GenericOrNullCopyWithImpl<T, $Res, _$GenericOrNullImpl<T>>
    implements _$$GenericOrNullImplCopyWith<T, $Res> {
  __$$GenericOrNullImplCopyWithImpl(_$GenericOrNullImpl<T> _value,
      $Res Function(_$GenericOrNullImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GenericOrNull
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$GenericOrNullImpl<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc

class _$GenericOrNullImpl<T extends Object> implements _GenericOrNull<T> {
  _$GenericOrNullImpl(this.value);

  @override
  final T? value;

  @override
  String toString() {
    return 'GenericOrNull<$T>(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericOrNullImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of GenericOrNull
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericOrNullImplCopyWith<T, _$GenericOrNullImpl<T>> get copyWith =>
      __$$GenericOrNullImplCopyWithImpl<T, _$GenericOrNullImpl<T>>(
          this, _$identity);
}

abstract class _GenericOrNull<T extends Object> implements GenericOrNull<T> {
  factory _GenericOrNull(final T? value) = _$GenericOrNullImpl<T>;

  @override
  T? get value;

  /// Create a copy of GenericOrNull
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericOrNullImplCopyWith<T, _$GenericOrNullImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Generic<T extends Model<dynamic>> {
  T get model => throw _privateConstructorUsedError;

  /// Create a copy of Generic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenericCopyWith<T, Generic<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericCopyWith<T extends Model<dynamic>, $Res> {
  factory $GenericCopyWith(Generic<T> value, $Res Function(Generic<T>) then) =
      _$GenericCopyWithImpl<T, $Res, Generic<T>>;
  @useResult
  $Res call({T model});
}

/// @nodoc
class _$GenericCopyWithImpl<T extends Model<dynamic>, $Res,
    $Val extends Generic<T>> implements $GenericCopyWith<T, $Res> {
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
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenericImplCopyWith<T extends Model<dynamic>, $Res>
    implements $GenericCopyWith<T, $Res> {
  factory _$$GenericImplCopyWith(
          _$GenericImpl<T> value, $Res Function(_$GenericImpl<T>) then) =
      __$$GenericImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T model});
}

/// @nodoc
class __$$GenericImplCopyWithImpl<T extends Model<dynamic>, $Res>
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
    Object? model = null,
  }) {
    return _then(_$GenericImpl<T>(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$GenericImpl<T extends Model<dynamic>> implements _Generic<T> {
  _$GenericImpl(this.model);

  @override
  final T model;

  @override
  String toString() {
    return 'Generic<$T>(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericImpl<T> &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  /// Create a copy of Generic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericImplCopyWith<T, _$GenericImpl<T>> get copyWith =>
      __$$GenericImplCopyWithImpl<T, _$GenericImpl<T>>(this, _$identity);
}

abstract class _Generic<T extends Model<dynamic>> implements Generic<T> {
  factory _Generic(final T model) = _$GenericImpl<T>;

  @override
  T get model;

  /// Create a copy of Generic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericImplCopyWith<T, _$GenericImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MultiGeneric<A, T extends Model<A>> {
  T get model => throw _privateConstructorUsedError;

  /// Create a copy of MultiGeneric
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MultiGenericCopyWith<A, T, MultiGeneric<A, T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultiGenericCopyWith<A, T extends Model<A>, $Res> {
  factory $MultiGenericCopyWith(
          MultiGeneric<A, T> value, $Res Function(MultiGeneric<A, T>) then) =
      _$MultiGenericCopyWithImpl<A, T, $Res, MultiGeneric<A, T>>;
  @useResult
  $Res call({T model});
}

/// @nodoc
class _$MultiGenericCopyWithImpl<A, T extends Model<A>, $Res,
        $Val extends MultiGeneric<A, T>>
    implements $MultiGenericCopyWith<A, T, $Res> {
  _$MultiGenericCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MultiGeneric
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_value.copyWith(
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MultiGenericImplCopyWith<A, T extends Model<A>, $Res>
    implements $MultiGenericCopyWith<A, T, $Res> {
  factory _$$MultiGenericImplCopyWith(_$MultiGenericImpl<A, T> value,
          $Res Function(_$MultiGenericImpl<A, T>) then) =
      __$$MultiGenericImplCopyWithImpl<A, T, $Res>;
  @override
  @useResult
  $Res call({T model});
}

/// @nodoc
class __$$MultiGenericImplCopyWithImpl<A, T extends Model<A>, $Res>
    extends _$MultiGenericCopyWithImpl<A, T, $Res, _$MultiGenericImpl<A, T>>
    implements _$$MultiGenericImplCopyWith<A, T, $Res> {
  __$$MultiGenericImplCopyWithImpl(_$MultiGenericImpl<A, T> _value,
      $Res Function(_$MultiGenericImpl<A, T>) _then)
      : super(_value, _then);

  /// Create a copy of MultiGeneric
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$MultiGenericImpl<A, T>(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$MultiGenericImpl<A, T extends Model<A>> implements _MultiGeneric<A, T> {
  _$MultiGenericImpl(this.model);

  @override
  final T model;

  @override
  String toString() {
    return 'MultiGeneric<$A, $T>(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MultiGenericImpl<A, T> &&
            const DeepCollectionEquality().equals(other.model, model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(model));

  /// Create a copy of MultiGeneric
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MultiGenericImplCopyWith<A, T, _$MultiGenericImpl<A, T>> get copyWith =>
      __$$MultiGenericImplCopyWithImpl<A, T, _$MultiGenericImpl<A, T>>(
          this, _$identity);
}

abstract class _MultiGeneric<A, T extends Model<A>>
    implements MultiGeneric<A, T> {
  factory _MultiGeneric(final T model) = _$MultiGenericImpl<A, T>;

  @override
  T get model;

  /// Create a copy of MultiGeneric
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MultiGenericImplCopyWith<A, T, _$MultiGenericImpl<A, T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MultipleConstructors<A, B> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool flag) $default, {
    required TResult Function(A a) first,
    required TResult Function(B b) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool flag)? $default, {
    TResult? Function(A a)? first,
    TResult? Function(B b)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool flag)? $default, {
    TResult Function(A a)? first,
    TResult Function(B b)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Default<A, B> value) $default, {
    required TResult Function(First<A, B> value) first,
    required TResult Function(Second<A, B> value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Default<A, B> value)? $default, {
    TResult? Function(First<A, B> value)? first,
    TResult? Function(Second<A, B> value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Default<A, B> value)? $default, {
    TResult Function(First<A, B> value)? first,
    TResult Function(Second<A, B> value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultipleConstructorsCopyWith<A, B, $Res> {
  factory $MultipleConstructorsCopyWith(MultipleConstructors<A, B> value,
          $Res Function(MultipleConstructors<A, B>) then) =
      _$MultipleConstructorsCopyWithImpl<A, B, $Res,
          MultipleConstructors<A, B>>;
}

/// @nodoc
class _$MultipleConstructorsCopyWithImpl<A, B, $Res,
        $Val extends MultipleConstructors<A, B>>
    implements $MultipleConstructorsCopyWith<A, B, $Res> {
  _$MultipleConstructorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MultipleConstructors
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DefaultImplCopyWith<A, B, $Res> {
  factory _$$DefaultImplCopyWith(
          _$DefaultImpl<A, B> value, $Res Function(_$DefaultImpl<A, B>) then) =
      __$$DefaultImplCopyWithImpl<A, B, $Res>;
  @useResult
  $Res call({bool flag});
}

/// @nodoc
class __$$DefaultImplCopyWithImpl<A, B, $Res>
    extends _$MultipleConstructorsCopyWithImpl<A, B, $Res, _$DefaultImpl<A, B>>
    implements _$$DefaultImplCopyWith<A, B, $Res> {
  __$$DefaultImplCopyWithImpl(
      _$DefaultImpl<A, B> _value, $Res Function(_$DefaultImpl<A, B>) _then)
      : super(_value, _then);

  /// Create a copy of MultipleConstructors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flag = null,
  }) {
    return _then(_$DefaultImpl<A, B>(
      null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DefaultImpl<A, B> implements Default<A, B> {
  _$DefaultImpl(this.flag);

  @override
  final bool flag;

  @override
  String toString() {
    return 'MultipleConstructors<$A, $B>(flag: $flag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DefaultImpl<A, B> &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flag);

  /// Create a copy of MultipleConstructors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DefaultImplCopyWith<A, B, _$DefaultImpl<A, B>> get copyWith =>
      __$$DefaultImplCopyWithImpl<A, B, _$DefaultImpl<A, B>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool flag) $default, {
    required TResult Function(A a) first,
    required TResult Function(B b) second,
  }) {
    return $default(flag);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool flag)? $default, {
    TResult? Function(A a)? first,
    TResult? Function(B b)? second,
  }) {
    return $default?.call(flag);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool flag)? $default, {
    TResult Function(A a)? first,
    TResult Function(B b)? second,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(flag);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Default<A, B> value) $default, {
    required TResult Function(First<A, B> value) first,
    required TResult Function(Second<A, B> value) second,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Default<A, B> value)? $default, {
    TResult? Function(First<A, B> value)? first,
    TResult? Function(Second<A, B> value)? second,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Default<A, B> value)? $default, {
    TResult Function(First<A, B> value)? first,
    TResult Function(Second<A, B> value)? second,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Default<A, B> implements MultipleConstructors<A, B> {
  factory Default(final bool flag) = _$DefaultImpl<A, B>;

  bool get flag;

  /// Create a copy of MultipleConstructors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DefaultImplCopyWith<A, B, _$DefaultImpl<A, B>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FirstImplCopyWith<A, B, $Res> {
  factory _$$FirstImplCopyWith(
          _$FirstImpl<A, B> value, $Res Function(_$FirstImpl<A, B>) then) =
      __$$FirstImplCopyWithImpl<A, B, $Res>;
  @useResult
  $Res call({A a});
}

/// @nodoc
class __$$FirstImplCopyWithImpl<A, B, $Res>
    extends _$MultipleConstructorsCopyWithImpl<A, B, $Res, _$FirstImpl<A, B>>
    implements _$$FirstImplCopyWith<A, B, $Res> {
  __$$FirstImplCopyWithImpl(
      _$FirstImpl<A, B> _value, $Res Function(_$FirstImpl<A, B>) _then)
      : super(_value, _then);

  /// Create a copy of MultipleConstructors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = freezed,
  }) {
    return _then(_$FirstImpl<A, B>(
      freezed == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as A,
    ));
  }
}

/// @nodoc

class _$FirstImpl<A, B> implements First<A, B> {
  _$FirstImpl(this.a);

  @override
  final A a;

  @override
  String toString() {
    return 'MultipleConstructors<$A, $B>.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirstImpl<A, B> &&
            const DeepCollectionEquality().equals(other.a, a));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(a));

  /// Create a copy of MultipleConstructors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirstImplCopyWith<A, B, _$FirstImpl<A, B>> get copyWith =>
      __$$FirstImplCopyWithImpl<A, B, _$FirstImpl<A, B>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool flag) $default, {
    required TResult Function(A a) first,
    required TResult Function(B b) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool flag)? $default, {
    TResult? Function(A a)? first,
    TResult? Function(B b)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool flag)? $default, {
    TResult Function(A a)? first,
    TResult Function(B b)? second,
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
    TResult Function(Default<A, B> value) $default, {
    required TResult Function(First<A, B> value) first,
    required TResult Function(Second<A, B> value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Default<A, B> value)? $default, {
    TResult? Function(First<A, B> value)? first,
    TResult? Function(Second<A, B> value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Default<A, B> value)? $default, {
    TResult Function(First<A, B> value)? first,
    TResult Function(Second<A, B> value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }
}

abstract class First<A, B> implements MultipleConstructors<A, B> {
  factory First(final A a) = _$FirstImpl<A, B>;

  A get a;

  /// Create a copy of MultipleConstructors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirstImplCopyWith<A, B, _$FirstImpl<A, B>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SecondImplCopyWith<A, B, $Res> {
  factory _$$SecondImplCopyWith(
          _$SecondImpl<A, B> value, $Res Function(_$SecondImpl<A, B>) then) =
      __$$SecondImplCopyWithImpl<A, B, $Res>;
  @useResult
  $Res call({B b});
}

/// @nodoc
class __$$SecondImplCopyWithImpl<A, B, $Res>
    extends _$MultipleConstructorsCopyWithImpl<A, B, $Res, _$SecondImpl<A, B>>
    implements _$$SecondImplCopyWith<A, B, $Res> {
  __$$SecondImplCopyWithImpl(
      _$SecondImpl<A, B> _value, $Res Function(_$SecondImpl<A, B>) _then)
      : super(_value, _then);

  /// Create a copy of MultipleConstructors
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? b = freezed,
  }) {
    return _then(_$SecondImpl<A, B>(
      freezed == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as B,
    ));
  }
}

/// @nodoc

class _$SecondImpl<A, B> implements Second<A, B> {
  _$SecondImpl(this.b);

  @override
  final B b;

  @override
  String toString() {
    return 'MultipleConstructors<$A, $B>.second(b: $b)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SecondImpl<A, B> &&
            const DeepCollectionEquality().equals(other.b, b));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(b));

  /// Create a copy of MultipleConstructors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SecondImplCopyWith<A, B, _$SecondImpl<A, B>> get copyWith =>
      __$$SecondImplCopyWithImpl<A, B, _$SecondImpl<A, B>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool flag) $default, {
    required TResult Function(A a) first,
    required TResult Function(B b) second,
  }) {
    return second(b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(bool flag)? $default, {
    TResult? Function(A a)? first,
    TResult? Function(B b)? second,
  }) {
    return second?.call(b);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool flag)? $default, {
    TResult Function(A a)? first,
    TResult Function(B b)? second,
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
    TResult Function(Default<A, B> value) $default, {
    required TResult Function(First<A, B> value) first,
    required TResult Function(Second<A, B> value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Default<A, B> value)? $default, {
    TResult? Function(First<A, B> value)? first,
    TResult? Function(Second<A, B> value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Default<A, B> value)? $default, {
    TResult Function(First<A, B> value)? first,
    TResult Function(Second<A, B> value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }
}

abstract class Second<A, B> implements MultipleConstructors<A, B> {
  factory Second(final B b) = _$SecondImpl<A, B>;

  B get b;

  /// Create a copy of MultipleConstructors
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SecondImplCopyWith<A, B, _$SecondImpl<A, B>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Union<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T value)? $default, {
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data<T> value) $default, {
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ErrorDetails<T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Data<T> value)? $default, {
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ErrorDetails<T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnionCopyWith<T, $Res> {
  factory $UnionCopyWith(Union<T> value, $Res Function(Union<T>) then) =
      _$UnionCopyWithImpl<T, $Res, Union<T>>;
}

/// @nodoc
class _$UnionCopyWithImpl<T, $Res, $Val extends Union<T>>
    implements $UnionCopyWith<T, $Res> {
  _$UnionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DataImplCopyWith<T, $Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl<T> value, $Res Function(_$DataImpl<T>) then) =
      __$$DataImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T value});
}

/// @nodoc
class __$$DataImplCopyWithImpl<T, $Res>
    extends _$UnionCopyWithImpl<T, $Res, _$DataImpl<T>>
    implements _$$DataImplCopyWith<T, $Res> {
  __$$DataImplCopyWithImpl(
      _$DataImpl<T> _value, $Res Function(_$DataImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$DataImpl<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DataImpl<T> implements Data<T> {
  const _$DataImpl(this.value);

  @override
  final T value;

  @override
  String toString() {
    return 'Union<$T>(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<T, _$DataImpl<T>> get copyWith =>
      __$$DataImplCopyWithImpl<T, _$DataImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return $default(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T value)? $default, {
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
  }) {
    return $default?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data<T> value) $default, {
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ErrorDetails<T> value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Data<T> value)? $default, {
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ErrorDetails<T> value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Data<T> implements Union<T> {
  const factory Data(final T value) = _$DataImpl<T>;

  T get value;

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DataImplCopyWith<T, _$DataImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<T, $Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl<T> value, $Res Function(_$LoadingImpl<T>) then) =
      __$$LoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<T, $Res>
    extends _$UnionCopyWithImpl<T, $Res, _$LoadingImpl<T>>
    implements _$$LoadingImplCopyWith<T, $Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl<T> _value, $Res Function(_$LoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl<T> implements Loading<T> {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'Union<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T value)? $default, {
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data<T> value) $default, {
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ErrorDetails<T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Data<T> value)? $default, {
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ErrorDetails<T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements Union<T> {
  const factory Loading() = _$LoadingImpl<T>;
}

/// @nodoc
abstract class _$$ErrorDetailsImplCopyWith<T, $Res> {
  factory _$$ErrorDetailsImplCopyWith(_$ErrorDetailsImpl<T> value,
          $Res Function(_$ErrorDetailsImpl<T>) then) =
      __$$ErrorDetailsImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$ErrorDetailsImplCopyWithImpl<T, $Res>
    extends _$UnionCopyWithImpl<T, $Res, _$ErrorDetailsImpl<T>>
    implements _$$ErrorDetailsImplCopyWith<T, $Res> {
  __$$ErrorDetailsImplCopyWithImpl(
      _$ErrorDetailsImpl<T> _value, $Res Function(_$ErrorDetailsImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ErrorDetailsImpl<T>(
      freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ErrorDetailsImpl<T> implements ErrorDetails<T> {
  const _$ErrorDetailsImpl([this.message]);

  @override
  final String? message;

  @override
  String toString() {
    return 'Union<$T>.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorDetailsImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorDetailsImplCopyWith<T, _$ErrorDetailsImpl<T>> get copyWith =>
      __$$ErrorDetailsImplCopyWithImpl<T, _$ErrorDetailsImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(T value) $default, {
    required TResult Function() loading,
    required TResult Function(String? message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(T value)? $default, {
    TResult? Function()? loading,
    TResult? Function(String? message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(T value)? $default, {
    TResult Function()? loading,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Data<T> value) $default, {
    required TResult Function(Loading<T> value) loading,
    required TResult Function(ErrorDetails<T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Data<T> value)? $default, {
    TResult? Function(Loading<T> value)? loading,
    TResult? Function(ErrorDetails<T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Data<T> value)? $default, {
    TResult Function(Loading<T> value)? loading,
    TResult Function(ErrorDetails<T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class ErrorDetails<T> implements Union<T> {
  const factory ErrorDetails([final String? message]) = _$ErrorDetailsImpl<T>;

  String? get message;

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorDetailsImplCopyWith<T, _$ErrorDetailsImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ComplexParameters<T> {
  List<T> get value => throw _privateConstructorUsedError;

  /// Create a copy of ComplexParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComplexParametersCopyWith<T, ComplexParameters<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplexParametersCopyWith<T, $Res> {
  factory $ComplexParametersCopyWith(ComplexParameters<T> value,
          $Res Function(ComplexParameters<T>) then) =
      _$ComplexParametersCopyWithImpl<T, $Res, ComplexParameters<T>>;
  @useResult
  $Res call({List<T> value});
}

/// @nodoc
class _$ComplexParametersCopyWithImpl<T, $Res,
        $Val extends ComplexParameters<T>>
    implements $ComplexParametersCopyWith<T, $Res> {
  _$ComplexParametersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ComplexParameters
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
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ComplexParametersImplCopyWith<T, $Res>
    implements $ComplexParametersCopyWith<T, $Res> {
  factory _$$ComplexParametersImplCopyWith(_$ComplexParametersImpl<T> value,
          $Res Function(_$ComplexParametersImpl<T>) then) =
      __$$ComplexParametersImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({List<T> value});
}

/// @nodoc
class __$$ComplexParametersImplCopyWithImpl<T, $Res>
    extends _$ComplexParametersCopyWithImpl<T, $Res, _$ComplexParametersImpl<T>>
    implements _$$ComplexParametersImplCopyWith<T, $Res> {
  __$$ComplexParametersImplCopyWithImpl(_$ComplexParametersImpl<T> _value,
      $Res Function(_$ComplexParametersImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ComplexParameters
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ComplexParametersImpl<T>(
      null == value
          ? _value._value
          : value // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc

class _$ComplexParametersImpl<T> implements _ComplexParameters<T> {
  const _$ComplexParametersImpl(final List<T> value) : _value = value;

  final List<T> _value;
  @override
  List<T> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @override
  String toString() {
    return 'ComplexParameters<$T>(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ComplexParametersImpl<T> &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  /// Create a copy of ComplexParameters
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ComplexParametersImplCopyWith<T, _$ComplexParametersImpl<T>>
      get copyWith =>
          __$$ComplexParametersImplCopyWithImpl<T, _$ComplexParametersImpl<T>>(
              this, _$identity);
}

abstract class _ComplexParameters<T> implements ComplexParameters<T> {
  const factory _ComplexParameters(final List<T> value) =
      _$ComplexParametersImpl<T>;

  @override
  List<T> get value;

  /// Create a copy of ComplexParameters
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ComplexParametersImplCopyWith<T, _$ComplexParametersImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Inner<I> {
  I? get data => throw _privateConstructorUsedError;

  /// Create a copy of Inner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InnerCopyWith<I, Inner<I>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnerCopyWith<I, $Res> {
  factory $InnerCopyWith(Inner<I> value, $Res Function(Inner<I>) then) =
      _$InnerCopyWithImpl<I, $Res, Inner<I>>;
  @useResult
  $Res call({I? data});
}

/// @nodoc
class _$InnerCopyWithImpl<I, $Res, $Val extends Inner<I>>
    implements $InnerCopyWith<I, $Res> {
  _$InnerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Inner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as I?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InnerImplCopyWith<I, $Res>
    implements $InnerCopyWith<I, $Res> {
  factory _$$InnerImplCopyWith(
          _$InnerImpl<I> value, $Res Function(_$InnerImpl<I>) then) =
      __$$InnerImplCopyWithImpl<I, $Res>;
  @override
  @useResult
  $Res call({I? data});
}

/// @nodoc
class __$$InnerImplCopyWithImpl<I, $Res>
    extends _$InnerCopyWithImpl<I, $Res, _$InnerImpl<I>>
    implements _$$InnerImplCopyWith<I, $Res> {
  __$$InnerImplCopyWithImpl(
      _$InnerImpl<I> _value, $Res Function(_$InnerImpl<I>) _then)
      : super(_value, _then);

  /// Create a copy of Inner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$InnerImpl<I>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as I?,
    ));
  }
}

/// @nodoc

class _$InnerImpl<I> implements _Inner<I> {
  const _$InnerImpl({this.data});

  @override
  final I? data;

  @override
  String toString() {
    return 'Inner<$I>(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerImpl<I> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of Inner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerImplCopyWith<I, _$InnerImpl<I>> get copyWith =>
      __$$InnerImplCopyWithImpl<I, _$InnerImpl<I>>(this, _$identity);
}

abstract class _Inner<I> implements Inner<I> {
  const factory _Inner({final I? data}) = _$InnerImpl<I>;

  @override
  I? get data;

  /// Create a copy of Inner
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InnerImplCopyWith<I, _$InnerImpl<I>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Outer {
  Inner<int>? get innerData => throw _privateConstructorUsedError;

  /// Create a copy of Outer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OuterCopyWith<Outer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OuterCopyWith<$Res> {
  factory $OuterCopyWith(Outer value, $Res Function(Outer) then) =
      _$OuterCopyWithImpl<$Res, Outer>;
  @useResult
  $Res call({Inner<int>? innerData});

  $InnerCopyWith<int, $Res>? get innerData;
}

/// @nodoc
class _$OuterCopyWithImpl<$Res, $Val extends Outer>
    implements $OuterCopyWith<$Res> {
  _$OuterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Outer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? innerData = freezed,
  }) {
    return _then(_value.copyWith(
      innerData: freezed == innerData
          ? _value.innerData
          : innerData // ignore: cast_nullable_to_non_nullable
              as Inner<int>?,
    ) as $Val);
  }

  /// Create a copy of Outer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $InnerCopyWith<int, $Res>? get innerData {
    if (_value.innerData == null) {
      return null;
    }

    return $InnerCopyWith<int, $Res>(_value.innerData!, (value) {
      return _then(_value.copyWith(innerData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OuterImplCopyWith<$Res> implements $OuterCopyWith<$Res> {
  factory _$$OuterImplCopyWith(
          _$OuterImpl value, $Res Function(_$OuterImpl) then) =
      __$$OuterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Inner<int>? innerData});

  @override
  $InnerCopyWith<int, $Res>? get innerData;
}

/// @nodoc
class __$$OuterImplCopyWithImpl<$Res>
    extends _$OuterCopyWithImpl<$Res, _$OuterImpl>
    implements _$$OuterImplCopyWith<$Res> {
  __$$OuterImplCopyWithImpl(
      _$OuterImpl _value, $Res Function(_$OuterImpl) _then)
      : super(_value, _then);

  /// Create a copy of Outer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? innerData = freezed,
  }) {
    return _then(_$OuterImpl(
      innerData: freezed == innerData
          ? _value.innerData
          : innerData // ignore: cast_nullable_to_non_nullable
              as Inner<int>?,
    ));
  }
}

/// @nodoc

class _$OuterImpl implements _Outer {
  const _$OuterImpl({this.innerData});

  @override
  final Inner<int>? innerData;

  @override
  String toString() {
    return 'Outer(innerData: $innerData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OuterImpl &&
            (identical(other.innerData, innerData) ||
                other.innerData == innerData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, innerData);

  /// Create a copy of Outer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OuterImplCopyWith<_$OuterImpl> get copyWith =>
      __$$OuterImplCopyWithImpl<_$OuterImpl>(this, _$identity);
}

abstract class _Outer implements Outer {
  const factory _Outer({final Inner<int>? innerData}) = _$OuterImpl;

  @override
  Inner<int>? get innerData;

  /// Create a copy of Outer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OuterImplCopyWith<_$OuterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
