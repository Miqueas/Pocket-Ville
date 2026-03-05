import 'dart:math';

import 'package:cached_network_image_ce/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pocket_ville/core/extensions/gap.dart';
import 'package:pocket_ville/core/extensions/pokemon_type_color.dart';
import 'package:pocket_ville/core/presentation/widgets/favorite_button.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';
import 'package:pocket_ville/features/pokemon/presentation/widgets/pokemon_type_pill.dart';

final class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    required this.pokemon,
    this.onTap,
  });

  final Pokemon pokemon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: onTap,
    child: Container(
      decoration: BoxDecoration(
        color: pokemon.types.first.color.withValues(alpha: .5),
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
                  pokemon.name[0].toUpperCase() + pokemon.name.substring(1),
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
          Flexible(child: Container(
            padding: const .symmetric(vertical: 4, horizontal: 16),
            decoration: BoxDecoration(
              color: pokemon.types.first.color,
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
                      'assets/elements/${pokemon.types.first.name}.svg',
                      fit: .fill,
                      colorFilter: const ColorFilter.mode(
                        Colors.white,
                        .srcIn
                      ),
                    ),
                  ),
                ),
                CachedNetworkImage(imageUrl: pokemon.frontDefaultImageUrl,),
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
          ),),
        ],
      ),
    ),
  );
}