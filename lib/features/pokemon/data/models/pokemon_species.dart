
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon_description.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon_genus.dart';

part 'pokemon_species.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class PokemonSpecies with _$PokemonSpecies {
  const factory PokemonSpecies({
    required int genderRate,
    required List<PokemonGenus> genera,
    required List<PokemonDescription> descriptions,
  }) = _PokemonSpecies;

  factory PokemonSpecies.fromJson(Map<String, dynamic> json) => _PokemonSpecies(
    genderRate: json['gender_rate'],
    genera: List<Map<String, dynamic>>.from(json['genera'])
      .map((genus) => PokemonGenus.fromJson(genus))
      .toList(),
    descriptions: List<Map<String, dynamic>>.from(json['descriptions'])
      .map((description) => PokemonDescription.fromJson(description))
      .toList(),
  );
}