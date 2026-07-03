// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'implements_decorator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SimpleImplements {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int age) person,
    required TResult Function(String name) street,
    required TResult Function(String name, int population) city,
    required TResult Function(String name, int population) country,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int age)? person,
    TResult? Function(String name)? street,
    TResult? Function(String name, int population)? city,
    TResult? Function(String name, int population)? country,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int age)? person,
    TResult Function(String name)? street,
    TResult Function(String name, int population)? city,
    TResult Function(String name, int population)? country,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimplePerson value) person,
    required TResult Function(SimpleStreet value) street,
    required TResult Function(SimpleCity value) city,
    required TResult Function(SimpleCountry value) country,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimplePerson value)? person,
    TResult? Function(SimpleStreet value)? street,
    TResult? Function(SimpleCity value)? city,
    TResult? Function(SimpleCountry value)? country,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimplePerson value)? person,
    TResult Function(SimpleStreet value)? street,
    TResult Function(SimpleCity value)? city,
    TResult Function(SimpleCountry value)? country,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SimpleImplements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimpleImplementsCopyWith<SimpleImplements> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleImplementsCopyWith<$Res> {
  factory $SimpleImplementsCopyWith(
          SimpleImplements value, $Res Function(SimpleImplements) then) =
      _$SimpleImplementsCopyWithImpl<$Res, SimpleImplements>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$SimpleImplementsCopyWithImpl<$Res, $Val extends SimpleImplements>
    implements $SimpleImplementsCopyWith<$Res> {
  _$SimpleImplementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimpleImplements
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
abstract class _$$SimplePersonImplCopyWith<$Res>
    implements $SimpleImplementsCopyWith<$Res> {
  factory _$$SimplePersonImplCopyWith(
          _$SimplePersonImpl value, $Res Function(_$SimplePersonImpl) then) =
      __$$SimplePersonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int age});
}

/// @nodoc
class __$$SimplePersonImplCopyWithImpl<$Res>
    extends _$SimpleImplementsCopyWithImpl<$Res, _$SimplePersonImpl>
    implements _$$SimplePersonImplCopyWith<$Res> {
  __$$SimplePersonImplCopyWithImpl(
      _$SimplePersonImpl _value, $Res Function(_$SimplePersonImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimpleImplements
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_$SimplePersonImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SimplePersonImpl implements SimplePerson {
  const _$SimplePersonImpl(this.name, this.age);

  @override
  final String name;
  @override
  final int age;

  @override
  String toString() {
    return 'SimpleImplements.person(name: $name, age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimplePersonImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, age);

  /// Create a copy of SimpleImplements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimplePersonImplCopyWith<_$SimplePersonImpl> get copyWith =>
      __$$SimplePersonImplCopyWithImpl<_$SimplePersonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int age) person,
    required TResult Function(String name) street,
    required TResult Function(String name, int population) city,
    required TResult Function(String name, int population) country,
  }) {
    return person(name, age);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int age)? person,
    TResult? Function(String name)? street,
    TResult? Function(String name, int population)? city,
    TResult? Function(String name, int population)? country,
  }) {
    return person?.call(name, age);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int age)? person,
    TResult Function(String name)? street,
    TResult Function(String name, int population)? city,
    TResult Function(String name, int population)? country,
    required TResult orElse(),
  }) {
    if (person != null) {
      return person(name, age);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimplePerson value) person,
    required TResult Function(SimpleStreet value) street,
    required TResult Function(SimpleCity value) city,
    required TResult Function(SimpleCountry value) country,
  }) {
    return person(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimplePerson value)? person,
    TResult? Function(SimpleStreet value)? street,
    TResult? Function(SimpleCity value)? city,
    TResult? Function(SimpleCountry value)? country,
  }) {
    return person?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimplePerson value)? person,
    TResult Function(SimpleStreet value)? street,
    TResult Function(SimpleCity value)? city,
    TResult Function(SimpleCountry value)? country,
    required TResult orElse(),
  }) {
    if (person != null) {
      return person(this);
    }
    return orElse();
  }
}

