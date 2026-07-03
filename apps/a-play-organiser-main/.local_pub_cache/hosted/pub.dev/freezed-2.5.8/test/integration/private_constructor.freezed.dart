// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'private_constructor.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PrivateConstructor {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name) $default, {
    required TResult Function(String name, int count) union1,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name)? $default, {
    TResult? Function(String name, int count)? union1,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name)? $default, {
    TResult Function(String name, int count)? union1,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PrivateConstructor value) $default, {
    required TResult Function(Union1 value) union1,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PrivateConstructor value)? $default, {
    TResult? Function(Union1 value)? union1,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PrivateConstructor value)? $default, {
    TResult Function(Union1 value)? union1,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of PrivateConstructor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrivateConstructorCopyWith<PrivateConstructor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrivateConstructorCopyWith<$Res> {
  factory $PrivateConstructorCopyWith(
          PrivateConstructor value, $Res Function(PrivateConstructor) then) =
      _$PrivateConstructorCopyWithImpl<$Res, PrivateConstructor>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$PrivateConstructorCopyWithImpl<$Res, $Val extends PrivateConstructor>
    implements $PrivateConstructorCopyWith<$Res> {
  _$PrivateConstructorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrivateConstructor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrivateConstructorImplCopyWith<$Res>
    implements $PrivateConstructorCopyWith<$Res> {
  factory _$$PrivateConstructorImplCopyWith(_$PrivateConstructorImpl value,
          $Res Function(_$PrivateConstructorImpl) then) =
      __$$PrivateConstructorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$PrivateConstructorImplCopyWithImpl<$Res>
    extends _$PrivateConstructorCopyWithImpl<$Res, _$PrivateConstructorImpl>
    implements _$$PrivateConstructorImplCopyWith<$Res> {
  __$$PrivateConstructorImplCopyWithImpl(_$PrivateConstructorImpl _value,
      $Res Function(_$PrivateConstructorImpl) _then)
      : super(_value, _then);

  /// Create a copy of PrivateConstructor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$PrivateConstructorImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PrivateConstructorImpl extends _PrivateConstructor {
  const _$PrivateConstructorImpl(this.name) : super._();

  @override
  final String name;

  @override
  String toString() {
    return 'PrivateConstructor(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrivateConstructorImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of PrivateConstructor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrivateConstructorImplCopyWith<_$PrivateConstructorImpl> get copyWith =>
      __$$PrivateConstructorImplCopyWithImpl<_$PrivateConstructorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name) $default, {
    required TResult Function(String name, int count) union1,
  }) {
    return $default(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name)? $default, {
    TResult? Function(String name, int count)? union1,
  }) {
    return $default?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name)? $default, {
    TResult Function(String name, int count)? union1,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PrivateConstructor value) $default, {
    required TResult Function(Union1 value) union1,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PrivateConstructor value)? $default, {
    TResult? Function(Union1 value)? union1,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PrivateConstructor value)? $default, {
    TResult Function(Union1 value)? union1,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _PrivateConstructor extends PrivateConstructor {
  const factory _PrivateConstructor(final String name) =
      _$PrivateConstructorImpl;
  const _PrivateConstructor._() : super._();

  @override
  String get name;

  /// Create a copy of PrivateConstructor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrivateConstructorImplCopyWith<_$PrivateConstructorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$Union1ImplCopyWith<$Res>
    implements $PrivateConstructorCopyWith<$Res> {
  factory _$$Union1ImplCopyWith(
          _$Union1Impl value, $Res Function(_$Union1Impl) then) =
      __$$Union1ImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int count});
}

/// @nodoc
class __$$Union1ImplCopyWithImpl<$Res>
    extends _$PrivateConstructorCopyWithImpl<$Res, _$Union1Impl>
    implements _$$Union1ImplCopyWith<$Res> {
  __$$Union1ImplCopyWithImpl(
      _$Union1Impl _value, $Res Function(_$Union1Impl) _then)
      : super(_value, _then);

  /// Create a copy of PrivateConstructor
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? count = null,
  }) {
    return _then(_$Union1Impl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$Union1Impl extends Union1 {
  _$Union1Impl(this.name, this.count) : super._();

  @override
  final String name;
  @override
  final int count;

  @override
  String toString() {
    return 'PrivateConstructor.union1(name: $name, count: $count)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Union1Impl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.count, count) || other.count == count));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, count);

  /// Create a copy of PrivateConstructor
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Union1ImplCopyWith<_$Union1Impl> get copyWith =>
      __$$Union1ImplCopyWithImpl<_$Union1Impl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String name) $default, {
    required TResult Function(String name, int count) union1,
  }) {
    return union1(name, count);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String name)? $default, {
    TResult? Function(String name, int count)? union1,
  }) {
    return union1?.call(name, count);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String name)? $default, {
    TResult Function(String name, int count)? union1,
    required TResult orElse(),
  }) {
    if (union1 != null) {
      return union1(name, count);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_PrivateConstructor value) $default, {
    required TResult Function(Union1 value) union1,
  }) {
    return union1(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_PrivateConstructor value)? $default, {
    TResult? Function(Union1 value)? union1,
  }) {
    return union1?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_PrivateConstructor value)? $default, {
    TResult Function(Union1 value)? union1,
    required TResult orElse(),
  }) {
    if (union1 != null) {
      return union1(this);
    }
    return orElse();
  }
}

abstract class Union1 extends PrivateConstructor {
  factory Union1(final String name, final int count) = _$Union1Impl;
  Union1._() : super._();

  @override
  String get name;
  int get count;

  /// Create a copy of PrivateConstructor
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Union1ImplCopyWith<_$Union1Impl> get copyWith =>
      throw _privateConstructorUsedError;
}
