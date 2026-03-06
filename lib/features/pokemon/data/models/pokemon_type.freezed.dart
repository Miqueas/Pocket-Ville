// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PokemonType {

 PokemonElement get element; List<PokemonElement> get weaknesses;
/// Create a copy of PokemonType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonTypeCopyWith<PokemonType> get copyWith => _$PokemonTypeCopyWithImpl<PokemonType>(this as PokemonType, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonType&&(identical(other.element, element) || other.element == element)&&const DeepCollectionEquality().equals(other.weaknesses, weaknesses));
}


@override
int get hashCode => Object.hash(runtimeType,element,const DeepCollectionEquality().hash(weaknesses));

@override
String toString() {
  return 'PokemonType(element: $element, weaknesses: $weaknesses)';
}


}

/// @nodoc
abstract mixin class $PokemonTypeCopyWith<$Res>  {
  factory $PokemonTypeCopyWith(PokemonType value, $Res Function(PokemonType) _then) = _$PokemonTypeCopyWithImpl;
@useResult
$Res call({
 PokemonElement element, List<PokemonElement> weaknesses
});




}
/// @nodoc
class _$PokemonTypeCopyWithImpl<$Res>
    implements $PokemonTypeCopyWith<$Res> {
  _$PokemonTypeCopyWithImpl(this._self, this._then);

  final PokemonType _self;
  final $Res Function(PokemonType) _then;

/// Create a copy of PokemonType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? element = null,Object? weaknesses = null,}) {
  return _then(_self.copyWith(
element: null == element ? _self.element : element // ignore: cast_nullable_to_non_nullable
as PokemonElement,weaknesses: null == weaknesses ? _self.weaknesses : weaknesses // ignore: cast_nullable_to_non_nullable
as List<PokemonElement>,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonType].
extension PokemonTypePatterns on PokemonType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonType value)  $default,){
final _that = this;
switch (_that) {
case _PokemonType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonType value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PokemonElement element,  List<PokemonElement> weaknesses)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonType() when $default != null:
return $default(_that.element,_that.weaknesses);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PokemonElement element,  List<PokemonElement> weaknesses)  $default,) {final _that = this;
switch (_that) {
case _PokemonType():
return $default(_that.element,_that.weaknesses);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PokemonElement element,  List<PokemonElement> weaknesses)?  $default,) {final _that = this;
switch (_that) {
case _PokemonType() when $default != null:
return $default(_that.element,_that.weaknesses);case _:
  return null;

}
}

}

/// @nodoc


class _PokemonType implements PokemonType {
  const _PokemonType({required this.element, required final  List<PokemonElement> weaknesses}): _weaknesses = weaknesses;
  

@override final  PokemonElement element;
 final  List<PokemonElement> _weaknesses;
@override List<PokemonElement> get weaknesses {
  if (_weaknesses is EqualUnmodifiableListView) return _weaknesses;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weaknesses);
}


/// Create a copy of PokemonType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonTypeCopyWith<_PokemonType> get copyWith => __$PokemonTypeCopyWithImpl<_PokemonType>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonType&&(identical(other.element, element) || other.element == element)&&const DeepCollectionEquality().equals(other._weaknesses, _weaknesses));
}


@override
int get hashCode => Object.hash(runtimeType,element,const DeepCollectionEquality().hash(_weaknesses));

@override
String toString() {
  return 'PokemonType(element: $element, weaknesses: $weaknesses)';
}


}

/// @nodoc
abstract mixin class _$PokemonTypeCopyWith<$Res> implements $PokemonTypeCopyWith<$Res> {
  factory _$PokemonTypeCopyWith(_PokemonType value, $Res Function(_PokemonType) _then) = __$PokemonTypeCopyWithImpl;
@override @useResult
$Res call({
 PokemonElement element, List<PokemonElement> weaknesses
});




}
/// @nodoc
class __$PokemonTypeCopyWithImpl<$Res>
    implements _$PokemonTypeCopyWith<$Res> {
  __$PokemonTypeCopyWithImpl(this._self, this._then);

  final _PokemonType _self;
  final $Res Function(_PokemonType) _then;

/// Create a copy of PokemonType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? element = null,Object? weaknesses = null,}) {
  return _then(_PokemonType(
element: null == element ? _self.element : element // ignore: cast_nullable_to_non_nullable
as PokemonElement,weaknesses: null == weaknesses ? _self._weaknesses : weaknesses // ignore: cast_nullable_to_non_nullable
as List<PokemonElement>,
  ));
}


}

// dart format on
