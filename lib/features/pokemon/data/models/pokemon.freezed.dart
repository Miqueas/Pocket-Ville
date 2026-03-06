// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Pokemon {

 int get id; String get name; double get height; double get weight; String get frontUrl; String get showdownUrl; List<PokemonType> get types; List<PokemonAbility> get abilities; PokemonSpecies get species;
/// Create a copy of Pokemon
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonCopyWith<Pokemon> get copyWith => _$PokemonCopyWithImpl<Pokemon>(this as Pokemon, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pokemon&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.frontUrl, frontUrl) || other.frontUrl == frontUrl)&&(identical(other.showdownUrl, showdownUrl) || other.showdownUrl == showdownUrl)&&const DeepCollectionEquality().equals(other.types, types)&&const DeepCollectionEquality().equals(other.abilities, abilities)&&(identical(other.species, species) || other.species == species));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,height,weight,frontUrl,showdownUrl,const DeepCollectionEquality().hash(types),const DeepCollectionEquality().hash(abilities),species);

@override
String toString() {
  return 'Pokemon(id: $id, name: $name, height: $height, weight: $weight, frontUrl: $frontUrl, showdownUrl: $showdownUrl, types: $types, abilities: $abilities, species: $species)';
}


}

/// @nodoc
abstract mixin class $PokemonCopyWith<$Res>  {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) _then) = _$PokemonCopyWithImpl;
@useResult
$Res call({
 int id, String name, double height, double weight, String frontUrl, String showdownUrl, List<PokemonType> types, List<PokemonAbility> abilities, PokemonSpecies species
});


$PokemonSpeciesCopyWith<$Res> get species;

}
/// @nodoc
class _$PokemonCopyWithImpl<$Res>
    implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._self, this._then);

  final Pokemon _self;
  final $Res Function(Pokemon) _then;

/// Create a copy of Pokemon
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? height = null,Object? weight = null,Object? frontUrl = null,Object? showdownUrl = null,Object? types = null,Object? abilities = null,Object? species = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,frontUrl: null == frontUrl ? _self.frontUrl : frontUrl // ignore: cast_nullable_to_non_nullable
as String,showdownUrl: null == showdownUrl ? _self.showdownUrl : showdownUrl // ignore: cast_nullable_to_non_nullable
as String,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<PokemonType>,abilities: null == abilities ? _self.abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<PokemonAbility>,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as PokemonSpecies,
  ));
}
/// Create a copy of Pokemon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonSpeciesCopyWith<$Res> get species {
  
  return $PokemonSpeciesCopyWith<$Res>(_self.species, (value) {
    return _then(_self.copyWith(species: value));
  });
}
}


/// Adds pattern-matching-related methods to [Pokemon].
extension PokemonPatterns on Pokemon {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Pokemon value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Pokemon() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Pokemon value)  $default,){
final _that = this;
switch (_that) {
case _Pokemon():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Pokemon value)?  $default,){
final _that = this;
switch (_that) {
case _Pokemon() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  double height,  double weight,  String frontUrl,  String showdownUrl,  List<PokemonType> types,  List<PokemonAbility> abilities,  PokemonSpecies species)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pokemon() when $default != null:
return $default(_that.id,_that.name,_that.height,_that.weight,_that.frontUrl,_that.showdownUrl,_that.types,_that.abilities,_that.species);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  double height,  double weight,  String frontUrl,  String showdownUrl,  List<PokemonType> types,  List<PokemonAbility> abilities,  PokemonSpecies species)  $default,) {final _that = this;
switch (_that) {
case _Pokemon():
return $default(_that.id,_that.name,_that.height,_that.weight,_that.frontUrl,_that.showdownUrl,_that.types,_that.abilities,_that.species);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  double height,  double weight,  String frontUrl,  String showdownUrl,  List<PokemonType> types,  List<PokemonAbility> abilities,  PokemonSpecies species)?  $default,) {final _that = this;
switch (_that) {
case _Pokemon() when $default != null:
return $default(_that.id,_that.name,_that.height,_that.weight,_that.frontUrl,_that.showdownUrl,_that.types,_that.abilities,_that.species);case _:
  return null;

}
}

}

/// @nodoc


class _Pokemon implements Pokemon {
  const _Pokemon({required this.id, required this.name, required this.height, required this.weight, required this.frontUrl, required this.showdownUrl, required final  List<PokemonType> types, required final  List<PokemonAbility> abilities, required this.species}): _types = types,_abilities = abilities;
  

@override final  int id;
@override final  String name;
@override final  double height;
@override final  double weight;
@override final  String frontUrl;
@override final  String showdownUrl;
 final  List<PokemonType> _types;
@override List<PokemonType> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}

 final  List<PokemonAbility> _abilities;
@override List<PokemonAbility> get abilities {
  if (_abilities is EqualUnmodifiableListView) return _abilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_abilities);
}

@override final  PokemonSpecies species;

/// Create a copy of Pokemon
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonCopyWith<_Pokemon> get copyWith => __$PokemonCopyWithImpl<_Pokemon>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pokemon&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.frontUrl, frontUrl) || other.frontUrl == frontUrl)&&(identical(other.showdownUrl, showdownUrl) || other.showdownUrl == showdownUrl)&&const DeepCollectionEquality().equals(other._types, _types)&&const DeepCollectionEquality().equals(other._abilities, _abilities)&&(identical(other.species, species) || other.species == species));
}


@override
int get hashCode => Object.hash(runtimeType,id,name,height,weight,frontUrl,showdownUrl,const DeepCollectionEquality().hash(_types),const DeepCollectionEquality().hash(_abilities),species);

@override
String toString() {
  return 'Pokemon(id: $id, name: $name, height: $height, weight: $weight, frontUrl: $frontUrl, showdownUrl: $showdownUrl, types: $types, abilities: $abilities, species: $species)';
}


}

/// @nodoc
abstract mixin class _$PokemonCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$PokemonCopyWith(_Pokemon value, $Res Function(_Pokemon) _then) = __$PokemonCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, double height, double weight, String frontUrl, String showdownUrl, List<PokemonType> types, List<PokemonAbility> abilities, PokemonSpecies species
});


@override $PokemonSpeciesCopyWith<$Res> get species;

}
/// @nodoc
class __$PokemonCopyWithImpl<$Res>
    implements _$PokemonCopyWith<$Res> {
  __$PokemonCopyWithImpl(this._self, this._then);

  final _Pokemon _self;
  final $Res Function(_Pokemon) _then;

/// Create a copy of Pokemon
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? height = null,Object? weight = null,Object? frontUrl = null,Object? showdownUrl = null,Object? types = null,Object? abilities = null,Object? species = null,}) {
  return _then(_Pokemon(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,frontUrl: null == frontUrl ? _self.frontUrl : frontUrl // ignore: cast_nullable_to_non_nullable
as String,showdownUrl: null == showdownUrl ? _self.showdownUrl : showdownUrl // ignore: cast_nullable_to_non_nullable
as String,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<PokemonType>,abilities: null == abilities ? _self._abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<PokemonAbility>,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as PokemonSpecies,
  ));
}

/// Create a copy of Pokemon
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonSpeciesCopyWith<$Res> get species {
  
  return $PokemonSpeciesCopyWith<$Res>(_self.species, (value) {
    return _then(_self.copyWith(species: value));
  });
}
}

// dart format on
