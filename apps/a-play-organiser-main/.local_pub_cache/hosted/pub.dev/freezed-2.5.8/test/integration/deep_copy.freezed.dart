// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deep_copy.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Company {
  String? get name => throw _privateConstructorUsedError;
  Director? get director => throw _privateConstructorUsedError;

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CompanyCopyWith<Company> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CompanyCopyWith<$Res> {
  factory $CompanyCopyWith(Company value, $Res Function(Company) then) =
      _$CompanyCopyWithImpl<$Res, Company>;
  @useResult
  $Res call({String? name, Director? director});

  $DirectorCopyWith<$Res>? get director;
}

/// @nodoc
class _$CompanyCopyWithImpl<$Res, $Val extends Company>
    implements $CompanyCopyWith<$Res> {
  _$CompanyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? director = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      director: freezed == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as Director?,
    ) as $Val);
  }

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DirectorCopyWith<$Res>? get director {
    if (_value.director == null) {
      return null;
    }

    return $DirectorCopyWith<$Res>(_value.director!, (value) {
      return _then(_value.copyWith(director: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CompanySubclassImplCopyWith<$Res>
    implements $CompanyCopyWith<$Res> {
  factory _$$CompanySubclassImplCopyWith(_$CompanySubclassImpl value,
          $Res Function(_$CompanySubclassImpl) then) =
      __$$CompanySubclassImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, Director? director});

  @override
  $DirectorCopyWith<$Res>? get director;
}

/// @nodoc
class __$$CompanySubclassImplCopyWithImpl<$Res>
    extends _$CompanyCopyWithImpl<$Res, _$CompanySubclassImpl>
    implements _$$CompanySubclassImplCopyWith<$Res> {
  __$$CompanySubclassImplCopyWithImpl(
      _$CompanySubclassImpl _value, $Res Function(_$CompanySubclassImpl) _then)
      : super(_value, _then);

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? director = freezed,
  }) {
    return _then(_$CompanySubclassImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      director: freezed == director
          ? _value.director
          : director // ignore: cast_nullable_to_non_nullable
              as Director?,
    ));
  }
}

/// @nodoc

class _$CompanySubclassImpl implements CompanySubclass {
  _$CompanySubclassImpl({this.name, this.director});

  @override
  final String? name;
  @override
  final Director? director;

  @override
  String toString() {
    return 'Company(name: $name, director: $director)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CompanySubclassImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.director, director) ||
                other.director == director));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, director);

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CompanySubclassImplCopyWith<_$CompanySubclassImpl> get copyWith =>
      __$$CompanySubclassImplCopyWithImpl<_$CompanySubclassImpl>(
          this, _$identity);
}

abstract class CompanySubclass implements Company {
  factory CompanySubclass({final String? name, final Director? director}) =
      _$CompanySubclassImpl;

  @override
  String? get name;
  @override
  Director? get director;

  /// Create a copy of Company
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CompanySubclassImplCopyWith<_$CompanySubclassImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Director {
  String? get name => throw _privateConstructorUsedError;
  Assistant? get assistant => throw _privateConstructorUsedError;

  /// Create a copy of Director
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DirectorCopyWith<Director> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DirectorCopyWith<$Res> {
  factory $DirectorCopyWith(Director value, $Res Function(Director) then) =
      _$DirectorCopyWithImpl<$Res, Director>;
  @useResult
  $Res call({String? name, Assistant? assistant});

  $AssistantCopyWith<$Res>? get assistant;
}

/// @nodoc
class _$DirectorCopyWithImpl<$Res, $Val extends Director>
    implements $DirectorCopyWith<$Res> {
  _$DirectorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Director
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? assistant = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      assistant: freezed == assistant
          ? _value.assistant
          : assistant // ignore: cast_nullable_to_non_nullable
              as Assistant?,
    ) as $Val);
  }

  /// Create a copy of Director
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssistantCopyWith<$Res>? get assistant {
    if (_value.assistant == null) {
      return null;
    }

    return $AssistantCopyWith<$Res>(_value.assistant!, (value) {
      return _then(_value.copyWith(assistant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DirectorImplCopyWith<$Res>
    implements $DirectorCopyWith<$Res> {
  factory _$$DirectorImplCopyWith(
          _$DirectorImpl value, $Res Function(_$DirectorImpl) then) =
      __$$DirectorImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, Assistant? assistant});

  @override
  $AssistantCopyWith<$Res>? get assistant;
}

/// @nodoc
class __$$DirectorImplCopyWithImpl<$Res>
    extends _$DirectorCopyWithImpl<$Res, _$DirectorImpl>
    implements _$$DirectorImplCopyWith<$Res> {
  __$$DirectorImplCopyWithImpl(
      _$DirectorImpl _value, $Res Function(_$DirectorImpl) _then)
      : super(_value, _then);

  /// Create a copy of Director
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? assistant = freezed,
  }) {
    return _then(_$DirectorImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      assistant: freezed == assistant
          ? _value.assistant
          : assistant // ignore: cast_nullable_to_non_nullable
              as Assistant?,
    ));
  }
}

