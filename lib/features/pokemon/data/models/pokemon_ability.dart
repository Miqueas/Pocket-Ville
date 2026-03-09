import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon_localization.dart';

part 'pokemon_ability.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class PokemonAbility with _$PokemonAbility {
  const factory PokemonAbility({
    required String name,
    required List<PokemonLocalization> localizations,
  }) = _PokemonAbility;

  factory PokemonAbility.fromJson(Map<String, dynamic> json) => _PokemonAbility(
    name: json['name'],
    localizations: (json['localizations'] as List)
      .map((e) => PokemonLocalization.fromJson(e))
      .toList(),
  );
}