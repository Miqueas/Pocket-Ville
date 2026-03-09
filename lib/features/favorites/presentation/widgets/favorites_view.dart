import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocket_ville/core/extensions/gap.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/core/presentation/widgets/error_card.dart';
import 'package:pocket_ville/core/presentation/widgets/loading.dart';
import 'package:pocket_ville/core/presentation/widgets/retry_button.dart';
import 'package:pocket_ville/features/favorites/presentation/providers/favorites_provider.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';
import 'package:pocket_ville/features/pokemon/presentation/providers/pokemon_by_id_provider.dart';
import 'package:pocket_ville/features/pokemon/presentation/widgets/pokemon_card.dart';

final class FavoritesView extends ConsumerWidget {
  const FavoritesView({
    super.key,
    required this.favoriteIds,
  });

  final Set<int> favoriteIds;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favoritePokemon = ref.watch(pokemonByIdProvider(favoriteIds));
    
    return switch (favoritePokemon) {
      AsyncValue<List<Pokemon>>(error: != null) => ErrorCard(
        title: AppLocalizations.of(context)!.somethingWentWrong,
        message: AppLocalizations.of(context)!.networkErrorMessage,
        child: RetryButton(
          onTap: () => ref.invalidate(pokemonByIdProvider(favoriteIds)),
        ),
      ),
      AsyncValue<List<Pokemon>>(:final value?) => switch (value.isEmpty) {
        true => ErrorCard(
          title: AppLocalizations.of(context)!.noFavoritesTitle,
          message: AppLocalizations.of(context)!.noFavoritesSubtitle,
        ),
        false => NotificationListener<ScrollNotification>(
          onNotification: (notification) {
            final position = notification.metrics.pixels;
            final maxScroll = notification.metrics.maxScrollExtent;
        
            if (position >= (maxScroll * .9)) {}
        
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
      },
      _ => const Center(child: Loading(),),
    };
  }
}