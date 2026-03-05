import 'package:pocket_ville/core/api/dio_client.dart';
import 'package:pocket_ville/core/isolate/background_worker_provider.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';
import 'package:pocket_ville/features/pokemon/data/repositories/pokemon_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_list_provider.g.dart';

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
final class PokemonList extends _$PokemonList {
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

  // Creates smaller batches of concurrent tasks to avoid overwhelming the
  // isolate with too many tasks at once. For a better understanding, imagine it
  // this way:
  //   We have a list of 20 items like this: [1, 2, 3, ..., 20]
  //   And we set maxConcurrent to 5
  //   The list will be split and executed in batches of 5:
  //      [1, 2, 3, 4, 5], [6, 7, 8, 9, 10], ...
  //   Each one of those smaller batches will be awaited with `Future.wait`
  //   before the next one, executing `task` on each item.
  static Future<List<R>> _concurrentMap<T, R>(
    Iterable<T> items,
    Future<R> Function(T item) task, {
    int maxConcurrent = 5,
  }) async {
    final results = <int, R>{};
    final entries = items.toList();
    var index = 0;

    Future<void> worker() async {
      while (index < entries.length) {
        final i = index++;
        results[i] = await task(entries[i]);
      }
    }

    await Future.wait(
      List.generate(maxConcurrent, (_) => worker()),
    );

    return [for (var i = 0; i < entries.length; i++) results[i] as R];
  }

  // Must be static to be used with compute()
  static Future<List<Pokemon>> _fetchPokemons(_FetchParams params) async {
    final dio = await createDioClient();
    final repo = PokemonRepositoryImpl(dio);

    final items = await repo.getPokemonList(
      limit: params.limit,
      offset: params.offset,
    );

    // Fetch the raw JSON data first
    final rawData = await _concurrentMap(
      items,
      (item) {
        final id = int.parse(
          item.url
            .split('/')
            .where((part) => part.isNotEmpty)
            .last
        );

        return repo.getPokemonData(id);
      },
    );

    // Then parse the raw JSON into Pokemon models and return it
    return rawData.map((json) => Pokemon.fromJson(json)).toList();
  }
}