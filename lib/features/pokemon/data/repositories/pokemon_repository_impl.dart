import 'package:dio/dio.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon_item.dart';
import 'package:pocket_ville/features/pokemon/domain/repositories/pokemon_repository.dart';

final class PokemonRepositoryImpl implements PokemonRepository {
  final Dio _dio;

  const PokemonRepositoryImpl(this._dio);

  @override
  Future<Map<String, dynamic>> getPokemonData<T>(T idOrName) async {
    assert(
      idOrName is int || idOrName is String,
      '`idOrName` must be int or String'
    );

    final response = await _dio.get('pokemon/$idOrName');
    return response.data;
  }

  @override
  Future<List<PokemonItem>> getPokemonList({int? limit, int? offset}) async {
    final Response response = await _dio.get(
      'pokemon',
      queryParameters: {
        'limit': ?limit,
        'offset': ?offset,
      },
    );

    final List results = response.data['results'];

    return results.map((e) => PokemonItem.fromJson(e)).toList();
  }
}