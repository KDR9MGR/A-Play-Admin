// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'common_types.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Union {
  int? get arg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? arg) foo,
    required TResult Function(int arg) bar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? arg)? foo,
    TResult? Function(int arg)? bar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? arg)? foo,
    TResult Function(int arg)? bar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionFoo value) foo,
    required TResult Function(_UnionBar value) bar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionFoo value)? foo,
    TResult? Function(_UnionBar value)? bar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionFoo value)? foo,
    TResult Function(_UnionBar value)? bar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnionCopyWith<Union> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnionCopyWith<$Res> {
  factory $UnionCopyWith(Union value, $Res Function(Union) then) =
      _$UnionCopyWithImpl<$Res, Union>;
  @useResult
  $Res call({int arg});
}

/// @nodoc
class _$UnionCopyWithImpl<$Res, $Val extends Union>
    implements $UnionCopyWith<$Res> {
  _$UnionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arg = null,
  }) {
    return _then(_value.copyWith(
      arg: null == arg
          ? _value.arg!
          : arg // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UnionFooImplCopyWith<$Res> implements $UnionCopyWith<$Res> {
  factory _$$UnionFooImplCopyWith(
          _$UnionFooImpl value, $Res Function(_$UnionFooImpl) then) =
      __$$UnionFooImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? arg});
}

/// @nodoc
class __$$UnionFooImplCopyWithImpl<$Res>
    extends _$UnionCopyWithImpl<$Res, _$UnionFooImpl>
    implements _$$UnionFooImplCopyWith<$Res> {
  __$$UnionFooImplCopyWithImpl(
      _$UnionFooImpl _value, $Res Function(_$UnionFooImpl) _then)
      : super(_value, _then);

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arg = freezed,
  }) {
    return _then(_$UnionFooImpl(
      arg: freezed == arg
          ? _value.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$UnionFooImpl implements _UnionFoo {
  _$UnionFooImpl({this.arg});

  @override
  final int? arg;

  @override
  String toString() {
    return 'Union.foo(arg: $arg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionFooImpl &&
            (identical(other.arg, arg) || other.arg == arg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, arg);

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionFooImplCopyWith<_$UnionFooImpl> get copyWith =>
      __$$UnionFooImplCopyWithImpl<_$UnionFooImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? arg) foo,
    required TResult Function(int arg) bar,
  }) {
    return foo(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? arg)? foo,
    TResult? Function(int arg)? bar,
  }) {
    return foo?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? arg)? foo,
    TResult Function(int arg)? bar,
    required TResult orElse(),
  }) {
    if (foo != null) {
      return foo(arg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionFoo value) foo,
    required TResult Function(_UnionBar value) bar,
  }) {
    return foo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionFoo value)? foo,
    TResult? Function(_UnionBar value)? bar,
  }) {
    return foo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionFoo value)? foo,
    TResult Function(_UnionBar value)? bar,
    required TResult orElse(),
  }) {
    if (foo != null) {
      return foo(this);
    }
    return orElse();
  }
}

abstract class _UnionFoo implements Union {
  factory _UnionFoo({final int? arg}) = _$UnionFooImpl;

  @override
  int? get arg;

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionFooImplCopyWith<_$UnionFooImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionBarImplCopyWith<$Res> implements $UnionCopyWith<$Res> {
  factory _$$UnionBarImplCopyWith(
          _$UnionBarImpl value, $Res Function(_$UnionBarImpl) then) =
      __$$UnionBarImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int arg});
}

/// @nodoc
class __$$UnionBarImplCopyWithImpl<$Res>
    extends _$UnionCopyWithImpl<$Res, _$UnionBarImpl>
    implements _$$UnionBarImplCopyWith<$Res> {
  __$$UnionBarImplCopyWithImpl(
      _$UnionBarImpl _value, $Res Function(_$UnionBarImpl) _then)
      : super(_value, _then);

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arg = null,
  }) {
    return _then(_$UnionBarImpl(
      arg: null == arg
          ? _value.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnionBarImpl implements _UnionBar {
  _$UnionBarImpl({required this.arg});

  @override
  final int arg;

  @override
  String toString() {
    return 'Union.bar(arg: $arg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionBarImpl &&
            (identical(other.arg, arg) || other.arg == arg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, arg);

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionBarImplCopyWith<_$UnionBarImpl> get copyWith =>
      __$$UnionBarImplCopyWithImpl<_$UnionBarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? arg) foo,
    required TResult Function(int arg) bar,
  }) {
    return bar(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? arg)? foo,
    TResult? Function(int arg)? bar,
  }) {
    return bar?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? arg)? foo,
    TResult Function(int arg)? bar,
    required TResult orElse(),
  }) {
    if (bar != null) {
      return bar(arg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionFoo value) foo,
    required TResult Function(_UnionBar value) bar,
  }) {
    return bar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionFoo value)? foo,
    TResult? Function(_UnionBar value)? bar,
  }) {
    return bar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionFoo value)? foo,
    TResult Function(_UnionBar value)? bar,
    required TResult orElse(),
  }) {
    if (bar != null) {
      return bar(this);
    }
    return orElse();
  }
}

abstract class _UnionBar implements Union {
  factory _UnionBar({required final int arg}) = _$UnionBarImpl;

  @override
  int get arg;

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionBarImplCopyWith<_$UnionBarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Union2 {
  num? get arg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int arg) foo,
    required TResult Function(double? arg) bar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int arg)? foo,
    TResult? Function(double? arg)? bar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int arg)? foo,
    TResult Function(double? arg)? bar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Union2Foo value) foo,
    required TResult Function(_Union2Bar value) bar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Union2Foo value)? foo,
    TResult? Function(_Union2Bar value)? bar,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Union2Foo value)? foo,
    TResult Function(_Union2Bar value)? bar,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Union2CopyWith<$Res> {
  factory $Union2CopyWith(Union2 value, $Res Function(Union2) then) =
      _$Union2CopyWithImpl<$Res, Union2>;
}

/// @nodoc
class _$Union2CopyWithImpl<$Res, $Val extends Union2>
    implements $Union2CopyWith<$Res> {
  _$Union2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Union2
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$Union2FooImplCopyWith<$Res> {
  factory _$$Union2FooImplCopyWith(
          _$Union2FooImpl value, $Res Function(_$Union2FooImpl) then) =
      __$$Union2FooImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int arg});
}

/// @nodoc
class __$$Union2FooImplCopyWithImpl<$Res>
    extends _$Union2CopyWithImpl<$Res, _$Union2FooImpl>
    implements _$$Union2FooImplCopyWith<$Res> {
  __$$Union2FooImplCopyWithImpl(
      _$Union2FooImpl _value, $Res Function(_$Union2FooImpl) _then)
      : super(_value, _then);

  /// Create a copy of Union2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arg = null,
  }) {
    return _then(_$Union2FooImpl(
      arg: null == arg
          ? _value.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Union2FooImpl implements _Union2Foo {
  _$Union2FooImpl({required this.arg});

  @override
  final int arg;

  @override
  String toString() {
    return 'Union2.foo(arg: $arg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Union2FooImpl &&
            (identical(other.arg, arg) || other.arg == arg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, arg);

  /// Create a copy of Union2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Union2FooImplCopyWith<_$Union2FooImpl> get copyWith =>
      __$$Union2FooImplCopyWithImpl<_$Union2FooImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int arg) foo,
    required TResult Function(double? arg) bar,
  }) {
    return foo(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int arg)? foo,
    TResult? Function(double? arg)? bar,
  }) {
    return foo?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int arg)? foo,
    TResult Function(double? arg)? bar,
    required TResult orElse(),
  }) {
    if (foo != null) {
      return foo(arg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Union2Foo value) foo,
    required TResult Function(_Union2Bar value) bar,
  }) {
    return foo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Union2Foo value)? foo,
    TResult? Function(_Union2Bar value)? bar,
  }) {
    return foo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Union2Foo value)? foo,
    TResult Function(_Union2Bar value)? bar,
    required TResult orElse(),
  }) {
    if (foo != null) {
      return foo(this);
    }
    return orElse();
  }
}

abstract class _Union2Foo implements Union2 {
  factory _Union2Foo({required final int arg}) = _$Union2FooImpl;

  @override
  int get arg;

  /// Create a copy of Union2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Union2FooImplCopyWith<_$Union2FooImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Union2BarImplCopyWith<$Res> {
  factory _$$Union2BarImplCopyWith(
          _$Union2BarImpl value, $Res Function(_$Union2BarImpl) then) =
      __$$Union2BarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double? arg});
}

