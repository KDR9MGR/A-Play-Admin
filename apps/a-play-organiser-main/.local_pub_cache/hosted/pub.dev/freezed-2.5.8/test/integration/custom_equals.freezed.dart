// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'custom_equals.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomEquals {
  String? get name => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;

  /// Create a copy of CustomEquals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomEqualsCopyWith<CustomEquals> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomEqualsCopyWith<$Res> {
  factory $CustomEqualsCopyWith(
          CustomEquals value, $Res Function(CustomEquals) then) =
      _$CustomEqualsCopyWithImpl<$Res, CustomEquals>;
  @useResult
  $Res call({String? name, int? id});
}

/// @nodoc
class _$CustomEqualsCopyWithImpl<$Res, $Val extends CustomEquals>
    implements $CustomEqualsCopyWith<$Res> {
  _$CustomEqualsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomEquals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomEqualsImplCopyWith<$Res>
    implements $CustomEqualsCopyWith<$Res> {
  factory _$$CustomEqualsImplCopyWith(
          _$CustomEqualsImpl value, $Res Function(_$CustomEqualsImpl) then) =
      __$$CustomEqualsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? id});
}

/// @nodoc
class __$$CustomEqualsImplCopyWithImpl<$Res>
    extends _$CustomEqualsCopyWithImpl<$Res, _$CustomEqualsImpl>
    implements _$$CustomEqualsImplCopyWith<$Res> {
  __$$CustomEqualsImplCopyWithImpl(
      _$CustomEqualsImpl _value, $Res Function(_$CustomEqualsImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomEquals
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_$CustomEqualsImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$CustomEqualsImpl extends _CustomEquals {
  _$CustomEqualsImpl({this.name, this.id}) : super._();

  @override
  final String? name;
  @override
  final int? id;

  @override
  String toString() {
    return 'CustomEquals(name: $name, id: $id)';
  }

  /// Create a copy of CustomEquals
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomEqualsImplCopyWith<_$CustomEqualsImpl> get copyWith =>
      __$$CustomEqualsImplCopyWithImpl<_$CustomEqualsImpl>(this, _$identity);
}

abstract class _CustomEquals extends CustomEquals {
  factory _CustomEquals({final String? name, final int? id}) =
      _$CustomEqualsImpl;
  _CustomEquals._() : super._();

  @override
  String? get name;
  @override
  int? get id;

  /// Create a copy of CustomEquals
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomEqualsImplCopyWith<_$CustomEqualsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomEqualsWithUnion {
  String? get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, int? id) first,
    required TResult Function(String? name, bool? active) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, int? id)? first,
    TResult? Function(String? name, bool? active)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, int? id)? first,
    TResult Function(String? name, bool? active)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomEqualsFirst value) first,
    required TResult Function(CustomEqualsSecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomEqualsFirst value)? first,
    TResult? Function(CustomEqualsSecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomEqualsFirst value)? first,
    TResult Function(CustomEqualsSecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CustomEqualsWithUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomEqualsWithUnionCopyWith<CustomEqualsWithUnion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomEqualsWithUnionCopyWith<$Res> {
  factory $CustomEqualsWithUnionCopyWith(CustomEqualsWithUnion value,
          $Res Function(CustomEqualsWithUnion) then) =
      _$CustomEqualsWithUnionCopyWithImpl<$Res, CustomEqualsWithUnion>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class _$CustomEqualsWithUnionCopyWithImpl<$Res,
        $Val extends CustomEqualsWithUnion>
    implements $CustomEqualsWithUnionCopyWith<$Res> {
  _$CustomEqualsWithUnionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomEqualsWithUnion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomEqualsFirstImplCopyWith<$Res>
    implements $CustomEqualsWithUnionCopyWith<$Res> {
  factory _$$CustomEqualsFirstImplCopyWith(_$CustomEqualsFirstImpl value,
          $Res Function(_$CustomEqualsFirstImpl) then) =
      __$$CustomEqualsFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? id});
}

/// @nodoc
class __$$CustomEqualsFirstImplCopyWithImpl<$Res>
    extends _$CustomEqualsWithUnionCopyWithImpl<$Res, _$CustomEqualsFirstImpl>
    implements _$$CustomEqualsFirstImplCopyWith<$Res> {
  __$$CustomEqualsFirstImplCopyWithImpl(_$CustomEqualsFirstImpl _value,
      $Res Function(_$CustomEqualsFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomEqualsWithUnion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
  }) {
    return _then(_$CustomEqualsFirstImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$CustomEqualsFirstImpl extends CustomEqualsFirst {
  _$CustomEqualsFirstImpl({this.name, this.id}) : super._();

  @override
  final String? name;
  @override
  final int? id;

  @override
  String toString() {
    return 'CustomEqualsWithUnion.first(name: $name, id: $id)';
  }

  /// Create a copy of CustomEqualsWithUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomEqualsFirstImplCopyWith<_$CustomEqualsFirstImpl> get copyWith =>
      __$$CustomEqualsFirstImplCopyWithImpl<_$CustomEqualsFirstImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, int? id) first,
    required TResult Function(String? name, bool? active) second,
  }) {
    return first(name, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, int? id)? first,
    TResult? Function(String? name, bool? active)? second,
  }) {
    return first?.call(name, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, int? id)? first,
    TResult Function(String? name, bool? active)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(name, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomEqualsFirst value) first,
    required TResult Function(CustomEqualsSecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomEqualsFirst value)? first,
    TResult? Function(CustomEqualsSecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomEqualsFirst value)? first,
    TResult Function(CustomEqualsSecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }
}

abstract class CustomEqualsFirst extends CustomEqualsWithUnion {
  factory CustomEqualsFirst({final String? name, final int? id}) =
      _$CustomEqualsFirstImpl;
  CustomEqualsFirst._() : super._();

  @override
  String? get name;
  int? get id;

  /// Create a copy of CustomEqualsWithUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomEqualsFirstImplCopyWith<_$CustomEqualsFirstImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CustomEqualsSecondImplCopyWith<$Res>
    implements $CustomEqualsWithUnionCopyWith<$Res> {
  factory _$$CustomEqualsSecondImplCopyWith(_$CustomEqualsSecondImpl value,
          $Res Function(_$CustomEqualsSecondImpl) then) =
      __$$CustomEqualsSecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, bool? active});
}

/// @nodoc
class __$$CustomEqualsSecondImplCopyWithImpl<$Res>
    extends _$CustomEqualsWithUnionCopyWithImpl<$Res, _$CustomEqualsSecondImpl>
    implements _$$CustomEqualsSecondImplCopyWith<$Res> {
  __$$CustomEqualsSecondImplCopyWithImpl(_$CustomEqualsSecondImpl _value,
      $Res Function(_$CustomEqualsSecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomEqualsWithUnion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? active = freezed,
  }) {
    return _then(_$CustomEqualsSecondImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$CustomEqualsSecondImpl extends CustomEqualsSecond {
  _$CustomEqualsSecondImpl({this.name, this.active}) : super._();

  @override
  final String? name;
  @override
  final bool? active;

  @override
  String toString() {
    return 'CustomEqualsWithUnion.second(name: $name, active: $active)';
  }

  /// Create a copy of CustomEqualsWithUnion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomEqualsSecondImplCopyWith<_$CustomEqualsSecondImpl> get copyWith =>
      __$$CustomEqualsSecondImplCopyWithImpl<_$CustomEqualsSecondImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name, int? id) first,
    required TResult Function(String? name, bool? active) second,
  }) {
    return second(name, active);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name, int? id)? first,
    TResult? Function(String? name, bool? active)? second,
  }) {
    return second?.call(name, active);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name, int? id)? first,
    TResult Function(String? name, bool? active)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(name, active);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CustomEqualsFirst value) first,
    required TResult Function(CustomEqualsSecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CustomEqualsFirst value)? first,
    TResult? Function(CustomEqualsSecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CustomEqualsFirst value)? first,
    TResult Function(CustomEqualsSecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }
}