/// @nodoc

class _$DirectorImpl implements _Director {
  _$DirectorImpl({this.name, this.assistant});

  @override
  final String? name;
  @override
  final Assistant? assistant;

  @override
  String toString() {
    return 'Director(name: $name, assistant: $assistant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DirectorImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.assistant, assistant) ||
                other.assistant == assistant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, assistant);

  /// Create a copy of Director
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DirectorImplCopyWith<_$DirectorImpl> get copyWith =>
      __$$DirectorImplCopyWithImpl<_$DirectorImpl>(this, _$identity);
}

abstract class _Director implements Director {
  factory _Director({final String? name, final Assistant? assistant}) =
      _$DirectorImpl;

  @override
  String? get name;
  @override
  Assistant? get assistant;

  /// Create a copy of Director
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DirectorImplCopyWith<_$DirectorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Assistant {
  String? get name => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;

  /// Create a copy of Assistant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AssistantCopyWith<Assistant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AssistantCopyWith<$Res> {
  factory $AssistantCopyWith(Assistant value, $Res Function(Assistant) then) =
      _$AssistantCopyWithImpl<$Res, Assistant>;
  @useResult
  $Res call({String? name, int? age});
}

/// @nodoc
class _$AssistantCopyWithImpl<$Res, $Val extends Assistant>
    implements $AssistantCopyWith<$Res> {
  _$AssistantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Assistant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AssistantImplCopyWith<$Res>
    implements $AssistantCopyWith<$Res> {
  factory _$$AssistantImplCopyWith(
          _$AssistantImpl value, $Res Function(_$AssistantImpl) then) =
      __$$AssistantImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int? age});
}

