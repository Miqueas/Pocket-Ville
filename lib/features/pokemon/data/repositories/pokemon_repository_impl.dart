import 'package:dio/dio.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';
import 'package:pocket_ville/features/pokemon/domain/repositories/pokemon_repository.dart';

final class PokemonRepositoryImpl implements PokemonRepository {
  final Dio _dio;

  const PokemonRepositoryImpl(this._dio);

  @override
  Future<List<Pokemon>> getPokemonList({int limit = 20, int offset = 0}) async {
    final Response response = await _dio.get(
      'pokemon',
      queryParameters: {
        'limit': limit,
        'offset': offset,
      },
    );

    final List results = response.data['results'];

    return results.map((e) => Pokemon.fromJson(e)).toList();
  }

  @override
  Future<Pokemon> getPokemonDetails(String name) async {
    final response = await _dio.get('pokemon/$name');
    return Pokemon.fromJson(response.data);
  }
}