/// @nodoc
class __$$Union2BarImplCopyWithImpl<$Res>
    extends _$Union2CopyWithImpl<$Res, _$Union2BarImpl>
    implements _$$Union2BarImplCopyWith<$Res> {
  __$$Union2BarImplCopyWithImpl(
      _$Union2BarImpl _value, $Res Function(_$Union2BarImpl) _then)
      : super(_value, _then);

  /// Create a copy of Union2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arg = freezed,
  }) {
    return _then(_$Union2BarImpl(
      arg: freezed == arg
          ? _value.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$Union2BarImpl implements _Union2Bar {
  _$Union2BarImpl({this.arg});

  @override
  final double? arg;

  @override
  String toString() {
    return 'Union2.bar(arg: $arg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Union2BarImpl &&
            (identical(other.arg, arg) || other.arg == arg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, arg);

  /// Create a copy of Union2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Union2BarImplCopyWith<_$Union2BarImpl> get copyWith =>
      __$$Union2BarImplCopyWithImpl<_$Union2BarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int arg) foo,
    required TResult Function(double? arg) bar,
  }) {
    return bar(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int arg)? foo,
    TResult? Function(double? arg)? bar,
  }) {
    return bar?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int arg)? foo,
    TResult Function(double? arg)? bar,
    required TResult orElse(),
  }) {
    if (bar != null) {
      return bar(arg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Union2Foo value) foo,
    required TResult Function(_Union2Bar value) bar,
  }) {
    return bar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Union2Foo value)? foo,
    TResult? Function(_Union2Bar value)? bar,
  }) {
    return bar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Union2Foo value)? foo,
    TResult Function(_Union2Bar value)? bar,
    required TResult orElse(),
  }) {
    if (bar != null) {
      return bar(this);
    }
    return orElse();
  }
}

abstract class _Union2Bar implements Union2 {
  factory _Union2Bar({final double? arg}) = _$Union2BarImpl;

  @override
  double? get arg;

  /// Create a copy of Union2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Union2BarImplCopyWith<_$Union2BarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Union3 {
  num? get arg => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? arg) bar,
    required TResult Function(int arg) foo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? arg)? bar,
    TResult? Function(int arg)? foo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? arg)? bar,
    TResult Function(int arg)? foo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Union3Bar value) bar,
    required TResult Function(_Union3Foo value) foo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Union3Bar value)? bar,
    TResult? Function(_Union3Foo value)? foo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Union3Bar value)? bar,
    TResult Function(_Union3Foo value)? foo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Union3CopyWith<$Res> {
  factory $Union3CopyWith(Union3 value, $Res Function(Union3) then) =
      _$Union3CopyWithImpl<$Res, Union3>;
}

/// @nodoc
class _$Union3CopyWithImpl<$Res, $Val extends Union3>
    implements $Union3CopyWith<$Res> {
  _$Union3CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Union3
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$Union3BarImplCopyWith<$Res> {
  factory _$$Union3BarImplCopyWith(
          _$Union3BarImpl value, $Res Function(_$Union3BarImpl) then) =
      __$$Union3BarImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double? arg});
}

/// @nodoc
class __$$Union3BarImplCopyWithImpl<$Res>
    extends _$Union3CopyWithImpl<$Res, _$Union3BarImpl>
    implements _$$Union3BarImplCopyWith<$Res> {
  __$$Union3BarImplCopyWithImpl(
      _$Union3BarImpl _value, $Res Function(_$Union3BarImpl) _then)
      : super(_value, _then);

  /// Create a copy of Union3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arg = freezed,
  }) {
    return _then(_$Union3BarImpl(
      arg: freezed == arg
          ? _value.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$Union3BarImpl implements _Union3Bar {
  _$Union3BarImpl({this.arg});

  @override
  final double? arg;

  @override
  String toString() {
    return 'Union3.bar(arg: $arg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Union3BarImpl &&
            (identical(other.arg, arg) || other.arg == arg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, arg);

  /// Create a copy of Union3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Union3BarImplCopyWith<_$Union3BarImpl> get copyWith =>
      __$$Union3BarImplCopyWithImpl<_$Union3BarImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? arg) bar,
    required TResult Function(int arg) foo,
  }) {
    return bar(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? arg)? bar,
    TResult? Function(int arg)? foo,
  }) {
    return bar?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? arg)? bar,
    TResult Function(int arg)? foo,
    required TResult orElse(),
  }) {
    if (bar != null) {
      return bar(arg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Union3Bar value) bar,
    required TResult Function(_Union3Foo value) foo,
  }) {
    return bar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Union3Bar value)? bar,
    TResult? Function(_Union3Foo value)? foo,
  }) {
    return bar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Union3Bar value)? bar,
    TResult Function(_Union3Foo value)? foo,
    required TResult orElse(),
  }) {
    if (bar != null) {
      return bar(this);
    }
    return orElse();
  }
}

abstract class _Union3Bar implements Union3 {
  factory _Union3Bar({final double? arg}) = _$Union3BarImpl;

  @override
  double? get arg;

  /// Create a copy of Union3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Union3BarImplCopyWith<_$Union3BarImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Union3FooImplCopyWith<$Res> {
  factory _$$Union3FooImplCopyWith(
          _$Union3FooImpl value, $Res Function(_$Union3FooImpl) then) =
      __$$Union3FooImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int arg});
}

/// @nodoc
class __$$Union3FooImplCopyWithImpl<$Res>
    extends _$Union3CopyWithImpl<$Res, _$Union3FooImpl>
    implements _$$Union3FooImplCopyWith<$Res> {
  __$$Union3FooImplCopyWithImpl(
      _$Union3FooImpl _value, $Res Function(_$Union3FooImpl) _then)
      : super(_value, _then);

  /// Create a copy of Union3
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arg = null,
  }) {
    return _then(_$Union3FooImpl(
      arg: null == arg
          ? _value.arg
          : arg // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Union3FooImpl implements _Union3Foo {
  _$Union3FooImpl({required this.arg});

  @override
  final int arg;

  @override
  String toString() {
    return 'Union3.foo(arg: $arg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Union3FooImpl &&
            (identical(other.arg, arg) || other.arg == arg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, arg);

  /// Create a copy of Union3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Union3FooImplCopyWith<_$Union3FooImpl> get copyWith =>
      __$$Union3FooImplCopyWithImpl<_$Union3FooImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double? arg) bar,
    required TResult Function(int arg) foo,
  }) {
    return foo(arg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double? arg)? bar,
    TResult? Function(int arg)? foo,
  }) {
    return foo?.call(arg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double? arg)? bar,
    TResult Function(int arg)? foo,
    required TResult orElse(),
  }) {
    if (foo != null) {
      return foo(arg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Union3Bar value) bar,
    required TResult Function(_Union3Foo value) foo,
  }) {
    return foo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Union3Bar value)? bar,
    TResult? Function(_Union3Foo value)? foo,
  }) {
    return foo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Union3Bar value)? bar,
    TResult Function(_Union3Foo value)? foo,
    required TResult orElse(),
  }) {
    if (foo != null) {
      return foo(this);
    }
    return orElse();
  }
}

abstract class _Union3Foo implements Union3 {
  factory _Union3Foo({required final int arg}) = _$Union3FooImpl;

  @override
  int get arg;

  /// Create a copy of Union3
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Union3FooImplCopyWith<_$Union3FooImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Union4 {
  int? get count => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count, String? id, String? name) eventOne,
    required TResult Function(int? count, String id, String name) eventTwo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count, String? id, String? name)? eventOne,
    TResult? Function(int? count, String id, String name)? eventTwo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count, String? id, String? name)? eventOne,
    TResult Function(int? count, String id, String name)? eventTwo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Union4One value) eventOne,
    required TResult Function(Union4Two value) eventTwo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Union4One value)? eventOne,
    TResult? Function(Union4Two value)? eventTwo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Union4One value)? eventOne,
    TResult Function(Union4Two value)? eventTwo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of Union4
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Union4CopyWith<Union4> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Union4CopyWith<$Res> {
  factory $Union4CopyWith(Union4 value, $Res Function(Union4) then) =
      _$Union4CopyWithImpl<$Res, Union4>;
  @useResult
  $Res call({int count, String id, String name});
}

/// @nodoc
class _$Union4CopyWithImpl<$Res, $Val extends Union4>
    implements $Union4CopyWith<$Res> {
  _$Union4CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Union4
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count!
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      id: null == id
          ? _value.id!
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name!
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Union4OneImplCopyWith<$Res> implements $Union4CopyWith<$Res> {
  factory _$$Union4OneImplCopyWith(
          _$Union4OneImpl value, $Res Function(_$Union4OneImpl) then) =
      __$$Union4OneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int count, String? id, String? name});
}

/// @nodoc
class __$$Union4OneImplCopyWithImpl<$Res>
    extends _$Union4CopyWithImpl<$Res, _$Union4OneImpl>
    implements _$$Union4OneImplCopyWith<$Res> {
  __$$Union4OneImplCopyWithImpl(
      _$Union4OneImpl _value, $Res Function(_$Union4OneImpl) _then)
      : super(_value, _then);

  /// Create a copy of Union4
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$Union4OneImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Union4OneImpl implements Union4One {
  _$Union4OneImpl({required this.count, required this.id, required this.name});

  @override
  final int count;
  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Union4.eventOne(count: $count, id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Union4OneImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, id, name);

  /// Create a copy of Union4
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Union4OneImplCopyWith<_$Union4OneImpl> get copyWith =>
      __$$Union4OneImplCopyWithImpl<_$Union4OneImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count, String? id, String? name) eventOne,
    required TResult Function(int? count, String id, String name) eventTwo,
  }) {
    return eventOne(count, id, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count, String? id, String? name)? eventOne,
    TResult? Function(int? count, String id, String name)? eventTwo,
  }) {
    return eventOne?.call(count, id, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count, String? id, String? name)? eventOne,
    TResult Function(int? count, String id, String name)? eventTwo,
    required TResult orElse(),
  }) {
    if (eventOne != null) {
      return eventOne(count, id, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Union4One value) eventOne,
    required TResult Function(Union4Two value) eventTwo,
  }) {
    return eventOne(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Union4One value)? eventOne,
    TResult? Function(Union4Two value)? eventTwo,
  }) {
    return eventOne?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Union4One value)? eventOne,
    TResult Function(Union4Two value)? eventTwo,
    required TResult orElse(),
  }) {
    if (eventOne != null) {
      return eventOne(this);
    }
    return orElse();
  }
}