abstract class SimplePerson implements SimpleImplements {
  const factory SimplePerson(final String name, final int age) =
      _$SimplePersonImpl;

  @override
  String get name;
  int get age;

  /// Create a copy of SimpleImplements
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimplePersonImplCopyWith<_$SimplePersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SimpleStreetImplCopyWith<$Res>
    implements $SimpleImplementsCopyWith<$Res> {
  factory _$$SimpleStreetImplCopyWith(
          _$SimpleStreetImpl value, $Res Function(_$SimpleStreetImpl) then) =
      __$$SimpleStreetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$SimpleStreetImplCopyWithImpl<$Res>
    extends _$SimpleImplementsCopyWithImpl<$Res, _$SimpleStreetImpl>
    implements _$$SimpleStreetImplCopyWith<$Res> {
  __$$SimpleStreetImplCopyWithImpl(
      _$SimpleStreetImpl _value, $Res Function(_$SimpleStreetImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimpleImplements
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$SimpleStreetImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SimpleStreetImpl
    with AdministrativeArea<House>
    implements SimpleStreet {
  const _$SimpleStreetImpl(this.name);

  @override
  final String name;

  @override
  String toString() {
    return 'SimpleImplements.street(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleStreetImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of SimpleImplements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleStreetImplCopyWith<_$SimpleStreetImpl> get copyWith =>
      __$$SimpleStreetImplCopyWithImpl<_$SimpleStreetImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int age) person,
    required TResult Function(String name) street,
    required TResult Function(String name, int population) city,
    required TResult Function(String name, int population) country,
  }) {
    return street(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int age)? person,
    TResult? Function(String name)? street,
    TResult? Function(String name, int population)? city,
    TResult? Function(String name, int population)? country,
  }) {
    return street?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int age)? person,
    TResult Function(String name)? street,
    TResult Function(String name, int population)? city,
    TResult Function(String name, int population)? country,
    required TResult orElse(),
  }) {
    if (street != null) {
      return street(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimplePerson value) person,
    required TResult Function(SimpleStreet value) street,
    required TResult Function(SimpleCity value) city,
    required TResult Function(SimpleCountry value) country,
  }) {
    return street(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimplePerson value)? person,
    TResult? Function(SimpleStreet value)? street,
    TResult? Function(SimpleCity value)? city,
    TResult? Function(SimpleCountry value)? country,
  }) {
    return street?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimplePerson value)? person,
    TResult Function(SimpleStreet value)? street,
    TResult Function(SimpleCity value)? city,
    TResult Function(SimpleCountry value)? country,
    required TResult orElse(),
  }) {
    if (street != null) {
      return street(this);
    }
    return orElse();
  }
}

abstract class SimpleStreet
    implements SimpleImplements, AdministrativeArea<House> {
  const factory SimpleStreet(final String name) = _$SimpleStreetImpl;

  @override
  String get name;

  /// Create a copy of SimpleImplements
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimpleStreetImplCopyWith<_$SimpleStreetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SimpleCityImplCopyWith<$Res>
    implements $SimpleImplementsCopyWith<$Res> {
  factory _$$SimpleCityImplCopyWith(
          _$SimpleCityImpl value, $Res Function(_$SimpleCityImpl) then) =
      __$$SimpleCityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int population});
}

