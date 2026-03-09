import 'package:dio/dio.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';
import 'package:pocket_ville/features/pokemon/domain/repositories/pokemon_repository.dart';

final class PokemonRestRepository implements PokemonRepository {
  final Dio _dio;

  const PokemonRestRepository(this._dio);

  @override
  Future<List<Pokemon>> searchPokemon({
    required String query,
    int? limit,
    int? offset,
  }) => throw UnimplementedError('This repository is not implemented yet');

  @override
  Future<List<Pokemon>> getPokemonByIds({
    required Iterable<int> ids,
    int? limit,
    int? offset,
  }) => throw UnimplementedError('This repository is not implemented yet');

  @override
  Future<List<Pokemon>> getPokemonList({
    int? limit,
    int? offset,
  }) async {
    final response = await _dio.get(
      '/pokemon',
      queryParameters: {
        'limit': limit,
        'offset': offset,
      },
    );

    final pokemons = response.data['results']
      .map((pokemon) => Pokemon.fromJson(pokemon))
      .toList()
      .cast<Pokemon>();

    return pokemons;
  }
}