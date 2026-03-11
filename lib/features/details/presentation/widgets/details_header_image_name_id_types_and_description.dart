import 'package:flutter/material.dart';
import 'package:pocket_ville/core/extensions/gap.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/features/details/presentation/widgets/details_header.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';
import 'package:pocket_ville/features/pokemon/presentation/widgets/pokemon_element_pill.dart';

final class DetailsHeaderImageNameIDTypesAndDescription
extends StatelessWidget
{
  const DetailsHeaderImageNameIDTypesAndDescription({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    final localeName = AppLocalizations.of(context)!.localeName;

    return Column(
      crossAxisAlignment: .start,
      mainAxisSize: .min,
      children: [
        DetailsHeader(pokemon: pokemon,),
        16.h,
        Text(
          pokemon.species.genera
            .firstWhere((g) => g.language == localeName)
            .name,
          style: const TextStyle(
            color: Color(0xFF121212),
            fontSize: 32,
            fontWeight: .w500,
          ),
        ),
        Text(
          'Nº${pokemon.id.toString().padLeft(3, '0')}',
          style: const TextStyle(
            color: Color(0xFF424242),
            fontSize: 16,
            fontWeight: .w500,
          ),
          overflow: .ellipsis,
        ),
        24.h,
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: pokemon.types
            .map((t) => PokemonTypePill(type: t,))
            .toList(),
        ),
        24.h,
        Text(
          pokemon.species.descriptions
            .firstWhere((d) =>
              d.language == localeName ||
              d.language.contains(localeName)
            )
            .description
            .replaceAll('\n', ' '),
        ),
        20.h,
        const Divider(color: Color(0xFFE0E0E0),),
        16.h,
      ],
    );
  }
}