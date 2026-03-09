import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> searchPokemon({
    required String query,
    int? limit,
    int? offset,
  });

  Future<List<Pokemon>> getPokemonByIds({
    required Iterable<int> ids,
    int? limit,
    int? offset,
  });

  Future<List<Pokemon>> getPokemonList({
    int? limit,
    int? offset,
  });
}