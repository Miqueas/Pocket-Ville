import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_genus.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class PokemonGenus with _$PokemonGenus {
  const factory PokemonGenus({
    required String name,
    required String genus,
    required String language,
  }) = _PokemonGenus;

  factory PokemonGenus.fromJson(Map<String, dynamic> json) => _PokemonGenus(
    name: json['name'],
    genus: json['genus'],
    language: json['language']['name'],
  );
}