abstract class Union4One implements Union4 {
  factory Union4One(
      {required final int count,
      required final String? id,
      required final String? name}) = _$Union4OneImpl;

  @override
  int get count;
  @override
  String? get id;
  @override
  String? get name;

  /// Create a copy of Union4
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Union4OneImplCopyWith<_$Union4OneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Union4TwoImplCopyWith<$Res> implements $Union4CopyWith<$Res> {
  factory _$$Union4TwoImplCopyWith(
          _$Union4TwoImpl value, $Res Function(_$Union4TwoImpl) then) =
      __$$Union4TwoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? count, String id, String name});
}

/// @nodoc
class __$$Union4TwoImplCopyWithImpl<$Res>
    extends _$Union4CopyWithImpl<$Res, _$Union4TwoImpl>
    implements _$$Union4TwoImplCopyWith<$Res> {
  __$$Union4TwoImplCopyWithImpl(
      _$Union4TwoImpl _value, $Res Function(_$Union4TwoImpl) _then)
      : super(_value, _then);

  /// Create a copy of Union4
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$Union4TwoImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Union4TwoImpl implements Union4Two {
  _$Union4TwoImpl({required this.count, required this.id, required this.name});

  @override
  final int? count;
  @override
  final String id;
  @override
  final String name;

  @override
  String toString() {
    return 'Union4.eventTwo(count: $count, id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Union4TwoImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, count, id, name);

  /// Create a copy of Union4
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Union4TwoImplCopyWith<_$Union4TwoImpl> get copyWith =>
      __$$Union4TwoImplCopyWithImpl<_$Union4TwoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int count, String? id, String? name) eventOne,
    required TResult Function(int? count, String id, String name) eventTwo,
  }) {
    return eventTwo(count, id, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int count, String? id, String? name)? eventOne,
    TResult? Function(int? count, String id, String name)? eventTwo,
  }) {
    return eventTwo?.call(count, id, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int count, String? id, String? name)? eventOne,
    TResult Function(int? count, String id, String name)? eventTwo,
    required TResult orElse(),
  }) {
    if (eventTwo != null) {
      return eventTwo(count, id, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Union4One value) eventOne,
    required TResult Function(Union4Two value) eventTwo,
  }) {
    return eventTwo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Union4One value)? eventOne,
    TResult? Function(Union4Two value)? eventTwo,
  }) {
    return eventTwo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Union4One value)? eventOne,
    TResult Function(Union4Two value)? eventTwo,
    required TResult orElse(),
  }) {
    if (eventTwo != null) {
      return eventTwo(this);
    }
    return orElse();
  }
}

abstract class Union4Two implements Union4 {
  factory Union4Two(
      {required final int? count,
      required final String id,
      required final String name}) = _$Union4TwoImpl;

  @override
  int? get count;
  @override
  String get id;
  @override
  String get name;

  /// Create a copy of Union4
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Union4TwoImplCopyWith<_$Union4TwoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Union5 {
  Object? get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) first,
    required TResult Function(double? value) second,
    required TResult Function(String value) third,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? first,
    TResult? Function(double? value)? second,
    TResult? Function(String value)? third,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? first,
    TResult Function(double? value)? second,
    TResult Function(String value)? third,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Union5First value) first,
    required TResult Function(_Union5Second value) second,
    required TResult Function(_Union5Third value) third,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Union5First value)? first,
    TResult? Function(_Union5Second value)? second,
    TResult? Function(_Union5Third value)? third,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Union5First value)? first,
    TResult Function(_Union5Second value)? second,
    TResult Function(_Union5Third value)? third,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Union5CopyWith<$Res> {
  factory $Union5CopyWith(Union5 value, $Res Function(Union5) then) =
      _$Union5CopyWithImpl<$Res, Union5>;
}

/// @nodoc
class _$Union5CopyWithImpl<$Res, $Val extends Union5>
    implements $Union5CopyWith<$Res> {
  _$Union5CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Union5
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$Union5FirstImplCopyWith<$Res> {
  factory _$$Union5FirstImplCopyWith(
          _$Union5FirstImpl value, $Res Function(_$Union5FirstImpl) then) =
      __$$Union5FirstImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$Union5FirstImplCopyWithImpl<$Res>
    extends _$Union5CopyWithImpl<$Res, _$Union5FirstImpl>
    implements _$$Union5FirstImplCopyWith<$Res> {
  __$$Union5FirstImplCopyWithImpl(
      _$Union5FirstImpl _value, $Res Function(_$Union5FirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of Union5
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$Union5FirstImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Union5FirstImpl implements _Union5First {
  _$Union5FirstImpl(this.value);

  @override
  final int value;

  @override
  String toString() {
    return 'Union5.first(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Union5FirstImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of Union5
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Union5FirstImplCopyWith<_$Union5FirstImpl> get copyWith =>
      __$$Union5FirstImplCopyWithImpl<_$Union5FirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) first,
    required TResult Function(double? value) second,
    required TResult Function(String value) third,
  }) {
    return first(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? first,
    TResult? Function(double? value)? second,
    TResult? Function(String value)? third,
  }) {
    return first?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? first,
    TResult Function(double? value)? second,
    TResult Function(String value)? third,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Union5First value) first,
    required TResult Function(_Union5Second value) second,
    required TResult Function(_Union5Third value) third,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Union5First value)? first,
    TResult? Function(_Union5Second value)? second,
    TResult? Function(_Union5Third value)? third,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Union5First value)? first,
    TResult Function(_Union5Second value)? second,
    TResult Function(_Union5Third value)? third,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }
}

abstract class _Union5First implements Union5 {
  factory _Union5First(final int value) = _$Union5FirstImpl;

  @override
  int get value;

  /// Create a copy of Union5
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Union5FirstImplCopyWith<_$Union5FirstImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Union5SecondImplCopyWith<$Res> {
  factory _$$Union5SecondImplCopyWith(
          _$Union5SecondImpl value, $Res Function(_$Union5SecondImpl) then) =
      __$$Union5SecondImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double? value});
}

/// @nodoc
class __$$Union5SecondImplCopyWithImpl<$Res>
    extends _$Union5CopyWithImpl<$Res, _$Union5SecondImpl>
    implements _$$Union5SecondImplCopyWith<$Res> {
  __$$Union5SecondImplCopyWithImpl(
      _$Union5SecondImpl _value, $Res Function(_$Union5SecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of Union5
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$Union5SecondImpl(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc

class _$Union5SecondImpl implements _Union5Second {
  _$Union5SecondImpl(this.value);

  @override
  final double? value;

  @override
  String toString() {
    return 'Union5.second(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Union5SecondImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of Union5
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Union5SecondImplCopyWith<_$Union5SecondImpl> get copyWith =>
      __$$Union5SecondImplCopyWithImpl<_$Union5SecondImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) first,
    required TResult Function(double? value) second,
    required TResult Function(String value) third,
  }) {
    return second(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? first,
    TResult? Function(double? value)? second,
    TResult? Function(String value)? third,
  }) {
    return second?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? first,
    TResult Function(double? value)? second,
    TResult Function(String value)? third,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Union5First value) first,
    required TResult Function(_Union5Second value) second,
    required TResult Function(_Union5Third value) third,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Union5First value)? first,
    TResult? Function(_Union5Second value)? second,
    TResult? Function(_Union5Third value)? third,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Union5First value)? first,
    TResult Function(_Union5Second value)? second,
    TResult Function(_Union5Third value)? third,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }
}

abstract class _Union5Second implements Union5 {
  factory _Union5Second(final double? value) = _$Union5SecondImpl;

  @override
  double? get value;

  /// Create a copy of Union5
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Union5SecondImplCopyWith<_$Union5SecondImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Union5ThirdImplCopyWith<$Res> {
  factory _$$Union5ThirdImplCopyWith(
          _$Union5ThirdImpl value, $Res Function(_$Union5ThirdImpl) then) =
      __$$Union5ThirdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$Union5ThirdImplCopyWithImpl<$Res>
    extends _$Union5CopyWithImpl<$Res, _$Union5ThirdImpl>
    implements _$$Union5ThirdImplCopyWith<$Res> {
  __$$Union5ThirdImplCopyWithImpl(
      _$Union5ThirdImpl _value, $Res Function(_$Union5ThirdImpl) _then)
      : super(_value, _then);

  /// Create a copy of Union5
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$Union5ThirdImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Union5ThirdImpl implements _Union5Third {
  _$Union5ThirdImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'Union5.third(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Union5ThirdImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of Union5
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Union5ThirdImplCopyWith<_$Union5ThirdImpl> get copyWith =>
      __$$Union5ThirdImplCopyWithImpl<_$Union5ThirdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int value) first,
    required TResult Function(double? value) second,
    required TResult Function(String value) third,
  }) {
    return third(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int value)? first,
    TResult? Function(double? value)? second,
    TResult? Function(String value)? third,
  }) {
    return third?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int value)? first,
    TResult Function(double? value)? second,
    TResult Function(String value)? third,
    required TResult orElse(),
  }) {
    if (third != null) {
      return third(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Union5First value) first,
    required TResult Function(_Union5Second value) second,
    required TResult Function(_Union5Third value) third,
  }) {
    return third(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Union5First value)? first,
    TResult? Function(_Union5Second value)? second,
    TResult? Function(_Union5Third value)? third,
  }) {
    return third?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Union5First value)? first,
    TResult Function(_Union5Second value)? second,
    TResult Function(_Union5Third value)? third,
    required TResult orElse(),
  }) {
    if (third != null) {
      return third(this);
    }
    return orElse();
  }
}

