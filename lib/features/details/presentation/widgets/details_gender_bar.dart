import 'package:flutter/material.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';

final class DetailsGenderBar extends StatelessWidget {
  const DetailsGenderBar({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) => ClipRRect(
    borderRadius: BorderRadius.circular(8),
    child: switch (pokemon.species.genderRate) {
      -1 => Container(
        width: .infinity,
        color: const Color(0xFFA0A0A0),
        height: 8,
      ),
      _ => Row(children: [
        Flexible(
          flex: 8 - pokemon.species.genderRate,
          child: Container(
            width: .infinity,
            color: const Color(0xFF2551C3),
            height: 8,
          ),
        ),
        Flexible(
          flex: pokemon.species.genderRate,
          child: Container(
            width: .infinity,
            color: const Color(0xFFFF7596),
            height: 8,
          ),
        ),
      ],),
    },
  );
}