/// @nodoc
class __$$SimpleCityImplCopyWithImpl<$Res>
    extends _$SimpleImplementsCopyWithImpl<$Res, _$SimpleCityImpl>
    implements _$$SimpleCityImplCopyWith<$Res> {
  __$$SimpleCityImplCopyWithImpl(
      _$SimpleCityImpl _value, $Res Function(_$SimpleCityImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimpleImplements
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? population = null,
  }) {
    return _then(_$SimpleCityImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SimpleCityImpl with House implements SimpleCity {
  const _$SimpleCityImpl(this.name, this.population);

  @override
  final String name;
  @override
  final int population;

  @override
  String toString() {
    return 'SimpleImplements.city(name: $name, population: $population)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleCityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.population, population) ||
                other.population == population));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, population);

  /// Create a copy of SimpleImplements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleCityImplCopyWith<_$SimpleCityImpl> get copyWith =>
      __$$SimpleCityImplCopyWithImpl<_$SimpleCityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int age) person,
    required TResult Function(String name) street,
    required TResult Function(String name, int population) city,
    required TResult Function(String name, int population) country,
  }) {
    return city(name, population);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int age)? person,
    TResult? Function(String name)? street,
    TResult? Function(String name, int population)? city,
    TResult? Function(String name, int population)? country,
  }) {
    return city?.call(name, population);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int age)? person,
    TResult Function(String name)? street,
    TResult Function(String name, int population)? city,
    TResult Function(String name, int population)? country,
    required TResult orElse(),
  }) {
    if (city != null) {
      return city(name, population);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimplePerson value) person,
    required TResult Function(SimpleStreet value) street,
    required TResult Function(SimpleCity value) city,
    required TResult Function(SimpleCountry value) country,
  }) {
    return city(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimplePerson value)? person,
    TResult? Function(SimpleStreet value)? street,
    TResult? Function(SimpleCity value)? city,
    TResult? Function(SimpleCountry value)? country,
  }) {
    return city?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimplePerson value)? person,
    TResult Function(SimpleStreet value)? street,
    TResult Function(SimpleCity value)? city,
    TResult Function(SimpleCountry value)? country,
    required TResult orElse(),
  }) {
    if (city != null) {
      return city(this);
    }
    return orElse();
  }
}

abstract class SimpleCity implements SimpleImplements, House {
  const factory SimpleCity(final String name, final int population) =
      _$SimpleCityImpl;

  @override
  String get name;
  int get population;

  /// Create a copy of SimpleImplements
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimpleCityImplCopyWith<_$SimpleCityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SimpleCountryImplCopyWith<$Res>
    implements $SimpleImplementsCopyWith<$Res> {
  factory _$$SimpleCountryImplCopyWith(
          _$SimpleCountryImpl value, $Res Function(_$SimpleCountryImpl) then) =
      __$$SimpleCountryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int population});
}

/// @nodoc
class __$$SimpleCountryImplCopyWithImpl<$Res>
    extends _$SimpleImplementsCopyWithImpl<$Res, _$SimpleCountryImpl>
    implements _$$SimpleCountryImplCopyWith<$Res> {
  __$$SimpleCountryImplCopyWithImpl(
      _$SimpleCountryImpl _value, $Res Function(_$SimpleCountryImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimpleImplements
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? population = null,
  }) {
    return _then(_$SimpleCountryImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SimpleCountryImpl with House implements SimpleCountry {
  const _$SimpleCountryImpl(this.name, this.population);

  @override
  final String name;
  @override
  final int population;

  @override
  String toString() {
    return 'SimpleImplements.country(name: $name, population: $population)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleCountryImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.population, population) ||
                other.population == population));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, population);

  /// Create a copy of SimpleImplements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleCountryImplCopyWith<_$SimpleCountryImpl> get copyWith =>
      __$$SimpleCountryImplCopyWithImpl<_$SimpleCountryImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int age) person,
    required TResult Function(String name) street,
    required TResult Function(String name, int population) city,
    required TResult Function(String name, int population) country,
  }) {
    return country(name, population);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int age)? person,
    TResult? Function(String name)? street,
    TResult? Function(String name, int population)? city,
    TResult? Function(String name, int population)? country,
  }) {
    return country?.call(name, population);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int age)? person,
    TResult Function(String name)? street,
    TResult Function(String name, int population)? city,
    TResult Function(String name, int population)? country,
    required TResult orElse(),
  }) {
    if (country != null) {
      return country(name, population);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SimplePerson value) person,
    required TResult Function(SimpleStreet value) street,
    required TResult Function(SimpleCity value) city,
    required TResult Function(SimpleCountry value) country,
  }) {
    return country(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SimplePerson value)? person,
    TResult? Function(SimpleStreet value)? street,
    TResult? Function(SimpleCity value)? city,
    TResult? Function(SimpleCountry value)? country,
  }) {
    return country?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SimplePerson value)? person,
    TResult Function(SimpleStreet value)? street,
    TResult Function(SimpleCity value)? city,
    TResult Function(SimpleCountry value)? country,
    required TResult orElse(),
  }) {
    if (country != null) {
      return country(this);
    }
    return orElse();
  }
}

