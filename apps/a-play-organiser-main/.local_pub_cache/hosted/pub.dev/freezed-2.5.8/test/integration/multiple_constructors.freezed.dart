// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multiple_constructors.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UnfreezedImmutableUnion {
  String get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a) named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a)? named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a)? named,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DirectUnfreezedImmutableUnion value) $default, {
    required TResult Function(DirectUnfreezedImmutableUnionNamed value) named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DirectUnfreezedImmutableUnion value)? $default, {
    TResult? Function(DirectUnfreezedImmutableUnionNamed value)? named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DirectUnfreezedImmutableUnion value)? $default, {
    TResult Function(DirectUnfreezedImmutableUnionNamed value)? named,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of UnfreezedImmutableUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnfreezedImmutableUnionCopyWith<UnfreezedImmutableUnion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnfreezedImmutableUnionCopyWith<$Res> {
  factory $UnfreezedImmutableUnionCopyWith(UnfreezedImmutableUnion value,
          $Res Function(UnfreezedImmutableUnion) then) =
      _$UnfreezedImmutableUnionCopyWithImpl<$Res, UnfreezedImmutableUnion>;
  @useResult
  $Res call({String a});
}

/// @nodoc
class _$UnfreezedImmutableUnionCopyWithImpl<$Res,
        $Val extends UnfreezedImmutableUnion>
    implements $UnfreezedImmutableUnionCopyWith<$Res> {
  _$UnfreezedImmutableUnionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnfreezedImmutableUnion
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
abstract class _$$DirectUnfreezedImmutableUnionImplCopyWith<$Res>
    implements $UnfreezedImmutableUnionCopyWith<$Res> {
  factory _$$DirectUnfreezedImmutableUnionImplCopyWith(
          _$DirectUnfreezedImmutableUnionImpl value,
          $Res Function(_$DirectUnfreezedImmutableUnionImpl) then) =
      __$$DirectUnfreezedImmutableUnionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a});
}

/// @nodoc
class __$$DirectUnfreezedImmutableUnionImplCopyWithImpl<$Res>
    extends _$UnfreezedImmutableUnionCopyWithImpl<$Res,
        _$DirectUnfreezedImmutableUnionImpl>
    implements _$$DirectUnfreezedImmutableUnionImplCopyWith<$Res> {
  __$$DirectUnfreezedImmutableUnionImplCopyWithImpl(
      _$DirectUnfreezedImmutableUnionImpl _value,
      $Res Function(_$DirectUnfreezedImmutableUnionImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnfreezedImmutableUnion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$DirectUnfreezedImmutableUnionImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DirectUnfreezedImmutableUnionImpl
    implements DirectUnfreezedImmutableUnion {
  _$DirectUnfreezedImmutableUnionImpl(this.a);

  @override
  final String a;

  @override
  String toString() {
    return 'UnfreezedImmutableUnion(a: $a)';
  }

  /// Create a copy of UnfreezedImmutableUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectUnfreezedImmutableUnionImplCopyWith<
          _$DirectUnfreezedImmutableUnionImpl>
      get copyWith => __$$DirectUnfreezedImmutableUnionImplCopyWithImpl<
          _$DirectUnfreezedImmutableUnionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a) named,
  }) {
    return $default(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a)? named,
  }) {
    return $default?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a)? named,
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
    TResult Function(DirectUnfreezedImmutableUnion value) $default, {
    required TResult Function(DirectUnfreezedImmutableUnionNamed value) named,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DirectUnfreezedImmutableUnion value)? $default, {
    TResult? Function(DirectUnfreezedImmutableUnionNamed value)? named,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DirectUnfreezedImmutableUnion value)? $default, {
    TResult Function(DirectUnfreezedImmutableUnionNamed value)? named,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class DirectUnfreezedImmutableUnion
    implements UnfreezedImmutableUnion {
  factory DirectUnfreezedImmutableUnion(final String a) =
      _$DirectUnfreezedImmutableUnionImpl;

  @override
  String get a;

  /// Create a copy of UnfreezedImmutableUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DirectUnfreezedImmutableUnionImplCopyWith<
          _$DirectUnfreezedImmutableUnionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DirectUnfreezedImmutableUnionNamedImplCopyWith<$Res>
    implements $UnfreezedImmutableUnionCopyWith<$Res> {
  factory _$$DirectUnfreezedImmutableUnionNamedImplCopyWith(
          _$DirectUnfreezedImmutableUnionNamedImpl value,
          $Res Function(_$DirectUnfreezedImmutableUnionNamedImpl) then) =
      __$$DirectUnfreezedImmutableUnionNamedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a});
}

/// @nodoc
class __$$DirectUnfreezedImmutableUnionNamedImplCopyWithImpl<$Res>
    extends _$UnfreezedImmutableUnionCopyWithImpl<$Res,
        _$DirectUnfreezedImmutableUnionNamedImpl>
    implements _$$DirectUnfreezedImmutableUnionNamedImplCopyWith<$Res> {
  __$$DirectUnfreezedImmutableUnionNamedImplCopyWithImpl(
      _$DirectUnfreezedImmutableUnionNamedImpl _value,
      $Res Function(_$DirectUnfreezedImmutableUnionNamedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnfreezedImmutableUnion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$DirectUnfreezedImmutableUnionNamedImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DirectUnfreezedImmutableUnionNamedImpl
    implements DirectUnfreezedImmutableUnionNamed {
  _$DirectUnfreezedImmutableUnionNamedImpl(this.a);

  @override
  String a;

  @override
  String toString() {
    return 'UnfreezedImmutableUnion.named(a: $a)';
  }

  /// Create a copy of UnfreezedImmutableUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectUnfreezedImmutableUnionNamedImplCopyWith<
          _$DirectUnfreezedImmutableUnionNamedImpl>
      get copyWith => __$$DirectUnfreezedImmutableUnionNamedImplCopyWithImpl<
          _$DirectUnfreezedImmutableUnionNamedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a) named,
  }) {
    return named(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a)? named,
  }) {
    return named?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a)? named,
    required TResult orElse(),
  }) {
    if (named != null) {
      return named(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DirectUnfreezedImmutableUnion value) $default, {
    required TResult Function(DirectUnfreezedImmutableUnionNamed value) named,
  }) {
    return named(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DirectUnfreezedImmutableUnion value)? $default, {
    TResult? Function(DirectUnfreezedImmutableUnionNamed value)? named,
  }) {
    return named?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DirectUnfreezedImmutableUnion value)? $default, {
    TResult Function(DirectUnfreezedImmutableUnionNamed value)? named,
    required TResult orElse(),
  }) {
    if (named != null) {
      return named(this);
    }
    return orElse();
  }
}

abstract class DirectUnfreezedImmutableUnionNamed
    implements UnfreezedImmutableUnion {
  factory DirectUnfreezedImmutableUnionNamed(String a) =
      _$DirectUnfreezedImmutableUnionNamedImpl;

  @override
  String get a;
  set a(String value);

  /// Create a copy of UnfreezedImmutableUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DirectUnfreezedImmutableUnionNamedImplCopyWith<
          _$DirectUnfreezedImmutableUnionNamedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UnfreezedImmutableUnion2 {
  String get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a) named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a)? named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a)? named,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DirectUnfreezedImmutableUnion2 value) $default, {
    required TResult Function(DirectUnfreezedImmutableUnionNamed2 value) named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DirectUnfreezedImmutableUnion2 value)? $default, {
    TResult? Function(DirectUnfreezedImmutableUnionNamed2 value)? named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DirectUnfreezedImmutableUnion2 value)? $default, {
    TResult Function(DirectUnfreezedImmutableUnionNamed2 value)? named,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of UnfreezedImmutableUnion2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnfreezedImmutableUnion2CopyWith<UnfreezedImmutableUnion2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnfreezedImmutableUnion2CopyWith<$Res> {
  factory $UnfreezedImmutableUnion2CopyWith(UnfreezedImmutableUnion2 value,
          $Res Function(UnfreezedImmutableUnion2) then) =
      _$UnfreezedImmutableUnion2CopyWithImpl<$Res, UnfreezedImmutableUnion2>;
  @useResult
  $Res call({String a});
}

/// @nodoc
class _$UnfreezedImmutableUnion2CopyWithImpl<$Res,
        $Val extends UnfreezedImmutableUnion2>
    implements $UnfreezedImmutableUnion2CopyWith<$Res> {
  _$UnfreezedImmutableUnion2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnfreezedImmutableUnion2
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
abstract class _$$DirectUnfreezedImmutableUnion2ImplCopyWith<$Res>
    implements $UnfreezedImmutableUnion2CopyWith<$Res> {
  factory _$$DirectUnfreezedImmutableUnion2ImplCopyWith(
          _$DirectUnfreezedImmutableUnion2Impl value,
          $Res Function(_$DirectUnfreezedImmutableUnion2Impl) then) =
      __$$DirectUnfreezedImmutableUnion2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a});
}

/// @nodoc
class __$$DirectUnfreezedImmutableUnion2ImplCopyWithImpl<$Res>
    extends _$UnfreezedImmutableUnion2CopyWithImpl<$Res,
        _$DirectUnfreezedImmutableUnion2Impl>
    implements _$$DirectUnfreezedImmutableUnion2ImplCopyWith<$Res> {
  __$$DirectUnfreezedImmutableUnion2ImplCopyWithImpl(
      _$DirectUnfreezedImmutableUnion2Impl _value,
      $Res Function(_$DirectUnfreezedImmutableUnion2Impl) _then)
      : super(_value, _then);

  /// Create a copy of UnfreezedImmutableUnion2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$DirectUnfreezedImmutableUnion2Impl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DirectUnfreezedImmutableUnion2Impl
    implements DirectUnfreezedImmutableUnion2 {
  _$DirectUnfreezedImmutableUnion2Impl(this.a);

  @override
  String a;

  @override
  String toString() {
    return 'UnfreezedImmutableUnion2(a: $a)';
  }

  /// Create a copy of UnfreezedImmutableUnion2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectUnfreezedImmutableUnion2ImplCopyWith<
          _$DirectUnfreezedImmutableUnion2Impl>
      get copyWith => __$$DirectUnfreezedImmutableUnion2ImplCopyWithImpl<
          _$DirectUnfreezedImmutableUnion2Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a) named,
  }) {
    return $default(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a)? named,
  }) {
    return $default?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a)? named,
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
    TResult Function(DirectUnfreezedImmutableUnion2 value) $default, {
    required TResult Function(DirectUnfreezedImmutableUnionNamed2 value) named,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DirectUnfreezedImmutableUnion2 value)? $default, {
    TResult? Function(DirectUnfreezedImmutableUnionNamed2 value)? named,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DirectUnfreezedImmutableUnion2 value)? $default, {
    TResult Function(DirectUnfreezedImmutableUnionNamed2 value)? named,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class DirectUnfreezedImmutableUnion2
    implements UnfreezedImmutableUnion2 {
  factory DirectUnfreezedImmutableUnion2(String a) =
      _$DirectUnfreezedImmutableUnion2Impl;

  @override
  String get a;
  set a(String value);

  /// Create a copy of UnfreezedImmutableUnion2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DirectUnfreezedImmutableUnion2ImplCopyWith<
          _$DirectUnfreezedImmutableUnion2Impl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DirectUnfreezedImmutableUnionNamed2ImplCopyWith<$Res>
    implements $UnfreezedImmutableUnion2CopyWith<$Res> {
  factory _$$DirectUnfreezedImmutableUnionNamed2ImplCopyWith(
          _$DirectUnfreezedImmutableUnionNamed2Impl value,
          $Res Function(_$DirectUnfreezedImmutableUnionNamed2Impl) then) =
      __$$DirectUnfreezedImmutableUnionNamed2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a});
}

