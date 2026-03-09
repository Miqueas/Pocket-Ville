import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pocket_ville/core/extensions/gap.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';
import 'package:pocket_ville/features/pokemon/presentation/widgets/pokemon_card_end_section.dart';
import 'package:pocket_ville/features/pokemon/presentation/widgets/pokemon_element_pill.dart';

final class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    required this.pokemon,
    this.onTap,
  });

  final Pokemon pokemon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final localeName = AppLocalizations.of(context)!.localeName;
    final mainElement = pokemon.types.first.element;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        clipBehavior: .antiAlias,
        decoration: BoxDecoration(
          color: mainElement.color.withValues(alpha: .5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Row(
          spacing: 13,
          children: [
            Expanded(child: Padding(
              padding: const .only(left: 16, top: 12, bottom: 12),
              child: Column(
                mainAxisSize: .min,
                crossAxisAlignment: .start,
                children: [
                  Text(
                    'Nº${pokemon.id.toString().padLeft(3, '0')}',
                    style: const TextStyle(
                      color: Color(0xFF424242),
                      fontSize: 12,
                      fontWeight: .w600,
                    ),
                    overflow: .ellipsis,
                  ),
                  Text(
                    pokemon.species.genera
                      .firstWhere((g) => g.language == localeName)
                      .name,
                    style: const TextStyle(
                      color: Color(0xFF121212),
                      fontSize: 21,
                      fontWeight: .w600,
                    ),
                    overflow: .ellipsis,
                  ),
                  4.h,
                  ConstrainedBox(
                    constraints: const BoxConstraints(maxHeight: 36,),
                    child: ListView.separated(
                      itemCount: pokemon.types.length,
                      itemBuilder: (context, index) => PokemonTypePill(
                        type: pokemon.types[index],
                      ),
                      scrollDirection: .horizontal,
                      separatorBuilder: (_, _) => 8.w,
                    ),
                  ),
                ],
              ),
            ),),
            Flexible(child: PokemonCardEndSection(pokemon: pokemon,),),
          ],
        ),
      ),
    );
  }
}