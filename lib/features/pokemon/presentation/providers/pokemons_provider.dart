import 'package:pocket_ville/core/api/dio_client.dart';
import 'package:pocket_ville/core/isolate/background_worker_provider.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';
import 'package:pocket_ville/features/pokemon/data/repositories/pokemon_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemons_provider.g.dart';

// DTO to send into the isolate
final class _FetchParams {
  final int limit;
  final int offset;

  const _FetchParams({
    required this.limit,
    required this.offset,
  });
}

@riverpod
final class Pokemons extends _$Pokemons {
  static const _limit = 20;
  var _offset = 0;

  @override
  Future<List<Pokemon>> build() async {
    final worker = await ref.watch(backgroundWorkerProvider.future);
    return await worker.run(
      _fetchPokemons,
      _FetchParams(
        limit: _limit,
        offset: _offset,
      ),
    );
  }

  Future<void> loadMore() async {
    // Ensure the initial load is complete (aka, `build` has completed)
    await future;

    if (state.isLoading) return;

    state = const AsyncValue.loading();
    _offset += _limit;

    final worker = await ref.read(backgroundWorkerProvider.future);
    final pokemons = await worker.run(
      _fetchPokemons,
      _FetchParams(
        limit: _limit,
        offset: _offset,
      ),
    );

    state = AsyncValue.data([...state.value ?? [], ...pokemons]);
  }

  // Must be static to be used with compute()
  static Future<List<Pokemon>> _fetchPokemons(_FetchParams params) async {
    final dio = await createDioClient();
    final repo = PokemonRepositoryImpl(dio);

    return await repo.getPokemons(
      limit: params.limit,
      offset: params.offset,
    );
  }
}