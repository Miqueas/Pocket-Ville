import 'package:dio/dio.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';
import 'package:pocket_ville/features/pokemon/domain/repositories/pokemon_repository.dart';

final class PokemonGraphQLRepository implements PokemonRepository {
  final Dio _dio;

  const PokemonGraphQLRepository(this._dio);

  static const _dataLayout = '''
    id
    name
    height
    weight
    sprites: pokemonsprites {
      front: sprites(path: "front_default")
      showdown: sprites(path: "other.showdown.front_default")
    }
    types: pokemontypes(order_by: {id: asc}) {
      type {
        name
        weaknesses: TypeefficaciesByTargetTypeId(
          where: { damage_factor: { _gt: 100 } }
        ) {
          attacking_type: type {
            name
            localizations: typenames(
              where: { language_id: { _in: [ 7, 9 ] } }
            ) {
              name
              language {
                name
              }
            }
          }
        }
        localizations: typenames(
          where: { language_id: { _in: [ 7, 9 ] } }
        ) {
          name
          language {
            name
          }
        }
      }
    }
    abilities: pokemonabilities {
      ability {
        name
        localizations: abilitynames(
          where: { language_id: { _in: [ 7, 9 ] } }
        ) {
          name
          language {
            name
          }
        }
      }
    }
    species: pokemonspecy {
      gender_rate
      genera: pokemonspeciesnames(
        where: { language_id: { _in: [ 7, 9 ] } }
      ) {
        name
        genus
        language {
          name
        }
      }
      descriptions: pokemonspeciesflavortexts(
        where: { language_id: { _in: [ 7, 9 ] } }
        order_by: { version_id: desc }
        limit: 4
      ) {
        version_id
        flavor_text
        language {
          name
        }
      }
    }
''';

  static const _getPokemonByIdsQuery = '''
query GetPokemonById(\$ids: [Int!]!, \$limit: Int, \$offset: Int) {
  pokemons: pokemon(
    where: { id: { _in: \$ids } },
    limit: \$limit,
    offset: \$offset
    order_by: { id: asc }
  ) {
$_dataLayout
  }
}
''';

  static const _searchPokemonQuery = '''
query SearchPokemon(\$name: String!, \$limit: Int, \$offset: Int) {
  pokemons: pokemon(
    where: {
      _or: [
        { name: { _ilike: \$name } }
        {
          pokemonspecy: {
            pokemonspeciesnames: {
              name: { _ilike: \$name }
              language_id: { _in: [ 7, 9 ] }
            }
          }
        }
      ]
    }
    limit: \$limit,
    offset: \$offset
    order_by: { id: asc }
  ) {
$_dataLayout
  }
}
''';

  static const _getPokemonByTypeIdsQuery = '''
query GetPokemonByTypeIds(\$typeIds: [Int!]!, \$limit: Int, \$offset: Int) {
  pokemons: pokemon(
    where: { pokemontypes: { type_id: { _in: \$typeIds } } }
    limit: \$limit,
    offset: \$offset
    order_by: { id: asc }
  ) {
$_dataLayout
  }
}
''';

  static const _getPokemonListQuery = '''
query GetPokemonList(\$limit: Int, \$offset: Int) {
  pokemons: pokemon(limit: \$limit, offset: \$offset, order_by: { id: asc }) {
$_dataLayout
  }
}
''';

  @override
  Future<List<Pokemon>> searchPokemon({
    required String query,
    int? limit,
    int? offset,
  }) async => [];


  @override
  Future<List<Pokemon>> getPokemonByIds({
    required Iterable<int> ids,
    int? limit,
    int? offset,
  }) async {
    final response = await _dio.post(
      '/v1beta2',
      data: {
        'query': _getPokemonByIdsQuery,
        'variables': {
          'ids': ids.toList(),
          'limit': ?limit,
          'offset': ?offset,
        },
      },
    );

    final pokemons = response.data['data']['pokemons']
      .map((pokemon) => Pokemon.fromJson(pokemon))
      .toList()
      .cast<Pokemon>();

    return pokemons;
  }

  @override
  Future<List<Pokemon>> getPokemonList({int? limit, int? offset}) async {
    final response = await _dio.post(
      '/v1beta2',
      data: {
        'query': _getPokemonListQuery,
        'variables': {
          'limit': ?limit,
          'offset': ?offset,
        },
      },
    );

    final pokemons = response.data['data']['pokemons']
      .map((pokemon) => Pokemon.fromJson(pokemon))
      .toList()
      .cast<Pokemon>();

    return pokemons;
  }
}