import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocket_ville/core/l10n/app_localizations.dart';
import 'package:pocket_ville/core/presentation/widgets/error_card.dart';
import 'package:pocket_ville/core/presentation/widgets/loading.dart';
import 'package:pocket_ville/core/presentation/widgets/retry_button.dart';
import 'package:pocket_ville/features/favorites/presentation/providers/favorites_provider.dart';
import 'package:pocket_ville/features/favorites/presentation/widgets/favorites_view.dart';

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
          AsyncValue<Set<int>>(error: != null) => ErrorCard(
            title: AppLocalizations.of(context)!.somethingWentWrong,
            message: AppLocalizations.of(context)!.networkErrorMessage,
            child: RetryButton(
              onTap: () {},
            ),
          ),
          AsyncValue<Set<int>>(:final value?) => FavoritesView(
            favoriteIds: value,
          ),
          _ => const Center(child: Loading(),),
        }),
      ],
    );
  }
}