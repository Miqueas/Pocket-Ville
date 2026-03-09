import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pocket_ville/core/api/dio_client.dart';
import 'package:pocket_ville/core/isolate/background_worker_provider.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';
import 'package:pocket_ville/features/pokemon/data/repositories/pokemon_graph_ql_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_listing_provider.g.dart';

// DTO for the isolate
final class _FetchParams {
  final int limit;
  final int offset;
  final String apiUrl;

  const _FetchParams({
    required this.limit,
    required this.offset,
    required this.apiUrl,
  });
}

@riverpod
final class PokemonListing extends _$PokemonListing {
  static const _limit = 20;
  var _offset = 0;

  @override
  Future<List<Pokemon>> build() async {
    final worker = await ref.watch(backgroundWorkerProvider.future);
    final baseUrl = dotenv.env['API_URL']!;

    return await worker.run(
      _fetchPokemons,
      _FetchParams(
        limit: _limit,
        offset: _offset,
        apiUrl: baseUrl,
      ),
    );
  }

  Future<void> loadMore() async {
    // Ensures the initial load is complete (aka, `build` has completed)
    final current = await future;

    // Prevent multiple simultaneous loadMore calls
    if (state.isLoading) return;

    state = const AsyncValue.loading();
    _offset += _limit;

    final worker = await ref.read(backgroundWorkerProvider.future);
    final baseUrl = dotenv.env['API_URL']!;
    final pokemons = await worker.run(
      _fetchPokemons,
      _FetchParams(
        limit: _limit,
        offset: _offset,
        apiUrl: baseUrl,
      ),
    );

    state = AsyncValue.data([...current, ...pokemons]);
  }

  // Must be static to be used with compute()
  static Future<List<Pokemon>> _fetchPokemons(_FetchParams params) async {
    final dio = await createDioClient(params.apiUrl);
    final repo = PokemonGraphQLRepository(dio);

    return await repo.getPokemonList(
      limit: params.limit,
      offset: params.offset,
    );
  }
}