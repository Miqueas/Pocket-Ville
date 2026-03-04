import 'package:flutter/material.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/core/presentation/widgets/dynamic_svg_asset.dart';

final class HomeSearchField extends StatelessWidget {
  const HomeSearchField({ super.key, });

  @override
  Widget build(BuildContext context) => TextField(
    cursorColor: const Color(0xFF1F89E5),
    decoration: InputDecoration(
      border: OutlineInputBorder(
        gapPadding: 0,
        borderSide: const BorderSide(
          width: 1.5,
          color: Color(0xFFE0E0E0),
        ),
        borderRadius: .circular(30),
      ),
      hintText: AppLocalizations.of(context)!.searchPokemon,
      hintStyle: const TextStyle(
        color: Color(0xFF9E9E9E),
        fontSize: 14,
      ),
      prefixIcon: const Padding(
        padding: .only(top: 14, bottom: 14, left: 16, right: 8,),
        child: DynamicSvgAsset(asset: 'assets/icons/search.svg',),
      ),
      enabledBorder: OutlineInputBorder(
        gapPadding: 0,
        borderSide: const BorderSide(
          width: 1.5,
          color: Color(0xFFE0E0E0),
        ),
        borderRadius: .circular(30),
      ),
      focusedBorder: OutlineInputBorder(
        gapPadding: 0,
        borderSide: const BorderSide(
          width: 1.5,
          color: Color(0xFF1F89E5),
        ),
        borderRadius: .circular(30),
      ),
      contentPadding: .zero,
      prefixIconConstraints: const BoxConstraints(
        // 20 (icon size) + 16 (left padding) + 8 (right padding)
        maxWidth: 44,
        // 20 (icon size) + 14 (top padding) + 14 (bottom padding)
        maxHeight: 48,
      ),
    ),
  );
}