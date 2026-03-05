import 'package:pocket_ville/features/pokemon/data/models/pokemon_item.dart';

abstract class PokemonRepository {
  Future<Map<String, dynamic>> getPokemonData<T>(T idOrName);
  Future<List<PokemonItem>> getPokemonList({int? limit, int? offset});
}