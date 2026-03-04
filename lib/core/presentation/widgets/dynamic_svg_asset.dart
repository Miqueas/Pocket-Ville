import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pocket_ville/core/extensions/integer.dart';

// A widget intended to load SVG assets and change their colors on the fly by
// using the given [replacements] map, where the key is a [RegExp] to match the
// color code in the SVG file, and the value is the [Color] to replace it with.
// This is particularly useful because:
//   1. No need to create multiple SVG files
//   2. No need to use `color` or `colorFilter` of `SvgPicture`, which can be
//      limiting in some cases (e.g., when the SVG has multiple colors that need
//      to be changed independently).
//   3. Allows to use branding colors
//   4. No need to make special modifications the SVG files like
//      markers/placeholders in the file or something similar
final class DynamicSvgAsset extends StatelessWidget {
  const DynamicSvgAsset({
    super.key,
    this.width,
    this.height,
    required this.asset,
    this.replacements,
  });

  final String asset;
  final double? width;
  final double? height;
  final Map<RegExp, Color>? replacements;

  static Future<String> load({
    required String asset,
    required BuildContext context,
    Map<RegExp, Color>? replacements,
  }) async {
    if (!context.mounted) return '';

    var file = await rootBundle.loadString(asset);

    if (!context.mounted) return file;

    if (replacements != null) {
      for (final entry in replacements.entries) {
        final hexCode = entry.value.integer.toRadixString(16).substring(2);
        file = file.replaceAll(entry.key, '#$hexCode');
      }
    }

    return file;
  }

  @override
  Widget build(BuildContext context) => FutureBuilder(
    future: load(
      asset: asset,
      context: context,
      replacements: replacements,
    ),
    builder: (_, state) => switch (state.hasData) {
      false => const SizedBox.shrink(),
      true => SvgPicture.string(
        state.data!,
        width: width,
        height: height,
      ),
    },
  );
}