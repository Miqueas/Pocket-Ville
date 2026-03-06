import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_description.freezed.dart';

@Freezed(fromJson: false, toJson: false)
abstract class PokemonDescription with _$PokemonDescription {
  const factory PokemonDescription({
    required int versionId,
    required String description,
    required String language,
  }) = _PokemonDescription;

  factory PokemonDescription.fromJson(Map<String, dynamic> json) {
    return _PokemonDescription(
      versionId: json['version_id'],
      description: json['flavor_text'],
      language: json['language']['name'],
    );
  }
}