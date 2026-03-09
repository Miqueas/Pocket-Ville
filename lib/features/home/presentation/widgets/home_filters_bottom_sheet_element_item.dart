import 'package:flutter/material.dart';
import 'package:pocket_ville/core/enums/pokemon_element.dart';
import 'package:pocket_ville/core/extensions/gap.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/core/presentation/widgets/pv_checkbox.dart';

final class HomeFiltersBottomSheetElementItem extends StatelessWidget {
  const HomeFiltersBottomSheetElementItem({
    super.key,
    required this.element,
  });

  final PokemonElement element;

  @override
  Widget build(BuildContext context) => Row(children: [
    Expanded(child: Text(
      AppLocalizations.of(context)!.pokemonType(element.name),
      style: const TextStyle(fontSize: 14,),
    ),),
    8.w,
    const PVCheckbox(),
  ],);
}