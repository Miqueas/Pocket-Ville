import 'package:cached_network_image_ce/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pocket_ville/core/extensions/pokemon_element_color.dart';
import 'package:pocket_ville/features/details/presentation/painters/details_element_background_painter.dart';
import 'package:pocket_ville/features/details/presentation/widgets/details_header_favorite_button.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';

final class DetailsHeader extends StatelessWidget {
  const DetailsHeader({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    final mainElement = pokemon.types.first.element;
    // That `32` at the end is because of the screen padding
    final screenWidth = MediaQuery.sizeOf(context).width - 32;
    final elementColor = mainElement.color;

    return SizedBox(
      width: screenWidth,
      height: screenWidth * .9,
      child: Stack(
        clipBehavior: .none,
        alignment: .center,
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: screenWidth * .4,
            child: CustomPaint(
              painter: DetailsElementBackgroundPainter(elementColor),
            ),
          ),
          Positioned(
            top: 0,
            width: 280,
            child: ShaderMask(
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
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    .srcIn
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: CachedNetworkImage(
              fit: .contain,
              width: (pokemon.height * 200).clamp(0, 260),
              imageUrl: pokemon.showdownUrl,
              filterQuality: .none,
              fadeInDuration: const Duration(milliseconds: 300,),
              fadeOutDuration: const Duration(milliseconds: 300,),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Row(children: [
              GestureDetector(
                behavior: .opaque,
                onTap: Navigator.of(context).pop,
                child: Padding(
                  padding: const .symmetric(horizontal: 8),
                  child: Icon(
                    Icons.chevron_left_rounded,
                    size: 32,
                    color: switch (elementColor.computeLuminance() < .5) {
                      true => Colors.white,
                      false => null,
                    },
                  ),
                ),
              ),
              const Spacer(),
              DetailsHeaderFavoriteButton(pokemon: pokemon,),
            ],),
          ),
        ],
      ),
    );
  }
}