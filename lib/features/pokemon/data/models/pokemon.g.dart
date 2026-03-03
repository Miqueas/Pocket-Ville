// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$PokemonToJson(_Pokemon instance) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'height': instance.height,
  'weight': instance.weight,
  'showdownImageUrl': instance.showdownImageUrl,
  'frontDefaultImageUrl': instance.frontDefaultImageUrl,
  'types': instance.types.map((e) => _$PokemonTypeEnumMap[e]!).toList(),
};

const _$PokemonTypeEnumMap = {
  PokemonType.bug: 'bug',
  PokemonType.dark: 'dark',
  PokemonType.dragon: 'dragon',
  PokemonType.electric: 'electric',
  PokemonType.fairy: 'fairy',
  PokemonType.fighting: 'fighting',
  PokemonType.fire: 'fire',
  PokemonType.flying: 'flying',
  PokemonType.ghost: 'ghost',
  PokemonType.grass: 'grass',
  PokemonType.ground: 'ground',
  PokemonType.ice: 'ice',
  PokemonType.normal: 'normal',
  PokemonType.poison: 'poison',
  PokemonType.psychic: 'psychic',
  PokemonType.rock: 'rock',
  PokemonType.steel: 'steel',
  PokemonType.water: 'water',
};
