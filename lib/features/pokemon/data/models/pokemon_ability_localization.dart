import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_ability_localization.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class PokemonAbilityLocalization with _$PokemonAbilityLocalization {
  const factory PokemonAbilityLocalization({
    required String name,
    required String language,
  }) = _PokemonAbilityLocalization;

  factory PokemonAbilityLocalization.fromJson(Map<String, dynamic> json) {
    return _PokemonAbilityLocalization(
      name: json['name'],
      language: json['language']['name'],
    );
  }
}