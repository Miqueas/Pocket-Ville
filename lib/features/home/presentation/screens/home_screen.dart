import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocket_ville/core/extensions/gap.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/core/navigation/home_routes.dart';
import 'package:pocket_ville/core/presentation/widgets/error_card.dart';
import 'package:pocket_ville/core/presentation/widgets/loading.dart';
import 'package:pocket_ville/core/presentation/widgets/retry_button.dart';
import 'package:pocket_ville/features/home/presentation/widgets/home_filter_button.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';
import 'package:pocket_ville/features/pokemon/presentation/providers/pokemon_listing_provider.dart';
import 'package:pocket_ville/features/pokemon/presentation/widgets/pokemon_card.dart';
import 'package:pocket_ville/features/home/presentation/widgets/home_search_field.dart';

final class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonListing = ref.watch(pokemonListingProvider);
    final isLoading = pokemonListing.isLoading;

    return Column(
      spacing: 16,
      children: [
        const Row(
          spacing: 12,
          children: [
            Expanded(child: HomeSearchField()),
            HomeFilterButton(),
          ],
        ),
        Expanded(child: switch (pokemonListing) {
          AsyncValue<List<Pokemon>>(error: != null) => ErrorCard(
            title: AppLocalizations.of(context)!.somethingWentWrong,
            message: AppLocalizations.of(context)!.networkErrorMessage,
            child: RetryButton(
              onTap: () => ref.invalidate(pokemonListingProvider)
            ),
          ),
          AsyncValue<List<Pokemon>>(:final value?) =>
            NotificationListener<ScrollNotification>(
              onNotification: (notification) {
                final position = notification.metrics.pixels;
                final maxScroll = notification.metrics.maxScrollExtent;
            
                if (position >= (maxScroll * .9)) {
                  ref.read(pokemonListingProvider.notifier).loadMore();
                }
            
                return false;
              },
              child: ListView.separated(
                itemCount: value.length + (isLoading ? 1 : 0),
                cacheExtent: 100,
                itemBuilder: (_, index) {
                  if (index >= value.length) {
                    return const Center(child: Loading(),);
                  }

                  final pokemon = value[index];
            
                  return PokemonCard(
                    pokemon: pokemon,
                    onTap: () => Navigator.of(context).pushDetails(pokemon),
                  );
                },
                separatorBuilder: (_, _) => 12.h,
              ),
            ),
          _ => const Center(child: Loading(),),
        },),
      ],
    );
  }
}