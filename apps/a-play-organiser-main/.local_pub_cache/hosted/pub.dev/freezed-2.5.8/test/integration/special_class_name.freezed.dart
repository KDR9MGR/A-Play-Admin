// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'special_class_name.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Class$With$Special$Name {
  String? get a => throw _privateConstructorUsedError;
  int? get b => throw _privateConstructorUsedError;

  /// Create a copy of Class$With$Special$Name
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $Class$With$Special$NameCopyWith<Class$With$Special$Name> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Class$With$Special$NameCopyWith<$Res> {
  factory $Class$With$Special$NameCopyWith(Class$With$Special$Name value,
          $Res Function(Class$With$Special$Name) then) =
      _$Class$With$Special$NameCopyWithImpl<$Res, Class$With$Special$Name>;
  @useResult
  $Res call({String? a, int? b});
}

/// @nodoc
class _$Class$With$Special$NameCopyWithImpl<$Res,
        $Val extends Class$With$Special$Name>
    implements $Class$With$Special$NameCopyWith<$Res> {
  _$Class$With$Special$NameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Class$With$Special$Name
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = freezed,
    Object? b = freezed,
  }) {
    return _then(_value.copyWith(
      a: freezed == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String?,
      b: freezed == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Class$With$Special$NameImplCopyWith<$Res>
    implements $Class$With$Special$NameCopyWith<$Res> {
  factory _$$Class$With$Special$NameImplCopyWith(
          _$Class$With$Special$NameImpl value,
          $Res Function(_$Class$With$Special$NameImpl) then) =
      __$$Class$With$Special$NameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? a, int? b});
}

/// @nodoc
class __$$Class$With$Special$NameImplCopyWithImpl<$Res>
    extends _$Class$With$Special$NameCopyWithImpl<$Res,
        _$Class$With$Special$NameImpl>
    implements _$$Class$With$Special$NameImplCopyWith<$Res> {
  __$$Class$With$Special$NameImplCopyWithImpl(
      _$Class$With$Special$NameImpl _value,
      $Res Function(_$Class$With$Special$NameImpl) _then)
      : super(_value, _then);

  /// Create a copy of Class$With$Special$Name
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = freezed,
    Object? b = freezed,
  }) {
    return _then(_$Class$With$Special$NameImpl(
      a: freezed == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as String?,
      b: freezed == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$Class$With$Special$NameImpl implements _Class$With$Special$Name {
  _$Class$With$Special$NameImpl({this.a, this.b});

  @override
  final String? a;
  @override
  final int? b;

  @override
  String toString() {
    return 'Class\$With\$Special\$Name(a: $a, b: $b)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Class$With$Special$NameImpl &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b));
  }

  @override
  int get hashCode => Object.hash(runtimeType, a, b);

  /// Create a copy of Class$With$Special$Name
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$Class$With$Special$NameImplCopyWith<_$Class$With$Special$NameImpl>
      get copyWith => __$$Class$With$Special$NameImplCopyWithImpl<
          _$Class$With$Special$NameImpl>(this, _$identity);
}

abstract class _Class$With$Special$Name implements Class$With$Special$Name {
  factory _Class$With$Special$Name({final String? a, final int? b}) =
      _$Class$With$Special$NameImpl;

  @override
  String? get a;
  @override
  int? get b;

  /// Create a copy of Class$With$Special$Name
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$Class$With$Special$NameImplCopyWith<_$Class$With$Special$NameImpl>
      get copyWith => throw _privateConstructorUsedError;
}
