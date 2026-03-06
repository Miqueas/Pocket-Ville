// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_ability_localization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PokemonAbilityLocalization {

 String get name; String get language;
/// Create a copy of PokemonAbilityLocalization
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonAbilityLocalizationCopyWith<PokemonAbilityLocalization> get copyWith => _$PokemonAbilityLocalizationCopyWithImpl<PokemonAbilityLocalization>(this as PokemonAbilityLocalization, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonAbilityLocalization&&(identical(other.name, name) || other.name == name)&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,name,language);

@override
String toString() {
  return 'PokemonAbilityLocalization(name: $name, language: $language)';
}


}

/// @nodoc
abstract mixin class $PokemonAbilityLocalizationCopyWith<$Res>  {
  factory $PokemonAbilityLocalizationCopyWith(PokemonAbilityLocalization value, $Res Function(PokemonAbilityLocalization) _then) = _$PokemonAbilityLocalizationCopyWithImpl;
@useResult
$Res call({
 String name, String language
});




}
/// @nodoc
class _$PokemonAbilityLocalizationCopyWithImpl<$Res>
    implements $PokemonAbilityLocalizationCopyWith<$Res> {
  _$PokemonAbilityLocalizationCopyWithImpl(this._self, this._then);

  final PokemonAbilityLocalization _self;
  final $Res Function(PokemonAbilityLocalization) _then;

/// Create a copy of PokemonAbilityLocalization
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? language = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonAbilityLocalization].
extension PokemonAbilityLocalizationPatterns on PokemonAbilityLocalization {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonAbilityLocalization value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonAbilityLocalization() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonAbilityLocalization value)  $default,){
final _that = this;
switch (_that) {
case _PokemonAbilityLocalization():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonAbilityLocalization value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonAbilityLocalization() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String language)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonAbilityLocalization() when $default != null:
return $default(_that.name,_that.language);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String language)  $default,) {final _that = this;
switch (_that) {
case _PokemonAbilityLocalization():
return $default(_that.name,_that.language);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String language)?  $default,) {final _that = this;
switch (_that) {
case _PokemonAbilityLocalization() when $default != null:
return $default(_that.name,_that.language);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonAbilityLocalization implements PokemonAbilityLocalization {
  const _PokemonAbilityLocalization({required this.name, required this.language});
  

@override final  String name;
@override final  String language;

/// Create a copy of PokemonAbilityLocalization
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonAbilityLocalizationCopyWith<_PokemonAbilityLocalization> get copyWith => __$PokemonAbilityLocalizationCopyWithImpl<_PokemonAbilityLocalization>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonAbilityLocalization&&(identical(other.name, name) || other.name == name)&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,name,language);

@override
String toString() {
  return 'PokemonAbilityLocalization(name: $name, language: $language)';
}


}

/// @nodoc
abstract mixin class _$PokemonAbilityLocalizationCopyWith<$Res> implements $PokemonAbilityLocalizationCopyWith<$Res> {
  factory _$PokemonAbilityLocalizationCopyWith(_PokemonAbilityLocalization value, $Res Function(_PokemonAbilityLocalization) _then) = __$PokemonAbilityLocalizationCopyWithImpl;
@override @useResult
$Res call({
 String name, String language
});




}
/// @nodoc
class __$PokemonAbilityLocalizationCopyWithImpl<$Res>
    implements _$PokemonAbilityLocalizationCopyWith<$Res> {
  __$PokemonAbilityLocalizationCopyWithImpl(this._self, this._then);

  final _PokemonAbilityLocalization _self;
  final $Res Function(_PokemonAbilityLocalization) _then;

/// Create a copy of PokemonAbilityLocalization
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? language = null,}) {
  return _then(_PokemonAbilityLocalization(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
