import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> getPokemonList({int limit = 20, int offset = 0});
  Future<Pokemon> getPokemonDetails(String name);
}