/// @nodoc
class __$$AssistantImplCopyWithImpl<$Res>
    extends _$AssistantCopyWithImpl<$Res, _$AssistantImpl>
    implements _$$AssistantImplCopyWith<$Res> {
  __$$AssistantImplCopyWithImpl(
      _$AssistantImpl _value, $Res Function(_$AssistantImpl) _then)
      : super(_value, _then);

  /// Create a copy of Assistant
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? age = freezed,
  }) {
    return _then(_$AssistantImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$AssistantImpl implements _Assistant {
  _$AssistantImpl({this.name, this.age});

  @override
  final String? name;
  @override
  final int? age;

  @override
  String toString() {
    return 'Assistant(name: $name, age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AssistantImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, age);

  /// Create a copy of Assistant
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AssistantImplCopyWith<_$AssistantImpl> get copyWith =>
      __$$AssistantImplCopyWithImpl<_$AssistantImpl>(this, _$identity);
}

abstract class _Assistant implements Assistant {
  factory _Assistant({final String? name, final int? age}) = _$AssistantImpl;

  @override
  String? get name;
  @override
  int? get age;

  /// Create a copy of Assistant
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AssistantImplCopyWith<_$AssistantImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NoCommonProperty {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Assistant assistant) assistant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(Assistant assistant)? assistant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Assistant assistant)? assistant,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(NoCommonPropertyEmpty value) $default, {
    required TResult Function(NoCommonPropertyAssistant value) assistant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(NoCommonPropertyEmpty value)? $default, {
    TResult? Function(NoCommonPropertyAssistant value)? assistant,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(NoCommonPropertyEmpty value)? $default, {
    TResult Function(NoCommonPropertyAssistant value)? assistant,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NoCommonPropertyCopyWith<$Res> {
  factory $NoCommonPropertyCopyWith(
          NoCommonProperty value, $Res Function(NoCommonProperty) then) =
      _$NoCommonPropertyCopyWithImpl<$Res, NoCommonProperty>;
}

/// @nodoc
class _$NoCommonPropertyCopyWithImpl<$Res, $Val extends NoCommonProperty>
    implements $NoCommonPropertyCopyWith<$Res> {
  _$NoCommonPropertyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NoCommonProperty
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$NoCommonPropertyEmptyImplCopyWith<$Res> {
  factory _$$NoCommonPropertyEmptyImplCopyWith(
          _$NoCommonPropertyEmptyImpl value,
          $Res Function(_$NoCommonPropertyEmptyImpl) then) =
      __$$NoCommonPropertyEmptyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NoCommonPropertyEmptyImplCopyWithImpl<$Res>
    extends _$NoCommonPropertyCopyWithImpl<$Res, _$NoCommonPropertyEmptyImpl>
    implements _$$NoCommonPropertyEmptyImplCopyWith<$Res> {
  __$$NoCommonPropertyEmptyImplCopyWithImpl(_$NoCommonPropertyEmptyImpl _value,
      $Res Function(_$NoCommonPropertyEmptyImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoCommonProperty
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NoCommonPropertyEmptyImpl implements NoCommonPropertyEmpty {
  _$NoCommonPropertyEmptyImpl();

  @override
  String toString() {
    return 'NoCommonProperty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoCommonPropertyEmptyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Assistant assistant) assistant,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(Assistant assistant)? assistant,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Assistant assistant)? assistant,
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
    TResult Function(NoCommonPropertyEmpty value) $default, {
    required TResult Function(NoCommonPropertyAssistant value) assistant,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(NoCommonPropertyEmpty value)? $default, {
    TResult? Function(NoCommonPropertyAssistant value)? assistant,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(NoCommonPropertyEmpty value)? $default, {
    TResult Function(NoCommonPropertyAssistant value)? assistant,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class NoCommonPropertyEmpty implements NoCommonProperty {
  factory NoCommonPropertyEmpty() = _$NoCommonPropertyEmptyImpl;
}

/// @nodoc
abstract class _$$NoCommonPropertyAssistantImplCopyWith<$Res> {
  factory _$$NoCommonPropertyAssistantImplCopyWith(
          _$NoCommonPropertyAssistantImpl value,
          $Res Function(_$NoCommonPropertyAssistantImpl) then) =
      __$$NoCommonPropertyAssistantImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Assistant assistant});

  $AssistantCopyWith<$Res> get assistant;
}

/// @nodoc
class __$$NoCommonPropertyAssistantImplCopyWithImpl<$Res>
    extends _$NoCommonPropertyCopyWithImpl<$Res,
        _$NoCommonPropertyAssistantImpl>
    implements _$$NoCommonPropertyAssistantImplCopyWith<$Res> {
  __$$NoCommonPropertyAssistantImplCopyWithImpl(
      _$NoCommonPropertyAssistantImpl _value,
      $Res Function(_$NoCommonPropertyAssistantImpl) _then)
      : super(_value, _then);

  /// Create a copy of NoCommonProperty
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assistant = null,
  }) {
    return _then(_$NoCommonPropertyAssistantImpl(
      null == assistant
          ? _value.assistant
          : assistant // ignore: cast_nullable_to_non_nullable
              as Assistant,
    ));
  }

  /// Create a copy of NoCommonProperty
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssistantCopyWith<$Res> get assistant {
    return $AssistantCopyWith<$Res>(_value.assistant, (value) {
      return _then(_value.copyWith(assistant: value));
    });
  }
}

/// @nodoc

class _$NoCommonPropertyAssistantImpl implements NoCommonPropertyAssistant {
  _$NoCommonPropertyAssistantImpl(this.assistant);

  @override
  final Assistant assistant;

  @override
  String toString() {
    return 'NoCommonProperty.assistant(assistant: $assistant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NoCommonPropertyAssistantImpl &&
            (identical(other.assistant, assistant) ||
                other.assistant == assistant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, assistant);

  /// Create a copy of NoCommonProperty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NoCommonPropertyAssistantImplCopyWith<_$NoCommonPropertyAssistantImpl>
      get copyWith => __$$NoCommonPropertyAssistantImplCopyWithImpl<
          _$NoCommonPropertyAssistantImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Assistant assistant) assistant,
  }) {
    return assistant(this.assistant);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(Assistant assistant)? assistant,
  }) {
    return assistant?.call(this.assistant);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Assistant assistant)? assistant,
    required TResult orElse(),
  }) {
    if (assistant != null) {
      return assistant(this.assistant);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(NoCommonPropertyEmpty value) $default, {
    required TResult Function(NoCommonPropertyAssistant value) assistant,
  }) {
    return assistant(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(NoCommonPropertyEmpty value)? $default, {
    TResult? Function(NoCommonPropertyAssistant value)? assistant,
  }) {
    return assistant?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(NoCommonPropertyEmpty value)? $default, {
    TResult Function(NoCommonPropertyAssistant value)? assistant,
    required TResult orElse(),
  }) {
    if (assistant != null) {
      return assistant(this);
    }
    return orElse();
  }
}

abstract class NoCommonPropertyAssistant implements NoCommonProperty {
  factory NoCommonPropertyAssistant(final Assistant assistant) =
      _$NoCommonPropertyAssistantImpl;

  Assistant get assistant;

  /// Create a copy of NoCommonProperty
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NoCommonPropertyAssistantImplCopyWith<_$NoCommonPropertyAssistantImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Union {
  Assistant get shared => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Assistant shared, Assistant first) first,
    required TResult Function(Assistant shared, Assistant second) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Assistant shared, Assistant first)? first,
    TResult? Function(Assistant shared, Assistant second)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Assistant shared, Assistant first)? first,
    TResult Function(Assistant shared, Assistant second)? second,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnionFirst value) first,
    required TResult Function(UnionSecond value) second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnionFirst value)? first,
    TResult? Function(UnionSecond value)? second,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnionFirst value)? first,
    TResult Function(UnionSecond value)? second,
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
  $Res call({Assistant shared});

  $AssistantCopyWith<$Res> get shared;
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
    Object? shared = null,
  }) {
    return _then(_value.copyWith(
      shared: null == shared
          ? _value.shared
          : shared // ignore: cast_nullable_to_non_nullable
              as Assistant,
    ) as $Val);
  }

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssistantCopyWith<$Res> get shared {
    return $AssistantCopyWith<$Res>(_value.shared, (value) {
      return _then(_value.copyWith(shared: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UnionFirstImplCopyWith<$Res> implements $UnionCopyWith<$Res> {
  factory _$$UnionFirstImplCopyWith(
          _$UnionFirstImpl value, $Res Function(_$UnionFirstImpl) then) =
      __$$UnionFirstImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Assistant shared, Assistant first});

  @override
  $AssistantCopyWith<$Res> get shared;
  $AssistantCopyWith<$Res> get first;
}

/// @nodoc
class __$$UnionFirstImplCopyWithImpl<$Res>
    extends _$UnionCopyWithImpl<$Res, _$UnionFirstImpl>
    implements _$$UnionFirstImplCopyWith<$Res> {
  __$$UnionFirstImplCopyWithImpl(
      _$UnionFirstImpl _value, $Res Function(_$UnionFirstImpl) _then)
      : super(_value, _then);

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shared = null,
    Object? first = null,
  }) {
    return _then(_$UnionFirstImpl(
      null == shared
          ? _value.shared
          : shared // ignore: cast_nullable_to_non_nullable
              as Assistant,
      null == first
          ? _value.first
          : first // ignore: cast_nullable_to_non_nullable
              as Assistant,
    ));
  }

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssistantCopyWith<$Res> get first {
    return $AssistantCopyWith<$Res>(_value.first, (value) {
      return _then(_value.copyWith(first: value));
    });
  }
}

/// @nodoc

class _$UnionFirstImpl implements UnionFirst {
  _$UnionFirstImpl(this.shared, this.first);

  @override
  final Assistant shared;
  @override
  final Assistant first;

  @override
  String toString() {
    return 'Union.first(shared: $shared, first: $first)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionFirstImpl &&
            (identical(other.shared, shared) || other.shared == shared) &&
            (identical(other.first, first) || other.first == first));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shared, first);

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionFirstImplCopyWith<_$UnionFirstImpl> get copyWith =>
      __$$UnionFirstImplCopyWithImpl<_$UnionFirstImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Assistant shared, Assistant first) first,
    required TResult Function(Assistant shared, Assistant second) second,
  }) {
    return first(shared, this.first);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Assistant shared, Assistant first)? first,
    TResult? Function(Assistant shared, Assistant second)? second,
  }) {
    return first?.call(shared, this.first);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Assistant shared, Assistant first)? first,
    TResult Function(Assistant shared, Assistant second)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(shared, this.first);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnionFirst value) first,
    required TResult Function(UnionSecond value) second,
  }) {
    return first(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnionFirst value)? first,
    TResult? Function(UnionSecond value)? second,
  }) {
    return first?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnionFirst value)? first,
    TResult Function(UnionSecond value)? second,
    required TResult orElse(),
  }) {
    if (first != null) {
      return first(this);
    }
    return orElse();
  }
}

