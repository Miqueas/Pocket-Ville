import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocket_ville/core/extensions/gap.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/core/presentation/widgets/loading.dart';
import 'package:pocket_ville/features/favorites/presentation/providers/favorites_provider.dart';
import 'package:pocket_ville/features/pokemon/presentation/providers/pokemon_by_id_provider.dart';
import 'package:pocket_ville/features/pokemon/presentation/widgets/pokemon_card.dart';

final class FavoritesScreen extends ConsumerWidget {
  const FavoritesScreen({super.key,});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoriteIds = ref.watch(favoritesProvider);

    return Column(
      spacing: 32,
      children: [
        Text(
          AppLocalizations.of(context)!.favorites,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: .w600,
          ),
        ),
        Expanded(child: switch (favoriteIds) {
          AsyncValue(:final error?) => Center(child: Text('Error: $error')),
          AsyncValue(:final value?) => Builder(builder: (context) {
            final favoritePokemon = ref.watch(pokemonByIdProvider(value));

            return switch (favoritePokemon) {
              AsyncValue(:final error?) => Center(child: Text('Error: $error')),
              AsyncValue(:final value?) => NotificationListener<ScrollNotification>(
                onNotification: (notification) {
                  final position = notification.metrics.pixels;
                  final maxScroll = notification.metrics.maxScrollExtent;
              
                  if (position >= (maxScroll * .9)) {
                    // ref.read(pokemonByIdProvider(value).notifier).loadMore();
                  }
              
                  return false;
                },
                child: ListView.separated(
                  itemCount: value.length,
                  cacheExtent: 100,
                  itemBuilder: (_, index) => Dismissible(
                    key: Key(value[index].id.toString()),
                    direction: .endToStart,
                    onDismissed: (direction) {
                      final notifier = ref.read(favoritesProvider.notifier);
                      notifier.remove(value[index].id);
                    },
                    background: Container(
                      color: Colors.red,
                      padding: const .only(right: 32),
                      alignment: .centerRight,
                      child: const Icon(Icons.delete, color: Colors.white,),
                    ),
                    child: PokemonCard(pokemon: value[index],),
                  ),
                  separatorBuilder: (_, _) => 12.h,
                ),
              ),
              _ => const Center(child: Loading(),),
            };
          }),
          _ => const Center(child: Loading(),),
        }),
      ],
    );
  }
}