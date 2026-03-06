import 'package:pocket_ville/core/isolate/background_worker_provider.dart';
import 'package:pocket_ville/features/favorites/presentation/providers/favorites_provider.dart';
import 'package:pocket_ville/features/pokemon/presentation/providers/pokemon_listing_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'startup_provider.g.dart';

@riverpod
Future<void> startup(Ref ref) async {
  // Initialize the background worker — needed by providers that run on isolates
  await ref.read(backgroundWorkerProvider.future);

  // Load favorites and first page of pokemon data concurrently
  await Future.wait([
    ref.read(favoritesProvider.future),
    ref.read(pokemonListingProvider.future),
  ]);
}