/// @nodoc
class __$$DirectUnfreezedImmutableUnionNamed2ImplCopyWithImpl<$Res>
    extends _$UnfreezedImmutableUnion2CopyWithImpl<$Res,
        _$DirectUnfreezedImmutableUnionNamed2Impl>
    implements _$$DirectUnfreezedImmutableUnionNamed2ImplCopyWith<$Res> {
  __$$DirectUnfreezedImmutableUnionNamed2ImplCopyWithImpl(
      _$DirectUnfreezedImmutableUnionNamed2Impl _value,
      $Res Function(_$DirectUnfreezedImmutableUnionNamed2Impl) _then)
      : super(_value, _then);

  /// Create a copy of UnfreezedImmutableUnion2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$DirectUnfreezedImmutableUnionNamed2Impl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DirectUnfreezedImmutableUnionNamed2Impl
    implements DirectUnfreezedImmutableUnionNamed2 {
  _$DirectUnfreezedImmutableUnionNamed2Impl(this.a);

  @override
  final String a;

  @override
  String toString() {
    return 'UnfreezedImmutableUnion2.named(a: $a)';
  }

  /// Create a copy of UnfreezedImmutableUnion2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectUnfreezedImmutableUnionNamed2ImplCopyWith<
          _$DirectUnfreezedImmutableUnionNamed2Impl>
      get copyWith => __$$DirectUnfreezedImmutableUnionNamed2ImplCopyWithImpl<
          _$DirectUnfreezedImmutableUnionNamed2Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a) named,
  }) {
    return named(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a)? named,
  }) {
    return named?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a)? named,
    required TResult orElse(),
  }) {
    if (named != null) {
      return named(a);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(DirectUnfreezedImmutableUnion2 value) $default, {
    required TResult Function(DirectUnfreezedImmutableUnionNamed2 value) named,
  }) {
    return named(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(DirectUnfreezedImmutableUnion2 value)? $default, {
    TResult? Function(DirectUnfreezedImmutableUnionNamed2 value)? named,
  }) {
    return named?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(DirectUnfreezedImmutableUnion2 value)? $default, {
    TResult Function(DirectUnfreezedImmutableUnionNamed2 value)? named,
    required TResult orElse(),
  }) {
    if (named != null) {
      return named(this);
    }
    return orElse();
  }
}

abstract class DirectUnfreezedImmutableUnionNamed2
    implements UnfreezedImmutableUnion2 {
  factory DirectUnfreezedImmutableUnionNamed2(final String a) =
      _$DirectUnfreezedImmutableUnionNamed2Impl;

  @override
  String get a;

  /// Create a copy of UnfreezedImmutableUnion2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DirectUnfreezedImmutableUnionNamed2ImplCopyWith<
          _$DirectUnfreezedImmutableUnionNamed2Impl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MutableUnion {
  String get a => throw _privateConstructorUsedError;
  set a(String value) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a, int b) $default, {
    required TResult Function(String a, int c) named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a, int b)? $default, {
    TResult? Function(String a, int c)? named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a, int b)? $default, {
    TResult Function(String a, int c)? named,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MutableUnion0 value) $default, {
    required TResult Function(MutableUnion1 value) named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MutableUnion0 value)? $default, {
    TResult? Function(MutableUnion1 value)? named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MutableUnion0 value)? $default, {
    TResult Function(MutableUnion1 value)? named,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of MutableUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MutableUnionCopyWith<MutableUnion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MutableUnionCopyWith<$Res> {
  factory $MutableUnionCopyWith(
          MutableUnion value, $Res Function(MutableUnion) then) =
      _$MutableUnionCopyWithImpl<$Res, MutableUnion>;
  @useResult
  $Res call({String a});
}

/// @nodoc
class _$MutableUnionCopyWithImpl<$Res, $Val extends MutableUnion>
    implements $MutableUnionCopyWith<$Res> {
  _$MutableUnionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MutableUnion
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
abstract class _$$MutableUnion0ImplCopyWith<$Res>
    implements $MutableUnionCopyWith<$Res> {
  factory _$$MutableUnion0ImplCopyWith(
          _$MutableUnion0Impl value, $Res Function(_$MutableUnion0Impl) then) =
      __$$MutableUnion0ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a, int b});
}

/// @nodoc
class __$$MutableUnion0ImplCopyWithImpl<$Res>
    extends _$MutableUnionCopyWithImpl<$Res, _$MutableUnion0Impl>
    implements _$$MutableUnion0ImplCopyWith<$Res> {
  __$$MutableUnion0ImplCopyWithImpl(
      _$MutableUnion0Impl _value, $Res Function(_$MutableUnion0Impl) _then)
      : super(_value, _then);

  /// Create a copy of MutableUnion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = null,
  }) {
    return _then(_$MutableUnion0Impl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MutableUnion0Impl implements MutableUnion0 {
  _$MutableUnion0Impl(this.a, this.b);

  @override
  String a;
  @override
  int b;

  @override
  String toString() {
    return 'MutableUnion(a: $a, b: $b)';
  }

  /// Create a copy of MutableUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MutableUnion0ImplCopyWith<_$MutableUnion0Impl> get copyWith =>
      __$$MutableUnion0ImplCopyWithImpl<_$MutableUnion0Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a, int b) $default, {
    required TResult Function(String a, int c) named,
  }) {
    return $default(a, b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a, int b)? $default, {
    TResult? Function(String a, int c)? named,
  }) {
    return $default?.call(a, b);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a, int b)? $default, {
    TResult Function(String a, int c)? named,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(a, b);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MutableUnion0 value) $default, {
    required TResult Function(MutableUnion1 value) named,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MutableUnion0 value)? $default, {
    TResult? Function(MutableUnion1 value)? named,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MutableUnion0 value)? $default, {
    TResult Function(MutableUnion1 value)? named,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class MutableUnion0 implements MutableUnion {
  factory MutableUnion0(String a, int b) = _$MutableUnion0Impl;

  @override
  String get a;
  set a(String value);
  int get b;
  set b(int value);

  /// Create a copy of MutableUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MutableUnion0ImplCopyWith<_$MutableUnion0Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MutableUnion1ImplCopyWith<$Res>
    implements $MutableUnionCopyWith<$Res> {
  factory _$$MutableUnion1ImplCopyWith(
          _$MutableUnion1Impl value, $Res Function(_$MutableUnion1Impl) then) =
      __$$MutableUnion1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a, int c});
}

/// @nodoc
class __$$MutableUnion1ImplCopyWithImpl<$Res>
    extends _$MutableUnionCopyWithImpl<$Res, _$MutableUnion1Impl>
    implements _$$MutableUnion1ImplCopyWith<$Res> {
  __$$MutableUnion1ImplCopyWithImpl(
      _$MutableUnion1Impl _value, $Res Function(_$MutableUnion1Impl) _then)
      : super(_value, _then);

  /// Create a copy of MutableUnion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? c = null,
  }) {
    return _then(_$MutableUnion1Impl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      null == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$MutableUnion1Impl implements MutableUnion1 {
  _$MutableUnion1Impl(this.a, this.c);

  @override
  String a;
  @override
  int c;

  @override
  String toString() {
    return 'MutableUnion.named(a: $a, c: $c)';
  }

  /// Create a copy of MutableUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MutableUnion1ImplCopyWith<_$MutableUnion1Impl> get copyWith =>
      __$$MutableUnion1ImplCopyWithImpl<_$MutableUnion1Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a, int b) $default, {
    required TResult Function(String a, int c) named,
  }) {
    return named(a, c);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a, int b)? $default, {
    TResult? Function(String a, int c)? named,
  }) {
    return named?.call(a, c);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a, int b)? $default, {
    TResult Function(String a, int c)? named,
    required TResult orElse(),
  }) {
    if (named != null) {
      return named(a, c);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(MutableUnion0 value) $default, {
    required TResult Function(MutableUnion1 value) named,
  }) {
    return named(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(MutableUnion0 value)? $default, {
    TResult? Function(MutableUnion1 value)? named,
  }) {
    return named?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(MutableUnion0 value)? $default, {
    TResult Function(MutableUnion1 value)? named,
    required TResult orElse(),
  }) {
    if (named != null) {
      return named(this);
    }
    return orElse();
  }
}

abstract class MutableUnion1 implements MutableUnion {
  factory MutableUnion1(String a, int c) = _$MutableUnion1Impl;

  @override
  String get a;
  set a(String value);
  int get c;
  set c(int value);

  /// Create a copy of MutableUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MutableUnion1ImplCopyWith<_$MutableUnion1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DefaultValueNamedConstructor {
  int get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) a,
    required TResult Function(int value) b,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? a,
    TResult? Function(int value)? b,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? a,
    TResult Function(int value)? b,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ADefaultValueNamedConstructor value) a,
    required TResult Function(_BDefaultValueNamedConstructor value) b,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ADefaultValueNamedConstructor value)? a,
    TResult? Function(_BDefaultValueNamedConstructor value)? b,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ADefaultValueNamedConstructor value)? a,
    TResult Function(_BDefaultValueNamedConstructor value)? b,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DefaultValueNamedConstructor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DefaultValueNamedConstructorCopyWith<DefaultValueNamedConstructor>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DefaultValueNamedConstructorCopyWith<$Res> {
  factory $DefaultValueNamedConstructorCopyWith(
          DefaultValueNamedConstructor value,
          $Res Function(DefaultValueNamedConstructor) then) =
      _$DefaultValueNamedConstructorCopyWithImpl<$Res,
          DefaultValueNamedConstructor>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$DefaultValueNamedConstructorCopyWithImpl<$Res,
        $Val extends DefaultValueNamedConstructor>
    implements $DefaultValueNamedConstructorCopyWith<$Res> {
  _$DefaultValueNamedConstructorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DefaultValueNamedConstructor
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
abstract class _$$ADefaultValueNamedConstructorImplCopyWith<$Res>
    implements $DefaultValueNamedConstructorCopyWith<$Res> {
  factory _$$ADefaultValueNamedConstructorImplCopyWith(
          _$ADefaultValueNamedConstructorImpl value,
          $Res Function(_$ADefaultValueNamedConstructorImpl) then) =
      __$$ADefaultValueNamedConstructorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$ADefaultValueNamedConstructorImplCopyWithImpl<$Res>
    extends _$DefaultValueNamedConstructorCopyWithImpl<$Res,
        _$ADefaultValueNamedConstructorImpl>
    implements _$$ADefaultValueNamedConstructorImplCopyWith<$Res> {
  __$$ADefaultValueNamedConstructorImplCopyWithImpl(
      _$ADefaultValueNamedConstructorImpl _value,
      $Res Function(_$ADefaultValueNamedConstructorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DefaultValueNamedConstructor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ADefaultValueNamedConstructorImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ADefaultValueNamedConstructorImpl
    implements _ADefaultValueNamedConstructor {
  _$ADefaultValueNamedConstructorImpl([this.value = 42]);

  @override
  @JsonKey()
  final int value;

  @override
  String toString() {
    return 'DefaultValueNamedConstructor.a(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ADefaultValueNamedConstructorImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of DefaultValueNamedConstructor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ADefaultValueNamedConstructorImplCopyWith<
          _$ADefaultValueNamedConstructorImpl>
      get copyWith => __$$ADefaultValueNamedConstructorImplCopyWithImpl<
          _$ADefaultValueNamedConstructorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) a,
    required TResult Function(int value) b,
  }) {
    return a(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? a,
    TResult? Function(int value)? b,
  }) {
    return a?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? a,
    TResult Function(int value)? b,
    required TResult orElse(),
  }) {
    if (a != null) {
      return a(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ADefaultValueNamedConstructor value) a,
    required TResult Function(_BDefaultValueNamedConstructor value) b,
  }) {
    return a(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ADefaultValueNamedConstructor value)? a,
    TResult? Function(_BDefaultValueNamedConstructor value)? b,
  }) {
    return a?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ADefaultValueNamedConstructor value)? a,
    TResult Function(_BDefaultValueNamedConstructor value)? b,
    required TResult orElse(),
  }) {
    if (a != null) {
      return a(this);
    }
    return orElse();
  }
}

abstract class _ADefaultValueNamedConstructor
    implements DefaultValueNamedConstructor {
  factory _ADefaultValueNamedConstructor([final int value]) =
      _$ADefaultValueNamedConstructorImpl;

  @override
  int get value;

  /// Create a copy of DefaultValueNamedConstructor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ADefaultValueNamedConstructorImplCopyWith<
          _$ADefaultValueNamedConstructorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BDefaultValueNamedConstructorImplCopyWith<$Res>
    implements $DefaultValueNamedConstructorCopyWith<$Res> {
  factory _$$BDefaultValueNamedConstructorImplCopyWith(
          _$BDefaultValueNamedConstructorImpl value,
          $Res Function(_$BDefaultValueNamedConstructorImpl) then) =
      __$$BDefaultValueNamedConstructorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$BDefaultValueNamedConstructorImplCopyWithImpl<$Res>
    extends _$DefaultValueNamedConstructorCopyWithImpl<$Res,
        _$BDefaultValueNamedConstructorImpl>
    implements _$$BDefaultValueNamedConstructorImplCopyWith<$Res> {
  __$$BDefaultValueNamedConstructorImplCopyWithImpl(
      _$BDefaultValueNamedConstructorImpl _value,
      $Res Function(_$BDefaultValueNamedConstructorImpl) _then)
      : super(_value, _then);

  /// Create a copy of DefaultValueNamedConstructor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$BDefaultValueNamedConstructorImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BDefaultValueNamedConstructorImpl
    implements _BDefaultValueNamedConstructor {
  _$BDefaultValueNamedConstructorImpl([this.value = 42]);

  @override
  @JsonKey()
  final int value;

  @override
  String toString() {
    return 'DefaultValueNamedConstructor.b(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BDefaultValueNamedConstructorImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of DefaultValueNamedConstructor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BDefaultValueNamedConstructorImplCopyWith<
          _$BDefaultValueNamedConstructorImpl>
      get copyWith => __$$BDefaultValueNamedConstructorImplCopyWithImpl<
          _$BDefaultValueNamedConstructorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) a,
    required TResult Function(int value) b,
  }) {
    return b(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? a,
    TResult? Function(int value)? b,
  }) {
    return b?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? a,
    TResult Function(int value)? b,
    required TResult orElse(),
  }) {
    if (b != null) {
      return b(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ADefaultValueNamedConstructor value) a,
    required TResult Function(_BDefaultValueNamedConstructor value) b,
  }) {
    return b(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ADefaultValueNamedConstructor value)? a,
    TResult? Function(_BDefaultValueNamedConstructor value)? b,
  }) {
    return b?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ADefaultValueNamedConstructor value)? a,
    TResult Function(_BDefaultValueNamedConstructor value)? b,
    required TResult orElse(),
  }) {
    if (b != null) {
      return b(this);
    }
    return orElse();
  }
}

abstract class _BDefaultValueNamedConstructor
    implements DefaultValueNamedConstructor {
  factory _BDefaultValueNamedConstructor([final int value]) =
      _$BDefaultValueNamedConstructorImpl;

  @override
  int get value;

  /// Create a copy of DefaultValueNamedConstructor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BDefaultValueNamedConstructorImplCopyWith<
          _$BDefaultValueNamedConstructorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NamedDefaultValueNamedConstructor {
  int get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) a,
    required TResult Function(int value) b,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? a,
    TResult? Function(int value)? b,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? a,
    TResult Function(int value)? b,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BNamedDefaultValueNamedConstructor value) a,
    required TResult Function(_ANamedDefaultValueNamedConstructor value) b,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BNamedDefaultValueNamedConstructor value)? a,
    TResult? Function(_ANamedDefaultValueNamedConstructor value)? b,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BNamedDefaultValueNamedConstructor value)? a,
    TResult Function(_ANamedDefaultValueNamedConstructor value)? b,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NamedDefaultValueNamedConstructor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NamedDefaultValueNamedConstructorCopyWith<NamedDefaultValueNamedConstructor>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NamedDefaultValueNamedConstructorCopyWith<$Res> {
  factory $NamedDefaultValueNamedConstructorCopyWith(
          NamedDefaultValueNamedConstructor value,
          $Res Function(NamedDefaultValueNamedConstructor) then) =
      _$NamedDefaultValueNamedConstructorCopyWithImpl<$Res,
          NamedDefaultValueNamedConstructor>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class _$NamedDefaultValueNamedConstructorCopyWithImpl<$Res,
        $Val extends NamedDefaultValueNamedConstructor>
    implements $NamedDefaultValueNamedConstructorCopyWith<$Res> {
  _$NamedDefaultValueNamedConstructorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NamedDefaultValueNamedConstructor
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
abstract class _$$BNamedDefaultValueNamedConstructorImplCopyWith<$Res>
    implements $NamedDefaultValueNamedConstructorCopyWith<$Res> {
  factory _$$BNamedDefaultValueNamedConstructorImplCopyWith(
          _$BNamedDefaultValueNamedConstructorImpl value,
          $Res Function(_$BNamedDefaultValueNamedConstructorImpl) then) =
      __$$BNamedDefaultValueNamedConstructorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$BNamedDefaultValueNamedConstructorImplCopyWithImpl<$Res>
    extends _$NamedDefaultValueNamedConstructorCopyWithImpl<$Res,
        _$BNamedDefaultValueNamedConstructorImpl>
    implements _$$BNamedDefaultValueNamedConstructorImplCopyWith<$Res> {
  __$$BNamedDefaultValueNamedConstructorImplCopyWithImpl(
      _$BNamedDefaultValueNamedConstructorImpl _value,
      $Res Function(_$BNamedDefaultValueNamedConstructorImpl) _then)
      : super(_value, _then);

  /// Create a copy of NamedDefaultValueNamedConstructor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$BNamedDefaultValueNamedConstructorImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$BNamedDefaultValueNamedConstructorImpl
    implements _BNamedDefaultValueNamedConstructor {
  _$BNamedDefaultValueNamedConstructorImpl({this.value = 42});

  @override
  @JsonKey()
  final int value;

  @override
  String toString() {
    return 'NamedDefaultValueNamedConstructor.a(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BNamedDefaultValueNamedConstructorImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of NamedDefaultValueNamedConstructor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BNamedDefaultValueNamedConstructorImplCopyWith<
          _$BNamedDefaultValueNamedConstructorImpl>
      get copyWith => __$$BNamedDefaultValueNamedConstructorImplCopyWithImpl<
          _$BNamedDefaultValueNamedConstructorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) a,
    required TResult Function(int value) b,
  }) {
    return a(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? a,
    TResult? Function(int value)? b,
  }) {
    return a?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? a,
    TResult Function(int value)? b,
    required TResult orElse(),
  }) {
    if (a != null) {
      return a(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BNamedDefaultValueNamedConstructor value) a,
    required TResult Function(_ANamedDefaultValueNamedConstructor value) b,
  }) {
    return a(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BNamedDefaultValueNamedConstructor value)? a,
    TResult? Function(_ANamedDefaultValueNamedConstructor value)? b,
  }) {
    return a?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BNamedDefaultValueNamedConstructor value)? a,
    TResult Function(_ANamedDefaultValueNamedConstructor value)? b,
    required TResult orElse(),
  }) {
    if (a != null) {
      return a(this);
    }
    return orElse();
  }
}