abstract class _Union5Third implements Union5 {
  factory _Union5Third(final String value) = _$Union5ThirdImpl;

  @override
  String get value;

  /// Create a copy of Union5
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Union5ThirdImplCopyWith<_$Union5ThirdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UnionDeepCopy {
  CommonSuperSubtype? get value42 => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonSuperSubtype value42) first,
    required TResult Function(CommonSuperSubtype? value42) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonSuperSubtype value42)? first,
    TResult? Function(CommonSuperSubtype? value42)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonSuperSubtype value42)? first,
    TResult Function(CommonSuperSubtype? value42)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionWrapperFirst value) first,
    required TResult Function(_UnionWrapperSecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionWrapperFirst value)? first,
    TResult? Function(_UnionWrapperSecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionWrapperFirst value)? first,
    TResult Function(_UnionWrapperSecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of UnionDeepCopy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UnionDeepCopyCopyWith<UnionDeepCopy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnionDeepCopyCopyWith<$Res> {
  factory $UnionDeepCopyCopyWith(
          UnionDeepCopy value, $Res Function(UnionDeepCopy) then) =
      _$UnionDeepCopyCopyWithImpl<$Res, UnionDeepCopy>;
  @useResult
  $Res call({CommonSuperSubtype value42});

  $CommonSuperSubtypeCopyWith<$Res>? get value42;
}

/// @nodoc
class _$UnionDeepCopyCopyWithImpl<$Res, $Val extends UnionDeepCopy>
    implements $UnionDeepCopyCopyWith<$Res> {
  _$UnionDeepCopyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnionDeepCopy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value42 = null,
  }) {
    return _then(_value.copyWith(
      value42: null == value42
          ? _value.value42!
          : value42 // ignore: cast_nullable_to_non_nullable
              as CommonSuperSubtype,
    ) as $Val);
  }

  /// Create a copy of UnionDeepCopy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommonSuperSubtypeCopyWith<$Res>? get value42 {
    if (_value.value42 == null) {
      return null;
    }

    return $CommonSuperSubtypeCopyWith<$Res>(_value.value42!, (value) {
      return _then(_value.copyWith(value42: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnionWrapperFirstImplCopyWith<$Res>
    implements $UnionDeepCopyCopyWith<$Res> {
  factory _$$UnionWrapperFirstImplCopyWith(_$UnionWrapperFirstImpl value,
          $Res Function(_$UnionWrapperFirstImpl) then) =
      __$$UnionWrapperFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommonSuperSubtype value42});

  @override
  $CommonSuperSubtypeCopyWith<$Res> get value42;
}

/// @nodoc
class __$$UnionWrapperFirstImplCopyWithImpl<$Res>
    extends _$UnionDeepCopyCopyWithImpl<$Res, _$UnionWrapperFirstImpl>
    implements _$$UnionWrapperFirstImplCopyWith<$Res> {
  __$$UnionWrapperFirstImplCopyWithImpl(_$UnionWrapperFirstImpl _value,
      $Res Function(_$UnionWrapperFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionDeepCopy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value42 = null,
  }) {
    return _then(_$UnionWrapperFirstImpl(
      null == value42
          ? _value.value42
          : value42 // ignore: cast_nullable_to_non_nullable
              as CommonSuperSubtype,
    ));
  }

  /// Create a copy of UnionDeepCopy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommonSuperSubtypeCopyWith<$Res> get value42 {
    return $CommonSuperSubtypeCopyWith<$Res>(_value.value42, (value) {
      return _then(_value.copyWith(value42: value));
    });
  }
}

/// @nodoc

class _$UnionWrapperFirstImpl implements _UnionWrapperFirst {
  _$UnionWrapperFirstImpl(this.value42);

  @override
  final CommonSuperSubtype value42;

  @override
  String toString() {
    return 'UnionDeepCopy.first(value42: $value42)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionWrapperFirstImpl &&
            (identical(other.value42, value42) || other.value42 == value42));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value42);

  /// Create a copy of UnionDeepCopy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionWrapperFirstImplCopyWith<_$UnionWrapperFirstImpl> get copyWith =>
      __$$UnionWrapperFirstImplCopyWithImpl<_$UnionWrapperFirstImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonSuperSubtype value42) first,
    required TResult Function(CommonSuperSubtype? value42) second,
  }) {
    return first(value42);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonSuperSubtype value42)? first,
    TResult? Function(CommonSuperSubtype? value42)? second,
  }) {
    return first?.call(value42);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonSuperSubtype value42)? first,
    TResult Function(CommonSuperSubtype? value42)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(value42);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionWrapperFirst value) first,
    required TResult Function(_UnionWrapperSecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionWrapperFirst value)? first,
    TResult? Function(_UnionWrapperSecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionWrapperFirst value)? first,
    TResult Function(_UnionWrapperSecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }
}

abstract class _UnionWrapperFirst implements UnionDeepCopy {
  factory _UnionWrapperFirst(final CommonSuperSubtype value42) =
      _$UnionWrapperFirstImpl;

  @override
  CommonSuperSubtype get value42;

  /// Create a copy of UnionDeepCopy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionWrapperFirstImplCopyWith<_$UnionWrapperFirstImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionWrapperSecondImplCopyWith<$Res>
    implements $UnionDeepCopyCopyWith<$Res> {
  factory _$$UnionWrapperSecondImplCopyWith(_$UnionWrapperSecondImpl value,
          $Res Function(_$UnionWrapperSecondImpl) then) =
      __$$UnionWrapperSecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommonSuperSubtype? value42});

  @override
  $CommonSuperSubtypeCopyWith<$Res>? get value42;
}

/// @nodoc
class __$$UnionWrapperSecondImplCopyWithImpl<$Res>
    extends _$UnionDeepCopyCopyWithImpl<$Res, _$UnionWrapperSecondImpl>
    implements _$$UnionWrapperSecondImplCopyWith<$Res> {
  __$$UnionWrapperSecondImplCopyWithImpl(_$UnionWrapperSecondImpl _value,
      $Res Function(_$UnionWrapperSecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnionDeepCopy
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value42 = freezed,
  }) {
    return _then(_$UnionWrapperSecondImpl(
      freezed == value42
          ? _value.value42
          : value42 // ignore: cast_nullable_to_non_nullable
              as CommonSuperSubtype?,
    ));
  }
}

/// @nodoc

class _$UnionWrapperSecondImpl implements _UnionWrapperSecond {
  _$UnionWrapperSecondImpl(this.value42);

  @override
  final CommonSuperSubtype? value42;

  @override
  String toString() {
    return 'UnionDeepCopy.second(value42: $value42)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionWrapperSecondImpl &&
            (identical(other.value42, value42) || other.value42 == value42));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value42);

  /// Create a copy of UnionDeepCopy
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionWrapperSecondImplCopyWith<_$UnionWrapperSecondImpl> get copyWith =>
      __$$UnionWrapperSecondImplCopyWithImpl<_$UnionWrapperSecondImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CommonSuperSubtype value42) first,
    required TResult Function(CommonSuperSubtype? value42) second,
  }) {
    return second(value42);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CommonSuperSubtype value42)? first,
    TResult? Function(CommonSuperSubtype? value42)? second,
  }) {
    return second?.call(value42);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CommonSuperSubtype value42)? first,
    TResult Function(CommonSuperSubtype? value42)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(value42);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnionWrapperFirst value) first,
    required TResult Function(_UnionWrapperSecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UnionWrapperFirst value)? first,
    TResult? Function(_UnionWrapperSecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnionWrapperFirst value)? first,
    TResult Function(_UnionWrapperSecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }
}

abstract class _UnionWrapperSecond implements UnionDeepCopy {
  factory _UnionWrapperSecond(final CommonSuperSubtype? value42) =
      _$UnionWrapperSecondImpl;

  @override
  CommonSuperSubtype? get value42;

  /// Create a copy of UnionDeepCopy
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionWrapperSecondImplCopyWith<_$UnionWrapperSecondImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Check {
  dynamic get value => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) first,
    required TResult Function(int value) second,
    required TResult Function(double value) third,
    required TResult Function(dynamic value) fourth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic value)? first,
    TResult? Function(int value)? second,
    TResult? Function(double value)? third,
    TResult? Function(dynamic value)? fourth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? first,
    TResult Function(int value)? second,
    TResult Function(double value)? third,
    TResult Function(dynamic value)? fourth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckFirst value) first,
    required TResult Function(_CheckSecond value) second,
    required TResult Function(_CheckThird value) third,
    required TResult Function(_CheckFourth value) fourth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckFirst value)? first,
    TResult? Function(_CheckSecond value)? second,
    TResult? Function(_CheckThird value)? third,
    TResult? Function(_CheckFourth value)? fourth,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckFirst value)? first,
    TResult Function(_CheckSecond value)? second,
    TResult Function(_CheckThird value)? third,
    TResult Function(_CheckFourth value)? fourth,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckCopyWith<$Res> {
  factory $CheckCopyWith(Check value, $Res Function(Check) then) =
      _$CheckCopyWithImpl<$Res, Check>;
}

