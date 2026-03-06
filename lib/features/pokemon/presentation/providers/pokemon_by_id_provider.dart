import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pocket_ville/core/api/dio_client.dart';
import 'package:pocket_ville/core/isolate/background_worker_provider.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';
import 'package:pocket_ville/features/pokemon/data/repositories/pokemon_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_by_id_provider.g.dart';

final class _FetchParams {
  final Iterable<int> ids;
  final int limit;
  final int offset;
  final String apiUrl;

  const _FetchParams({
    required this.ids,
    required this.limit,
    required this.offset,
    required this.apiUrl,
  });
}

@riverpod
final class PokemonById extends _$PokemonById {
  static const _limit = 20;
  var _offset = 0;
  // TODO: Implement pagination

  @override
  Future<List<Pokemon>> build(Iterable<int> ids) async {
    final worker = await ref.watch(backgroundWorkerProvider.future);
    final baseUrl = dotenv.env['API_URL']!;
    state;

    return await worker.run(
      _fetchPokemonByIds,
      _FetchParams(
        ids: ids,
        limit: _limit,
        offset: _offset,
        apiUrl: baseUrl,
      ),
    );
  }

  // Must be static to be used with compute()
  static Future<List<Pokemon>> _fetchPokemonByIds(_FetchParams params) async {
    final dio = await createDioClient(params.apiUrl);
    final repo = PokemonRepositoryImpl(dio);

    return await repo.getPokemonByIds(params.ids);
  }
}