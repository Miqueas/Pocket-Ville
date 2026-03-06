import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> getPokemonByIds(Iterable<int> ids);
  Future<List<Pokemon>> getPokemonListing({int? limit, int? offset});
}