abstract class _BNamedDefaultValueNamedConstructor
    implements NamedDefaultValueNamedConstructor {
  factory _BNamedDefaultValueNamedConstructor({final int value}) =
      _$BNamedDefaultValueNamedConstructorImpl;

  @override
  int get value;

  /// Create a copy of NamedDefaultValueNamedConstructor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BNamedDefaultValueNamedConstructorImplCopyWith<
          _$BNamedDefaultValueNamedConstructorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ANamedDefaultValueNamedConstructorImplCopyWith<$Res>
    implements $NamedDefaultValueNamedConstructorCopyWith<$Res> {
  factory _$$ANamedDefaultValueNamedConstructorImplCopyWith(
          _$ANamedDefaultValueNamedConstructorImpl value,
          $Res Function(_$ANamedDefaultValueNamedConstructorImpl) then) =
      __$$ANamedDefaultValueNamedConstructorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$ANamedDefaultValueNamedConstructorImplCopyWithImpl<$Res>
    extends _$NamedDefaultValueNamedConstructorCopyWithImpl<$Res,
        _$ANamedDefaultValueNamedConstructorImpl>
    implements _$$ANamedDefaultValueNamedConstructorImplCopyWith<$Res> {
  __$$ANamedDefaultValueNamedConstructorImplCopyWithImpl(
      _$ANamedDefaultValueNamedConstructorImpl _value,
      $Res Function(_$ANamedDefaultValueNamedConstructorImpl) _then)
      : super(_value, _then);

  /// Create a copy of NamedDefaultValueNamedConstructor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$ANamedDefaultValueNamedConstructorImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ANamedDefaultValueNamedConstructorImpl
    implements _ANamedDefaultValueNamedConstructor {
  _$ANamedDefaultValueNamedConstructorImpl({this.value = 42});

  @override
  @JsonKey()
  final int value;

  @override
  String toString() {
    return 'NamedDefaultValueNamedConstructor.b(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ANamedDefaultValueNamedConstructorImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of NamedDefaultValueNamedConstructor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ANamedDefaultValueNamedConstructorImplCopyWith<
          _$ANamedDefaultValueNamedConstructorImpl>
      get copyWith => __$$ANamedDefaultValueNamedConstructorImplCopyWithImpl<
          _$ANamedDefaultValueNamedConstructorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) a,
    required TResult Function(int value) b,
  }) {
    return b(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? a,
    TResult? Function(int value)? b,
  }) {
    return b?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? a,
    TResult Function(int value)? b,
    required TResult orElse(),
  }) {
    if (b != null) {
      return b(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BNamedDefaultValueNamedConstructor value) a,
    required TResult Function(_ANamedDefaultValueNamedConstructor value) b,
  }) {
    return b(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_BNamedDefaultValueNamedConstructor value)? a,
    TResult? Function(_ANamedDefaultValueNamedConstructor value)? b,
  }) {
    return b?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BNamedDefaultValueNamedConstructor value)? a,
    TResult Function(_ANamedDefaultValueNamedConstructor value)? b,
    required TResult orElse(),
  }) {
    if (b != null) {
      return b(this);
    }
    return orElse();
  }
}

