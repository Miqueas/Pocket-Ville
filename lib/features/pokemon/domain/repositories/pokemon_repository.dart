import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> getPokemons({int? limit, int? offset});
}