import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocket_ville/core/extensions/pokemon_element_color.dart';
import 'package:pocket_ville/features/favorites/presentation/providers/favorites_provider.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';

final class DetailsHeaderFavoriteButton extends ConsumerWidget {
  const DetailsHeaderFavoriteButton({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorites = ref.watch(favoritesProvider);
    final mainElement = pokemon.types.first.element;
    final elementColor = mainElement.color;

    return GestureDetector(
      behavior: .opaque,
      onTap: () {
        ref.read(favoritesProvider.notifier).toggle(pokemon.id);
      },
      child: Padding(
        padding: const .symmetric(horizontal: 8),
        child: Icon(
          switch (favorites) {
            AsyncValue(:final value?) when value.contains(pokemon.id)
              => Icons.favorite_rounded,
            _ => Icons.favorite_outline_rounded,
          },
          size: 32,
          color: switch (favorites) {
            AsyncValue(:final value?) when value.contains(pokemon.id)
              => Colors.red,
            _ => switch (elementColor.computeLuminance() < .5) {
              true => Colors.white,
              false => null,
            },
          },
        ),
      ),
    );
  }
}