abstract class UnionFirst implements Union {
  factory UnionFirst(final Assistant shared, final Assistant first) =
      _$UnionFirstImpl;

  @override
  Assistant get shared;
  Assistant get first;

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionFirstImplCopyWith<_$UnionFirstImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnionSecondImplCopyWith<$Res>
    implements $UnionCopyWith<$Res> {
  factory _$$UnionSecondImplCopyWith(
          _$UnionSecondImpl value, $Res Function(_$UnionSecondImpl) then) =
      __$$UnionSecondImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Assistant shared, Assistant second});

  @override
  $AssistantCopyWith<$Res> get shared;
  $AssistantCopyWith<$Res> get second;
}

/// @nodoc
class __$$UnionSecondImplCopyWithImpl<$Res>
    extends _$UnionCopyWithImpl<$Res, _$UnionSecondImpl>
    implements _$$UnionSecondImplCopyWith<$Res> {
  __$$UnionSecondImplCopyWithImpl(
      _$UnionSecondImpl _value, $Res Function(_$UnionSecondImpl) _then)
      : super(_value, _then);

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shared = null,
    Object? second = null,
  }) {
    return _then(_$UnionSecondImpl(
      null == shared
          ? _value.shared
          : shared // ignore: cast_nullable_to_non_nullable
              as Assistant,
      null == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as Assistant,
    ));
  }

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssistantCopyWith<$Res> get second {
    return $AssistantCopyWith<$Res>(_value.second, (value) {
      return _then(_value.copyWith(second: value));
    });
  }
}