/// @nodoc
class _$CheckCopyWithImpl<$Res, $Val extends Check>
    implements $CheckCopyWith<$Res> {
  _$CheckCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Check
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckFirstImplCopyWith<$Res> {
  factory _$$CheckFirstImplCopyWith(
          _$CheckFirstImpl value, $Res Function(_$CheckFirstImpl) then) =
      __$$CheckFirstImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class __$$CheckFirstImplCopyWithImpl<$Res>
    extends _$CheckCopyWithImpl<$Res, _$CheckFirstImpl>
    implements _$$CheckFirstImplCopyWith<$Res> {
  __$$CheckFirstImplCopyWithImpl(
      _$CheckFirstImpl _value, $Res Function(_$CheckFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of Check
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$CheckFirstImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CheckFirstImpl implements _CheckFirst {
  _$CheckFirstImpl({required this.value});

  @override
  final dynamic value;

  @override
  String toString() {
    return 'Check.first(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckFirstImpl &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of Check
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckFirstImplCopyWith<_$CheckFirstImpl> get copyWith =>
      __$$CheckFirstImplCopyWithImpl<_$CheckFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) first,
    required TResult Function(int value) second,
    required TResult Function(double value) third,
    required TResult Function(dynamic value) fourth,
  }) {
    return first(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic value)? first,
    TResult? Function(int value)? second,
    TResult? Function(double value)? third,
    TResult? Function(dynamic value)? fourth,
  }) {
    return first?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? first,
    TResult Function(int value)? second,
    TResult Function(double value)? third,
    TResult Function(dynamic value)? fourth,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckFirst value) first,
    required TResult Function(_CheckSecond value) second,
    required TResult Function(_CheckThird value) third,
    required TResult Function(_CheckFourth value) fourth,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckFirst value)? first,
    TResult? Function(_CheckSecond value)? second,
    TResult? Function(_CheckThird value)? third,
    TResult? Function(_CheckFourth value)? fourth,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckFirst value)? first,
    TResult Function(_CheckSecond value)? second,
    TResult Function(_CheckThird value)? third,
    TResult Function(_CheckFourth value)? fourth,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }
}

abstract class _CheckFirst implements Check {
  factory _CheckFirst({required final dynamic value}) = _$CheckFirstImpl;

  @override
  dynamic get value;

  /// Create a copy of Check
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckFirstImplCopyWith<_$CheckFirstImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckSecondImplCopyWith<$Res> {
  factory _$$CheckSecondImplCopyWith(
          _$CheckSecondImpl value, $Res Function(_$CheckSecondImpl) then) =
      __$$CheckSecondImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int value});
}

/// @nodoc
class __$$CheckSecondImplCopyWithImpl<$Res>
    extends _$CheckCopyWithImpl<$Res, _$CheckSecondImpl>
    implements _$$CheckSecondImplCopyWith<$Res> {
  __$$CheckSecondImplCopyWithImpl(
      _$CheckSecondImpl _value, $Res Function(_$CheckSecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of Check
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$CheckSecondImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CheckSecondImpl implements _CheckSecond {
  _$CheckSecondImpl({required this.value});

  @override
  final int value;

  @override
  String toString() {
    return 'Check.second(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckSecondImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of Check
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckSecondImplCopyWith<_$CheckSecondImpl> get copyWith =>
      __$$CheckSecondImplCopyWithImpl<_$CheckSecondImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) first,
    required TResult Function(int value) second,
    required TResult Function(double value) third,
    required TResult Function(dynamic value) fourth,
  }) {
    return second(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic value)? first,
    TResult? Function(int value)? second,
    TResult? Function(double value)? third,
    TResult? Function(dynamic value)? fourth,
  }) {
    return second?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? first,
    TResult Function(int value)? second,
    TResult Function(double value)? third,
    TResult Function(dynamic value)? fourth,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckFirst value) first,
    required TResult Function(_CheckSecond value) second,
    required TResult Function(_CheckThird value) third,
    required TResult Function(_CheckFourth value) fourth,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckFirst value)? first,
    TResult? Function(_CheckSecond value)? second,
    TResult? Function(_CheckThird value)? third,
    TResult? Function(_CheckFourth value)? fourth,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckFirst value)? first,
    TResult Function(_CheckSecond value)? second,
    TResult Function(_CheckThird value)? third,
    TResult Function(_CheckFourth value)? fourth,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }
}

abstract class _CheckSecond implements Check {
  factory _CheckSecond({required final int value}) = _$CheckSecondImpl;

  @override
  int get value;

  /// Create a copy of Check
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckSecondImplCopyWith<_$CheckSecondImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckThirdImplCopyWith<$Res> {
  factory _$$CheckThirdImplCopyWith(
          _$CheckThirdImpl value, $Res Function(_$CheckThirdImpl) then) =
      __$$CheckThirdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double value});
}

/// @nodoc
class __$$CheckThirdImplCopyWithImpl<$Res>
    extends _$CheckCopyWithImpl<$Res, _$CheckThirdImpl>
    implements _$$CheckThirdImplCopyWith<$Res> {
  __$$CheckThirdImplCopyWithImpl(
      _$CheckThirdImpl _value, $Res Function(_$CheckThirdImpl) _then)
      : super(_value, _then);

  /// Create a copy of Check
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$CheckThirdImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CheckThirdImpl implements _CheckThird {
  _$CheckThirdImpl({required this.value});

  @override
  final double value;

  @override
  String toString() {
    return 'Check.third(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckThirdImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of Check
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckThirdImplCopyWith<_$CheckThirdImpl> get copyWith =>
      __$$CheckThirdImplCopyWithImpl<_$CheckThirdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) first,
    required TResult Function(int value) second,
    required TResult Function(double value) third,
    required TResult Function(dynamic value) fourth,
  }) {
    return third(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic value)? first,
    TResult? Function(int value)? second,
    TResult? Function(double value)? third,
    TResult? Function(dynamic value)? fourth,
  }) {
    return third?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? first,
    TResult Function(int value)? second,
    TResult Function(double value)? third,
    TResult Function(dynamic value)? fourth,
    required TResult orElse(),
  }) {
    if (third != null) {
      return third(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckFirst value) first,
    required TResult Function(_CheckSecond value) second,
    required TResult Function(_CheckThird value) third,
    required TResult Function(_CheckFourth value) fourth,
  }) {
    return third(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckFirst value)? first,
    TResult? Function(_CheckSecond value)? second,
    TResult? Function(_CheckThird value)? third,
    TResult? Function(_CheckFourth value)? fourth,
  }) {
    return third?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckFirst value)? first,
    TResult Function(_CheckSecond value)? second,
    TResult Function(_CheckThird value)? third,
    TResult Function(_CheckFourth value)? fourth,
    required TResult orElse(),
  }) {
    if (third != null) {
      return third(this);
    }
    return orElse();
  }
}

abstract class _CheckThird implements Check {
  factory _CheckThird({required final double value}) = _$CheckThirdImpl;

  @override
  double get value;

  /// Create a copy of Check
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckThirdImplCopyWith<_$CheckThirdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CheckFourthImplCopyWith<$Res> {
  factory _$$CheckFourthImplCopyWith(
          _$CheckFourthImpl value, $Res Function(_$CheckFourthImpl) then) =
      __$$CheckFourthImplCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic value});
}

/// @nodoc
class __$$CheckFourthImplCopyWithImpl<$Res>
    extends _$CheckCopyWithImpl<$Res, _$CheckFourthImpl>
    implements _$$CheckFourthImplCopyWith<$Res> {
  __$$CheckFourthImplCopyWithImpl(
      _$CheckFourthImpl _value, $Res Function(_$CheckFourthImpl) _then)
      : super(_value, _then);

  /// Create a copy of Check
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$CheckFourthImpl(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$CheckFourthImpl implements _CheckFourth {
  _$CheckFourthImpl({required this.value});

  @override
  final dynamic value;

  @override
  String toString() {
    return 'Check.fourth(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckFourthImpl &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  /// Create a copy of Check
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckFourthImplCopyWith<_$CheckFourthImpl> get copyWith =>
      __$$CheckFourthImplCopyWithImpl<_$CheckFourthImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(dynamic value) first,
    required TResult Function(int value) second,
    required TResult Function(double value) third,
    required TResult Function(dynamic value) fourth,
  }) {
    return fourth(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(dynamic value)? first,
    TResult? Function(int value)? second,
    TResult? Function(double value)? third,
    TResult? Function(dynamic value)? fourth,
  }) {
    return fourth?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(dynamic value)? first,
    TResult Function(int value)? second,
    TResult Function(double value)? third,
    TResult Function(dynamic value)? fourth,
    required TResult orElse(),
  }) {
    if (fourth != null) {
      return fourth(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckFirst value) first,
    required TResult Function(_CheckSecond value) second,
    required TResult Function(_CheckThird value) third,
    required TResult Function(_CheckFourth value) fourth,
  }) {
    return fourth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckFirst value)? first,
    TResult? Function(_CheckSecond value)? second,
    TResult? Function(_CheckThird value)? third,
    TResult? Function(_CheckFourth value)? fourth,
  }) {
    return fourth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckFirst value)? first,
    TResult Function(_CheckSecond value)? second,
    TResult Function(_CheckThird value)? third,
    TResult Function(_CheckFourth value)? fourth,
    required TResult orElse(),
  }) {
    if (fourth != null) {
      return fourth(this);
    }
    return orElse();
  }
}