abstract class SimpleCountry
    implements SimpleImplements, GeographicArea, House {
  const factory SimpleCountry(final String name, final int population) =
      _$SimpleCountryImpl;

  @override
  String get name;
  int get population;

  /// Create a copy of SimpleImplements
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimpleCountryImplCopyWith<_$SimpleCountryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CustomMethodImplements {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int age) person,
    required TResult Function(String name) street,
    required TResult Function(String name, int population) city,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int age)? person,
    TResult? Function(String name)? street,
    TResult? Function(String name, int population)? city,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int age)? person,
    TResult Function(String name)? street,
    TResult Function(String name, int population)? city,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonCustomMethod value) person,
    required TResult Function(StreetCustomMethod value) street,
    required TResult Function(CityCustomMethod value) city,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonCustomMethod value)? person,
    TResult? Function(StreetCustomMethod value)? street,
    TResult? Function(CityCustomMethod value)? city,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonCustomMethod value)? person,
    TResult Function(StreetCustomMethod value)? street,
    TResult Function(CityCustomMethod value)? city,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of CustomMethodImplements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CustomMethodImplementsCopyWith<CustomMethodImplements> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomMethodImplementsCopyWith<$Res> {
  factory $CustomMethodImplementsCopyWith(CustomMethodImplements value,
          $Res Function(CustomMethodImplements) then) =
      _$CustomMethodImplementsCopyWithImpl<$Res, CustomMethodImplements>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CustomMethodImplementsCopyWithImpl<$Res,
        $Val extends CustomMethodImplements>
    implements $CustomMethodImplementsCopyWith<$Res> {
  _$CustomMethodImplementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CustomMethodImplements
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
abstract class _$$PersonCustomMethodImplCopyWith<$Res>
    implements $CustomMethodImplementsCopyWith<$Res> {
  factory _$$PersonCustomMethodImplCopyWith(_$PersonCustomMethodImpl value,
          $Res Function(_$PersonCustomMethodImpl) then) =
      __$$PersonCustomMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int age});
}

/// @nodoc
class __$$PersonCustomMethodImplCopyWithImpl<$Res>
    extends _$CustomMethodImplementsCopyWithImpl<$Res, _$PersonCustomMethodImpl>
    implements _$$PersonCustomMethodImplCopyWith<$Res> {
  __$$PersonCustomMethodImplCopyWithImpl(_$PersonCustomMethodImpl _value,
      $Res Function(_$PersonCustomMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomMethodImplements
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_$PersonCustomMethodImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PersonCustomMethodImpl extends PersonCustomMethod {
  const _$PersonCustomMethodImpl(this.name, this.age) : super._();

  @override
  final String name;
  @override
  final int age;

  @override
  String toString() {
    return 'CustomMethodImplements.person(name: $name, age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PersonCustomMethodImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, age);

  /// Create a copy of CustomMethodImplements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PersonCustomMethodImplCopyWith<_$PersonCustomMethodImpl> get copyWith =>
      __$$PersonCustomMethodImplCopyWithImpl<_$PersonCustomMethodImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int age) person,
    required TResult Function(String name) street,
    required TResult Function(String name, int population) city,
  }) {
    return person(name, age);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int age)? person,
    TResult? Function(String name)? street,
    TResult? Function(String name, int population)? city,
  }) {
    return person?.call(name, age);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int age)? person,
    TResult Function(String name)? street,
    TResult Function(String name, int population)? city,
    required TResult orElse(),
  }) {
    if (person != null) {
      return person(name, age);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonCustomMethod value) person,
    required TResult Function(StreetCustomMethod value) street,
    required TResult Function(CityCustomMethod value) city,
  }) {
    return person(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonCustomMethod value)? person,
    TResult? Function(StreetCustomMethod value)? street,
    TResult? Function(CityCustomMethod value)? city,
  }) {
    return person?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonCustomMethod value)? person,
    TResult Function(StreetCustomMethod value)? street,
    TResult Function(CityCustomMethod value)? city,
    required TResult orElse(),
  }) {
    if (person != null) {
      return person(this);
    }
    return orElse();
  }
}