/// @nodoc

class _$UnionSecondImpl implements UnionSecond {
  _$UnionSecondImpl(this.shared, this.second);

  @override
  final Assistant shared;
  @override
  final Assistant second;

  @override
  String toString() {
    return 'Union.second(shared: $shared, second: $second)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnionSecondImpl &&
            (identical(other.shared, shared) || other.shared == shared) &&
            (identical(other.second, second) || other.second == second));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shared, second);

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UnionSecondImplCopyWith<_$UnionSecondImpl> get copyWith =>
      __$$UnionSecondImplCopyWithImpl<_$UnionSecondImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Assistant shared, Assistant first) first,
    required TResult Function(Assistant shared, Assistant second) second,
  }) {
    return second(shared, this.second);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Assistant shared, Assistant first)? first,
    TResult? Function(Assistant shared, Assistant second)? second,
  }) {
    return second?.call(shared, this.second);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Assistant shared, Assistant first)? first,
    TResult Function(Assistant shared, Assistant second)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(shared, this.second);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnionFirst value) first,
    required TResult Function(UnionSecond value) second,
  }) {
    return second(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UnionFirst value)? first,
    TResult? Function(UnionSecond value)? second,
  }) {
    return second?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnionFirst value)? first,
    TResult Function(UnionSecond value)? second,
    required TResult orElse(),
  }) {
    if (second != null) {
      return second(this);
    }
    return orElse();
  }
}

abstract class UnionSecond implements Union {
  factory UnionSecond(final Assistant shared, final Assistant second) =
      _$UnionSecondImpl;

  @override
  Assistant get shared;
  Assistant get second;

  /// Create a copy of Union
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UnionSecondImplCopyWith<_$UnionSecondImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Private {
  Assistant get assistant => throw _privateConstructorUsedError;

  /// Create a copy of _Private
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$PrivateCopyWith<_Private> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PrivateCopyWith<$Res> {
  factory _$PrivateCopyWith(_Private value, $Res Function(_Private) then) =
      __$PrivateCopyWithImpl<$Res, _Private>;
  @useResult
  $Res call({Assistant assistant});

  $AssistantCopyWith<$Res> get assistant;
}

/// @nodoc
class __$PrivateCopyWithImpl<$Res, $Val extends _Private>
    implements _$PrivateCopyWith<$Res> {
  __$PrivateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of _Private
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assistant = null,
  }) {
    return _then(_value.copyWith(
      assistant: null == assistant
          ? _value.assistant
          : assistant // ignore: cast_nullable_to_non_nullable
              as Assistant,
    ) as $Val);
  }

