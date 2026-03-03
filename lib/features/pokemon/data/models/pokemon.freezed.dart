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

 int get id; String get name; double get height; double get weight; String get showdownImageUrl; String get frontDefaultImageUrl; List<PokemonType> get types;
/// Create a copy of Pokemon
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonCopyWith<Pokemon> get copyWith => _$PokemonCopyWithImpl<Pokemon>(this as Pokemon, _$identity);

  /// Serializes this Pokemon to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Pokemon&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.showdownImageUrl, showdownImageUrl) || other.showdownImageUrl == showdownImageUrl)&&(identical(other.frontDefaultImageUrl, frontDefaultImageUrl) || other.frontDefaultImageUrl == frontDefaultImageUrl)&&const DeepCollectionEquality().equals(other.types, types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,height,weight,showdownImageUrl,frontDefaultImageUrl,const DeepCollectionEquality().hash(types));

@override
String toString() {
  return 'Pokemon(id: $id, name: $name, height: $height, weight: $weight, showdownImageUrl: $showdownImageUrl, frontDefaultImageUrl: $frontDefaultImageUrl, types: $types)';
}


}

/// @nodoc
abstract mixin class $PokemonCopyWith<$Res>  {
  factory $PokemonCopyWith(Pokemon value, $Res Function(Pokemon) _then) = _$PokemonCopyWithImpl;
@useResult
$Res call({
 int id, String name, double height, double weight, String showdownImageUrl, String frontDefaultImageUrl, List<PokemonType> types
});




}
/// @nodoc
class _$PokemonCopyWithImpl<$Res>
    implements $PokemonCopyWith<$Res> {
  _$PokemonCopyWithImpl(this._self, this._then);

  final Pokemon _self;
  final $Res Function(Pokemon) _then;

/// Create a copy of Pokemon
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? height = null,Object? weight = null,Object? showdownImageUrl = null,Object? frontDefaultImageUrl = null,Object? types = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,showdownImageUrl: null == showdownImageUrl ? _self.showdownImageUrl : showdownImageUrl // ignore: cast_nullable_to_non_nullable
as String,frontDefaultImageUrl: null == frontDefaultImageUrl ? _self.frontDefaultImageUrl : frontDefaultImageUrl // ignore: cast_nullable_to_non_nullable
as String,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<PokemonType>,
  ));
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  double height,  double weight,  String showdownImageUrl,  String frontDefaultImageUrl,  List<PokemonType> types)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Pokemon() when $default != null:
return $default(_that.id,_that.name,_that.height,_that.weight,_that.showdownImageUrl,_that.frontDefaultImageUrl,_that.types);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  double height,  double weight,  String showdownImageUrl,  String frontDefaultImageUrl,  List<PokemonType> types)  $default,) {final _that = this;
switch (_that) {
case _Pokemon():
return $default(_that.id,_that.name,_that.height,_that.weight,_that.showdownImageUrl,_that.frontDefaultImageUrl,_that.types);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  double height,  double weight,  String showdownImageUrl,  String frontDefaultImageUrl,  List<PokemonType> types)?  $default,) {final _that = this;
switch (_that) {
case _Pokemon() when $default != null:
return $default(_that.id,_that.name,_that.height,_that.weight,_that.showdownImageUrl,_that.frontDefaultImageUrl,_that.types);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(createFactory: false)

class _Pokemon implements Pokemon {
  const _Pokemon({required this.id, required this.name, required this.height, required this.weight, required this.showdownImageUrl, required this.frontDefaultImageUrl, required final  List<PokemonType> types}): _types = types;
  

@override final  int id;
@override final  String name;
@override final  double height;
@override final  double weight;
@override final  String showdownImageUrl;
@override final  String frontDefaultImageUrl;
 final  List<PokemonType> _types;
@override List<PokemonType> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}


/// Create a copy of Pokemon
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonCopyWith<_Pokemon> get copyWith => __$PokemonCopyWithImpl<_Pokemon>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Pokemon&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&(identical(other.showdownImageUrl, showdownImageUrl) || other.showdownImageUrl == showdownImageUrl)&&(identical(other.frontDefaultImageUrl, frontDefaultImageUrl) || other.frontDefaultImageUrl == frontDefaultImageUrl)&&const DeepCollectionEquality().equals(other._types, _types));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,height,weight,showdownImageUrl,frontDefaultImageUrl,const DeepCollectionEquality().hash(_types));

@override
String toString() {
  return 'Pokemon(id: $id, name: $name, height: $height, weight: $weight, showdownImageUrl: $showdownImageUrl, frontDefaultImageUrl: $frontDefaultImageUrl, types: $types)';
}


}

/// @nodoc
abstract mixin class _$PokemonCopyWith<$Res> implements $PokemonCopyWith<$Res> {
  factory _$PokemonCopyWith(_Pokemon value, $Res Function(_Pokemon) _then) = __$PokemonCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, double height, double weight, String showdownImageUrl, String frontDefaultImageUrl, List<PokemonType> types
});




}
/// @nodoc
class __$PokemonCopyWithImpl<$Res>
    implements _$PokemonCopyWith<$Res> {
  __$PokemonCopyWithImpl(this._self, this._then);

  final _Pokemon _self;
  final $Res Function(_Pokemon) _then;

/// Create a copy of Pokemon
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? height = null,Object? weight = null,Object? showdownImageUrl = null,Object? frontDefaultImageUrl = null,Object? types = null,}) {
  return _then(_Pokemon(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as double,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as double,showdownImageUrl: null == showdownImageUrl ? _self.showdownImageUrl : showdownImageUrl // ignore: cast_nullable_to_non_nullable
as String,frontDefaultImageUrl: null == frontDefaultImageUrl ? _self.frontDefaultImageUrl : frontDefaultImageUrl // ignore: cast_nullable_to_non_nullable
as String,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<PokemonType>,
  ));
}


}

// dart format on