abstract class _ANamedDefaultValueNamedConstructor
    implements NamedDefaultValueNamedConstructor {
  factory _ANamedDefaultValueNamedConstructor({final int value}) =
      _$ANamedDefaultValueNamedConstructorImpl;

  @override
  int get value;

  /// Create a copy of NamedDefaultValueNamedConstructor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ANamedDefaultValueNamedConstructorImplCopyWith<
          _$ANamedDefaultValueNamedConstructorImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoCommonParam {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a, int? b) $default, {
    required TResult Function(double c, Object? d) named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a, int? b)? $default, {
    TResult? Function(double c, Object? d)? named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a, int? b)? $default, {
    TResult Function(double c, Object? d)? named,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(NoCommonParam0 value) $default, {
    required TResult Function(NoCommonParam1 value) named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(NoCommonParam0 value)? $default, {
    TResult? Function(NoCommonParam1 value)? named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(NoCommonParam0 value)? $default, {
    TResult Function(NoCommonParam1 value)? named,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoCommonParamCopyWith<$Res> {
  factory $NoCommonParamCopyWith(
          NoCommonParam value, $Res Function(NoCommonParam) then) =
      _$NoCommonParamCopyWithImpl<$Res, NoCommonParam>;
}

/// @nodoc
class _$NoCommonParamCopyWithImpl<$Res, $Val extends NoCommonParam>
    implements $NoCommonParamCopyWith<$Res> {
  _$NoCommonParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoCommonParam
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NoCommonParam0ImplCopyWith<$Res> {
  factory _$$NoCommonParam0ImplCopyWith(_$NoCommonParam0Impl value,
          $Res Function(_$NoCommonParam0Impl) then) =
      __$$NoCommonParam0ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String a, int? b});
}

/// @nodoc
class __$$NoCommonParam0ImplCopyWithImpl<$Res>
    extends _$NoCommonParamCopyWithImpl<$Res, _$NoCommonParam0Impl>
    implements _$$NoCommonParam0ImplCopyWith<$Res> {
  __$$NoCommonParam0ImplCopyWithImpl(
      _$NoCommonParam0Impl _value, $Res Function(_$NoCommonParam0Impl) _then)
      : super(_value, _then);

  /// Create a copy of NoCommonParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = freezed,
  }) {
    return _then(_$NoCommonParam0Impl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: freezed == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$NoCommonParam0Impl implements NoCommonParam0 {
  const _$NoCommonParam0Impl(this.a, {this.b});

  @override
  final String a;
  @override
  final int? b;

  @override
  String toString() {
    return 'NoCommonParam(a: $a, b: $b)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoCommonParam0Impl &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b));
  }

  @override
  int get hashCode => Object.hash(runtimeType, a, b);

  /// Create a copy of NoCommonParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoCommonParam0ImplCopyWith<_$NoCommonParam0Impl> get copyWith =>
      __$$NoCommonParam0ImplCopyWithImpl<_$NoCommonParam0Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a, int? b) $default, {
    required TResult Function(double c, Object? d) named,
  }) {
    return $default(a, b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a, int? b)? $default, {
    TResult? Function(double c, Object? d)? named,
  }) {
    return $default?.call(a, b);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a, int? b)? $default, {
    TResult Function(double c, Object? d)? named,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(a, b);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(NoCommonParam0 value) $default, {
    required TResult Function(NoCommonParam1 value) named,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(NoCommonParam0 value)? $default, {
    TResult? Function(NoCommonParam1 value)? named,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(NoCommonParam0 value)? $default, {
    TResult Function(NoCommonParam1 value)? named,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class NoCommonParam0 implements NoCommonParam {
  const factory NoCommonParam0(final String a, {final int? b}) =
      _$NoCommonParam0Impl;

  String get a;
  int? get b;

  /// Create a copy of NoCommonParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoCommonParam0ImplCopyWith<_$NoCommonParam0Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoCommonParam1ImplCopyWith<$Res> {
  factory _$$NoCommonParam1ImplCopyWith(_$NoCommonParam1Impl value,
          $Res Function(_$NoCommonParam1Impl) then) =
      __$$NoCommonParam1ImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double c, Object? d});
}

/// @nodoc
class __$$NoCommonParam1ImplCopyWithImpl<$Res>
    extends _$NoCommonParamCopyWithImpl<$Res, _$NoCommonParam1Impl>
    implements _$$NoCommonParam1ImplCopyWith<$Res> {
  __$$NoCommonParam1ImplCopyWithImpl(
      _$NoCommonParam1Impl _value, $Res Function(_$NoCommonParam1Impl) _then)
      : super(_value, _then);

  /// Create a copy of NoCommonParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? c = null,
    Object? d = freezed,
  }) {
    return _then(_$NoCommonParam1Impl(
      null == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as double,
      freezed == d ? _value.d : d,
    ));
  }
}

/// @nodoc

class _$NoCommonParam1Impl implements NoCommonParam1 {
  const _$NoCommonParam1Impl(this.c, [this.d]);

  @override
  final double c;
  @override
  final Object? d;

  @override
  String toString() {
    return 'NoCommonParam.named(c: $c, d: $d)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoCommonParam1Impl &&
            (identical(other.c, c) || other.c == c) &&
            const DeepCollectionEquality().equals(other.d, d));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, c, const DeepCollectionEquality().hash(d));

  /// Create a copy of NoCommonParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoCommonParam1ImplCopyWith<_$NoCommonParam1Impl> get copyWith =>
      __$$NoCommonParam1ImplCopyWithImpl<_$NoCommonParam1Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a, int? b) $default, {
    required TResult Function(double c, Object? d) named,
  }) {
    return named(c, d);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a, int? b)? $default, {
    TResult? Function(double c, Object? d)? named,
  }) {
    return named?.call(c, d);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a, int? b)? $default, {
    TResult Function(double c, Object? d)? named,
    required TResult orElse(),
  }) {
    if (named != null) {
      return named(c, d);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(NoCommonParam0 value) $default, {
    required TResult Function(NoCommonParam1 value) named,
  }) {
    return named(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(NoCommonParam0 value)? $default, {
    TResult? Function(NoCommonParam1 value)? named,
  }) {
    return named?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(NoCommonParam0 value)? $default, {
    TResult Function(NoCommonParam1 value)? named,
    required TResult orElse(),
  }) {
    if (named != null) {
      return named(this);
    }
    return orElse();
  }
}

abstract class NoCommonParam1 implements NoCommonParam {
  const factory NoCommonParam1(final double c, [final Object? d]) =
      _$NoCommonParam1Impl;

  double get c;
  Object? get d;

  /// Create a copy of NoCommonParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoCommonParam1ImplCopyWith<_$NoCommonParam1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Regression358 {
  int get number => throw _privateConstructorUsedError;

  /// Create a copy of Regression358
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Regression358CopyWith<Regression358> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Regression358CopyWith<$Res> {
  factory $Regression358CopyWith(
          Regression358 value, $Res Function(Regression358) then) =
      _$Regression358CopyWithImpl<$Res, Regression358>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class _$Regression358CopyWithImpl<$Res, $Val extends Regression358>
    implements $Regression358CopyWith<$Res> {
  _$Regression358CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Regression358
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Regression358ImplCopyWith<$Res>
    implements $Regression358CopyWith<$Res> {
  factory _$$Regression358ImplCopyWith(
          _$Regression358Impl value, $Res Function(_$Regression358Impl) then) =
      __$$Regression358ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$Regression358ImplCopyWithImpl<$Res>
    extends _$Regression358CopyWithImpl<$Res, _$Regression358Impl>
    implements _$$Regression358ImplCopyWith<$Res> {
  __$$Regression358ImplCopyWithImpl(
      _$Regression358Impl _value, $Res Function(_$Regression358Impl) _then)
      : super(_value, _then);

  /// Create a copy of Regression358
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$Regression358Impl(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Regression358Impl implements _Regression358 {
  const _$Regression358Impl({required this.number});

  @override
  final int number;

  @override
  String toString() {
    return 'Regression358(number: $number)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Regression358Impl &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  /// Create a copy of Regression358
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Regression358ImplCopyWith<_$Regression358Impl> get copyWith =>
      __$$Regression358ImplCopyWithImpl<_$Regression358Impl>(this, _$identity);
}

abstract class _Regression358 implements Regression358 {
  const factory _Regression358({required final int number}) =
      _$Regression358Impl;

  @override
  int get number;

  /// Create a copy of Regression358
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Regression358ImplCopyWith<_$Regression358Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SharedParam {
  String get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a, int b) $default, {
    required TResult Function(String a, int c) named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a, int b)? $default, {
    TResult? Function(String a, int c)? named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a, int b)? $default, {
    TResult Function(String a, int c)? named,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SharedParam0 value) $default, {
    required TResult Function(SharedParam1 value) named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SharedParam0 value)? $default, {
    TResult? Function(SharedParam1 value)? named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SharedParam0 value)? $default, {
    TResult Function(SharedParam1 value)? named,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SharedParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SharedParamCopyWith<SharedParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SharedParamCopyWith<$Res> {
  factory $SharedParamCopyWith(
          SharedParam value, $Res Function(SharedParam) then) =
      _$SharedParamCopyWithImpl<$Res, SharedParam>;
  @useResult
  $Res call({String a});
}

/// @nodoc
class _$SharedParamCopyWithImpl<$Res, $Val extends SharedParam>
    implements $SharedParamCopyWith<$Res> {
  _$SharedParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SharedParam
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
abstract class _$$SharedParam0ImplCopyWith<$Res>
    implements $SharedParamCopyWith<$Res> {
  factory _$$SharedParam0ImplCopyWith(
          _$SharedParam0Impl value, $Res Function(_$SharedParam0Impl) then) =
      __$$SharedParam0ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a, int b});
}

/// @nodoc
class __$$SharedParam0ImplCopyWithImpl<$Res>
    extends _$SharedParamCopyWithImpl<$Res, _$SharedParam0Impl>
    implements _$$SharedParam0ImplCopyWith<$Res> {
  __$$SharedParam0ImplCopyWithImpl(
      _$SharedParam0Impl _value, $Res Function(_$SharedParam0Impl) _then)
      : super(_value, _then);

  /// Create a copy of SharedParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = null,
  }) {
    return _then(_$SharedParam0Impl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SharedParam0Impl implements SharedParam0 {
  const _$SharedParam0Impl(this.a, this.b);

  @override
  final String a;
  @override
  final int b;

  @override
  String toString() {
    return 'SharedParam(a: $a, b: $b)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedParam0Impl &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b));
  }

  @override
  int get hashCode => Object.hash(runtimeType, a, b);

  /// Create a copy of SharedParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedParam0ImplCopyWith<_$SharedParam0Impl> get copyWith =>
      __$$SharedParam0ImplCopyWithImpl<_$SharedParam0Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a, int b) $default, {
    required TResult Function(String a, int c) named,
  }) {
    return $default(a, b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a, int b)? $default, {
    TResult? Function(String a, int c)? named,
  }) {
    return $default?.call(a, b);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a, int b)? $default, {
    TResult Function(String a, int c)? named,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(a, b);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SharedParam0 value) $default, {
    required TResult Function(SharedParam1 value) named,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SharedParam0 value)? $default, {
    TResult? Function(SharedParam1 value)? named,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SharedParam0 value)? $default, {
    TResult Function(SharedParam1 value)? named,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SharedParam0 implements SharedParam {
  const factory SharedParam0(final String a, final int b) = _$SharedParam0Impl;

  @override
  String get a;
  int get b;

  /// Create a copy of SharedParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SharedParam0ImplCopyWith<_$SharedParam0Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SharedParam1ImplCopyWith<$Res>
    implements $SharedParamCopyWith<$Res> {
  factory _$$SharedParam1ImplCopyWith(
          _$SharedParam1Impl value, $Res Function(_$SharedParam1Impl) then) =
      __$$SharedParam1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a, int c});
}

/// @nodoc
class __$$SharedParam1ImplCopyWithImpl<$Res>
    extends _$SharedParamCopyWithImpl<$Res, _$SharedParam1Impl>
    implements _$$SharedParam1ImplCopyWith<$Res> {
  __$$SharedParam1ImplCopyWithImpl(
      _$SharedParam1Impl _value, $Res Function(_$SharedParam1Impl) _then)
      : super(_value, _then);

  /// Create a copy of SharedParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? c = null,
  }) {
    return _then(_$SharedParam1Impl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      null == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SharedParam1Impl implements SharedParam1 {
  const _$SharedParam1Impl(this.a, this.c);

  @override
  final String a;
  @override
  final int c;

  @override
  String toString() {
    return 'SharedParam.named(a: $a, c: $c)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedParam1Impl &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.c, c) || other.c == c));
  }

  @override
  int get hashCode => Object.hash(runtimeType, a, c);

  /// Create a copy of SharedParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SharedParam1ImplCopyWith<_$SharedParam1Impl> get copyWith =>
      __$$SharedParam1ImplCopyWithImpl<_$SharedParam1Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a, int b) $default, {
    required TResult Function(String a, int c) named,
  }) {
    return named(a, c);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a, int b)? $default, {
    TResult? Function(String a, int c)? named,
  }) {
    return named?.call(a, c);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a, int b)? $default, {
    TResult Function(String a, int c)? named,
    required TResult orElse(),
  }) {
    if (named != null) {
      return named(a, c);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SharedParam0 value) $default, {
    required TResult Function(SharedParam1 value) named,
  }) {
    return named(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SharedParam0 value)? $default, {
    TResult? Function(SharedParam1 value)? named,
  }) {
    return named?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SharedParam0 value)? $default, {
    TResult Function(SharedParam1 value)? named,
    required TResult orElse(),
  }) {
    if (named != null) {
      return named(this);
    }
    return orElse();
  }
}

abstract class SharedParam1 implements SharedParam {
  const factory SharedParam1(final String a, final int c) = _$SharedParam1Impl;

  @override
  String get a;
  int get c;

  /// Create a copy of SharedParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SharedParam1ImplCopyWith<_$SharedParam1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Complex {
  /// Hello
  String get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a, bool? b, double? d) first,
    required TResult Function(String a, int? c, double? d) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a, bool? b, double? d)? first,
    TResult? Function(String a, int? c, double? d)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a, bool? b, double? d)? first,
    TResult Function(String a, int? c, double? d)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Complex0 value) $default, {
    required TResult Function(Complex1 value) first,
    required TResult Function(Complex2 value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Complex0 value)? $default, {
    TResult? Function(Complex1 value)? first,
    TResult? Function(Complex2 value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Complex0 value)? $default, {
    TResult Function(Complex1 value)? first,
    TResult Function(Complex2 value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Complex
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ComplexCopyWith<Complex> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ComplexCopyWith<$Res> {
  factory $ComplexCopyWith(Complex value, $Res Function(Complex) then) =
      _$ComplexCopyWithImpl<$Res, Complex>;
  @useResult
  $Res call({String a});
}

/// @nodoc
class _$ComplexCopyWithImpl<$Res, $Val extends Complex>
    implements $ComplexCopyWith<$Res> {
  _$ComplexCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Complex
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
abstract class _$$Complex0ImplCopyWith<$Res> implements $ComplexCopyWith<$Res> {
  factory _$$Complex0ImplCopyWith(
          _$Complex0Impl value, $Res Function(_$Complex0Impl) then) =
      __$$Complex0ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a});
}

/// @nodoc
class __$$Complex0ImplCopyWithImpl<$Res>
    extends _$ComplexCopyWithImpl<$Res, _$Complex0Impl>
    implements _$$Complex0ImplCopyWith<$Res> {
  __$$Complex0ImplCopyWithImpl(
      _$Complex0Impl _value, $Res Function(_$Complex0Impl) _then)
      : super(_value, _then);

  /// Create a copy of Complex
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$Complex0Impl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Complex0Impl implements Complex0 {
  const _$Complex0Impl(this.a) : assert(a != '', '"Hello"');

  /// Hello
  @override
  final String a;

  @override
  String toString() {
    return 'Complex(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Complex0Impl &&
            (identical(other.a, a) || other.a == a));
  }

  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of Complex
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Complex0ImplCopyWith<_$Complex0Impl> get copyWith =>
      __$$Complex0ImplCopyWithImpl<_$Complex0Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a, bool? b, double? d) first,
    required TResult Function(String a, int? c, double? d) second,
  }) {
    return $default(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a, bool? b, double? d)? first,
    TResult? Function(String a, int? c, double? d)? second,
  }) {
    return $default?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a, bool? b, double? d)? first,
    TResult Function(String a, int? c, double? d)? second,
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
    TResult Function(Complex0 value) $default, {
    required TResult Function(Complex1 value) first,
    required TResult Function(Complex2 value) second,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Complex0 value)? $default, {
    TResult? Function(Complex1 value)? first,
    TResult? Function(Complex2 value)? second,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Complex0 value)? $default, {
    TResult Function(Complex1 value)? first,
    TResult Function(Complex2 value)? second,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class Complex0 implements Complex {
  const factory Complex0(final String a) = _$Complex0Impl;

  /// Hello
  @override
  String get a;

  /// Create a copy of Complex
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Complex0ImplCopyWith<_$Complex0Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Complex1ImplCopyWith<$Res> implements $ComplexCopyWith<$Res> {
  factory _$$Complex1ImplCopyWith(
          _$Complex1Impl value, $Res Function(_$Complex1Impl) then) =
      __$$Complex1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a, bool? b, double? d});
}

/// @nodoc
class __$$Complex1ImplCopyWithImpl<$Res>
    extends _$ComplexCopyWithImpl<$Res, _$Complex1Impl>
    implements _$$Complex1ImplCopyWith<$Res> {
  __$$Complex1ImplCopyWithImpl(
      _$Complex1Impl _value, $Res Function(_$Complex1Impl) _then)
      : super(_value, _then);

  /// Create a copy of Complex
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = freezed,
    Object? d = freezed,
  }) {
    return _then(_$Complex1Impl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: freezed == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as bool?,
      d: freezed == d
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$Complex1Impl implements Complex1 {
  const _$Complex1Impl(this.a, {this.b, this.d})
      : assert(a == ''),
        assert(b == true, 'b must be true');

  /// World
  @override
  final String a;

  /// B
  @override
  final bool? b;
  @override
  final double? d;

  @override
  String toString() {
    return 'Complex.first(a: $a, b: $b, d: $d)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Complex1Impl &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b) &&
            (identical(other.d, d) || other.d == d));
  }

  @override
  int get hashCode => Object.hash(runtimeType, a, b, d);

  /// Create a copy of Complex
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Complex1ImplCopyWith<_$Complex1Impl> get copyWith =>
      __$$Complex1ImplCopyWithImpl<_$Complex1Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a, bool? b, double? d) first,
    required TResult Function(String a, int? c, double? d) second,
  }) {
    return first(a, b, d);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a, bool? b, double? d)? first,
    TResult? Function(String a, int? c, double? d)? second,
  }) {
    return first?.call(a, b, d);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a, bool? b, double? d)? first,
    TResult Function(String a, int? c, double? d)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a, b, d);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Complex0 value) $default, {
    required TResult Function(Complex1 value) first,
    required TResult Function(Complex2 value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Complex0 value)? $default, {
    TResult? Function(Complex1 value)? first,
    TResult? Function(Complex2 value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Complex0 value)? $default, {
    TResult Function(Complex1 value)? first,
    TResult Function(Complex2 value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }
}

abstract class Complex1 implements Complex {
  const factory Complex1(final String a, {final bool? b, final double? d}) =
      _$Complex1Impl;

  /// World
  @override
  String get a;

  /// B
  bool? get b;
  double? get d;

  /// Create a copy of Complex
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Complex1ImplCopyWith<_$Complex1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Complex2ImplCopyWith<$Res> implements $ComplexCopyWith<$Res> {
  factory _$$Complex2ImplCopyWith(
          _$Complex2Impl value, $Res Function(_$Complex2Impl) then) =
      __$$Complex2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a, int? c, double? d});
}

/// @nodoc
class __$$Complex2ImplCopyWithImpl<$Res>
    extends _$ComplexCopyWithImpl<$Res, _$Complex2Impl>
    implements _$$Complex2ImplCopyWith<$Res> {
  __$$Complex2ImplCopyWithImpl(
      _$Complex2Impl _value, $Res Function(_$Complex2Impl) _then)
      : super(_value, _then);

  /// Create a copy of Complex
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? c = freezed,
    Object? d = freezed,
  }) {
    return _then(_$Complex2Impl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == d
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$Complex2Impl implements Complex2 {
  const _$Complex2Impl(this.a, [this.c, this.d]);

  @override
  final String a;

  /// C
  @override
  final int? c;
  @override
  final double? d;

  @override
  String toString() {
    return 'Complex.second(a: $a, c: $c, d: $d)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Complex2Impl &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.c, c) || other.c == c) &&
            (identical(other.d, d) || other.d == d));
  }

  @override
  int get hashCode => Object.hash(runtimeType, a, c, d);

  /// Create a copy of Complex
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Complex2ImplCopyWith<_$Complex2Impl> get copyWith =>
      __$$Complex2ImplCopyWithImpl<_$Complex2Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a, bool? b, double? d) first,
    required TResult Function(String a, int? c, double? d) second,
  }) {
    return second(a, c, d);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a, bool? b, double? d)? first,
    TResult? Function(String a, int? c, double? d)? second,
  }) {
    return second?.call(a, c, d);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a, bool? b, double? d)? first,
    TResult Function(String a, int? c, double? d)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a, c, d);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(Complex0 value) $default, {
    required TResult Function(Complex1 value) first,
    required TResult Function(Complex2 value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(Complex0 value)? $default, {
    TResult? Function(Complex1 value)? first,
    TResult? Function(Complex2 value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(Complex0 value)? $default, {
    TResult Function(Complex1 value)? first,
    TResult Function(Complex2 value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }
}

abstract class Complex2 implements Complex {
  const factory Complex2(final String a, [final int? c, final double? d]) =
      _$Complex2Impl;

  @override
  String get a;

  /// C
  int? get c;
  double? get d;

  /// Create a copy of Complex
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Complex2ImplCopyWith<_$Complex2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SwitchTest {
  String get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a, bool? b, double? d) first,
    required TResult Function(String a, int? c, double? d) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a, bool? b, double? d)? first,
    TResult? Function(String a, int? c, double? d)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a, bool? b, double? d)? first,
    TResult Function(String a, int? c, double? d)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SwitchTest0 value) $default, {
    required TResult Function(SwitchTest1 value) first,
    required TResult Function(SwitchTest2 value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SwitchTest0 value)? $default, {
    TResult? Function(SwitchTest1 value)? first,
    TResult? Function(SwitchTest2 value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SwitchTest0 value)? $default, {
    TResult Function(SwitchTest1 value)? first,
    TResult Function(SwitchTest2 value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SwitchTest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SwitchTestCopyWith<SwitchTest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SwitchTestCopyWith<$Res> {
  factory $SwitchTestCopyWith(
          SwitchTest value, $Res Function(SwitchTest) then) =
      _$SwitchTestCopyWithImpl<$Res, SwitchTest>;
  @useResult
  $Res call({String a});
}

/// @nodoc
class _$SwitchTestCopyWithImpl<$Res, $Val extends SwitchTest>
    implements $SwitchTestCopyWith<$Res> {
  _$SwitchTestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SwitchTest
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
abstract class _$$SwitchTest0ImplCopyWith<$Res>
    implements $SwitchTestCopyWith<$Res> {
  factory _$$SwitchTest0ImplCopyWith(
          _$SwitchTest0Impl value, $Res Function(_$SwitchTest0Impl) then) =
      __$$SwitchTest0ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a});
}

/// @nodoc
class __$$SwitchTest0ImplCopyWithImpl<$Res>
    extends _$SwitchTestCopyWithImpl<$Res, _$SwitchTest0Impl>
    implements _$$SwitchTest0ImplCopyWith<$Res> {
  __$$SwitchTest0ImplCopyWithImpl(
      _$SwitchTest0Impl _value, $Res Function(_$SwitchTest0Impl) _then)
      : super(_value, _then);

  /// Create a copy of SwitchTest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$SwitchTest0Impl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SwitchTest0Impl implements SwitchTest0 {
  const _$SwitchTest0Impl(this.a);

  @override
  final String a;

  @override
  String toString() {
    return 'SwitchTest(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchTest0Impl &&
            (identical(other.a, a) || other.a == a));
  }

  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of SwitchTest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchTest0ImplCopyWith<_$SwitchTest0Impl> get copyWith =>
      __$$SwitchTest0ImplCopyWithImpl<_$SwitchTest0Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a, bool? b, double? d) first,
    required TResult Function(String a, int? c, double? d) second,
  }) {
    return $default(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a, bool? b, double? d)? first,
    TResult? Function(String a, int? c, double? d)? second,
  }) {
    return $default?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a, bool? b, double? d)? first,
    TResult Function(String a, int? c, double? d)? second,
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
    TResult Function(SwitchTest0 value) $default, {
    required TResult Function(SwitchTest1 value) first,
    required TResult Function(SwitchTest2 value) second,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SwitchTest0 value)? $default, {
    TResult? Function(SwitchTest1 value)? first,
    TResult? Function(SwitchTest2 value)? second,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SwitchTest0 value)? $default, {
    TResult Function(SwitchTest1 value)? first,
    TResult Function(SwitchTest2 value)? second,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class SwitchTest0 implements SwitchTest {
  const factory SwitchTest0(final String a) = _$SwitchTest0Impl;

  @override
  String get a;

  /// Create a copy of SwitchTest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwitchTest0ImplCopyWith<_$SwitchTest0Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwitchTest1ImplCopyWith<$Res>
    implements $SwitchTestCopyWith<$Res> {
  factory _$$SwitchTest1ImplCopyWith(
          _$SwitchTest1Impl value, $Res Function(_$SwitchTest1Impl) then) =
      __$$SwitchTest1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a, bool? b, double? d});
}

/// @nodoc
class __$$SwitchTest1ImplCopyWithImpl<$Res>
    extends _$SwitchTestCopyWithImpl<$Res, _$SwitchTest1Impl>
    implements _$$SwitchTest1ImplCopyWith<$Res> {
  __$$SwitchTest1ImplCopyWithImpl(
      _$SwitchTest1Impl _value, $Res Function(_$SwitchTest1Impl) _then)
      : super(_value, _then);

  /// Create a copy of SwitchTest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = freezed,
    Object? d = freezed,
  }) {
    return _then(_$SwitchTest1Impl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      b: freezed == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as bool?,
      d: freezed == d
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$SwitchTest1Impl implements SwitchTest1 {
  const _$SwitchTest1Impl(this.a, {this.b, this.d});

  @override
  final String a;
  @override
  final bool? b;
  @override
  final double? d;

  @override
  String toString() {
    return 'SwitchTest.first(a: $a, b: $b, d: $d)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchTest1Impl &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b) &&
            (identical(other.d, d) || other.d == d));
  }

  @override
  int get hashCode => Object.hash(runtimeType, a, b, d);

  /// Create a copy of SwitchTest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchTest1ImplCopyWith<_$SwitchTest1Impl> get copyWith =>
      __$$SwitchTest1ImplCopyWithImpl<_$SwitchTest1Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a, bool? b, double? d) first,
    required TResult Function(String a, int? c, double? d) second,
  }) {
    return first(a, b, d);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a, bool? b, double? d)? first,
    TResult? Function(String a, int? c, double? d)? second,
  }) {
    return first?.call(a, b, d);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a, bool? b, double? d)? first,
    TResult Function(String a, int? c, double? d)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(a, b, d);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SwitchTest0 value) $default, {
    required TResult Function(SwitchTest1 value) first,
    required TResult Function(SwitchTest2 value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SwitchTest0 value)? $default, {
    TResult? Function(SwitchTest1 value)? first,
    TResult? Function(SwitchTest2 value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SwitchTest0 value)? $default, {
    TResult Function(SwitchTest1 value)? first,
    TResult Function(SwitchTest2 value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }
}

abstract class SwitchTest1 implements SwitchTest {
  const factory SwitchTest1(final String a, {final bool? b, final double? d}) =
      _$SwitchTest1Impl;

  @override
  String get a;
  bool? get b;
  double? get d;

  /// Create a copy of SwitchTest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwitchTest1ImplCopyWith<_$SwitchTest1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SwitchTest2ImplCopyWith<$Res>
    implements $SwitchTestCopyWith<$Res> {
  factory _$$SwitchTest2ImplCopyWith(
          _$SwitchTest2Impl value, $Res Function(_$SwitchTest2Impl) then) =
      __$$SwitchTest2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a, int? c, double? d});
}

/// @nodoc
class __$$SwitchTest2ImplCopyWithImpl<$Res>
    extends _$SwitchTestCopyWithImpl<$Res, _$SwitchTest2Impl>
    implements _$$SwitchTest2ImplCopyWith<$Res> {
  __$$SwitchTest2ImplCopyWithImpl(
      _$SwitchTest2Impl _value, $Res Function(_$SwitchTest2Impl) _then)
      : super(_value, _then);

  /// Create a copy of SwitchTest
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? c = freezed,
    Object? d = freezed,
  }) {
    return _then(_$SwitchTest2Impl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == d
          ? _value.d
          : d // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$SwitchTest2Impl implements SwitchTest2 {
  const _$SwitchTest2Impl(this.a, [this.c, this.d]);

  @override
  final String a;
  @override
  final int? c;
  @override
  final double? d;

  @override
  String toString() {
    return 'SwitchTest.second(a: $a, c: $c, d: $d)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SwitchTest2Impl &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.c, c) || other.c == c) &&
            (identical(other.d, d) || other.d == d));
  }

  @override
  int get hashCode => Object.hash(runtimeType, a, c, d);

  /// Create a copy of SwitchTest
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SwitchTest2ImplCopyWith<_$SwitchTest2Impl> get copyWith =>
      __$$SwitchTest2ImplCopyWithImpl<_$SwitchTest2Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a, bool? b, double? d) first,
    required TResult Function(String a, int? c, double? d) second,
  }) {
    return second(a, c, d);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a, bool? b, double? d)? first,
    TResult? Function(String a, int? c, double? d)? second,
  }) {
    return second?.call(a, c, d);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a, bool? b, double? d)? first,
    TResult Function(String a, int? c, double? d)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(a, c, d);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(SwitchTest0 value) $default, {
    required TResult Function(SwitchTest1 value) first,
    required TResult Function(SwitchTest2 value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(SwitchTest0 value)? $default, {
    TResult? Function(SwitchTest1 value)? first,
    TResult? Function(SwitchTest2 value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(SwitchTest0 value)? $default, {
    TResult Function(SwitchTest1 value)? first,
    TResult Function(SwitchTest2 value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }
}

abstract class SwitchTest2 implements SwitchTest {
  const factory SwitchTest2(final String a, [final int? c, final double? d]) =
      _$SwitchTest2Impl;

  @override
  String get a;
  int? get c;
  double? get d;

  /// Create a copy of SwitchTest
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SwitchTest2ImplCopyWith<_$SwitchTest2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoDefault {
  String get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String a) first,
    required TResult Function(String a) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String a)? first,
    TResult? Function(String a)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String a)? first,
    TResult Function(String a)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NoDefault1 value) first,
    required TResult Function(NoDefault2 value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoDefault1 value)? first,
    TResult? Function(NoDefault2 value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoDefault1 value)? first,
    TResult Function(NoDefault2 value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NoDefault
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NoDefaultCopyWith<NoDefault> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoDefaultCopyWith<$Res> {
  factory $NoDefaultCopyWith(NoDefault value, $Res Function(NoDefault) then) =
      _$NoDefaultCopyWithImpl<$Res, NoDefault>;
  @useResult
  $Res call({String a});
}

/// @nodoc
class _$NoDefaultCopyWithImpl<$Res, $Val extends NoDefault>
    implements $NoDefaultCopyWith<$Res> {
  _$NoDefaultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoDefault
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
abstract class _$$NoDefault1ImplCopyWith<$Res>
    implements $NoDefaultCopyWith<$Res> {
  factory _$$NoDefault1ImplCopyWith(
          _$NoDefault1Impl value, $Res Function(_$NoDefault1Impl) then) =
      __$$NoDefault1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a});
}

/// @nodoc
class __$$NoDefault1ImplCopyWithImpl<$Res>
    extends _$NoDefaultCopyWithImpl<$Res, _$NoDefault1Impl>
    implements _$$NoDefault1ImplCopyWith<$Res> {
  __$$NoDefault1ImplCopyWithImpl(
      _$NoDefault1Impl _value, $Res Function(_$NoDefault1Impl) _then)
      : super(_value, _then);

  /// Create a copy of NoDefault
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$NoDefault1Impl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoDefault1Impl implements NoDefault1 {
  const _$NoDefault1Impl(this.a);

  @override
  final String a;

  @override
  String toString() {
    return 'NoDefault.first(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoDefault1Impl &&
            (identical(other.a, a) || other.a == a));
  }

  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of NoDefault
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoDefault1ImplCopyWith<_$NoDefault1Impl> get copyWith =>
      __$$NoDefault1ImplCopyWithImpl<_$NoDefault1Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String a) first,
    required TResult Function(String a) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String a)? first,
    TResult? Function(String a)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String a)? first,
    TResult Function(String a)? second,
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
    required TResult Function(NoDefault1 value) first,
    required TResult Function(NoDefault2 value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoDefault1 value)? first,
    TResult? Function(NoDefault2 value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoDefault1 value)? first,
    TResult Function(NoDefault2 value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }
}