  /// Create a copy of _Private
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AssistantCopyWith<$Res> get assistant {
    return $AssistantCopyWith<$Res>(_value.assistant, (value) {
      return _then(_value.copyWith(assistant: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PrivateImplCopyWith<$Res>
    implements _$PrivateCopyWith<$Res> {
  factory _$$_PrivateImplCopyWith(
          _$_PrivateImpl value, $Res Function(_$_PrivateImpl) then) =
      __$$_PrivateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Assistant assistant});

  @override
  $AssistantCopyWith<$Res> get assistant;
}

/// @nodoc
class __$$_PrivateImplCopyWithImpl<$Res>
    extends __$PrivateCopyWithImpl<$Res, _$_PrivateImpl>
    implements _$$_PrivateImplCopyWith<$Res> {
  __$$_PrivateImplCopyWithImpl(
      _$_PrivateImpl _value, $Res Function(_$_PrivateImpl) _then)
      : super(_value, _then);

  /// Create a copy of _Private
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? assistant = null,
  }) {
    return _then(_$_PrivateImpl(
      null == assistant
          ? _value.assistant
          : assistant // ignore: cast_nullable_to_non_nullable
              as Assistant,
    ));
  }
}

/// @nodoc

class _$_PrivateImpl implements __Private {
  _$_PrivateImpl(this.assistant);

  @override
  final Assistant assistant;

  @override
  String toString() {
    return '_Private(assistant: $assistant)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PrivateImpl &&
            (identical(other.assistant, assistant) ||
                other.assistant == assistant));
  }

  @override
  int get hashCode => Object.hash(runtimeType, assistant);

  /// Create a copy of _Private
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$_PrivateImplCopyWith<_$_PrivateImpl> get copyWith =>
      __$$_PrivateImplCopyWithImpl<_$_PrivateImpl>(this, _$identity);
}

abstract class __Private implements _Private {
  factory __Private(final Assistant assistant) = _$_PrivateImpl;

  @override
  Assistant get assistant;

