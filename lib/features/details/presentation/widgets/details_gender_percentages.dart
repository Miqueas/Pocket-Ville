import 'package:flutter/material.dart';
import 'package:pocket_ville/core/presentation/widgets/dynamic_svg_asset.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';

final class DetailsGenderPercentages extends StatelessWidget {
  const DetailsGenderPercentages({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) => Row(children: [
    const DynamicSvgAsset(asset: 'assets/icons/male.svg',),
    Text(
      switch (pokemon.species.genderRate) {
        -1 => '0%',
        _ => '${(8 - pokemon.species.genderRate) / 8 * 100}%',
      },
    ),
    const Spacer(),
    Text(
      switch (pokemon.species.genderRate) {
        -1 => '0%',
        _ => '${pokemon.species.genderRate / 8 * 100}%',
      },
    ),
    const DynamicSvgAsset(asset: 'assets/icons/female.svg',),
  ],);
}