abstract class _CheckFourth implements Check {
  factory _CheckFourth({required final dynamic value}) = _$CheckFourthImpl;

  @override
  dynamic get value;

  /// Create a copy of Check
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CheckFourthImplCopyWith<_$CheckFourthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommonSuperSubtype {
  int? get nullabilityDifference => throw _privateConstructorUsedError;
  num get typeDifference => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int nullabilityDifference, int typeDifference, String? unknown)
        $default, {
    required TResult Function(int? nullabilityDifference, double typeDifference)
        named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int nullabilityDifference, int typeDifference, String? unknown)?
        $default, {
    TResult? Function(int? nullabilityDifference, double typeDifference)? named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int nullabilityDifference, int typeDifference, String? unknown)?
        $default, {
    TResult Function(int? nullabilityDifference, double typeDifference)? named,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommonSuperSubtype0 value) $default, {
    required TResult Function(CommonSuperSubtype1 value) named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CommonSuperSubtype0 value)? $default, {
    TResult? Function(CommonSuperSubtype1 value)? named,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommonSuperSubtype0 value)? $default, {
    TResult Function(CommonSuperSubtype1 value)? named,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CommonSuperSubtype
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommonSuperSubtypeCopyWith<CommonSuperSubtype> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonSuperSubtypeCopyWith<$Res> {
  factory $CommonSuperSubtypeCopyWith(
          CommonSuperSubtype value, $Res Function(CommonSuperSubtype) then) =
      _$CommonSuperSubtypeCopyWithImpl<$Res, CommonSuperSubtype>;
  @useResult
  $Res call({int nullabilityDifference});
}

/// @nodoc
class _$CommonSuperSubtypeCopyWithImpl<$Res, $Val extends CommonSuperSubtype>
    implements $CommonSuperSubtypeCopyWith<$Res> {
  _$CommonSuperSubtypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommonSuperSubtype
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nullabilityDifference = null,
  }) {
    return _then(_value.copyWith(
      nullabilityDifference: null == nullabilityDifference
          ? _value.nullabilityDifference!
          : nullabilityDifference // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommonSuperSubtype0ImplCopyWith<$Res>
    implements $CommonSuperSubtypeCopyWith<$Res> {
  factory _$$CommonSuperSubtype0ImplCopyWith(_$CommonSuperSubtype0Impl value,
          $Res Function(_$CommonSuperSubtype0Impl) then) =
      __$$CommonSuperSubtype0ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int nullabilityDifference, int typeDifference, String? unknown});
}

/// @nodoc
class __$$CommonSuperSubtype0ImplCopyWithImpl<$Res>
    extends _$CommonSuperSubtypeCopyWithImpl<$Res, _$CommonSuperSubtype0Impl>
    implements _$$CommonSuperSubtype0ImplCopyWith<$Res> {
  __$$CommonSuperSubtype0ImplCopyWithImpl(_$CommonSuperSubtype0Impl _value,
      $Res Function(_$CommonSuperSubtype0Impl) _then)
      : super(_value, _then);

  /// Create a copy of CommonSuperSubtype
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nullabilityDifference = null,
    Object? typeDifference = null,
    Object? unknown = freezed,
  }) {
    return _then(_$CommonSuperSubtype0Impl(
      nullabilityDifference: null == nullabilityDifference
          ? _value.nullabilityDifference
          : nullabilityDifference // ignore: cast_nullable_to_non_nullable
              as int,
      typeDifference: null == typeDifference
          ? _value.typeDifference
          : typeDifference // ignore: cast_nullable_to_non_nullable
              as int,
      unknown: freezed == unknown
          ? _value.unknown
          : unknown // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CommonSuperSubtype0Impl implements CommonSuperSubtype0 {
  const _$CommonSuperSubtype0Impl(
      {required this.nullabilityDifference,
      required this.typeDifference,
      this.unknown});

  @override
  final int nullabilityDifference;
  @override
  final int typeDifference;
  @override
  final String? unknown;

  @override
  String toString() {
    return 'CommonSuperSubtype(nullabilityDifference: $nullabilityDifference, typeDifference: $typeDifference, unknown: $unknown)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonSuperSubtype0Impl &&
            (identical(other.nullabilityDifference, nullabilityDifference) ||
                other.nullabilityDifference == nullabilityDifference) &&
            (identical(other.typeDifference, typeDifference) ||
                other.typeDifference == typeDifference) &&
            (identical(other.unknown, unknown) || other.unknown == unknown));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, nullabilityDifference, typeDifference, unknown);

  /// Create a copy of CommonSuperSubtype
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonSuperSubtype0ImplCopyWith<_$CommonSuperSubtype0Impl> get copyWith =>
      __$$CommonSuperSubtype0ImplCopyWithImpl<_$CommonSuperSubtype0Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int nullabilityDifference, int typeDifference, String? unknown)
        $default, {
    required TResult Function(int? nullabilityDifference, double typeDifference)
        named,
  }) {
    return $default(nullabilityDifference, typeDifference, unknown);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int nullabilityDifference, int typeDifference, String? unknown)?
        $default, {
    TResult? Function(int? nullabilityDifference, double typeDifference)? named,
  }) {
    return $default?.call(nullabilityDifference, typeDifference, unknown);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int nullabilityDifference, int typeDifference, String? unknown)?
        $default, {
    TResult Function(int? nullabilityDifference, double typeDifference)? named,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(nullabilityDifference, typeDifference, unknown);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommonSuperSubtype0 value) $default, {
    required TResult Function(CommonSuperSubtype1 value) named,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CommonSuperSubtype0 value)? $default, {
    TResult? Function(CommonSuperSubtype1 value)? named,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommonSuperSubtype0 value)? $default, {
    TResult Function(CommonSuperSubtype1 value)? named,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class CommonSuperSubtype0 implements CommonSuperSubtype {
  const factory CommonSuperSubtype0(
      {required final int nullabilityDifference,
      required final int typeDifference,
      final String? unknown}) = _$CommonSuperSubtype0Impl;

  @override
  int get nullabilityDifference;
  @override
  int get typeDifference;
  String? get unknown;

  /// Create a copy of CommonSuperSubtype
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonSuperSubtype0ImplCopyWith<_$CommonSuperSubtype0Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommonSuperSubtype1ImplCopyWith<$Res>
    implements $CommonSuperSubtypeCopyWith<$Res> {
  factory _$$CommonSuperSubtype1ImplCopyWith(_$CommonSuperSubtype1Impl value,
          $Res Function(_$CommonSuperSubtype1Impl) then) =
      __$$CommonSuperSubtype1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? nullabilityDifference, double typeDifference});
}