abstract class NoDefault1 implements NoDefault {
  const factory NoDefault1(final String a) = _$NoDefault1Impl;

  @override
  String get a;

  /// Create a copy of NoDefault
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoDefault1ImplCopyWith<_$NoDefault1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NoDefault2ImplCopyWith<$Res>
    implements $NoDefaultCopyWith<$Res> {
  factory _$$NoDefault2ImplCopyWith(
          _$NoDefault2Impl value, $Res Function(_$NoDefault2Impl) then) =
      __$$NoDefault2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a});
}

/// @nodoc
class __$$NoDefault2ImplCopyWithImpl<$Res>
    extends _$NoDefaultCopyWithImpl<$Res, _$NoDefault2Impl>
    implements _$$NoDefault2ImplCopyWith<$Res> {
  __$$NoDefault2ImplCopyWithImpl(
      _$NoDefault2Impl _value, $Res Function(_$NoDefault2Impl) _then)
      : super(_value, _then);

  /// Create a copy of NoDefault
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$NoDefault2Impl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NoDefault2Impl implements NoDefault2 {
  const _$NoDefault2Impl(this.a);

  @override
  final String a;

  @override
  String toString() {
    return 'NoDefault.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoDefault2Impl &&
            (identical(other.a, a) || other.a == a));
  }

  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of NoDefault
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoDefault2ImplCopyWith<_$NoDefault2Impl> get copyWith =>
      __$$NoDefault2ImplCopyWithImpl<_$NoDefault2Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String a) first,
    required TResult Function(String a) second,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String a)? first,
    TResult? Function(String a)? second,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String a)? first,
    TResult Function(String a)? second,
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
    required TResult Function(NoDefault1 value) first,
    required TResult Function(NoDefault2 value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(NoDefault1 value)? first,
    TResult? Function(NoDefault2 value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NoDefault1 value)? first,
    TResult Function(NoDefault2 value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }
}

abstract class NoDefault2 implements NoDefault {
  const factory NoDefault2(final String a) = _$NoDefault2Impl;

  @override
  String get a;

  /// Create a copy of NoDefault
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoDefault2ImplCopyWith<_$NoDefault2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NameConflict {
  Error get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) something,
    required TResult Function(Error error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Error error)? something,
    TResult? Function(Error error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? something,
    TResult Function(Error error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Something value) something,
    required TResult Function(SomeError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Something value)? something,
    TResult? Function(SomeError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Something value)? something,
    TResult Function(SomeError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of NameConflict
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NameConflictCopyWith<NameConflict> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameConflictCopyWith<$Res> {
  factory $NameConflictCopyWith(
          NameConflict value, $Res Function(NameConflict) then) =
      _$NameConflictCopyWithImpl<$Res, NameConflict>;
  @useResult
  $Res call({Error error});
}

/// @nodoc
class _$NameConflictCopyWithImpl<$Res, $Val extends NameConflict>
    implements $NameConflictCopyWith<$Res> {
  _$NameConflictCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NameConflict
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SomethingImplCopyWith<$Res>
    implements $NameConflictCopyWith<$Res> {
  factory _$$SomethingImplCopyWith(
          _$SomethingImpl value, $Res Function(_$SomethingImpl) then) =
      __$$SomethingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Error error});
}

/// @nodoc
class __$$SomethingImplCopyWithImpl<$Res>
    extends _$NameConflictCopyWithImpl<$Res, _$SomethingImpl>
    implements _$$SomethingImplCopyWith<$Res> {
  __$$SomethingImplCopyWithImpl(
      _$SomethingImpl _value, $Res Function(_$SomethingImpl) _then)
      : super(_value, _then);

  /// Create a copy of NameConflict
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SomethingImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$SomethingImpl implements Something {
  _$SomethingImpl(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'NameConflict.something(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SomethingImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of NameConflict
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SomethingImplCopyWith<_$SomethingImpl> get copyWith =>
      __$$SomethingImplCopyWithImpl<_$SomethingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) something,
    required TResult Function(Error error) error,
  }) {
    return something(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Error error)? something,
    TResult? Function(Error error)? error,
  }) {
    return something?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? something,
    TResult Function(Error error)? error,
    required TResult orElse(),
  }) {
    if (something != null) {
      return something(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Something value) something,
    required TResult Function(SomeError value) error,
  }) {
    return something(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Something value)? something,
    TResult? Function(SomeError value)? error,
  }) {
    return something?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Something value)? something,
    TResult Function(SomeError value)? error,
    required TResult orElse(),
  }) {
    if (something != null) {
      return something(this);
    }
    return orElse();
  }
}

