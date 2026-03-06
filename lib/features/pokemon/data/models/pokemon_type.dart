import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocket_ville/core/enums/pokemon_element.dart';

part 'pokemon_type.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class PokemonType with _$PokemonType {
  const factory PokemonType({
    required PokemonElement element,
    required List<PokemonElement> weaknesses,
  }) = _PokemonType;

  factory PokemonType.fromJson(Map<String, dynamic> json) => _PokemonType(
    element: PokemonElement.fromString(json['name']),
    weaknesses: json['weaknesses']
      .map((w) => PokemonElement.fromString(w['attacking_type']['name']))
      .toList()
      .cast<PokemonElement>(),
  );
}