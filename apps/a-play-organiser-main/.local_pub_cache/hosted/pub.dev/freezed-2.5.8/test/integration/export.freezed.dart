// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'export.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Export _$ExportFromJson(Map<String, dynamic> json) {
  return _Export.fromJson(json);
}

/// @nodoc
mixin _$Export {
  int get a => throw _privateConstructorUsedError;

  /// Serializes this Export to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Export
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ExportCopyWith<Export> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExportCopyWith<$Res> {
  factory $ExportCopyWith(Export value, $Res Function(Export) then) =
      _$ExportCopyWithImpl<$Res, Export>;
  @useResult
  $Res call({int a});
}

/// @nodoc
class _$ExportCopyWithImpl<$Res, $Val extends Export>
    implements $ExportCopyWith<$Res> {
  _$ExportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Export
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
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExportImplCopyWith<$Res> implements $ExportCopyWith<$Res> {
  factory _$$ExportImplCopyWith(
          _$ExportImpl value, $Res Function(_$ExportImpl) then) =
      __$$ExportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int a});
}

/// @nodoc
class __$$ExportImplCopyWithImpl<$Res>
    extends _$ExportCopyWithImpl<$Res, _$ExportImpl>
    implements _$$ExportImplCopyWith<$Res> {
  __$$ExportImplCopyWithImpl(
      _$ExportImpl _value, $Res Function(_$ExportImpl) _then)
      : super(_value, _then);

  /// Create a copy of Export
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? a = null,
  }) {
    return _then(_$ExportImpl(
      null == a
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExportImpl implements _Export {
  const _$ExportImpl(this.a);

  factory _$ExportImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExportImplFromJson(json);

  @override
  final int a;

  @override
  String toString() {
    return 'Export(a: $a)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExportImpl &&
            (identical(other.a, a) || other.a == a));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, a);

  /// Create a copy of Export
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExportImplCopyWith<_$ExportImpl> get copyWith =>
      __$$ExportImplCopyWithImpl<_$ExportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExportImplToJson(
      this,
    );
  }
}

abstract class _Export implements Export {
  const factory _Export(final int a) = _$ExportImpl;

  factory _Export.fromJson(Map<String, dynamic> json) = _$ExportImpl.fromJson;

  @override
  int get a;

  /// Create a copy of Export
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExportImplCopyWith<_$ExportImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