  /// Create a copy of _Private
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$_PrivateImplCopyWith<_$_PrivateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeepGeneric<T> {
  Generic<T> get value => throw _privateConstructorUsedError;
  T get second => throw _privateConstructorUsedError;

  /// Create a copy of DeepGeneric
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeepGenericCopyWith<T, DeepGeneric<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeepGenericCopyWith<T, $Res> {
  factory $DeepGenericCopyWith(
          DeepGeneric<T> value, $Res Function(DeepGeneric<T>) then) =
      _$DeepGenericCopyWithImpl<T, $Res, DeepGeneric<T>>;
  @useResult
  $Res call({Generic<T> value, T second});

  $GenericCopyWith<T, $Res> get value;
}

/// @nodoc
class _$DeepGenericCopyWithImpl<T, $Res, $Val extends DeepGeneric<T>>
    implements $DeepGenericCopyWith<T, $Res> {
  _$DeepGenericCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeepGeneric
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? second = freezed,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Generic<T>,
      second: freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }

  /// Create a copy of DeepGeneric
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenericCopyWith<T, $Res> get value {
    return $GenericCopyWith<T, $Res>(_value.value, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DeepGenericImplCopyWith<T, $Res>
    implements $DeepGenericCopyWith<T, $Res> {
  factory _$$DeepGenericImplCopyWith(_$DeepGenericImpl<T> value,
          $Res Function(_$DeepGenericImpl<T>) then) =
      __$$DeepGenericImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Generic<T> value, T second});

  @override
  $GenericCopyWith<T, $Res> get value;
}

/// @nodoc
class __$$DeepGenericImplCopyWithImpl<T, $Res>
    extends _$DeepGenericCopyWithImpl<T, $Res, _$DeepGenericImpl<T>>
    implements _$$DeepGenericImplCopyWith<T, $Res> {
  __$$DeepGenericImplCopyWithImpl(
      _$DeepGenericImpl<T> _value, $Res Function(_$DeepGenericImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DeepGeneric
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? second = freezed,
  }) {
    return _then(_$DeepGenericImpl<T>(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Generic<T>,
      freezed == second
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$DeepGenericImpl<T> implements _DeepGeneric<T> {
  _$DeepGenericImpl(this.value, this.second);

  @override
  final Generic<T> value;
  @override
  final T second;

  @override
  String toString() {
    return 'DeepGeneric<$T>(value: $value, second: $second)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeepGenericImpl<T> &&
            (identical(other.value, value) || other.value == value) &&
            const DeepCollectionEquality().equals(other.second, second));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, value, const DeepCollectionEquality().hash(second));

  /// Create a copy of DeepGeneric
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeepGenericImplCopyWith<T, _$DeepGenericImpl<T>> get copyWith =>
      __$$DeepGenericImplCopyWithImpl<T, _$DeepGenericImpl<T>>(
          this, _$identity);
}

abstract class _DeepGeneric<T> implements DeepGeneric<T> {
  factory _DeepGeneric(final Generic<T> value, final T second) =
      _$DeepGenericImpl<T>;

  @override
  Generic<T> get value;
  @override
  T get second;

  /// Create a copy of DeepGeneric
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeepGenericImplCopyWith<T, _$DeepGenericImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Generic<T> {
  T get value => throw _privateConstructorUsedError;
  T get value2 => throw _privateConstructorUsedError;

  /// Create a copy of Generic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenericCopyWith<T, Generic<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericCopyWith<T, $Res> {
  factory $GenericCopyWith(Generic<T> value, $Res Function(Generic<T>) then) =
      _$GenericCopyWithImpl<T, $Res, Generic<T>>;
  @useResult
  $Res call({T value, T value2});
}

/// @nodoc
class _$GenericCopyWithImpl<T, $Res, $Val extends Generic<T>>
    implements $GenericCopyWith<T, $Res> {
  _$GenericCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Generic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? value2 = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      value2: freezed == value2
          ? _value.value2
          : value2 // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GenericImplCopyWith<T, $Res>
    implements $GenericCopyWith<T, $Res> {
  factory _$$GenericImplCopyWith(
          _$GenericImpl<T> value, $Res Function(_$GenericImpl<T>) then) =
      __$$GenericImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T value, T value2});
}

/// @nodoc
class __$$GenericImplCopyWithImpl<T, $Res>
    extends _$GenericCopyWithImpl<T, $Res, _$GenericImpl<T>>
    implements _$$GenericImplCopyWith<T, $Res> {
  __$$GenericImplCopyWithImpl(
      _$GenericImpl<T> _value, $Res Function(_$GenericImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of Generic
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? value2 = freezed,
  }) {
    return _then(_$GenericImpl<T>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
      freezed == value2
          ? _value.value2
          : value2 // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$GenericImpl<T> implements _Generic<T> {
  _$GenericImpl(this.value, this.value2);

  @override
  final T value;
  @override
  final T value2;

  @override
  String toString() {
    return 'Generic<$T>(value: $value, value2: $value2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericImpl<T> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.value2, value2));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(value2));

  /// Create a copy of Generic
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericImplCopyWith<T, _$GenericImpl<T>> get copyWith =>
      __$$GenericImplCopyWithImpl<T, _$GenericImpl<T>>(this, _$identity);
}

abstract class _Generic<T> implements Generic<T> {
  factory _Generic(final T value, final T value2) = _$GenericImpl<T>;

  @override
  T get value;
  @override
  T get value2;

  /// Create a copy of Generic
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericImplCopyWith<T, _$GenericImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Recursive {
  Recursive? get value => throw _privateConstructorUsedError;

  /// Create a copy of Recursive
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecursiveCopyWith<Recursive> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecursiveCopyWith<$Res> {
  factory $RecursiveCopyWith(Recursive value, $Res Function(Recursive) then) =
      _$RecursiveCopyWithImpl<$Res, Recursive>;
  @useResult
  $Res call({Recursive? value});

  $RecursiveCopyWith<$Res>? get value;
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
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Recursive?,
    ) as $Val);
  }

  /// Create a copy of Recursive
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RecursiveCopyWith<$Res>? get value {
    if (_value.value == null) {
      return null;
    }

    return $RecursiveCopyWith<$Res>(_value.value!, (value) {
      return _then(_value.copyWith(value: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RecursiveImplCopyWith<$Res>
    implements $RecursiveCopyWith<$Res> {
  factory _$$RecursiveImplCopyWith(
          _$RecursiveImpl value, $Res Function(_$RecursiveImpl) then) =
      __$$RecursiveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Recursive? value});

  @override
  $RecursiveCopyWith<$Res>? get value;
}

/// @nodoc
class __$$RecursiveImplCopyWithImpl<$Res>
    extends _$RecursiveCopyWithImpl<$Res, _$RecursiveImpl>
    implements _$$RecursiveImplCopyWith<$Res> {
  __$$RecursiveImplCopyWithImpl(
      _$RecursiveImpl _value, $Res Function(_$RecursiveImpl) _then)
      : super(_value, _then);

  /// Create a copy of Recursive
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$RecursiveImpl(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Recursive?,
    ));
  }
}

/// @nodoc

class _$RecursiveImpl implements _Recursive {
  _$RecursiveImpl([this.value]);

  @override
  final Recursive? value;

  @override
  String toString() {
    return 'Recursive(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecursiveImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  /// Create a copy of Recursive
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecursiveImplCopyWith<_$RecursiveImpl> get copyWith =>
      __$$RecursiveImplCopyWithImpl<_$RecursiveImpl>(this, _$identity);
}

abstract class _Recursive implements Recursive {
  factory _Recursive([final Recursive? value]) = _$RecursiveImpl;

  @override
  Recursive? get value;

  /// Create a copy of Recursive
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecursiveImplCopyWith<_$RecursiveImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DisabledDeepCopyWith {
  DisabledCopy get disabled => throw _privateConstructorUsedError;

  /// Create a copy of DisabledDeepCopyWith
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DisabledDeepCopyWithCopyWith<DisabledDeepCopyWith> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisabledDeepCopyWithCopyWith<$Res> {
  factory $DisabledDeepCopyWithCopyWith(DisabledDeepCopyWith value,
          $Res Function(DisabledDeepCopyWith) then) =
      _$DisabledDeepCopyWithCopyWithImpl<$Res, DisabledDeepCopyWith>;
  @useResult
  $Res call({DisabledCopy disabled});
}

/// @nodoc
class _$DisabledDeepCopyWithCopyWithImpl<$Res,
        $Val extends DisabledDeepCopyWith>
    implements $DisabledDeepCopyWithCopyWith<$Res> {
  _$DisabledDeepCopyWithCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DisabledDeepCopyWith
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disabled = null,
  }) {
    return _then(_value.copyWith(
      disabled: null == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as DisabledCopy,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisabledDeepCopyWithImplCopyWith<$Res>
    implements $DisabledDeepCopyWithCopyWith<$Res> {
  factory _$$DisabledDeepCopyWithImplCopyWith(_$DisabledDeepCopyWithImpl value,
          $Res Function(_$DisabledDeepCopyWithImpl) then) =
      __$$DisabledDeepCopyWithImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DisabledCopy disabled});
}

/// @nodoc
class __$$DisabledDeepCopyWithImplCopyWithImpl<$Res>
    extends _$DisabledDeepCopyWithCopyWithImpl<$Res, _$DisabledDeepCopyWithImpl>
    implements _$$DisabledDeepCopyWithImplCopyWith<$Res> {
  __$$DisabledDeepCopyWithImplCopyWithImpl(_$DisabledDeepCopyWithImpl _value,
      $Res Function(_$DisabledDeepCopyWithImpl) _then)
      : super(_value, _then);

  /// Create a copy of DisabledDeepCopyWith
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disabled = null,
  }) {
    return _then(_$DisabledDeepCopyWithImpl(
      null == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as DisabledCopy,
    ));
  }
}

/// @nodoc

class _$DisabledDeepCopyWithImpl implements _DisabledDeepCopyWith {
  _$DisabledDeepCopyWithImpl(this.disabled);

  @override
  final DisabledCopy disabled;

  @override
  String toString() {
    return 'DisabledDeepCopyWith(disabled: $disabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisabledDeepCopyWithImpl &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, disabled);

  /// Create a copy of DisabledDeepCopyWith
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DisabledDeepCopyWithImplCopyWith<_$DisabledDeepCopyWithImpl>
      get copyWith =>
          __$$DisabledDeepCopyWithImplCopyWithImpl<_$DisabledDeepCopyWithImpl>(
              this, _$identity);
}

abstract class _DisabledDeepCopyWith implements DisabledDeepCopyWith {
  factory _DisabledDeepCopyWith(final DisabledCopy disabled) =
      _$DisabledDeepCopyWithImpl;

  @override
  DisabledCopy get disabled;

  /// Create a copy of DisabledDeepCopyWith
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DisabledDeepCopyWithImplCopyWith<_$DisabledDeepCopyWithImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DisabledCopy {
  DisabledCopy get disabled => throw _privateConstructorUsedError;
}

/// @nodoc

class _$DisabledCopyImpl implements _DisabledCopy {
  _$DisabledCopyImpl(this.disabled);

  @override
  final DisabledCopy disabled;

  @override
  String toString() {
    return 'DisabledCopy(disabled: $disabled)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisabledCopyImpl &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled));
  }

  @override
  int get hashCode => Object.hash(runtimeType, disabled);
}

abstract class _DisabledCopy implements DisabledCopy {
  factory _DisabledCopy(final DisabledCopy disabled) = _$DisabledCopyImpl;

  @override
  DisabledCopy get disabled;
}