/// @nodoc
class __$$CommonSuperSubtype1ImplCopyWithImpl<$Res>
    extends _$CommonSuperSubtypeCopyWithImpl<$Res, _$CommonSuperSubtype1Impl>
    implements _$$CommonSuperSubtype1ImplCopyWith<$Res> {
  __$$CommonSuperSubtype1ImplCopyWithImpl(_$CommonSuperSubtype1Impl _value,
      $Res Function(_$CommonSuperSubtype1Impl) _then)
      : super(_value, _then);

  /// Create a copy of CommonSuperSubtype
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nullabilityDifference = freezed,
    Object? typeDifference = null,
  }) {
    return _then(_$CommonSuperSubtype1Impl(
      nullabilityDifference: freezed == nullabilityDifference
          ? _value.nullabilityDifference
          : nullabilityDifference // ignore: cast_nullable_to_non_nullable
              as int?,
      typeDifference: null == typeDifference
          ? _value.typeDifference
          : typeDifference // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CommonSuperSubtype1Impl implements CommonSuperSubtype1 {
  const _$CommonSuperSubtype1Impl(
      {required this.nullabilityDifference, required this.typeDifference});

  @override
  final int? nullabilityDifference;
  @override
  final double typeDifference;

  @override
  String toString() {
    return 'CommonSuperSubtype.named(nullabilityDifference: $nullabilityDifference, typeDifference: $typeDifference)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommonSuperSubtype1Impl &&
            (identical(other.nullabilityDifference, nullabilityDifference) ||
                other.nullabilityDifference == nullabilityDifference) &&
            (identical(other.typeDifference, typeDifference) ||
                other.typeDifference == typeDifference));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, nullabilityDifference, typeDifference);

  /// Create a copy of CommonSuperSubtype
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonSuperSubtype1ImplCopyWith<_$CommonSuperSubtype1Impl> get copyWith =>
      __$$CommonSuperSubtype1ImplCopyWithImpl<_$CommonSuperSubtype1Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            int nullabilityDifference, int typeDifference, String? unknown)
        $default, {
    required TResult Function(int? nullabilityDifference, double typeDifference)
        named,
  }) {
    return named(nullabilityDifference, typeDifference);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            int nullabilityDifference, int typeDifference, String? unknown)?
        $default, {
    TResult? Function(int? nullabilityDifference, double typeDifference)? named,
  }) {
    return named?.call(nullabilityDifference, typeDifference);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            int nullabilityDifference, int typeDifference, String? unknown)?
        $default, {
    TResult Function(int? nullabilityDifference, double typeDifference)? named,
    required TResult orElse(),
  }) {
    if (named != null) {
      return named(nullabilityDifference, typeDifference);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(CommonSuperSubtype0 value) $default, {
    required TResult Function(CommonSuperSubtype1 value) named,
  }) {
    return named(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(CommonSuperSubtype0 value)? $default, {
    TResult? Function(CommonSuperSubtype1 value)? named,
  }) {
    return named?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(CommonSuperSubtype0 value)? $default, {
    TResult Function(CommonSuperSubtype1 value)? named,
    required TResult orElse(),
  }) {
    if (named != null) {
      return named(this);
    }
    return orElse();
  }
}

abstract class CommonSuperSubtype1 implements CommonSuperSubtype {
  const factory CommonSuperSubtype1(
      {required final int? nullabilityDifference,
      required final double typeDifference}) = _$CommonSuperSubtype1Impl;

  @override
  int? get nullabilityDifference;
  @override
  double get typeDifference;

  /// Create a copy of CommonSuperSubtype
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonSuperSubtype1ImplCopyWith<_$CommonSuperSubtype1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeepCopySharedProperties {
  CommonSuperSubtype get value => throw _privateConstructorUsedError;

  /// Create a copy of DeepCopySharedProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeepCopySharedPropertiesCopyWith<DeepCopySharedProperties> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeepCopySharedPropertiesCopyWith<$Res> {
  factory $DeepCopySharedPropertiesCopyWith(DeepCopySharedProperties value,
          $Res Function(DeepCopySharedProperties) then) =
      _$DeepCopySharedPropertiesCopyWithImpl<$Res, DeepCopySharedProperties>;
  @useResult
  $Res call({CommonSuperSubtype value});

  $CommonSuperSubtypeCopyWith<$Res> get value;
}

/// @nodoc
class _$DeepCopySharedPropertiesCopyWithImpl<$Res,
        $Val extends DeepCopySharedProperties>
    implements $DeepCopySharedPropertiesCopyWith<$Res> {
  _$DeepCopySharedPropertiesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeepCopySharedProperties
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
              as CommonSuperSubtype,
    ) as $Val);
  }

  /// Create a copy of DeepCopySharedProperties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CommonSuperSubtypeCopyWith<$Res> get value {
    return $CommonSuperSubtypeCopyWith<$Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeepCopySharedPropertiesImplCopyWith<$Res>
    implements $DeepCopySharedPropertiesCopyWith<$Res> {
  factory _$$DeepCopySharedPropertiesImplCopyWith(
          _$DeepCopySharedPropertiesImpl value,
          $Res Function(_$DeepCopySharedPropertiesImpl) then) =
      __$$DeepCopySharedPropertiesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CommonSuperSubtype value});

  @override
  $CommonSuperSubtypeCopyWith<$Res> get value;
}

/// @nodoc
class __$$DeepCopySharedPropertiesImplCopyWithImpl<$Res>
    extends _$DeepCopySharedPropertiesCopyWithImpl<$Res,
        _$DeepCopySharedPropertiesImpl>
    implements _$$DeepCopySharedPropertiesImplCopyWith<$Res> {
  __$$DeepCopySharedPropertiesImplCopyWithImpl(
      _$DeepCopySharedPropertiesImpl _value,
      $Res Function(_$DeepCopySharedPropertiesImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeepCopySharedProperties
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$DeepCopySharedPropertiesImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as CommonSuperSubtype,
    ));
  }
}

/// @nodoc

class _$DeepCopySharedPropertiesImpl implements _DeepCopySharedProperties {
  const _$DeepCopySharedPropertiesImpl(this.value);

  @override
  final CommonSuperSubtype value;

  @override
  String toString() {
    return 'DeepCopySharedProperties(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeepCopySharedPropertiesImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of DeepCopySharedProperties
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeepCopySharedPropertiesImplCopyWith<_$DeepCopySharedPropertiesImpl>
      get copyWith => __$$DeepCopySharedPropertiesImplCopyWithImpl<
          _$DeepCopySharedPropertiesImpl>(this, _$identity);
}

abstract class _DeepCopySharedProperties implements DeepCopySharedProperties {
  const factory _DeepCopySharedProperties(final CommonSuperSubtype value) =
      _$DeepCopySharedPropertiesImpl;

  @override
  CommonSuperSubtype get value;

  /// Create a copy of DeepCopySharedProperties
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeepCopySharedPropertiesImplCopyWith<_$DeepCopySharedPropertiesImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommonUnfreezed {
  num get a => throw _privateConstructorUsedError;
  double get b => throw _privateConstructorUsedError;
  set b(double value) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a, double b) one,
    required TResult Function(num a, double b) two,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a, double b)? one,
    TResult? Function(num a, double b)? two,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a, double b)? one,
    TResult Function(num a, double b)? two,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonUnfreezedOne value) one,
    required TResult Function(CommonUnfreezedTwo value) two,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommonUnfreezedOne value)? one,
    TResult? Function(CommonUnfreezedTwo value)? two,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonUnfreezedOne value)? one,
    TResult Function(CommonUnfreezedTwo value)? two,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CommonUnfreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommonUnfreezedCopyWith<CommonUnfreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonUnfreezedCopyWith<$Res> {
  factory $CommonUnfreezedCopyWith(
          CommonUnfreezed value, $Res Function(CommonUnfreezed) then) =
      _$CommonUnfreezedCopyWithImpl<$Res, CommonUnfreezed>;
  @useResult
  $Res call({double b});
}

/// @nodoc
class _$CommonUnfreezedCopyWithImpl<$Res, $Val extends CommonUnfreezed>
    implements $CommonUnfreezedCopyWith<$Res> {
  _$CommonUnfreezedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommonUnfreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? b = null,
  }) {
    return _then(_value.copyWith(
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommonUnfreezedOneImplCopyWith<$Res>
    implements $CommonUnfreezedCopyWith<$Res> {
  factory _$$CommonUnfreezedOneImplCopyWith(_$CommonUnfreezedOneImpl value,
          $Res Function(_$CommonUnfreezedOneImpl) then) =
      __$$CommonUnfreezedOneImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a, double b});
}

/// @nodoc
class __$$CommonUnfreezedOneImplCopyWithImpl<$Res>
    extends _$CommonUnfreezedCopyWithImpl<$Res, _$CommonUnfreezedOneImpl>
    implements _$$CommonUnfreezedOneImplCopyWith<$Res> {
  __$$CommonUnfreezedOneImplCopyWithImpl(_$CommonUnfreezedOneImpl _value,
      $Res Function(_$CommonUnfreezedOneImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonUnfreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = null,
  }) {
    return _then(_$CommonUnfreezedOneImpl(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CommonUnfreezedOneImpl implements CommonUnfreezedOne {
  _$CommonUnfreezedOneImpl({required this.a, required this.b});

  @override
  int a;
  @override
  double b;

  @override
  String toString() {
    return 'CommonUnfreezed.one(a: $a, b: $b)';
  }

  /// Create a copy of CommonUnfreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonUnfreezedOneImplCopyWith<_$CommonUnfreezedOneImpl> get copyWith =>
      __$$CommonUnfreezedOneImplCopyWithImpl<_$CommonUnfreezedOneImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a, double b) one,
    required TResult Function(num a, double b) two,
  }) {
    return one(a, b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a, double b)? one,
    TResult? Function(num a, double b)? two,
  }) {
    return one?.call(a, b);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a, double b)? one,
    TResult Function(num a, double b)? two,
    required TResult orElse(),
  }) {
    if (one != null) {
      return one(a, b);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonUnfreezedOne value) one,
    required TResult Function(CommonUnfreezedTwo value) two,
  }) {
    return one(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommonUnfreezedOne value)? one,
    TResult? Function(CommonUnfreezedTwo value)? two,
  }) {
    return one?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonUnfreezedOne value)? one,
    TResult Function(CommonUnfreezedTwo value)? two,
    required TResult orElse(),
  }) {
    if (one != null) {
      return one(this);
    }
    return orElse();
  }
}

abstract class CommonUnfreezedOne implements CommonUnfreezed {
  factory CommonUnfreezedOne({required int a, required double b}) =
      _$CommonUnfreezedOneImpl;

  @override
  int get a;
  set a(int value);
  @override
  double get b;
  set b(double value);

  /// Create a copy of CommonUnfreezed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonUnfreezedOneImplCopyWith<_$CommonUnfreezedOneImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommonUnfreezedTwoImplCopyWith<$Res>
    implements $CommonUnfreezedCopyWith<$Res> {
  factory _$$CommonUnfreezedTwoImplCopyWith(_$CommonUnfreezedTwoImpl value,
          $Res Function(_$CommonUnfreezedTwoImpl) then) =
      __$$CommonUnfreezedTwoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num a, double b});
}