abstract class PersonCustomMethod extends CustomMethodImplements {
  const factory PersonCustomMethod(final String name, final int age) =
      _$PersonCustomMethodImpl;
  const PersonCustomMethod._() : super._();

  @override
  String get name;
  int get age;

  /// Create a copy of CustomMethodImplements
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PersonCustomMethodImplCopyWith<_$PersonCustomMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StreetCustomMethodImplCopyWith<$Res>
    implements $CustomMethodImplementsCopyWith<$Res> {
  factory _$$StreetCustomMethodImplCopyWith(_$StreetCustomMethodImpl value,
          $Res Function(_$StreetCustomMethodImpl) then) =
      __$$StreetCustomMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$StreetCustomMethodImplCopyWithImpl<$Res>
    extends _$CustomMethodImplementsCopyWithImpl<$Res, _$StreetCustomMethodImpl>
    implements _$$StreetCustomMethodImplCopyWith<$Res> {
  __$$StreetCustomMethodImplCopyWithImpl(_$StreetCustomMethodImpl _value,
      $Res Function(_$StreetCustomMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomMethodImplements
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$StreetCustomMethodImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StreetCustomMethodImpl extends StreetCustomMethod
    with Shop, AdministrativeArea<House> {
  const _$StreetCustomMethodImpl(this.name) : super._();

  @override
  final String name;

  @override
  String toString() {
    return 'CustomMethodImplements.street(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StreetCustomMethodImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of CustomMethodImplements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StreetCustomMethodImplCopyWith<_$StreetCustomMethodImpl> get copyWith =>
      __$$StreetCustomMethodImplCopyWithImpl<_$StreetCustomMethodImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int age) person,
    required TResult Function(String name) street,
    required TResult Function(String name, int population) city,
  }) {
    return street(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int age)? person,
    TResult? Function(String name)? street,
    TResult? Function(String name, int population)? city,
  }) {
    return street?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int age)? person,
    TResult Function(String name)? street,
    TResult Function(String name, int population)? city,
    required TResult orElse(),
  }) {
    if (street != null) {
      return street(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonCustomMethod value) person,
    required TResult Function(StreetCustomMethod value) street,
    required TResult Function(CityCustomMethod value) city,
  }) {
    return street(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonCustomMethod value)? person,
    TResult? Function(StreetCustomMethod value)? street,
    TResult? Function(CityCustomMethod value)? city,
  }) {
    return street?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonCustomMethod value)? person,
    TResult Function(StreetCustomMethod value)? street,
    TResult Function(CityCustomMethod value)? city,
    required TResult orElse(),
  }) {
    if (street != null) {
      return street(this);
    }
    return orElse();
  }
}

abstract class StreetCustomMethod extends CustomMethodImplements
    implements Shop, AdministrativeArea<House> {
  const factory StreetCustomMethod(final String name) =
      _$StreetCustomMethodImpl;
  const StreetCustomMethod._() : super._();

  @override
  String get name;

  /// Create a copy of CustomMethodImplements
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StreetCustomMethodImplCopyWith<_$StreetCustomMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CityCustomMethodImplCopyWith<$Res>
    implements $CustomMethodImplementsCopyWith<$Res> {
  factory _$$CityCustomMethodImplCopyWith(_$CityCustomMethodImpl value,
          $Res Function(_$CityCustomMethodImpl) then) =
      __$$CityCustomMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int population});
}

