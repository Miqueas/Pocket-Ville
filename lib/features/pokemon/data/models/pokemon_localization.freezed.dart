// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_localization.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PokemonLocalization {

 String get name; String get language;
/// Create a copy of PokemonLocalization
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonLocalizationCopyWith<PokemonLocalization> get copyWith => _$PokemonLocalizationCopyWithImpl<PokemonLocalization>(this as PokemonLocalization, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonLocalization&&(identical(other.name, name) || other.name == name)&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,name,language);

@override
String toString() {
  return 'PokemonLocalization(name: $name, language: $language)';
}


}

/// @nodoc
abstract mixin class $PokemonLocalizationCopyWith<$Res>  {
  factory $PokemonLocalizationCopyWith(PokemonLocalization value, $Res Function(PokemonLocalization) _then) = _$PokemonLocalizationCopyWithImpl;
@useResult
$Res call({
 String name, String language
});




}
/// @nodoc
class _$PokemonLocalizationCopyWithImpl<$Res>
    implements $PokemonLocalizationCopyWith<$Res> {
  _$PokemonLocalizationCopyWithImpl(this._self, this._then);

  final PokemonLocalization _self;
  final $Res Function(PokemonLocalization) _then;

/// Create a copy of PokemonLocalization
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? language = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonLocalization].
extension PokemonLocalizationPatterns on PokemonLocalization {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonLocalization value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonLocalization() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonLocalization value)  $default,){
final _that = this;
switch (_that) {
case _PokemonLocalization():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonLocalization value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonLocalization() when $default != null:
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
case _PokemonLocalization() when $default != null:
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
case _PokemonLocalization():
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
case _PokemonLocalization() when $default != null:
return $default(_that.name,_that.language);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonLocalization implements PokemonLocalization {
  const _PokemonLocalization({required this.name, required this.language});
  

@override final  String name;
@override final  String language;

/// Create a copy of PokemonLocalization
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonLocalizationCopyWith<_PokemonLocalization> get copyWith => __$PokemonLocalizationCopyWithImpl<_PokemonLocalization>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonLocalization&&(identical(other.name, name) || other.name == name)&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,name,language);

@override
String toString() {
  return 'PokemonLocalization(name: $name, language: $language)';
}


}

/// @nodoc
abstract mixin class _$PokemonLocalizationCopyWith<$Res> implements $PokemonLocalizationCopyWith<$Res> {
  factory _$PokemonLocalizationCopyWith(_PokemonLocalization value, $Res Function(_PokemonLocalization) _then) = __$PokemonLocalizationCopyWithImpl;
@override @useResult
$Res call({
 String name, String language
});




}
/// @nodoc
class __$PokemonLocalizationCopyWithImpl<$Res>
    implements _$PokemonLocalizationCopyWith<$Res> {
  __$PokemonLocalizationCopyWithImpl(this._self, this._then);

  final _PokemonLocalization _self;
  final $Res Function(_PokemonLocalization) _then;

/// Create a copy of PokemonLocalization
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? language = null,}) {
  return _then(_PokemonLocalization(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
