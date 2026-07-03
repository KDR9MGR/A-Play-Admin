// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recursive2.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$B {
  A? get parent => throw _privateConstructorUsedError;

  /// Create a copy of B
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BCopyWith<B> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BCopyWith<$Res> {
  factory $BCopyWith(B value, $Res Function(B) then) = _$BCopyWithImpl<$Res, B>;
  @useResult
  $Res call({A? parent});

  $ACopyWith<$Res>? get parent;
}

/// @nodoc
class _$BCopyWithImpl<$Res, $Val extends B> implements $BCopyWith<$Res> {
  _$BCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of B
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = freezed,
  }) {
    return _then(_value.copyWith(
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as A?,
    ) as $Val);
  }

  /// Create a copy of B
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ACopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $ACopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BImplCopyWith<$Res> implements $BCopyWith<$Res> {
  factory _$$BImplCopyWith(_$BImpl value, $Res Function(_$BImpl) then) =
      __$$BImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({A? parent});

  @override
  $ACopyWith<$Res>? get parent;
}

/// @nodoc
class __$$BImplCopyWithImpl<$Res> extends _$BCopyWithImpl<$Res, _$BImpl>
    implements _$$BImplCopyWith<$Res> {
  __$$BImplCopyWithImpl(_$BImpl _value, $Res Function(_$BImpl) _then)
      : super(_value, _then);

  /// Create a copy of B
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = freezed,
  }) {
    return _then(_$BImpl(
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as A?,
    ));
  }
}

/// @nodoc

class _$BImpl implements _B {
  _$BImpl({this.parent});

  @override
  final A? parent;

  @override
  String toString() {
    return 'B(parent: $parent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BImpl &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent);

  /// Create a copy of B
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BImplCopyWith<_$BImpl> get copyWith =>
      __$$BImplCopyWithImpl<_$BImpl>(this, _$identity);
}

abstract class _B implements B {
  factory _B({final A? parent}) = _$BImpl;

  @override
  A? get parent;

  /// Create a copy of B
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BImplCopyWith<_$BImpl> get copyWith => throw _privateConstructorUsedError;
}