/// @nodoc
class __$$CommonUnfreezedTwoImplCopyWithImpl<$Res>
    extends _$CommonUnfreezedCopyWithImpl<$Res, _$CommonUnfreezedTwoImpl>
    implements _$$CommonUnfreezedTwoImplCopyWith<$Res> {
  __$$CommonUnfreezedTwoImplCopyWithImpl(_$CommonUnfreezedTwoImpl _value,
      $Res Function(_$CommonUnfreezedTwoImpl) _then)
      : super(_value, _then);

  /// Create a copy of CommonUnfreezed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = null,
  }) {
    return _then(_$CommonUnfreezedTwoImpl(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as num,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CommonUnfreezedTwoImpl implements CommonUnfreezedTwo {
  _$CommonUnfreezedTwoImpl({required this.a, required this.b});

  @override
  num a;
  @override
  double b;

  @override
  String toString() {
    return 'CommonUnfreezed.two(a: $a, b: $b)';
  }

  /// Create a copy of CommonUnfreezed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonUnfreezedTwoImplCopyWith<_$CommonUnfreezedTwoImpl> get copyWith =>
      __$$CommonUnfreezedTwoImplCopyWithImpl<_$CommonUnfreezedTwoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a, double b) one,
    required TResult Function(num a, double b) two,
  }) {
    return two(a, b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a, double b)? one,
    TResult? Function(num a, double b)? two,
  }) {
    return two?.call(a, b);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a, double b)? one,
    TResult Function(num a, double b)? two,
    required TResult orElse(),
  }) {
    if (two != null) {
      return two(a, b);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonUnfreezedOne value) one,
    required TResult Function(CommonUnfreezedTwo value) two,
  }) {
    return two(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommonUnfreezedOne value)? one,
    TResult? Function(CommonUnfreezedTwo value)? two,
  }) {
    return two?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonUnfreezedOne value)? one,
    TResult Function(CommonUnfreezedTwo value)? two,
    required TResult orElse(),
  }) {
    if (two != null) {
      return two(this);
    }
    return orElse();
  }
}

abstract class CommonUnfreezedTwo implements CommonUnfreezed {
  factory CommonUnfreezedTwo({required num a, required double b}) =
      _$CommonUnfreezedTwoImpl;

  @override
  num get a;
  set a(num value);
  @override
  double get b;
  set b(double value);

  /// Create a copy of CommonUnfreezed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonUnfreezedTwoImplCopyWith<_$CommonUnfreezedTwoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommonUnfreezed2 {
  num get a => throw _privateConstructorUsedError;
  double get b => throw _privateConstructorUsedError;
  set b(double value) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(num a, double b) two,
    required TResult Function(int a, double b) one,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(num a, double b)? two,
    TResult? Function(int a, double b)? one,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(num a, double b)? two,
    TResult Function(int a, double b)? one,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonUnfreezedTwo2 value) two,
    required TResult Function(CommonUnfreezedOne2 value) one,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommonUnfreezedTwo2 value)? two,
    TResult? Function(CommonUnfreezedOne2 value)? one,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonUnfreezedTwo2 value)? two,
    TResult Function(CommonUnfreezedOne2 value)? one,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CommonUnfreezed2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommonUnfreezed2CopyWith<CommonUnfreezed2> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommonUnfreezed2CopyWith<$Res> {
  factory $CommonUnfreezed2CopyWith(
          CommonUnfreezed2 value, $Res Function(CommonUnfreezed2) then) =
      _$CommonUnfreezed2CopyWithImpl<$Res, CommonUnfreezed2>;
  @useResult
  $Res call({double b});
}

/// @nodoc
class _$CommonUnfreezed2CopyWithImpl<$Res, $Val extends CommonUnfreezed2>
    implements $CommonUnfreezed2CopyWith<$Res> {
  _$CommonUnfreezed2CopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CommonUnfreezed2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? b = null,
  }) {
    return _then(_value.copyWith(
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommonUnfreezedTwo2ImplCopyWith<$Res>
    implements $CommonUnfreezed2CopyWith<$Res> {
  factory _$$CommonUnfreezedTwo2ImplCopyWith(_$CommonUnfreezedTwo2Impl value,
          $Res Function(_$CommonUnfreezedTwo2Impl) then) =
      __$$CommonUnfreezedTwo2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({num a, double b});
}

/// @nodoc
class __$$CommonUnfreezedTwo2ImplCopyWithImpl<$Res>
    extends _$CommonUnfreezed2CopyWithImpl<$Res, _$CommonUnfreezedTwo2Impl>
    implements _$$CommonUnfreezedTwo2ImplCopyWith<$Res> {
  __$$CommonUnfreezedTwo2ImplCopyWithImpl(_$CommonUnfreezedTwo2Impl _value,
      $Res Function(_$CommonUnfreezedTwo2Impl) _then)
      : super(_value, _then);

  /// Create a copy of CommonUnfreezed2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = null,
  }) {
    return _then(_$CommonUnfreezedTwo2Impl(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as num,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CommonUnfreezedTwo2Impl implements CommonUnfreezedTwo2 {
  _$CommonUnfreezedTwo2Impl({required this.a, required this.b});

  @override
  num a;
  @override
  double b;

  @override
  String toString() {
    return 'CommonUnfreezed2.two(a: $a, b: $b)';
  }

  /// Create a copy of CommonUnfreezed2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonUnfreezedTwo2ImplCopyWith<_$CommonUnfreezedTwo2Impl> get copyWith =>
      __$$CommonUnfreezedTwo2ImplCopyWithImpl<_$CommonUnfreezedTwo2Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(num a, double b) two,
    required TResult Function(int a, double b) one,
  }) {
    return two(a, b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(num a, double b)? two,
    TResult? Function(int a, double b)? one,
  }) {
    return two?.call(a, b);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(num a, double b)? two,
    TResult Function(int a, double b)? one,
    required TResult orElse(),
  }) {
    if (two != null) {
      return two(a, b);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonUnfreezedTwo2 value) two,
    required TResult Function(CommonUnfreezedOne2 value) one,
  }) {
    return two(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommonUnfreezedTwo2 value)? two,
    TResult? Function(CommonUnfreezedOne2 value)? one,
  }) {
    return two?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonUnfreezedTwo2 value)? two,
    TResult Function(CommonUnfreezedOne2 value)? one,
    required TResult orElse(),
  }) {
    if (two != null) {
      return two(this);
    }
    return orElse();
  }
}

abstract class CommonUnfreezedTwo2 implements CommonUnfreezed2 {
  factory CommonUnfreezedTwo2({required num a, required double b}) =
      _$CommonUnfreezedTwo2Impl;

  @override
  num get a;
  set a(num value);
  @override
  double get b;
  set b(double value);

  /// Create a copy of CommonUnfreezed2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonUnfreezedTwo2ImplCopyWith<_$CommonUnfreezedTwo2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CommonUnfreezedOne2ImplCopyWith<$Res>
    implements $CommonUnfreezed2CopyWith<$Res> {
  factory _$$CommonUnfreezedOne2ImplCopyWith(_$CommonUnfreezedOne2Impl value,
          $Res Function(_$CommonUnfreezedOne2Impl) then) =
      __$$CommonUnfreezedOne2ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a, double b});
}

/// @nodoc
class __$$CommonUnfreezedOne2ImplCopyWithImpl<$Res>
    extends _$CommonUnfreezed2CopyWithImpl<$Res, _$CommonUnfreezedOne2Impl>
    implements _$$CommonUnfreezedOne2ImplCopyWith<$Res> {
  __$$CommonUnfreezedOne2ImplCopyWithImpl(_$CommonUnfreezedOne2Impl _value,
      $Res Function(_$CommonUnfreezedOne2Impl) _then)
      : super(_value, _then);

  /// Create a copy of CommonUnfreezed2
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
    Object? b = null,
  }) {
    return _then(_$CommonUnfreezedOne2Impl(
      a: null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
      b: null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$CommonUnfreezedOne2Impl implements CommonUnfreezedOne2 {
  _$CommonUnfreezedOne2Impl({required this.a, required this.b});

  @override
  int a;
  @override
  double b;

  @override
  String toString() {
    return 'CommonUnfreezed2.one(a: $a, b: $b)';
  }

  /// Create a copy of CommonUnfreezed2
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommonUnfreezedOne2ImplCopyWith<_$CommonUnfreezedOne2Impl> get copyWith =>
      __$$CommonUnfreezedOne2ImplCopyWithImpl<_$CommonUnfreezedOne2Impl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(num a, double b) two,
    required TResult Function(int a, double b) one,
  }) {
    return one(a, b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(num a, double b)? two,
    TResult? Function(int a, double b)? one,
  }) {
    return one?.call(a, b);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(num a, double b)? two,
    TResult Function(int a, double b)? one,
    required TResult orElse(),
  }) {
    if (one != null) {
      return one(a, b);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CommonUnfreezedTwo2 value) two,
    required TResult Function(CommonUnfreezedOne2 value) one,
  }) {
    return one(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CommonUnfreezedTwo2 value)? two,
    TResult? Function(CommonUnfreezedOne2 value)? one,
  }) {
    return one?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CommonUnfreezedTwo2 value)? two,
    TResult Function(CommonUnfreezedOne2 value)? one,
    required TResult orElse(),
  }) {
    if (one != null) {
      return one(this);
    }
    return orElse();
  }
}

abstract class CommonUnfreezedOne2 implements CommonUnfreezed2 {
  factory CommonUnfreezedOne2({required int a, required double b}) =
      _$CommonUnfreezedOne2Impl;

  @override
  int get a;
  set a(int value);
  @override
  double get b;
  set b(double value);

  /// Create a copy of CommonUnfreezed2
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommonUnfreezedOne2ImplCopyWith<_$CommonUnfreezedOne2Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
