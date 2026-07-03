// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'alias.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Alias {
  concrete.Empty get value => throw _privateConstructorUsedError;
  int? get a => throw _privateConstructorUsedError;
  Model<int>? get b => throw _privateConstructorUsedError;

  /// Create a copy of Alias
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AliasCopyWith<Alias> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AliasCopyWith<$Res> {
  factory $AliasCopyWith(Alias value, $Res Function(Alias) then) =
      _$AliasCopyWithImpl<$Res, Alias>;
  @useResult
  $Res call({concrete.Empty value, int? a, Model<int>? b});
}

/// @nodoc
class _$AliasCopyWithImpl<$Res, $Val extends Alias>
    implements $AliasCopyWith<$Res> {
  _$AliasCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Alias
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? a = freezed,
    Object? b = freezed,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as concrete.Empty,
      a: freezed == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int?,
      b: freezed == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as Model<int>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AliasImplCopyWith<$Res> implements $AliasCopyWith<$Res> {
  factory _$$AliasImplCopyWith(
          _$AliasImpl value, $Res Function(_$AliasImpl) then) =
      __$$AliasImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({concrete.Empty value, int? a, Model<int>? b});
}

/// @nodoc
class __$$AliasImplCopyWithImpl<$Res>
    extends _$AliasCopyWithImpl<$Res, _$AliasImpl>
    implements _$$AliasImplCopyWith<$Res> {
  __$$AliasImplCopyWithImpl(
      _$AliasImpl _value, $Res Function(_$AliasImpl) _then)
      : super(_value, _then);

  /// Create a copy of Alias
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? a = freezed,
    Object? b = freezed,
  }) {
    return _then(_$AliasImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as concrete.Empty,
      freezed == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int?,
      freezed == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as Model<int>?,
    ));
  }
}

/// @nodoc

class _$AliasImpl with concrete.Mixin implements _Alias {
  _$AliasImpl([this.value = const concrete.Empty(), this.a, this.b]);

  @override
  @JsonKey()
  final concrete.Empty value;
  @override
  final int? a;
  @override
  final Model<int>? b;

  @override
  String toString() {
    return 'Alias(value: $value, a: $a, b: $b)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AliasImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value, a, b);

  /// Create a copy of Alias
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AliasImplCopyWith<_$AliasImpl> get copyWith =>
      __$$AliasImplCopyWithImpl<_$AliasImpl>(this, _$identity);
}

abstract class _Alias implements Alias, concrete.Empty, concrete.Mixin {
  factory _Alias(
      [final concrete.Empty value,
      final int? a,
      final Model<int>? b]) = _$AliasImpl;

  @override
  concrete.Empty get value;
  @override
  int? get a;
  @override
  Model<int>? get b;

  /// Create a copy of Alias
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AliasImplCopyWith<_$AliasImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