abstract class Something implements NameConflict {
  factory Something(final Error error) = _$SomethingImpl;

  @override
  Error get error;

  /// Create a copy of NameConflict
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SomethingImplCopyWith<_$SomethingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SomeErrorImplCopyWith<$Res>
    implements $NameConflictCopyWith<$Res> {
  factory _$$SomeErrorImplCopyWith(
          _$SomeErrorImpl value, $Res Function(_$SomeErrorImpl) then) =
      __$$SomeErrorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Error error});
}

/// @nodoc
class __$$SomeErrorImplCopyWithImpl<$Res>
    extends _$NameConflictCopyWithImpl<$Res, _$SomeErrorImpl>
    implements _$$SomeErrorImplCopyWith<$Res> {
  __$$SomeErrorImplCopyWithImpl(
      _$SomeErrorImpl _value, $Res Function(_$SomeErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of NameConflict
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SomeErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$SomeErrorImpl implements SomeError {
  _$SomeErrorImpl(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'NameConflict.error(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SomeErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of NameConflict
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SomeErrorImplCopyWith<_$SomeErrorImpl> get copyWith =>
      __$$SomeErrorImplCopyWithImpl<_$SomeErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Error error) something,
    required TResult Function(Error error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Error error)? something,
    TResult? Function(Error error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Error error)? something,
    TResult Function(Error error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Something value) something,
    required TResult Function(SomeError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Something value)? something,
    TResult? Function(SomeError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Something value)? something,
    TResult Function(SomeError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class SomeError implements NameConflict {
  factory SomeError(final Error error) = _$SomeErrorImpl;

  @override
  Error get error;

  /// Create a copy of NameConflict
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SomeErrorImplCopyWith<_$SomeErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Recursive {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(RecursiveImpl value) next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(RecursiveImpl value)? next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(RecursiveImpl value)? next,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RecursiveImpl value) $default, {
    required TResult Function(_RecursiveNext value) next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RecursiveImpl value)? $default, {
    TResult? Function(_RecursiveNext value)? next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RecursiveImpl value)? $default, {
    TResult Function(_RecursiveNext value)? next,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecursiveCopyWith<$Res> {
  factory $RecursiveCopyWith(Recursive value, $Res Function(Recursive) then) =
      _$RecursiveCopyWithImpl<$Res, Recursive>;
}

/// @nodoc
class _$RecursiveCopyWithImpl<$Res, $Val extends Recursive>
    implements $RecursiveCopyWith<$Res> {
  _$RecursiveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Recursive
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RecursiveImplImplCopyWith<$Res> {
  factory _$$RecursiveImplImplCopyWith(
          _$RecursiveImplImpl value, $Res Function(_$RecursiveImplImpl) then) =
      __$$RecursiveImplImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecursiveImplImplCopyWithImpl<$Res>
    extends _$RecursiveCopyWithImpl<$Res, _$RecursiveImplImpl>
    implements _$$RecursiveImplImplCopyWith<$Res> {
  __$$RecursiveImplImplCopyWithImpl(
      _$RecursiveImplImpl _value, $Res Function(_$RecursiveImplImpl) _then)
      : super(_value, _then);

  /// Create a copy of Recursive
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecursiveImplImpl implements RecursiveImpl {
  _$RecursiveImplImpl();

  @override
  String toString() {
    return 'Recursive()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecursiveImplImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(RecursiveImpl value) next,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(RecursiveImpl value)? next,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(RecursiveImpl value)? next,
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
    TResult Function(RecursiveImpl value) $default, {
    required TResult Function(_RecursiveNext value) next,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RecursiveImpl value)? $default, {
    TResult? Function(_RecursiveNext value)? next,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RecursiveImpl value)? $default, {
    TResult Function(_RecursiveNext value)? next,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RecursiveImpl implements Recursive {
  factory RecursiveImpl() = _$RecursiveImplImpl;
}

/// @nodoc
abstract class _$$RecursiveNextImplCopyWith<$Res> {
  factory _$$RecursiveNextImplCopyWith(
          _$RecursiveNextImpl value, $Res Function(_$RecursiveNextImpl) then) =
      __$$RecursiveNextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RecursiveImpl value});
}

/// @nodoc
class __$$RecursiveNextImplCopyWithImpl<$Res>
    extends _$RecursiveCopyWithImpl<$Res, _$RecursiveNextImpl>
    implements _$$RecursiveNextImplCopyWith<$Res> {
  __$$RecursiveNextImplCopyWithImpl(
      _$RecursiveNextImpl _value, $Res Function(_$RecursiveNextImpl) _then)
      : super(_value, _then);

  /// Create a copy of Recursive
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$RecursiveNextImpl(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as RecursiveImpl,
    ));
  }
}

/// @nodoc

class _$RecursiveNextImpl implements _RecursiveNext {
  _$RecursiveNextImpl(this.value);

  @override
  final RecursiveImpl value;

  @override
  String toString() {
    return 'Recursive.next(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecursiveNextImpl &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of Recursive
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecursiveNextImplCopyWith<_$RecursiveNextImpl> get copyWith =>
      __$$RecursiveNextImplCopyWithImpl<_$RecursiveNextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(RecursiveImpl value) next,
  }) {
    return next(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(RecursiveImpl value)? next,
  }) {
    return next?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(RecursiveImpl value)? next,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RecursiveImpl value) $default, {
    required TResult Function(_RecursiveNext value) next,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RecursiveImpl value)? $default, {
    TResult? Function(_RecursiveNext value)? next,
  }) {
    return next?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RecursiveImpl value)? $default, {
    TResult Function(_RecursiveNext value)? next,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class _RecursiveNext implements Recursive {
  factory _RecursiveNext(final RecursiveImpl value) = _$RecursiveNextImpl;

  RecursiveImpl get value;

  /// Create a copy of Recursive
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecursiveNextImplCopyWith<_$RecursiveNextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecursiveWith$Dollar {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(RecursiveWith$DollarImpl value) next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(RecursiveWith$DollarImpl value)? next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(RecursiveWith$DollarImpl value)? next,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RecursiveWith$DollarImpl value) $default, {
    required TResult Function(_RecursiveWith$DollarNext value) next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RecursiveWith$DollarImpl value)? $default, {
    TResult? Function(_RecursiveWith$DollarNext value)? next,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RecursiveWith$DollarImpl value)? $default, {
    TResult Function(_RecursiveWith$DollarNext value)? next,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecursiveWith$DollarCopyWith<$Res> {
  factory $RecursiveWith$DollarCopyWith(RecursiveWith$Dollar value,
          $Res Function(RecursiveWith$Dollar) then) =
      _$RecursiveWith$DollarCopyWithImpl<$Res, RecursiveWith$Dollar>;
}

/// @nodoc
class _$RecursiveWith$DollarCopyWithImpl<$Res,
        $Val extends RecursiveWith$Dollar>
    implements $RecursiveWith$DollarCopyWith<$Res> {
  _$RecursiveWith$DollarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecursiveWith$Dollar
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$RecursiveWith$DollarImplImplCopyWith<$Res> {
  factory _$$RecursiveWith$DollarImplImplCopyWith(
          _$RecursiveWith$DollarImplImpl value,
          $Res Function(_$RecursiveWith$DollarImplImpl) then) =
      __$$RecursiveWith$DollarImplImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecursiveWith$DollarImplImplCopyWithImpl<$Res>
    extends _$RecursiveWith$DollarCopyWithImpl<$Res,
        _$RecursiveWith$DollarImplImpl>
    implements _$$RecursiveWith$DollarImplImplCopyWith<$Res> {
  __$$RecursiveWith$DollarImplImplCopyWithImpl(
      _$RecursiveWith$DollarImplImpl _value,
      $Res Function(_$RecursiveWith$DollarImplImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecursiveWith$Dollar
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RecursiveWith$DollarImplImpl implements RecursiveWith$DollarImpl {
  _$RecursiveWith$DollarImplImpl();

  @override
  String toString() {
    return 'RecursiveWith\$Dollar()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecursiveWith$DollarImplImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(RecursiveWith$DollarImpl value) next,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(RecursiveWith$DollarImpl value)? next,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(RecursiveWith$DollarImpl value)? next,
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
    TResult Function(RecursiveWith$DollarImpl value) $default, {
    required TResult Function(_RecursiveWith$DollarNext value) next,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RecursiveWith$DollarImpl value)? $default, {
    TResult? Function(_RecursiveWith$DollarNext value)? next,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RecursiveWith$DollarImpl value)? $default, {
    TResult Function(_RecursiveWith$DollarNext value)? next,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RecursiveWith$DollarImpl implements RecursiveWith$Dollar {
  factory RecursiveWith$DollarImpl() = _$RecursiveWith$DollarImplImpl;
}

/// @nodoc
abstract class _$$RecursiveWith$DollarNextImplCopyWith<$Res> {
  factory _$$RecursiveWith$DollarNextImplCopyWith(
          _$RecursiveWith$DollarNextImpl value,
          $Res Function(_$RecursiveWith$DollarNextImpl) then) =
      __$$RecursiveWith$DollarNextImplCopyWithImpl<$Res>;
  @useResult
  $Res call({RecursiveWith$DollarImpl value});
}

/// @nodoc
class __$$RecursiveWith$DollarNextImplCopyWithImpl<$Res>
    extends _$RecursiveWith$DollarCopyWithImpl<$Res,
        _$RecursiveWith$DollarNextImpl>
    implements _$$RecursiveWith$DollarNextImplCopyWith<$Res> {
  __$$RecursiveWith$DollarNextImplCopyWithImpl(
      _$RecursiveWith$DollarNextImpl _value,
      $Res Function(_$RecursiveWith$DollarNextImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecursiveWith$Dollar
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$RecursiveWith$DollarNextImpl(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as RecursiveWith$DollarImpl,
    ));
  }
}

/// @nodoc

class _$RecursiveWith$DollarNextImpl implements _RecursiveWith$DollarNext {
  _$RecursiveWith$DollarNextImpl(this.value);

  @override
  final RecursiveWith$DollarImpl value;

  @override
  String toString() {
    return 'RecursiveWith\$Dollar.next(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecursiveWith$DollarNextImpl &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of RecursiveWith$Dollar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecursiveWith$DollarNextImplCopyWith<_$RecursiveWith$DollarNextImpl>
      get copyWith => __$$RecursiveWith$DollarNextImplCopyWithImpl<
          _$RecursiveWith$DollarNextImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(RecursiveWith$DollarImpl value) next,
  }) {
    return next(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(RecursiveWith$DollarImpl value)? next,
  }) {
    return next?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(RecursiveWith$DollarImpl value)? next,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RecursiveWith$DollarImpl value) $default, {
    required TResult Function(_RecursiveWith$DollarNext value) next,
  }) {
    return next(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RecursiveWith$DollarImpl value)? $default, {
    TResult? Function(_RecursiveWith$DollarNext value)? next,
  }) {
    return next?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RecursiveWith$DollarImpl value)? $default, {
    TResult Function(_RecursiveWith$DollarNext value)? next,
    required TResult orElse(),
  }) {
    if (next != null) {
      return next(this);
    }
    return orElse();
  }
}

abstract class _RecursiveWith$DollarNext implements RecursiveWith$Dollar {
  factory _RecursiveWith$DollarNext(final RecursiveWith$DollarImpl value) =
      _$RecursiveWith$DollarNextImpl;

  RecursiveWith$DollarImpl get value;

  /// Create a copy of RecursiveWith$Dollar
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecursiveWith$DollarNextImplCopyWith<_$RecursiveWith$DollarNextImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RequiredParams {
  String get a => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(RequiredParams0 value) $default, {
    required TResult Function(RequiredParams1 value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RequiredParams0 value)? $default, {
    TResult? Function(RequiredParams1 value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RequiredParams0 value)? $default, {
    TResult Function(RequiredParams1 value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of RequiredParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RequiredParamsCopyWith<RequiredParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RequiredParamsCopyWith<$Res> {
  factory $RequiredParamsCopyWith(
          RequiredParams value, $Res Function(RequiredParams) then) =
      _$RequiredParamsCopyWithImpl<$Res, RequiredParams>;
  @useResult
  $Res call({String a});
}

/// @nodoc
class _$RequiredParamsCopyWithImpl<$Res, $Val extends RequiredParams>
    implements $RequiredParamsCopyWith<$Res> {
  _$RequiredParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RequiredParams
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
abstract class _$$RequiredParams0ImplCopyWith<$Res>
    implements $RequiredParamsCopyWith<$Res> {
  factory _$$RequiredParams0ImplCopyWith(_$RequiredParams0Impl value,
          $Res Function(_$RequiredParams0Impl) then) =
      __$$RequiredParams0ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a});
}

/// @nodoc
class __$$RequiredParams0ImplCopyWithImpl<$Res>
    extends _$RequiredParamsCopyWithImpl<$Res, _$RequiredParams0Impl>
    implements _$$RequiredParams0ImplCopyWith<$Res> {
  __$$RequiredParams0ImplCopyWithImpl(
      _$RequiredParams0Impl _value, $Res Function(_$RequiredParams0Impl) _then)
      : super(_value, _then);

  /// Create a copy of RequiredParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$RequiredParams0Impl(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequiredParams0Impl implements RequiredParams0 {
  const _$RequiredParams0Impl({required this.a});

  @override
  final String a;

  @override
  String toString() {
    return 'RequiredParams(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequiredParams0Impl &&
            (identical(other.a, a) || other.a == a));
  }

  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of RequiredParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequiredParams0ImplCopyWith<_$RequiredParams0Impl> get copyWith =>
      __$$RequiredParams0ImplCopyWithImpl<_$RequiredParams0Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a) second,
  }) {
    return $default(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a)? second,
  }) {
    return $default?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a)? second,
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
    TResult Function(RequiredParams0 value) $default, {
    required TResult Function(RequiredParams1 value) second,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RequiredParams0 value)? $default, {
    TResult? Function(RequiredParams1 value)? second,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RequiredParams0 value)? $default, {
    TResult Function(RequiredParams1 value)? second,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class RequiredParams0 implements RequiredParams {
  const factory RequiredParams0({required final String a}) =
      _$RequiredParams0Impl;

  @override
  String get a;

  /// Create a copy of RequiredParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequiredParams0ImplCopyWith<_$RequiredParams0Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RequiredParams1ImplCopyWith<$Res>
    implements $RequiredParamsCopyWith<$Res> {
  factory _$$RequiredParams1ImplCopyWith(_$RequiredParams1Impl value,
          $Res Function(_$RequiredParams1Impl) then) =
      __$$RequiredParams1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String a});
}

/// @nodoc
class __$$RequiredParams1ImplCopyWithImpl<$Res>
    extends _$RequiredParamsCopyWithImpl<$Res, _$RequiredParams1Impl>
    implements _$$RequiredParams1ImplCopyWith<$Res> {
  __$$RequiredParams1ImplCopyWithImpl(
      _$RequiredParams1Impl _value, $Res Function(_$RequiredParams1Impl) _then)
      : super(_value, _then);

  /// Create a copy of RequiredParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$RequiredParams1Impl(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RequiredParams1Impl implements RequiredParams1 {
  const _$RequiredParams1Impl({required this.a});

  @override
  final String a;

  @override
  String toString() {
    return 'RequiredParams.second(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequiredParams1Impl &&
            (identical(other.a, a) || other.a == a));
  }

  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of RequiredParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RequiredParams1ImplCopyWith<_$RequiredParams1Impl> get copyWith =>
      __$$RequiredParams1ImplCopyWithImpl<_$RequiredParams1Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String a) $default, {
    required TResult Function(String a) second,
  }) {
    return second(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String a)? $default, {
    TResult? Function(String a)? second,
  }) {
    return second?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String a)? $default, {
    TResult Function(String a)? second,
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
    TResult Function(RequiredParams0 value) $default, {
    required TResult Function(RequiredParams1 value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(RequiredParams0 value)? $default, {
    TResult? Function(RequiredParams1 value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(RequiredParams0 value)? $default, {
    TResult Function(RequiredParams1 value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }
}

abstract class RequiredParams1 implements RequiredParams {
  const factory RequiredParams1({required final String a}) =
      _$RequiredParams1Impl;

  @override
  String get a;

  /// Create a copy of RequiredParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RequiredParams1ImplCopyWith<_$RequiredParams1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NestedList {
  List<dynamic> get children => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LeafNestedListItem> children) shallow,
    required TResult Function(List<InnerNestedListItem> children) deep,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LeafNestedListItem> children)? shallow,
    TResult? Function(List<InnerNestedListItem> children)? deep,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LeafNestedListItem> children)? shallow,
    TResult Function(List<InnerNestedListItem> children)? deep,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShallowNestedList value) shallow,
    required TResult Function(DeepNestedList value) deep,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShallowNestedList value)? shallow,
    TResult? Function(DeepNestedList value)? deep,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShallowNestedList value)? shallow,
    TResult Function(DeepNestedList value)? deep,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$ShallowNestedListImpl implements ShallowNestedList {
  _$ShallowNestedListImpl(final List<LeafNestedListItem> children)
      : _children = children;

  final List<LeafNestedListItem> _children;
  @override
  List<LeafNestedListItem> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'NestedList.shallow(children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShallowNestedListImpl &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LeafNestedListItem> children) shallow,
    required TResult Function(List<InnerNestedListItem> children) deep,
  }) {
    return shallow(children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LeafNestedListItem> children)? shallow,
    TResult? Function(List<InnerNestedListItem> children)? deep,
  }) {
    return shallow?.call(children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LeafNestedListItem> children)? shallow,
    TResult Function(List<InnerNestedListItem> children)? deep,
    required TResult orElse(),
  }) {
    if (shallow != null) {
      return shallow(children);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShallowNestedList value) shallow,
    required TResult Function(DeepNestedList value) deep,
  }) {
    return shallow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShallowNestedList value)? shallow,
    TResult? Function(DeepNestedList value)? deep,
  }) {
    return shallow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShallowNestedList value)? shallow,
    TResult Function(DeepNestedList value)? deep,
    required TResult orElse(),
  }) {
    if (shallow != null) {
      return shallow(this);
    }
    return orElse();
  }
}

abstract class ShallowNestedList implements NestedList {
  factory ShallowNestedList(final List<LeafNestedListItem> children) =
      _$ShallowNestedListImpl;

  @override
  List<LeafNestedListItem> get children;
}

/// @nodoc

class _$DeepNestedListImpl implements DeepNestedList {
  _$DeepNestedListImpl(final List<InnerNestedListItem> children)
      : _children = children;

  final List<InnerNestedListItem> _children;
  @override
  List<InnerNestedListItem> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'NestedList.deep(children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeepNestedListImpl &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<LeafNestedListItem> children) shallow,
    required TResult Function(List<InnerNestedListItem> children) deep,
  }) {
    return deep(children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<LeafNestedListItem> children)? shallow,
    TResult? Function(List<InnerNestedListItem> children)? deep,
  }) {
    return deep?.call(children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<LeafNestedListItem> children)? shallow,
    TResult Function(List<InnerNestedListItem> children)? deep,
    required TResult orElse(),
  }) {
    if (deep != null) {
      return deep(children);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShallowNestedList value) shallow,
    required TResult Function(DeepNestedList value) deep,
  }) {
    return deep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShallowNestedList value)? shallow,
    TResult? Function(DeepNestedList value)? deep,
  }) {
    return deep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShallowNestedList value)? shallow,
    TResult Function(DeepNestedList value)? deep,
    required TResult orElse(),
  }) {
    if (deep != null) {
      return deep(this);
    }
    return orElse();
  }
}