abstract class CustomEqualsSecond extends CustomEqualsWithUnion {
  factory CustomEqualsSecond({final String? name, final bool? active}) =
      _$CustomEqualsSecondImpl;
  CustomEqualsSecond._() : super._();

  @override
  String? get name;
  bool? get active;

  /// Create a copy of CustomEqualsWithUnion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CustomEqualsSecondImplCopyWith<_$CustomEqualsSecondImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EqualsWithUnionMixin {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(String b) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(String b)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(String b)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnionMixinFirst value) first,
    required TResult Function(UnionMixinSecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnionMixinFirst value)? first,
    TResult? Function(UnionMixinSecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnionMixinFirst value)? first,
    TResult Function(UnionMixinSecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EqualsWithUnionMixinCopyWith<$Res> {
  factory $EqualsWithUnionMixinCopyWith(EqualsWithUnionMixin value,
          $Res Function(EqualsWithUnionMixin) then) =
      _$EqualsWithUnionMixinCopyWithImpl<$Res, EqualsWithUnionMixin>;
}

/// @nodoc
class _$EqualsWithUnionMixinCopyWithImpl<$Res,
        $Val extends EqualsWithUnionMixin>
    implements $EqualsWithUnionMixinCopyWith<$Res> {
  _$EqualsWithUnionMixinCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EqualsWithUnionMixin
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnionMixinFirstImplCopyWith<$Res> {
  factory _$$UnionMixinFirstImplCopyWith(_$UnionMixinFirstImpl value,
          $Res Function(_$UnionMixinFirstImpl) then) =
      __$$UnionMixinFirstImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnionMixinFirstImplCopyWithImpl<$Res>
    extends _$EqualsWithUnionMixinCopyWithImpl<$Res, _$UnionMixinFirstImpl>
    implements _$$UnionMixinFirstImplCopyWith<$Res> {
  __$$UnionMixinFirstImplCopyWithImpl(
      _$UnionMixinFirstImpl _value, $Res Function(_$UnionMixinFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of EqualsWithUnionMixin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnionMixinFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnionMixinFirstImpl extends UnionMixinFirst with MyClass {
  _$UnionMixinFirstImpl(this.a) : super._();

  @override
  final int a;

  @override
  String toString() {
    return 'EqualsWithUnionMixin.first(a: $a)';
  }

  /// Create a copy of EqualsWithUnionMixin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionMixinFirstImplCopyWith<_$UnionMixinFirstImpl> get copyWith =>
      __$$UnionMixinFirstImplCopyWithImpl<_$UnionMixinFirstImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(String b) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(String b)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(String b)? second,
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
    required TResult Function(UnionMixinFirst value) first,
    required TResult Function(UnionMixinSecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnionMixinFirst value)? first,
    TResult? Function(UnionMixinSecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnionMixinFirst value)? first,
    TResult Function(UnionMixinSecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }
}

abstract class UnionMixinFirst extends EqualsWithUnionMixin implements MyClass {
  factory UnionMixinFirst(final int a) = _$UnionMixinFirstImpl;
  UnionMixinFirst._() : super._();

  int get a;

  /// Create a copy of EqualsWithUnionMixin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionMixinFirstImplCopyWith<_$UnionMixinFirstImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionMixinSecondImplCopyWith<$Res> {
  factory _$$UnionMixinSecondImplCopyWith(_$UnionMixinSecondImpl value,
          $Res Function(_$UnionMixinSecondImpl) then) =
      __$$UnionMixinSecondImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String b});
}

/// @nodoc
class __$$UnionMixinSecondImplCopyWithImpl<$Res>
    extends _$EqualsWithUnionMixinCopyWithImpl<$Res, _$UnionMixinSecondImpl>
    implements _$$UnionMixinSecondImplCopyWith<$Res> {
  __$$UnionMixinSecondImplCopyWithImpl(_$UnionMixinSecondImpl _value,
      $Res Function(_$UnionMixinSecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of EqualsWithUnionMixin
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? b = null,
  }) {
    return _then(_$UnionMixinSecondImpl(
      null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnionMixinSecondImpl extends UnionMixinSecond {
  _$UnionMixinSecondImpl(this.b) : super._();

  @override
  final String b;

  @override
  String toString() {
    return 'EqualsWithUnionMixin.second(b: $b)';
  }

  /// Create a copy of EqualsWithUnionMixin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionMixinSecondImplCopyWith<_$UnionMixinSecondImpl> get copyWith =>
      __$$UnionMixinSecondImplCopyWithImpl<_$UnionMixinSecondImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(String b) second,
  }) {
    return second(b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(String b)? second,
  }) {
    return second?.call(b);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(String b)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(b);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnionMixinFirst value) first,
    required TResult Function(UnionMixinSecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnionMixinFirst value)? first,
    TResult? Function(UnionMixinSecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnionMixinFirst value)? first,
    TResult Function(UnionMixinSecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }
}

abstract class UnionMixinSecond extends EqualsWithUnionMixin {
  factory UnionMixinSecond(final String b) = _$UnionMixinSecondImpl;
  UnionMixinSecond._() : super._();

  String get b;

  /// Create a copy of EqualsWithUnionMixin
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionMixinSecondImplCopyWith<_$UnionMixinSecondImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EqualsWithUnionExtends {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(String b) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(String b)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(String b)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnionExtendsFirst value) first,
    required TResult Function(UnionExtendsSecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnionExtendsFirst value)? first,
    TResult? Function(UnionExtendsSecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnionExtendsFirst value)? first,
    TResult Function(UnionExtendsSecond value)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EqualsWithUnionExtendsCopyWith<$Res> {
  factory $EqualsWithUnionExtendsCopyWith(EqualsWithUnionExtends value,
          $Res Function(EqualsWithUnionExtends) then) =
      _$EqualsWithUnionExtendsCopyWithImpl<$Res, EqualsWithUnionExtends>;
}

/// @nodoc
class _$EqualsWithUnionExtendsCopyWithImpl<$Res,
        $Val extends EqualsWithUnionExtends>
    implements $EqualsWithUnionExtendsCopyWith<$Res> {
  _$EqualsWithUnionExtendsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EqualsWithUnionExtends
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnionExtendsFirstImplCopyWith<$Res> {
  factory _$$UnionExtendsFirstImplCopyWith(_$UnionExtendsFirstImpl value,
          $Res Function(_$UnionExtendsFirstImpl) then) =
      __$$UnionExtendsFirstImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$UnionExtendsFirstImplCopyWithImpl<$Res>
    extends _$EqualsWithUnionExtendsCopyWithImpl<$Res, _$UnionExtendsFirstImpl>
    implements _$$UnionExtendsFirstImplCopyWith<$Res> {
  __$$UnionExtendsFirstImplCopyWithImpl(_$UnionExtendsFirstImpl _value,
      $Res Function(_$UnionExtendsFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of EqualsWithUnionExtends
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$UnionExtendsFirstImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnionExtendsFirstImpl extends UnionExtendsFirst with MyClass {
  _$UnionExtendsFirstImpl(this.a) : super._();

  @override
  final int a;

  @override
  String toString() {
    return 'EqualsWithUnionExtends.first(a: $a)';
  }

  /// Create a copy of EqualsWithUnionExtends
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionExtendsFirstImplCopyWith<_$UnionExtendsFirstImpl> get copyWith =>
      __$$UnionExtendsFirstImplCopyWithImpl<_$UnionExtendsFirstImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(String b) second,
  }) {
    return first(a);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(String b)? second,
  }) {
    return first?.call(a);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(String b)? second,
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
    required TResult Function(UnionExtendsFirst value) first,
    required TResult Function(UnionExtendsSecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnionExtendsFirst value)? first,
    TResult? Function(UnionExtendsSecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnionExtendsFirst value)? first,
    TResult Function(UnionExtendsSecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }
}

abstract class UnionExtendsFirst extends EqualsWithUnionExtends
    implements MyClass {
  factory UnionExtendsFirst(final int a) = _$UnionExtendsFirstImpl;
  UnionExtendsFirst._() : super._();

  int get a;

  /// Create a copy of EqualsWithUnionExtends
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionExtendsFirstImplCopyWith<_$UnionExtendsFirstImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionExtendsSecondImplCopyWith<$Res> {
  factory _$$UnionExtendsSecondImplCopyWith(_$UnionExtendsSecondImpl value,
          $Res Function(_$UnionExtendsSecondImpl) then) =
      __$$UnionExtendsSecondImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String b});
}

/// @nodoc
class __$$UnionExtendsSecondImplCopyWithImpl<$Res>
    extends _$EqualsWithUnionExtendsCopyWithImpl<$Res, _$UnionExtendsSecondImpl>
    implements _$$UnionExtendsSecondImplCopyWith<$Res> {
  __$$UnionExtendsSecondImplCopyWithImpl(_$UnionExtendsSecondImpl _value,
      $Res Function(_$UnionExtendsSecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of EqualsWithUnionExtends
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? b = null,
  }) {
    return _then(_$UnionExtendsSecondImpl(
      null == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnionExtendsSecondImpl extends UnionExtendsSecond {
  _$UnionExtendsSecondImpl(this.b) : super._();

  @override
  final String b;

  @override
  String toString() {
    return 'EqualsWithUnionExtends.second(b: $b)';
  }

  /// Create a copy of EqualsWithUnionExtends
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionExtendsSecondImplCopyWith<_$UnionExtendsSecondImpl> get copyWith =>
      __$$UnionExtendsSecondImplCopyWithImpl<_$UnionExtendsSecondImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a) first,
    required TResult Function(String b) second,
  }) {
    return second(b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int a)? first,
    TResult? Function(String b)? second,
  }) {
    return second?.call(b);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int a)? first,
    TResult Function(String b)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(b);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnionExtendsFirst value) first,
    required TResult Function(UnionExtendsSecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnionExtendsFirst value)? first,
    TResult? Function(UnionExtendsSecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnionExtendsFirst value)? first,
    TResult Function(UnionExtendsSecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }
}

abstract class UnionExtendsSecond extends EqualsWithUnionExtends {
  factory UnionExtendsSecond(final String b) = _$UnionExtendsSecondImpl;
  UnionExtendsSecond._() : super._();

  String get b;

  /// Create a copy of EqualsWithUnionExtends
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionExtendsSecondImplCopyWith<_$UnionExtendsSecondImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
