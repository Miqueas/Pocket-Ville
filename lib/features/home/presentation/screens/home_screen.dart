import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocket_ville/core/extensions/gap.dart';
import 'package:pocket_ville/core/presentation/widgets/loading.dart';
import 'package:pocket_ville/features/pokemon/presentation/providers/pokemon_listing_provider.dart';
import 'package:pocket_ville/features/pokemon/presentation/widgets/pokemon_card.dart';
import 'package:pocket_ville/features/home/presentation/widgets/home_search_field.dart';

final class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonListing = ref.watch(pokemonListingProvider);

    return Column(
      spacing: 16,
      children: [
        const HomeSearchField(),
        Expanded(child: switch (pokemonListing) {
          AsyncValue(:final error?) => Center(child: Text('Error: $error')),
          AsyncValue(:final value?) => NotificationListener<ScrollNotification>(
            onNotification: (notification) {
              final position = notification.metrics.pixels;
              final maxScroll = notification.metrics.maxScrollExtent;
          
              if (position >= (maxScroll * .9)) {
                ref.read(pokemonListingProvider.notifier).loadMore();
              }
          
              return false;
            },
            child: ListView.separated(
              itemCount: value.length + (pokemonListing.isLoading ? 1 : 0),
              cacheExtent: 100,
              itemBuilder: (_, index) {
                if (index >= value.length) {
                  return const Center(child: Loading(),);
                }
          
                return PokemonCard(pokemon: value[index],);
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