import 'package:cached_network_image_ce/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pocket_ville/core/extensions/pokemon_element_color.dart';
import 'package:pocket_ville/core/presentation/widgets/favorite_button.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';

final class PokemonCardEndSection extends StatelessWidget {
  const PokemonCardEndSection({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
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
            child: FavoriteButton(
              favorited: false,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}