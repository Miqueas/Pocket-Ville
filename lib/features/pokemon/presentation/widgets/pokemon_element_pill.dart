import 'package:flutter/material.dart';
import 'package:pocket_ville/core/enums/pokemon_element.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/core/presentation/widgets/dynamic_svg_asset.dart';

final class PokemonElementPill extends StatelessWidget {
  const PokemonElementPill({
    super.key,
    required this.element,
  });

  final PokemonElement element;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(6).copyWith(right: 12,),
    decoration: BoxDecoration(
      color: element.color,
      borderRadius: BorderRadius.circular(32),
    ),
    child: Row(
      spacing: 6,
      mainAxisSize: .min,
      children: [
        Container(
          padding: const .all(4),
          decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
          ),
          child: DynamicSvgAsset(
            asset: 'assets/icons/${element.name}.svg',
            replacements: { RegExp(r'#FAFAFA'): element.color, },
          ),
        ),
        Text(
          AppLocalizations.of(context)!.pokemonType(element.name),
          style: TextStyle(
            // Ensures to use the right text color based on the background color
            color: switch (element.color.computeLuminance() < .5) {
              true => Colors.white,
              false => const Color(0xFF121212),
            },
            fontSize: 12,
            fontWeight: .w500,
          ),
        ),
      ],
    ),
  );
}