/// @nodoc
class __$$CityCustomMethodImplCopyWithImpl<$Res>
    extends _$CustomMethodImplementsCopyWithImpl<$Res, _$CityCustomMethodImpl>
    implements _$$CityCustomMethodImplCopyWith<$Res> {
  __$$CityCustomMethodImplCopyWithImpl(_$CityCustomMethodImpl _value,
      $Res Function(_$CityCustomMethodImpl) _then)
      : super(_value, _then);

  /// Create a copy of CustomMethodImplements
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? population = null,
  }) {
    return _then(_$CityCustomMethodImpl(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CityCustomMethodImpl extends CityCustomMethod with House {
  const _$CityCustomMethodImpl(this.name, this.population) : super._();

  @override
  final String name;
  @override
  final int population;

  @override
  String toString() {
    return 'CustomMethodImplements.city(name: $name, population: $population)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CityCustomMethodImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.population, population) ||
                other.population == population));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, population);

  /// Create a copy of CustomMethodImplements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CityCustomMethodImplCopyWith<_$CityCustomMethodImpl> get copyWith =>
      __$$CityCustomMethodImplCopyWithImpl<_$CityCustomMethodImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int age) person,
    required TResult Function(String name) street,
    required TResult Function(String name, int population) city,
  }) {
    return city(name, population);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int age)? person,
    TResult? Function(String name)? street,
    TResult? Function(String name, int population)? city,
  }) {
    return city?.call(name, population);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int age)? person,
    TResult Function(String name)? street,
    TResult Function(String name, int population)? city,
    required TResult orElse(),
  }) {
    if (city != null) {
      return city(name, population);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PersonCustomMethod value) person,
    required TResult Function(StreetCustomMethod value) street,
    required TResult Function(CityCustomMethod value) city,
  }) {
    return city(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PersonCustomMethod value)? person,
    TResult? Function(StreetCustomMethod value)? street,
    TResult? Function(CityCustomMethod value)? city,
  }) {
    return city?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PersonCustomMethod value)? person,
    TResult Function(StreetCustomMethod value)? street,
    TResult Function(CityCustomMethod value)? city,
    required TResult orElse(),
  }) {
    if (city != null) {
      return city(this);
    }
    return orElse();
  }
}

abstract class CityCustomMethod extends CustomMethodImplements
    implements Named, GeographicArea, House {
  const factory CityCustomMethod(final String name, final int population) =
      _$CityCustomMethodImpl;
  const CityCustomMethod._() : super._();

  @override
  String get name;
  int get population;

  /// Create a copy of CustomMethodImplements
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CityCustomMethodImplCopyWith<_$CityCustomMethodImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GenericImplements<T> {
  String get name => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int age) person,
    required TResult Function(String name, T value) street,
    required TResult Function(String name, int population) city,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int age)? person,
    TResult? Function(String name, T value)? street,
    TResult? Function(String name, int population)? city,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int age)? person,
    TResult Function(String name, T value)? street,
    TResult Function(String name, int population)? city,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenericPerson<T> value) person,
    required TResult Function(GenericStreet<T> value) street,
    required TResult Function(GenericCity<T> value) city,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenericPerson<T> value)? person,
    TResult? Function(GenericStreet<T> value)? street,
    TResult? Function(GenericCity<T> value)? city,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenericPerson<T> value)? person,
    TResult Function(GenericStreet<T> value)? street,
    TResult Function(GenericCity<T> value)? city,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of GenericImplements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenericImplementsCopyWith<T, GenericImplements<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenericImplementsCopyWith<T, $Res> {
  factory $GenericImplementsCopyWith(GenericImplements<T> value,
          $Res Function(GenericImplements<T>) then) =
      _$GenericImplementsCopyWithImpl<T, $Res, GenericImplements<T>>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$GenericImplementsCopyWithImpl<T, $Res,
        $Val extends GenericImplements<T>>
    implements $GenericImplementsCopyWith<T, $Res> {
  _$GenericImplementsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenericImplements
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
abstract class _$$GenericPersonImplCopyWith<T, $Res>
    implements $GenericImplementsCopyWith<T, $Res> {
  factory _$$GenericPersonImplCopyWith(_$GenericPersonImpl<T> value,
          $Res Function(_$GenericPersonImpl<T>) then) =
      __$$GenericPersonImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String name, int age});
}

