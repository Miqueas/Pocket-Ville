// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_description.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PokemonDescription {

 int get versionId; String get description; String get language;
/// Create a copy of PokemonDescription
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonDescriptionCopyWith<PokemonDescription> get copyWith => _$PokemonDescriptionCopyWithImpl<PokemonDescription>(this as PokemonDescription, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonDescription&&(identical(other.versionId, versionId) || other.versionId == versionId)&&(identical(other.description, description) || other.description == description)&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,versionId,description,language);

@override
String toString() {
  return 'PokemonDescription(versionId: $versionId, description: $description, language: $language)';
}


}

/// @nodoc
abstract mixin class $PokemonDescriptionCopyWith<$Res>  {
  factory $PokemonDescriptionCopyWith(PokemonDescription value, $Res Function(PokemonDescription) _then) = _$PokemonDescriptionCopyWithImpl;
@useResult
$Res call({
 int versionId, String description, String language
});




}
/// @nodoc
class _$PokemonDescriptionCopyWithImpl<$Res>
    implements $PokemonDescriptionCopyWith<$Res> {
  _$PokemonDescriptionCopyWithImpl(this._self, this._then);

  final PokemonDescription _self;
  final $Res Function(PokemonDescription) _then;

/// Create a copy of PokemonDescription
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? versionId = null,Object? description = null,Object? language = null,}) {
  return _then(_self.copyWith(
versionId: null == versionId ? _self.versionId : versionId // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonDescription].
extension PokemonDescriptionPatterns on PokemonDescription {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonDescription value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonDescription() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonDescription value)  $default,){
final _that = this;
switch (_that) {
case _PokemonDescription():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonDescription value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonDescription() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int versionId,  String description,  String language)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonDescription() when $default != null:
return $default(_that.versionId,_that.description,_that.language);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int versionId,  String description,  String language)  $default,) {final _that = this;
switch (_that) {
case _PokemonDescription():
return $default(_that.versionId,_that.description,_that.language);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int versionId,  String description,  String language)?  $default,) {final _that = this;
switch (_that) {
case _PokemonDescription() when $default != null:
return $default(_that.versionId,_that.description,_that.language);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonDescription implements PokemonDescription {
  const _PokemonDescription({required this.versionId, required this.description, required this.language});
  

@override final  int versionId;
@override final  String description;
@override final  String language;

/// Create a copy of PokemonDescription
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonDescriptionCopyWith<_PokemonDescription> get copyWith => __$PokemonDescriptionCopyWithImpl<_PokemonDescription>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonDescription&&(identical(other.versionId, versionId) || other.versionId == versionId)&&(identical(other.description, description) || other.description == description)&&(identical(other.language, language) || other.language == language));
}


@override
int get hashCode => Object.hash(runtimeType,versionId,description,language);

@override
String toString() {
  return 'PokemonDescription(versionId: $versionId, description: $description, language: $language)';
}


}

/// @nodoc
abstract mixin class _$PokemonDescriptionCopyWith<$Res> implements $PokemonDescriptionCopyWith<$Res> {
  factory _$PokemonDescriptionCopyWith(_PokemonDescription value, $Res Function(_PokemonDescription) _then) = __$PokemonDescriptionCopyWithImpl;
@override @useResult
$Res call({
 int versionId, String description, String language
});




}
/// @nodoc
class __$PokemonDescriptionCopyWithImpl<$Res>
    implements _$PokemonDescriptionCopyWith<$Res> {
  __$PokemonDescriptionCopyWithImpl(this._self, this._then);

  final _PokemonDescription _self;
  final $Res Function(_PokemonDescription) _then;

/// Create a copy of PokemonDescription
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? versionId = null,Object? description = null,Object? language = null,}) {
  return _then(_PokemonDescription(
versionId: null == versionId ? _self.versionId : versionId // ignore: cast_nullable_to_non_nullable
as int,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
