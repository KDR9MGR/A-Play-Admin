// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recursive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$A {
  B? get parent => throw _privateConstructorUsedError;

  /// Create a copy of A
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ACopyWith<A> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ACopyWith<$Res> {
  factory $ACopyWith(A value, $Res Function(A) then) = _$ACopyWithImpl<$Res, A>;
  @useResult
  $Res call({B? parent});

  $BCopyWith<$Res>? get parent;
}

/// @nodoc
class _$ACopyWithImpl<$Res, $Val extends A> implements $ACopyWith<$Res> {
  _$ACopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of A
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
              as B?,
    ) as $Val);
  }

  /// Create a copy of A
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $BCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AImplCopyWith<$Res> implements $ACopyWith<$Res> {
  factory _$$AImplCopyWith(_$AImpl value, $Res Function(_$AImpl) then) =
      __$$AImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({B? parent});

  @override
  $BCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$AImplCopyWithImpl<$Res> extends _$ACopyWithImpl<$Res, _$AImpl>
    implements _$$AImplCopyWith<$Res> {
  __$$AImplCopyWithImpl(_$AImpl _value, $Res Function(_$AImpl) _then)
      : super(_value, _then);

  /// Create a copy of A
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? parent = freezed,
  }) {
    return _then(_$AImpl(
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as B?,
    ));
  }
}

/// @nodoc

class _$AImpl implements _A {
  _$AImpl({this.parent});

  @override
  final B? parent;

  @override
  String toString() {
    return 'A(parent: $parent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AImpl &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent);

  /// Create a copy of A
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AImplCopyWith<_$AImpl> get copyWith =>
      __$$AImplCopyWithImpl<_$AImpl>(this, _$identity);
}

abstract class _A implements A {
  factory _A({final B? parent}) = _$AImpl;

  @override
  B? get parent;

  /// Create a copy of A
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AImplCopyWith<_$AImpl> get copyWith => throw _privateConstructorUsedError;
}
