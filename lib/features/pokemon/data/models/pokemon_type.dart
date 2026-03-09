import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocket_ville/core/enums/pokemon_element.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon_localization.dart';

part 'pokemon_type.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class PokemonType with _$PokemonType {
  const factory PokemonType({
    required PokemonElement element,
    required List<PokemonType> weaknesses,
    required List<PokemonLocalization> localizations,
  }) = _PokemonType;

  factory PokemonType.fromJson(Map<String, dynamic> json) => _PokemonType(
    element: PokemonElement.fromString(json['name']),
    weaknesses: switch (json['weaknesses']) {
      List weaknesses => weaknesses
        .map((w) => PokemonType.fromJson(w['attacking_type']))
        .toList()
        .cast<PokemonType>(),
      _ => const [],
    },
    localizations: (json['localizations'] as List)
      .map((e) => PokemonLocalization.fromJson(e))
      .toList(),
  );
}