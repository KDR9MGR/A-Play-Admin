// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'typedef_parameter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClassWithTypedef {
  MyTypedef get myTypedef => throw _privateConstructorUsedError;
  MyTypedef? get maybeTypedef => throw _privateConstructorUsedError;
  ExternalTypedef get externalTypedef => throw _privateConstructorUsedError;
  two.ExternalTypedefTwo get externalTypedefTwo =>
      throw _privateConstructorUsedError;
  GenericTypedef<int, bool> get genericTypedef =>
      throw _privateConstructorUsedError;

  /// Create a copy of ClassWithTypedef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClassWithTypedefCopyWith<ClassWithTypedef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClassWithTypedefCopyWith<$Res> {
  factory $ClassWithTypedefCopyWith(
          ClassWithTypedef value, $Res Function(ClassWithTypedef) then) =
      _$ClassWithTypedefCopyWithImpl<$Res, ClassWithTypedef>;
  @useResult
  $Res call(
      {MyTypedef myTypedef,
      MyTypedef? maybeTypedef,
      ExternalTypedef externalTypedef,
      two.ExternalTypedefTwo externalTypedefTwo,
      GenericTypedef<int, bool> genericTypedef});
}

/// @nodoc
class _$ClassWithTypedefCopyWithImpl<$Res, $Val extends ClassWithTypedef>
    implements $ClassWithTypedefCopyWith<$Res> {
  _$ClassWithTypedefCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClassWithTypedef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myTypedef = null,
    Object? maybeTypedef = freezed,
    Object? externalTypedef = null,
    Object? externalTypedefTwo = null,
    Object? genericTypedef = null,
  }) {
    return _then(_value.copyWith(
      myTypedef: null == myTypedef
          ? _value.myTypedef
          : myTypedef // ignore: cast_nullable_to_non_nullable
              as MyTypedef,
      maybeTypedef: freezed == maybeTypedef
          ? _value.maybeTypedef
          : maybeTypedef // ignore: cast_nullable_to_non_nullable
              as MyTypedef?,
      externalTypedef: null == externalTypedef
          ? _value.externalTypedef
          : externalTypedef // ignore: cast_nullable_to_non_nullable
              as ExternalTypedef,
      externalTypedefTwo: null == externalTypedefTwo
          ? _value.externalTypedefTwo
          : externalTypedefTwo // ignore: cast_nullable_to_non_nullable
              as two.ExternalTypedefTwo,
      genericTypedef: null == genericTypedef
          ? _value.genericTypedef
          : genericTypedef // ignore: cast_nullable_to_non_nullable
              as GenericTypedef<int, bool>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClassWithTypedefImplCopyWith<$Res>
    implements $ClassWithTypedefCopyWith<$Res> {
  factory _$$ClassWithTypedefImplCopyWith(_$ClassWithTypedefImpl value,
          $Res Function(_$ClassWithTypedefImpl) then) =
      __$$ClassWithTypedefImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {MyTypedef myTypedef,
      MyTypedef? maybeTypedef,
      ExternalTypedef externalTypedef,
      two.ExternalTypedefTwo externalTypedefTwo,
      GenericTypedef<int, bool> genericTypedef});
}

/// @nodoc
class __$$ClassWithTypedefImplCopyWithImpl<$Res>
    extends _$ClassWithTypedefCopyWithImpl<$Res, _$ClassWithTypedefImpl>
    implements _$$ClassWithTypedefImplCopyWith<$Res> {
  __$$ClassWithTypedefImplCopyWithImpl(_$ClassWithTypedefImpl _value,
      $Res Function(_$ClassWithTypedefImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClassWithTypedef
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? myTypedef = null,
    Object? maybeTypedef = freezed,
    Object? externalTypedef = null,
    Object? externalTypedefTwo = null,
    Object? genericTypedef = null,
  }) {
    return _then(_$ClassWithTypedefImpl(
      null == myTypedef
          ? _value.myTypedef
          : myTypedef // ignore: cast_nullable_to_non_nullable
              as MyTypedef,
      freezed == maybeTypedef
          ? _value.maybeTypedef
          : maybeTypedef // ignore: cast_nullable_to_non_nullable
              as MyTypedef?,
      null == externalTypedef
          ? _value.externalTypedef
          : externalTypedef // ignore: cast_nullable_to_non_nullable
              as ExternalTypedef,
      null == externalTypedefTwo
          ? _value.externalTypedefTwo
          : externalTypedefTwo // ignore: cast_nullable_to_non_nullable
              as two.ExternalTypedefTwo,
      null == genericTypedef
          ? _value.genericTypedef
          : genericTypedef // ignore: cast_nullable_to_non_nullable
              as GenericTypedef<int, bool>,
    ));
  }
}

/// @nodoc

class _$ClassWithTypedefImpl extends _ClassWithTypedef {
  _$ClassWithTypedefImpl(this.myTypedef, this.maybeTypedef,
      this.externalTypedef, this.externalTypedefTwo, this.genericTypedef)
      : super._();

  @override
  final MyTypedef myTypedef;
  @override
  final MyTypedef? maybeTypedef;
  @override
  final ExternalTypedef externalTypedef;
  @override
  final two.ExternalTypedefTwo externalTypedefTwo;
  @override
  final GenericTypedef<int, bool> genericTypedef;

  @override
  String toString() {
    return 'ClassWithTypedef(myTypedef: $myTypedef, maybeTypedef: $maybeTypedef, externalTypedef: $externalTypedef, externalTypedefTwo: $externalTypedefTwo, genericTypedef: $genericTypedef)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClassWithTypedefImpl &&
            (identical(other.myTypedef, myTypedef) ||
                other.myTypedef == myTypedef) &&
            (identical(other.maybeTypedef, maybeTypedef) ||
                other.maybeTypedef == maybeTypedef) &&
            (identical(other.externalTypedef, externalTypedef) ||
                other.externalTypedef == externalTypedef) &&
            (identical(other.externalTypedefTwo, externalTypedefTwo) ||
                other.externalTypedefTwo == externalTypedefTwo) &&
            (identical(other.genericTypedef, genericTypedef) ||
                other.genericTypedef == genericTypedef));
  }

  @override
  int get hashCode => Object.hash(runtimeType, myTypedef, maybeTypedef,
      externalTypedef, externalTypedefTwo, genericTypedef);

  /// Create a copy of ClassWithTypedef
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClassWithTypedefImplCopyWith<_$ClassWithTypedefImpl> get copyWith =>
      __$$ClassWithTypedefImplCopyWithImpl<_$ClassWithTypedefImpl>(
          this, _$identity);
}

abstract class _ClassWithTypedef extends ClassWithTypedef {
  factory _ClassWithTypedef(
      final MyTypedef myTypedef,
      final MyTypedef? maybeTypedef,
      final ExternalTypedef externalTypedef,
      final two.ExternalTypedefTwo externalTypedefTwo,
      final GenericTypedef<int, bool> genericTypedef) = _$ClassWithTypedefImpl;
  _ClassWithTypedef._() : super._();

  @override
  MyTypedef get myTypedef;
  @override
  MyTypedef? get maybeTypedef;
  @override
  ExternalTypedef get externalTypedef;
  @override
  two.ExternalTypedefTwo get externalTypedefTwo;
  @override
  GenericTypedef<int, bool> get genericTypedef;

  /// Create a copy of ClassWithTypedef
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClassWithTypedefImplCopyWith<_$ClassWithTypedefImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
