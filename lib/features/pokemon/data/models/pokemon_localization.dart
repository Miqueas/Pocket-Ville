import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_localization.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class PokemonLocalization with _$PokemonLocalization {
  const factory PokemonLocalization({
    required String name,
    required String language,
  }) = _PokemonLocalization;

  factory PokemonLocalization.fromJson(Map<String, dynamic> json) {
    return _PokemonLocalization(
      name: json['name'],
      language: json['language']['name'],
    );
  }
}