import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:pocket_ville/core/extensions/gap.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/features/details/presentation/widgets/details_feature.dart';
import 'package:pocket_ville/features/details/presentation/widgets/details_gender_bar.dart';
import 'package:pocket_ville/features/details/presentation/widgets/details_gender_percentages.dart';
import 'package:pocket_ville/features/details/presentation/widgets/details_header_image_name_id_types_and_description.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';
import 'package:pocket_ville/features/pokemon/presentation/widgets/pokemon_element_pill.dart';

final class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    super.key,
    required this.pokemon,
  });

  final Pokemon pokemon;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

final class _DetailsScreenState extends State<DetailsScreen> {
  final _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final localeName = AppLocalizations.of(context)!.localeName;
    final weight = switch (localeName) {
      'en' => widget.pokemon.weight * 2.205,
      _ => widget.pokemon.weight,
    };

    final weightSuffix = switch (localeName) {
      'en' => 'lbs',
      _ => 'kg',
    };

    final height = switch (localeName) {
      'en' => widget.pokemon.height * 3.281,
      _ => widget.pokemon.height,
    };

    final heightSuffix = switch (localeName) {
      'en' => 'ft',
      _ => 'm',
    };

    final elementColor = widget.pokemon.types.first.element.color;
    final numberFormatter = NumberFormat.compact(locale: localeName);
    final weightLabel = '${numberFormatter.format(weight)} $weightSuffix';
    final heightLabel = '${numberFormatter.format(height)} $heightSuffix';

    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: switch (elementColor.computeLuminance() < .5) {
          true => .light,
          false => .dark,
        },
      ),
      child: CustomScrollView(
        clipBehavior: .none,
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
            child: DetailsHeaderImageNameIDTypesAndDescription(
              pokemon: widget.pokemon,
            ),
          ),
          SliverGrid(
            delegate: SliverChildListDelegate([
              DetailsFeature(
                icon: 'weight',
                label: AppLocalizations.of(context)!.weight,
                value: weightLabel,
              ),
              DetailsFeature(
                icon: 'height',
                label: AppLocalizations.of(context)!.height,
                value: heightLabel,
              ),
              DetailsFeature(
                icon: 'category',
                label: AppLocalizations.of(context)!.category,
                value: widget.pokemon.species.genera
                  .firstWhere((g) => g.language == localeName)
                  .genus
                  .replaceAll('Pokémon', '')
                  .trim(),
              ),
              DetailsFeature(
                icon: 'ability',
                label: AppLocalizations.of(context)!.ability,
                value: widget.pokemon.abilities
                  .firstWhere((a) => a.localizations.any(
                    (l) => l.language == localeName
                  ))
                  .localizations
                  .firstWhere((l) => l.language == localeName)
                  .name,
              ),
            ]),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 2.2,
            ),
          ),
          SliverToBoxAdapter(child: Column(
            mainAxisSize: .min,
            crossAxisAlignment: .start,
            children: [
              20.h,
              Center(child: Text(
                AppLocalizations.of(context)!.gender,
                style: const TextStyle(color: Color(0xFF424242),),
              ),),
              12.h,
              DetailsGenderBar(pokemon: widget.pokemon),
              4.h,
              DetailsGenderPercentages(pokemon: widget.pokemon),
              40.h,
              Text(
                AppLocalizations.of(context)!.weaknesses,
                style: const TextStyle(
                  color: Color(0xFF121212),
                  fontSize: 18,
                  fontWeight: .w500,
                ),
              ),
              12.h,
              Wrap(
                spacing: 8,
                runSpacing: 8,
                children: widget.pokemon.types.first.weaknesses
                  .map((t) => PokemonTypePill(type: t,))
                  .toList(),
              ),
            ],
          ),),
        ],
      ),
    );
  }
}