/// @nodoc
class __$$GenericPersonImplCopyWithImpl<T, $Res>
    extends _$GenericImplementsCopyWithImpl<T, $Res, _$GenericPersonImpl<T>>
    implements _$$GenericPersonImplCopyWith<T, $Res> {
  __$$GenericPersonImplCopyWithImpl(_$GenericPersonImpl<T> _value,
      $Res Function(_$GenericPersonImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GenericImplements
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? age = null,
  }) {
    return _then(_$GenericPersonImpl<T>(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GenericPersonImpl<T> implements GenericPerson<T> {
  const _$GenericPersonImpl(this.name, this.age);

  @override
  final String name;
  @override
  final int age;

  @override
  String toString() {
    return 'GenericImplements<$T>.person(name: $name, age: $age)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericPersonImpl<T> &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.age, age) || other.age == age));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, age);

  /// Create a copy of GenericImplements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericPersonImplCopyWith<T, _$GenericPersonImpl<T>> get copyWith =>
      __$$GenericPersonImplCopyWithImpl<T, _$GenericPersonImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int age) person,
    required TResult Function(String name, T value) street,
    required TResult Function(String name, int population) city,
  }) {
    return person(name, age);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int age)? person,
    TResult? Function(String name, T value)? street,
    TResult? Function(String name, int population)? city,
  }) {
    return person?.call(name, age);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int age)? person,
    TResult Function(String name, T value)? street,
    TResult Function(String name, int population)? city,
    required TResult orElse(),
  }) {
    if (person != null) {
      return person(name, age);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenericPerson<T> value) person,
    required TResult Function(GenericStreet<T> value) street,
    required TResult Function(GenericCity<T> value) city,
  }) {
    return person(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenericPerson<T> value)? person,
    TResult? Function(GenericStreet<T> value)? street,
    TResult? Function(GenericCity<T> value)? city,
  }) {
    return person?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenericPerson<T> value)? person,
    TResult Function(GenericStreet<T> value)? street,
    TResult Function(GenericCity<T> value)? city,
    required TResult orElse(),
  }) {
    if (person != null) {
      return person(this);
    }
    return orElse();
  }
}

abstract class GenericPerson<T> implements GenericImplements<T> {
  const factory GenericPerson(final String name, final int age) =
      _$GenericPersonImpl<T>;

  @override
  String get name;
  int get age;

  /// Create a copy of GenericImplements
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericPersonImplCopyWith<T, _$GenericPersonImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenericStreetImplCopyWith<T, $Res>
    implements $GenericImplementsCopyWith<T, $Res> {
  factory _$$GenericStreetImplCopyWith(_$GenericStreetImpl<T> value,
          $Res Function(_$GenericStreetImpl<T>) then) =
      __$$GenericStreetImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String name, T value});
}

/// @nodoc
class __$$GenericStreetImplCopyWithImpl<T, $Res>
    extends _$GenericImplementsCopyWithImpl<T, $Res, _$GenericStreetImpl<T>>
    implements _$$GenericStreetImplCopyWith<T, $Res> {
  __$$GenericStreetImplCopyWithImpl(_$GenericStreetImpl<T> _value,
      $Res Function(_$GenericStreetImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GenericImplements
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? value = freezed,
  }) {
    return _then(_$GenericStreetImpl<T>(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$GenericStreetImpl<T>
    with AdministrativeArea<T>
    implements GenericStreet<T> {
  const _$GenericStreetImpl(this.name, this.value);

  @override
  final String name;
  @override
  final T value;

  @override
  String toString() {
    return 'GenericImplements<$T>.street(name: $name, value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericStreetImpl<T> &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(value));

  /// Create a copy of GenericImplements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericStreetImplCopyWith<T, _$GenericStreetImpl<T>> get copyWith =>
      __$$GenericStreetImplCopyWithImpl<T, _$GenericStreetImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int age) person,
    required TResult Function(String name, T value) street,
    required TResult Function(String name, int population) city,
  }) {
    return street(name, value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int age)? person,
    TResult? Function(String name, T value)? street,
    TResult? Function(String name, int population)? city,
  }) {
    return street?.call(name, value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int age)? person,
    TResult Function(String name, T value)? street,
    TResult Function(String name, int population)? city,
    required TResult orElse(),
  }) {
    if (street != null) {
      return street(name, value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenericPerson<T> value) person,
    required TResult Function(GenericStreet<T> value) street,
    required TResult Function(GenericCity<T> value) city,
  }) {
    return street(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenericPerson<T> value)? person,
    TResult? Function(GenericStreet<T> value)? street,
    TResult? Function(GenericCity<T> value)? city,
  }) {
    return street?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenericPerson<T> value)? person,
    TResult Function(GenericStreet<T> value)? street,
    TResult Function(GenericCity<T> value)? city,
    required TResult orElse(),
  }) {
    if (street != null) {
      return street(this);
    }
    return orElse();
  }
}