abstract class DeepNestedList implements NestedList {
  factory DeepNestedList(final List<InnerNestedListItem> children) =
      _$DeepNestedListImpl;

  @override
  List<InnerNestedListItem> get children;
}

/// @nodoc
mixin _$NestedListItem {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leaf,
    required TResult Function(List<LeafNestedListItem> children) inner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? leaf,
    TResult? Function(List<LeafNestedListItem> children)? inner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaf,
    TResult Function(List<LeafNestedListItem> children)? inner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeafNestedListItem value) leaf,
    required TResult Function(InnerNestedListItem value) inner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LeafNestedListItem value)? leaf,
    TResult? Function(InnerNestedListItem value)? inner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeafNestedListItem value)? leaf,
    TResult Function(InnerNestedListItem value)? inner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NestedListItemCopyWith<$Res> {
  factory $NestedListItemCopyWith(
          NestedListItem value, $Res Function(NestedListItem) then) =
      _$NestedListItemCopyWithImpl<$Res, NestedListItem>;
}

/// @nodoc
class _$NestedListItemCopyWithImpl<$Res, $Val extends NestedListItem>
    implements $NestedListItemCopyWith<$Res> {
  _$NestedListItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NestedListItem
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LeafNestedListItemImplCopyWith<$Res> {
  factory _$$LeafNestedListItemImplCopyWith(_$LeafNestedListItemImpl value,
          $Res Function(_$LeafNestedListItemImpl) then) =
      __$$LeafNestedListItemImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LeafNestedListItemImplCopyWithImpl<$Res>
    extends _$NestedListItemCopyWithImpl<$Res, _$LeafNestedListItemImpl>
    implements _$$LeafNestedListItemImplCopyWith<$Res> {
  __$$LeafNestedListItemImplCopyWithImpl(_$LeafNestedListItemImpl _value,
      $Res Function(_$LeafNestedListItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of NestedListItem
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LeafNestedListItemImpl implements LeafNestedListItem {
  _$LeafNestedListItemImpl();

  @override
  String toString() {
    return 'NestedListItem.leaf()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LeafNestedListItemImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leaf,
    required TResult Function(List<LeafNestedListItem> children) inner,
  }) {
    return leaf();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? leaf,
    TResult? Function(List<LeafNestedListItem> children)? inner,
  }) {
    return leaf?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaf,
    TResult Function(List<LeafNestedListItem> children)? inner,
    required TResult orElse(),
  }) {
    if (leaf != null) {
      return leaf();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeafNestedListItem value) leaf,
    required TResult Function(InnerNestedListItem value) inner,
  }) {
    return leaf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LeafNestedListItem value)? leaf,
    TResult? Function(InnerNestedListItem value)? inner,
  }) {
    return leaf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeafNestedListItem value)? leaf,
    TResult Function(InnerNestedListItem value)? inner,
    required TResult orElse(),
  }) {
    if (leaf != null) {
      return leaf(this);
    }
    return orElse();
  }
}

abstract class LeafNestedListItem implements NestedListItem {
  factory LeafNestedListItem() = _$LeafNestedListItemImpl;
}

/// @nodoc
abstract class _$$InnerNestedListItemImplCopyWith<$Res> {
  factory _$$InnerNestedListItemImplCopyWith(_$InnerNestedListItemImpl value,
          $Res Function(_$InnerNestedListItemImpl) then) =
      __$$InnerNestedListItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<LeafNestedListItem> children});
}

/// @nodoc
class __$$InnerNestedListItemImplCopyWithImpl<$Res>
    extends _$NestedListItemCopyWithImpl<$Res, _$InnerNestedListItemImpl>
    implements _$$InnerNestedListItemImplCopyWith<$Res> {
  __$$InnerNestedListItemImplCopyWithImpl(_$InnerNestedListItemImpl _value,
      $Res Function(_$InnerNestedListItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of NestedListItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_$InnerNestedListItemImpl(
      null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<LeafNestedListItem>,
    ));
  }
}

/// @nodoc

class _$InnerNestedListItemImpl implements InnerNestedListItem {
  _$InnerNestedListItemImpl(final List<LeafNestedListItem> children)
      : _children = children;

  final List<LeafNestedListItem> _children;
  @override
  List<LeafNestedListItem> get children {
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_children);
  }

  @override
  String toString() {
    return 'NestedListItem.inner(children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerNestedListItemImpl &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  /// Create a copy of NestedListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerNestedListItemImplCopyWith<_$InnerNestedListItemImpl> get copyWith =>
      __$$InnerNestedListItemImplCopyWithImpl<_$InnerNestedListItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leaf,
    required TResult Function(List<LeafNestedListItem> children) inner,
  }) {
    return inner(children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? leaf,
    TResult? Function(List<LeafNestedListItem> children)? inner,
  }) {
    return inner?.call(children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaf,
    TResult Function(List<LeafNestedListItem> children)? inner,
    required TResult orElse(),
  }) {
    if (inner != null) {
      return inner(children);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeafNestedListItem value) leaf,
    required TResult Function(InnerNestedListItem value) inner,
  }) {
    return inner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LeafNestedListItem value)? leaf,
    TResult? Function(InnerNestedListItem value)? inner,
  }) {
    return inner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeafNestedListItem value)? leaf,
    TResult Function(InnerNestedListItem value)? inner,
    required TResult orElse(),
  }) {
    if (inner != null) {
      return inner(this);
    }
    return orElse();
  }
}

abstract class InnerNestedListItem implements NestedListItem {
  factory InnerNestedListItem(final List<LeafNestedListItem> children) =
      _$InnerNestedListItemImpl;

  List<LeafNestedListItem> get children;

  /// Create a copy of NestedListItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InnerNestedListItemImplCopyWith<_$InnerNestedListItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NestedMap {
  Map<String, dynamic> get children => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, LeafNestedMapItem> children) shallow,
    required TResult Function(Map<String, InnerNestedMapItem> children) deep,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, LeafNestedMapItem> children)? shallow,
    TResult? Function(Map<String, InnerNestedMapItem> children)? deep,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, LeafNestedMapItem> children)? shallow,
    TResult Function(Map<String, InnerNestedMapItem> children)? deep,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShallowNestedMap value) shallow,
    required TResult Function(DeepNestedMap value) deep,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShallowNestedMap value)? shallow,
    TResult? Function(DeepNestedMap value)? deep,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShallowNestedMap value)? shallow,
    TResult Function(DeepNestedMap value)? deep,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$ShallowNestedMapImpl implements ShallowNestedMap {
  _$ShallowNestedMapImpl(final Map<String, LeafNestedMapItem> children)
      : _children = children;

  final Map<String, LeafNestedMapItem> _children;
  @override
  Map<String, LeafNestedMapItem> get children {
    if (_children is EqualUnmodifiableMapView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_children);
  }

  @override
  String toString() {
    return 'NestedMap.shallow(children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShallowNestedMapImpl &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, LeafNestedMapItem> children) shallow,
    required TResult Function(Map<String, InnerNestedMapItem> children) deep,
  }) {
    return shallow(children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, LeafNestedMapItem> children)? shallow,
    TResult? Function(Map<String, InnerNestedMapItem> children)? deep,
  }) {
    return shallow?.call(children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, LeafNestedMapItem> children)? shallow,
    TResult Function(Map<String, InnerNestedMapItem> children)? deep,
    required TResult orElse(),
  }) {
    if (shallow != null) {
      return shallow(children);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShallowNestedMap value) shallow,
    required TResult Function(DeepNestedMap value) deep,
  }) {
    return shallow(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShallowNestedMap value)? shallow,
    TResult? Function(DeepNestedMap value)? deep,
  }) {
    return shallow?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShallowNestedMap value)? shallow,
    TResult Function(DeepNestedMap value)? deep,
    required TResult orElse(),
  }) {
    if (shallow != null) {
      return shallow(this);
    }
    return orElse();
  }
}

abstract class ShallowNestedMap implements NestedMap {
  factory ShallowNestedMap(final Map<String, LeafNestedMapItem> children) =
      _$ShallowNestedMapImpl;

  @override
  Map<String, LeafNestedMapItem> get children;
}

/// @nodoc

class _$DeepNestedMapImpl implements DeepNestedMap {
  _$DeepNestedMapImpl(final Map<String, InnerNestedMapItem> children)
      : _children = children;

  final Map<String, InnerNestedMapItem> _children;
  @override
  Map<String, InnerNestedMapItem> get children {
    if (_children is EqualUnmodifiableMapView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_children);
  }

