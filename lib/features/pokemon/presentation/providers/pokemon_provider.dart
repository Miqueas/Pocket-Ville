import 'package:pocket_ville/core/api/dio_client.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';
import 'package:pocket_ville/features/pokemon/data/repositories/pokemon_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_provider.g.dart';

@riverpod
final class PokemonList extends _$PokemonList {
  @override
  Future<List<Pokemon>> build(Ref ref) async {
    final dio = ref.watch(dioProvider);
    final repository = PokemonRepositoryImpl(dio);
    return repository.getPokemonList();
  }
}