abstract class GenericStreet<T>
    implements GenericImplements<T>, Generic<T>, AdministrativeArea<T> {
  const factory GenericStreet(final String name, final T value) =
      _$GenericStreetImpl<T>;

  @override
  String get name;
  T get value;

  /// Create a copy of GenericImplements
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericStreetImplCopyWith<T, _$GenericStreetImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenericCityImplCopyWith<T, $Res>
    implements $GenericImplementsCopyWith<T, $Res> {
  factory _$$GenericCityImplCopyWith(_$GenericCityImpl<T> value,
          $Res Function(_$GenericCityImpl<T>) then) =
      __$$GenericCityImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({String name, int population});
}

/// @nodoc
class __$$GenericCityImplCopyWithImpl<T, $Res>
    extends _$GenericImplementsCopyWithImpl<T, $Res, _$GenericCityImpl<T>>
    implements _$$GenericCityImplCopyWith<T, $Res> {
  __$$GenericCityImplCopyWithImpl(
      _$GenericCityImpl<T> _value, $Res Function(_$GenericCityImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of GenericImplements
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? population = null,
  }) {
    return _then(_$GenericCityImpl<T>(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == population
          ? _value.population
          : population // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GenericCityImpl<T> with House implements GenericCity<T> {
  const _$GenericCityImpl(this.name, this.population);

  @override
  final String name;
  @override
  final int population;

  @override
  String toString() {
    return 'GenericImplements<$T>.city(name: $name, population: $population)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenericCityImpl<T> &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.population, population) ||
                other.population == population));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, population);

  /// Create a copy of GenericImplements
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenericCityImplCopyWith<T, _$GenericCityImpl<T>> get copyWith =>
      __$$GenericCityImplCopyWithImpl<T, _$GenericCityImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, int age) person,
    required TResult Function(String name, T value) street,
    required TResult Function(String name, int population) city,
  }) {
    return city(name, population);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, int age)? person,
    TResult? Function(String name, T value)? street,
    TResult? Function(String name, int population)? city,
  }) {
    return city?.call(name, population);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, int age)? person,
    TResult Function(String name, T value)? street,
    TResult Function(String name, int population)? city,
    required TResult orElse(),
  }) {
    if (city != null) {
      return city(name, population);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GenericPerson<T> value) person,
    required TResult Function(GenericStreet<T> value) street,
    required TResult Function(GenericCity<T> value) city,
  }) {
    return city(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GenericPerson<T> value)? person,
    TResult? Function(GenericStreet<T> value)? street,
    TResult? Function(GenericCity<T> value)? city,
  }) {
    return city?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GenericPerson<T> value)? person,
    TResult Function(GenericStreet<T> value)? street,
    TResult Function(GenericCity<T> value)? city,
    required TResult orElse(),
  }) {
    if (city != null) {
      return city(this);
    }
    return orElse();
  }
}

abstract class GenericCity<T>
    implements GenericImplements<T>, GeographicArea, House {
  const factory GenericCity(final String name, final int population) =
      _$GenericCityImpl<T>;

  @override
  String get name;
  int get population;

  /// Create a copy of GenericImplements
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenericCityImplCopyWith<T, _$GenericCityImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
