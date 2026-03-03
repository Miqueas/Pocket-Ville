import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocket_ville/core/enums/pokemon_type.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@Freezed(fromJson: false, toJson: false)
abstract class Pokemon with _$Pokemon {
  const factory Pokemon({
    required int id,
    required String name,
    required double height,
    required double weight,
    required String showdownImageUrl,
    required String frontDefaultImageUrl,
    required List<PokemonType> types,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) => _Pokemon(
    id: json['id'],
    name: json['name'],
    height: json['height'] / 10,
    weight: json['weight'] / 10,
    showdownImageUrl: json['sprites']['other']['showdown']['front_default'],
    frontDefaultImageUrl: json['sprites']['front_default'],
    types: json['types']
      .map((t) => PokemonType.fromString(t['type']['name']))
      .toList()
      .cast<PokemonType>(),
  );
}