  @override
  String toString() {
    return 'NestedMap.deep(children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeepNestedMapImpl &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Map<String, LeafNestedMapItem> children) shallow,
    required TResult Function(Map<String, InnerNestedMapItem> children) deep,
  }) {
    return deep(children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Map<String, LeafNestedMapItem> children)? shallow,
    TResult? Function(Map<String, InnerNestedMapItem> children)? deep,
  }) {
    return deep?.call(children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Map<String, LeafNestedMapItem> children)? shallow,
    TResult Function(Map<String, InnerNestedMapItem> children)? deep,
    required TResult orElse(),
  }) {
    if (deep != null) {
      return deep(children);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ShallowNestedMap value) shallow,
    required TResult Function(DeepNestedMap value) deep,
  }) {
    return deep(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ShallowNestedMap value)? shallow,
    TResult? Function(DeepNestedMap value)? deep,
  }) {
    return deep?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ShallowNestedMap value)? shallow,
    TResult Function(DeepNestedMap value)? deep,
    required TResult orElse(),
  }) {
    if (deep != null) {
      return deep(this);
    }
    return orElse();
  }
}

abstract class DeepNestedMap implements NestedMap {
  factory DeepNestedMap(final Map<String, InnerNestedMapItem> children) =
      _$DeepNestedMapImpl;

  @override
  Map<String, InnerNestedMapItem> get children;
}

/// @nodoc
mixin _$NestedMapItem {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leaf,
    required TResult Function(Map<String, LeafNestedMapItem> children) inner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? leaf,
    TResult? Function(Map<String, LeafNestedMapItem> children)? inner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaf,
    TResult Function(Map<String, LeafNestedMapItem> children)? inner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeafNestedMapItem value) leaf,
    required TResult Function(InnerNestedMapItem value) inner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LeafNestedMapItem value)? leaf,
    TResult? Function(InnerNestedMapItem value)? inner,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeafNestedMapItem value)? leaf,
    TResult Function(InnerNestedMapItem value)? inner,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NestedMapItemCopyWith<$Res> {
  factory $NestedMapItemCopyWith(
          NestedMapItem value, $Res Function(NestedMapItem) then) =
      _$NestedMapItemCopyWithImpl<$Res, NestedMapItem>;
}

/// @nodoc
class _$NestedMapItemCopyWithImpl<$Res, $Val extends NestedMapItem>
    implements $NestedMapItemCopyWith<$Res> {
  _$NestedMapItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NestedMapItem
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LeafNestedMapItemImplCopyWith<$Res> {
  factory _$$LeafNestedMapItemImplCopyWith(_$LeafNestedMapItemImpl value,
          $Res Function(_$LeafNestedMapItemImpl) then) =
      __$$LeafNestedMapItemImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LeafNestedMapItemImplCopyWithImpl<$Res>
    extends _$NestedMapItemCopyWithImpl<$Res, _$LeafNestedMapItemImpl>
    implements _$$LeafNestedMapItemImplCopyWith<$Res> {
  __$$LeafNestedMapItemImplCopyWithImpl(_$LeafNestedMapItemImpl _value,
      $Res Function(_$LeafNestedMapItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of NestedMapItem
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LeafNestedMapItemImpl implements LeafNestedMapItem {
  _$LeafNestedMapItemImpl();

  @override
  String toString() {
    return 'NestedMapItem.leaf()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LeafNestedMapItemImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leaf,
    required TResult Function(Map<String, LeafNestedMapItem> children) inner,
  }) {
    return leaf();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? leaf,
    TResult? Function(Map<String, LeafNestedMapItem> children)? inner,
  }) {
    return leaf?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaf,
    TResult Function(Map<String, LeafNestedMapItem> children)? inner,
    required TResult orElse(),
  }) {
    if (leaf != null) {
      return leaf();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeafNestedMapItem value) leaf,
    required TResult Function(InnerNestedMapItem value) inner,
  }) {
    return leaf(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LeafNestedMapItem value)? leaf,
    TResult? Function(InnerNestedMapItem value)? inner,
  }) {
    return leaf?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeafNestedMapItem value)? leaf,
    TResult Function(InnerNestedMapItem value)? inner,
    required TResult orElse(),
  }) {
    if (leaf != null) {
      return leaf(this);
    }
    return orElse();
  }
}

abstract class LeafNestedMapItem implements NestedMapItem {
  factory LeafNestedMapItem() = _$LeafNestedMapItemImpl;
}

/// @nodoc
abstract class _$$InnerNestedMapItemImplCopyWith<$Res> {
  factory _$$InnerNestedMapItemImplCopyWith(_$InnerNestedMapItemImpl value,
          $Res Function(_$InnerNestedMapItemImpl) then) =
      __$$InnerNestedMapItemImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Map<String, LeafNestedMapItem> children});
}

/// @nodoc
class __$$InnerNestedMapItemImplCopyWithImpl<$Res>
    extends _$NestedMapItemCopyWithImpl<$Res, _$InnerNestedMapItemImpl>
    implements _$$InnerNestedMapItemImplCopyWith<$Res> {
  __$$InnerNestedMapItemImplCopyWithImpl(_$InnerNestedMapItemImpl _value,
      $Res Function(_$InnerNestedMapItemImpl) _then)
      : super(_value, _then);

  /// Create a copy of NestedMapItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? children = null,
  }) {
    return _then(_$InnerNestedMapItemImpl(
      null == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as Map<String, LeafNestedMapItem>,
    ));
  }
}

/// @nodoc

class _$InnerNestedMapItemImpl implements InnerNestedMapItem {
  _$InnerNestedMapItemImpl(final Map<String, LeafNestedMapItem> children)
      : _children = children;

  final Map<String, LeafNestedMapItem> _children;
  @override
  Map<String, LeafNestedMapItem> get children {
    if (_children is EqualUnmodifiableMapView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_children);
  }

  @override
  String toString() {
    return 'NestedMapItem.inner(children: $children)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InnerNestedMapItemImpl &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_children));

  /// Create a copy of NestedMapItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InnerNestedMapItemImplCopyWith<_$InnerNestedMapItemImpl> get copyWith =>
      __$$InnerNestedMapItemImplCopyWithImpl<_$InnerNestedMapItemImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() leaf,
    required TResult Function(Map<String, LeafNestedMapItem> children) inner,
  }) {
    return inner(children);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? leaf,
    TResult? Function(Map<String, LeafNestedMapItem> children)? inner,
  }) {
    return inner?.call(children);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? leaf,
    TResult Function(Map<String, LeafNestedMapItem> children)? inner,
    required TResult orElse(),
  }) {
    if (inner != null) {
      return inner(children);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LeafNestedMapItem value) leaf,
    required TResult Function(InnerNestedMapItem value) inner,
  }) {
    return inner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LeafNestedMapItem value)? leaf,
    TResult? Function(InnerNestedMapItem value)? inner,
  }) {
    return inner?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LeafNestedMapItem value)? leaf,
    TResult Function(InnerNestedMapItem value)? inner,
    required TResult orElse(),
  }) {
    if (inner != null) {
      return inner(this);
    }
    return orElse();
  }
}

abstract class InnerNestedMapItem implements NestedMapItem {
  factory InnerNestedMapItem(final Map<String, LeafNestedMapItem> children) =
      _$InnerNestedMapItemImpl;

  Map<String, LeafNestedMapItem> get children;

  /// Create a copy of NestedMapItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InnerNestedMapItemImplCopyWith<_$InnerNestedMapItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ToBeGenerated {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() generated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? generated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? generated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CodeGenerated value) generated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CodeGenerated value)? generated,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CodeGenerated value)? generated,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToBeGeneratedCopyWith<$Res> {
  factory $ToBeGeneratedCopyWith(
          ToBeGenerated value, $Res Function(ToBeGenerated) then) =
      _$ToBeGeneratedCopyWithImpl<$Res, ToBeGenerated>;
}

/// @nodoc
class _$ToBeGeneratedCopyWithImpl<$Res, $Val extends ToBeGenerated>
    implements $ToBeGeneratedCopyWith<$Res> {
  _$ToBeGeneratedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ToBeGenerated
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CodeGeneratedImplCopyWith<$Res> {
  factory _$$CodeGeneratedImplCopyWith(
          _$CodeGeneratedImpl value, $Res Function(_$CodeGeneratedImpl) then) =
      __$$CodeGeneratedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CodeGeneratedImplCopyWithImpl<$Res>
    extends _$ToBeGeneratedCopyWithImpl<$Res, _$CodeGeneratedImpl>
    implements _$$CodeGeneratedImplCopyWith<$Res> {
  __$$CodeGeneratedImplCopyWithImpl(
      _$CodeGeneratedImpl _value, $Res Function(_$CodeGeneratedImpl) _then)
      : super(_value, _then);

  /// Create a copy of ToBeGenerated
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CodeGeneratedImpl implements CodeGenerated {
  const _$CodeGeneratedImpl();

  @override
  String toString() {
    return 'ToBeGenerated.generated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CodeGeneratedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() generated,
  }) {
    return generated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? generated,
  }) {
    return generated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? generated,
    required TResult orElse(),
  }) {
    if (generated != null) {
      return generated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CodeGenerated value) generated,
  }) {
    return generated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CodeGenerated value)? generated,
  }) {
    return generated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CodeGenerated value)? generated,
    required TResult orElse(),
  }) {
    if (generated != null) {
      return generated(this);
    }
    return orElse();
  }
}

abstract class CodeGenerated implements ToBeGenerated {
  const factory CodeGenerated() = _$CodeGeneratedImpl;
}

/// @nodoc
mixin _$UsesGenerated {
  CodeGenerated get value => throw _privateConstructorUsedError;
  List<CodeGenerated> get list => throw _privateConstructorUsedError;
  List<List<CodeGenerated>> get nestedList =>
      throw _privateConstructorUsedError;
  Map<int, CodeGenerated> get map => throw _privateConstructorUsedError;

  /// Create a copy of UsesGenerated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UsesGeneratedCopyWith<UsesGenerated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsesGeneratedCopyWith<$Res> {
  factory $UsesGeneratedCopyWith(
          UsesGenerated value, $Res Function(UsesGenerated) then) =
      _$UsesGeneratedCopyWithImpl<$Res, UsesGenerated>;
  @useResult
  $Res call(
      {CodeGenerated value,
      List<CodeGenerated> list,
      List<List<CodeGenerated>> nestedList,
      Map<int, CodeGenerated> map});
}

/// @nodoc
class _$UsesGeneratedCopyWithImpl<$Res, $Val extends UsesGenerated>
    implements $UsesGeneratedCopyWith<$Res> {
  _$UsesGeneratedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UsesGenerated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? list = null,
    Object? nestedList = null,
    Object? map = null,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as CodeGenerated,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CodeGenerated>,
      nestedList: null == nestedList
          ? _value.nestedList
          : nestedList // ignore: cast_nullable_to_non_nullable
              as List<List<CodeGenerated>>,
      map: null == map
          ? _value.map
          : map // ignore: cast_nullable_to_non_nullable
              as Map<int, CodeGenerated>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsesGeneratedImplCopyWith<$Res>
    implements $UsesGeneratedCopyWith<$Res> {
  factory _$$UsesGeneratedImplCopyWith(
          _$UsesGeneratedImpl value, $Res Function(_$UsesGeneratedImpl) then) =
      __$$UsesGeneratedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {CodeGenerated value,
      List<CodeGenerated> list,
      List<List<CodeGenerated>> nestedList,
      Map<int, CodeGenerated> map});
}

/// @nodoc
class __$$UsesGeneratedImplCopyWithImpl<$Res>
    extends _$UsesGeneratedCopyWithImpl<$Res, _$UsesGeneratedImpl>
    implements _$$UsesGeneratedImplCopyWith<$Res> {
  __$$UsesGeneratedImplCopyWithImpl(
      _$UsesGeneratedImpl _value, $Res Function(_$UsesGeneratedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UsesGenerated
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? list = null,
    Object? nestedList = null,
    Object? map = null,
  }) {
    return _then(_$UsesGeneratedImpl(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as CodeGenerated,
      null == list
          ? _value._list
          : list // ignore: cast_nullable_to_non_nullable
              as List<CodeGenerated>,
      null == nestedList
          ? _value._nestedList
          : nestedList // ignore: cast_nullable_to_non_nullable
              as List<List<CodeGenerated>>,
      null == map
          ? _value._map
          : map // ignore: cast_nullable_to_non_nullable
              as Map<int, CodeGenerated>,
    ));
  }
}

/// @nodoc

class _$UsesGeneratedImpl implements _UsesGenerated {
  _$UsesGeneratedImpl(
      this.value,
      final List<CodeGenerated> list,
      final List<List<CodeGenerated>> nestedList,
      final Map<int, CodeGenerated> map)
      : _list = list,
        _nestedList = nestedList,
        _map = map;

  @override
  final CodeGenerated value;
  final List<CodeGenerated> _list;
  @override
  List<CodeGenerated> get list {
    if (_list is EqualUnmodifiableListView) return _list;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_list);
  }

  final List<List<CodeGenerated>> _nestedList;
  @override
  List<List<CodeGenerated>> get nestedList {
    if (_nestedList is EqualUnmodifiableListView) return _nestedList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nestedList);
  }

  final Map<int, CodeGenerated> _map;
  @override
  Map<int, CodeGenerated> get map {
    if (_map is EqualUnmodifiableMapView) return _map;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_map);
  }

  @override
  String toString() {
    return 'UsesGenerated(value: $value, list: $list, nestedList: $nestedList, map: $map)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsesGeneratedImpl &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other._list, _list) &&
            const DeepCollectionEquality()
                .equals(other._nestedList, _nestedList) &&
            const DeepCollectionEquality().equals(other._map, _map));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(_list),
      const DeepCollectionEquality().hash(_nestedList),
      const DeepCollectionEquality().hash(_map));

  /// Create a copy of UsesGenerated
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UsesGeneratedImplCopyWith<_$UsesGeneratedImpl> get copyWith =>
      __$$UsesGeneratedImplCopyWithImpl<_$UsesGeneratedImpl>(this, _$identity);
}

abstract class _UsesGenerated implements UsesGenerated {
  factory _UsesGenerated(
      final CodeGenerated value,
      final List<CodeGenerated> list,
      final List<List<CodeGenerated>> nestedList,
      final Map<int, CodeGenerated> map) = _$UsesGeneratedImpl;

  @override
  CodeGenerated get value;
  @override
  List<CodeGenerated> get list;
  @override
  List<List<CodeGenerated>> get nestedList;
  @override
  Map<int, CodeGenerated> get map;

  /// Create a copy of UsesGenerated
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UsesGeneratedImplCopyWith<_$UsesGeneratedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
