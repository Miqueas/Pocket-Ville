import 'package:cached_network_image_ce/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pocket_ville/core/extensions/pokemon_element_color.dart';
import 'package:pocket_ville/features/favorites/presentation/providers/favorites_provider.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';
import 'package:pocket_ville/features/pokemon/presentation/widgets/pokemon_card_favorite_button.dart';

final class PokemonCardEndSection extends ConsumerWidget {
  const PokemonCardEndSection({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favorites = ref.watch(favoritesProvider);
    final mainElement = pokemon.types.first.element;

    return Container(
      padding: const .symmetric(vertical: 4, horizontal: 16),
      decoration: BoxDecoration(
        color: mainElement.color,
        borderRadius: .circular(16)
      ),
      child: Stack(
        alignment: .center,
        clipBehavior: .none,
        children: [
          ShaderMask(
            blendMode: .dstIn,
            shaderCallback: (bounds) => const LinearGradient(
              colors: [ Colors.white, Colors.transparent, ],
              begin: .topLeft,
              end: .bottomRight,
            ).createShader(bounds),
            child: AspectRatio(
              aspectRatio: 1.2,
              child: SvgPicture.asset(
                'assets/elements/${mainElement.name}.svg',
                fit: .fill,
                colorFilter: const ColorFilter.mode(
                  Colors.white,
                  .srcIn
                ),
              ),
            ),
          ),
          CachedNetworkImage(imageUrl: pokemon.frontUrl,),
          Positioned(
            top: 2,
            right: -10,
            child: PokemonCardFavoriteButton(
              favorited: switch (favorites) {
                AsyncValue(:final value?) => value.contains(pokemon.id),
                _ => false,
              },
              onPressed: () {
                ref.read(favoritesProvider.notifier).toggle(pokemon.id);
              },
            ),
          ),
        ],
      ),
    );
  }
}