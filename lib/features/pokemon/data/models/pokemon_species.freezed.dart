// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_species.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PokemonSpecies {

 int get genderRate; List<PokemonGenus> get genera; List<PokemonDescription> get descriptions;
/// Create a copy of PokemonSpecies
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonSpeciesCopyWith<PokemonSpecies> get copyWith => _$PokemonSpeciesCopyWithImpl<PokemonSpecies>(this as PokemonSpecies, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonSpecies&&(identical(other.genderRate, genderRate) || other.genderRate == genderRate)&&const DeepCollectionEquality().equals(other.genera, genera)&&const DeepCollectionEquality().equals(other.descriptions, descriptions));
}


@override
int get hashCode => Object.hash(runtimeType,genderRate,const DeepCollectionEquality().hash(genera),const DeepCollectionEquality().hash(descriptions));

@override
String toString() {
  return 'PokemonSpecies(genderRate: $genderRate, genera: $genera, descriptions: $descriptions)';
}


}

/// @nodoc
abstract mixin class $PokemonSpeciesCopyWith<$Res>  {
  factory $PokemonSpeciesCopyWith(PokemonSpecies value, $Res Function(PokemonSpecies) _then) = _$PokemonSpeciesCopyWithImpl;
@useResult
$Res call({
 int genderRate, List<PokemonGenus> genera, List<PokemonDescription> descriptions
});




}
/// @nodoc
class _$PokemonSpeciesCopyWithImpl<$Res>
    implements $PokemonSpeciesCopyWith<$Res> {
  _$PokemonSpeciesCopyWithImpl(this._self, this._then);

  final PokemonSpecies _self;
  final $Res Function(PokemonSpecies) _then;

/// Create a copy of PokemonSpecies
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? genderRate = null,Object? genera = null,Object? descriptions = null,}) {
  return _then(_self.copyWith(
genderRate: null == genderRate ? _self.genderRate : genderRate // ignore: cast_nullable_to_non_nullable
as int,genera: null == genera ? _self.genera : genera // ignore: cast_nullable_to_non_nullable
as List<PokemonGenus>,descriptions: null == descriptions ? _self.descriptions : descriptions // ignore: cast_nullable_to_non_nullable
as List<PokemonDescription>,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonSpecies].
extension PokemonSpeciesPatterns on PokemonSpecies {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonSpecies value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonSpecies() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonSpecies value)  $default,){
final _that = this;
switch (_that) {
case _PokemonSpecies():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonSpecies value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonSpecies() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int genderRate,  List<PokemonGenus> genera,  List<PokemonDescription> descriptions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonSpecies() when $default != null:
return $default(_that.genderRate,_that.genera,_that.descriptions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int genderRate,  List<PokemonGenus> genera,  List<PokemonDescription> descriptions)  $default,) {final _that = this;
switch (_that) {
case _PokemonSpecies():
return $default(_that.genderRate,_that.genera,_that.descriptions);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int genderRate,  List<PokemonGenus> genera,  List<PokemonDescription> descriptions)?  $default,) {final _that = this;
switch (_that) {
case _PokemonSpecies() when $default != null:
return $default(_that.genderRate,_that.genera,_that.descriptions);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonSpecies implements PokemonSpecies {
  const _PokemonSpecies({required this.genderRate, required final  List<PokemonGenus> genera, required final  List<PokemonDescription> descriptions}): _genera = genera,_descriptions = descriptions;
  

@override final  int genderRate;
 final  List<PokemonGenus> _genera;
@override List<PokemonGenus> get genera {
  if (_genera is EqualUnmodifiableListView) return _genera;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genera);
}

 final  List<PokemonDescription> _descriptions;
@override List<PokemonDescription> get descriptions {
  if (_descriptions is EqualUnmodifiableListView) return _descriptions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_descriptions);
}


/// Create a copy of PokemonSpecies
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonSpeciesCopyWith<_PokemonSpecies> get copyWith => __$PokemonSpeciesCopyWithImpl<_PokemonSpecies>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonSpecies&&(identical(other.genderRate, genderRate) || other.genderRate == genderRate)&&const DeepCollectionEquality().equals(other._genera, _genera)&&const DeepCollectionEquality().equals(other._descriptions, _descriptions));
}


@override
int get hashCode => Object.hash(runtimeType,genderRate,const DeepCollectionEquality().hash(_genera),const DeepCollectionEquality().hash(_descriptions));

@override
String toString() {
  return 'PokemonSpecies(genderRate: $genderRate, genera: $genera, descriptions: $descriptions)';
}


}

/// @nodoc
abstract mixin class _$PokemonSpeciesCopyWith<$Res> implements $PokemonSpeciesCopyWith<$Res> {
  factory _$PokemonSpeciesCopyWith(_PokemonSpecies value, $Res Function(_PokemonSpecies) _then) = __$PokemonSpeciesCopyWithImpl;
@override @useResult
$Res call({
 int genderRate, List<PokemonGenus> genera, List<PokemonDescription> descriptions
});




}
/// @nodoc
class __$PokemonSpeciesCopyWithImpl<$Res>
    implements _$PokemonSpeciesCopyWith<$Res> {
  __$PokemonSpeciesCopyWithImpl(this._self, this._then);

  final _PokemonSpecies _self;
  final $Res Function(_PokemonSpecies) _then;

/// Create a copy of PokemonSpecies
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? genderRate = null,Object? genera = null,Object? descriptions = null,}) {
  return _then(_PokemonSpecies(
genderRate: null == genderRate ? _self.genderRate : genderRate // ignore: cast_nullable_to_non_nullable
as int,genera: null == genera ? _self._genera : genera // ignore: cast_nullable_to_non_nullable
as List<PokemonGenus>,descriptions: null == descriptions ? _self._descriptions : descriptions // ignore: cast_nullable_to_non_nullable
as List<PokemonDescription>,
  ));
}


}

// dart format on
