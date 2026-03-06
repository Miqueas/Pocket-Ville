// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_genus.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PokemonGenus {

 String get name; String get genus; String get language;
/// Create a copy of PokemonGenus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonGenusCopyWith<PokemonGenus> get copyWith => _$PokemonGenusCopyWithImpl<PokemonGenus>(this as PokemonGenus, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonGenus&&(identical(other.name, name) || other.name == name)&&(identical(other.genus, genus) || other.genus == genus)&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,name,genus,language);

@override
String toString() {
  return 'PokemonGenus(name: $name, genus: $genus, language: $language)';
}


}

/// @nodoc
abstract mixin class $PokemonGenusCopyWith<$Res>  {
  factory $PokemonGenusCopyWith(PokemonGenus value, $Res Function(PokemonGenus) _then) = _$PokemonGenusCopyWithImpl;
@useResult
$Res call({
 String name, String genus, String language
});




}
/// @nodoc
class _$PokemonGenusCopyWithImpl<$Res>
    implements $PokemonGenusCopyWith<$Res> {
  _$PokemonGenusCopyWithImpl(this._self, this._then);

  final PokemonGenus _self;
  final $Res Function(PokemonGenus) _then;

/// Create a copy of PokemonGenus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? genus = null,Object? language = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,genus: null == genus ? _self.genus : genus // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonGenus].
extension PokemonGenusPatterns on PokemonGenus {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonGenus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonGenus() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonGenus value)  $default,){
final _that = this;
switch (_that) {
case _PokemonGenus():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonGenus value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonGenus() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String genus,  String language)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonGenus() when $default != null:
return $default(_that.name,_that.genus,_that.language);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String genus,  String language)  $default,) {final _that = this;
switch (_that) {
case _PokemonGenus():
return $default(_that.name,_that.genus,_that.language);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String genus,  String language)?  $default,) {final _that = this;
switch (_that) {
case _PokemonGenus() when $default != null:
return $default(_that.name,_that.genus,_that.language);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonGenus implements PokemonGenus {
  const _PokemonGenus({required this.name, required this.genus, required this.language});
  

@override final  String name;
@override final  String genus;
@override final  String language;

/// Create a copy of PokemonGenus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonGenusCopyWith<_PokemonGenus> get copyWith => __$PokemonGenusCopyWithImpl<_PokemonGenus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonGenus&&(identical(other.name, name) || other.name == name)&&(identical(other.genus, genus) || other.genus == genus)&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,name,genus,language);

@override
String toString() {
  return 'PokemonGenus(name: $name, genus: $genus, language: $language)';
}


}

/// @nodoc
abstract mixin class _$PokemonGenusCopyWith<$Res> implements $PokemonGenusCopyWith<$Res> {
  factory _$PokemonGenusCopyWith(_PokemonGenus value, $Res Function(_PokemonGenus) _then) = __$PokemonGenusCopyWithImpl;
@override @useResult
$Res call({
 String name, String genus, String language
});




}
/// @nodoc
class __$PokemonGenusCopyWithImpl<$Res>
    implements _$PokemonGenusCopyWith<$Res> {
  __$PokemonGenusCopyWithImpl(this._self, this._then);

  final _PokemonGenus _self;
  final $Res Function(_PokemonGenus) _then;

/// Create a copy of PokemonGenus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? genus = null,Object? language = null,}) {
  return _then(_PokemonGenus(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,genus: null == genus ? _self.genus : genus // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
