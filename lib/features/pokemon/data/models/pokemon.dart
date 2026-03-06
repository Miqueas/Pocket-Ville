import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon_ability.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon_species.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon_type.dart';

part 'pokemon.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class Pokemon with _$Pokemon {
  const factory Pokemon({
    required int id,
    required String name,
    required double height,
    required double weight,
    required String frontUrl,
    required String showdownUrl,
    required List<PokemonType> types,
    required List<PokemonAbility> abilities,
    required PokemonSpecies species,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) => _Pokemon(
    id: json['id'],
    name: json['name'],
    height: json['height'] / 10,
    weight: json['weight'] / 10,
    frontUrl: json['sprites'][0]['front'],
    showdownUrl: json['sprites'][0]['showdown'],
    types: json['types']
      .map((t) => PokemonType.fromJson(t['type']))
      .toList()
      .cast<PokemonType>(),
    abilities: json['abilities']
      .map((a) => PokemonAbility.fromJson(a['ability']))
      .toList()
      .cast<PokemonAbility>(),
    species: PokemonSpecies.fromJson(json['species']),
  );
}