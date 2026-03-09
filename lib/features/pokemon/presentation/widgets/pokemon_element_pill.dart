import 'package:flutter/material.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/core/presentation/widgets/dynamic_svg_asset.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon_type.dart';

final class PokemonTypePill extends StatelessWidget {
  const PokemonTypePill({
    super.key,
    required this.type,
  });

  final PokemonType type;

  @override
  Widget build(BuildContext context) {
    final localeName = AppLocalizations.of(context)!.localeName;

    return Container(
      padding: const EdgeInsets.all(6).copyWith(right: 12,),
      decoration: BoxDecoration(
        color: type.element.color,
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
              asset: 'assets/icons/${type.element.name}.svg',
              replacements: { RegExp(r'#FAFAFA'): type.element.color, },
            ),
          ),
          Text(
            type.localizations.firstWhere((l) => l.language == localeName).name,
            style: TextStyle(
              // Ensures to use the right text color based on the background color
              color: switch (type.element.color.computeLuminance() < .5) {
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
}