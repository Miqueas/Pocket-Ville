import 'package:dio/dio.dart';
import 'package:pocket_ville/features/pokemon/data/models/pokemon.dart';
import 'package:pocket_ville/features/pokemon/domain/repositories/pokemon_repository.dart';

final class PokemonRepositoryImpl implements PokemonRepository {
  const PokemonRepositoryImpl(this._dio);

  final Dio _dio;

  static const _gqlQuery = '''
query ListPokemon(\$limit: Int, \$offset: Int) {
  pokemons: pokemon(limit: \$limit, offset: \$offset, order_by: {id: asc}) {
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
        weaknesses: TypeefficaciesByTargetTypeId(where: {damage_factor: {_gt: 100}}) {
          attacking_type: type {
            name
          }
        }
      }
    }
    abilities: pokemonabilities {
      ability {
        name
        localizations: abilitynames(where: {language_id: {_in: [7, 9]}}) {
          name
          language {
            name
          }
        }
      }
    }
    species: pokemonspecy {
      gender_rate
      genera: pokemonspeciesnames(where: {language_id: {_in: [7, 9]}}) {
        name
        genus
        language {
          name
        }
      }
      descriptions: pokemonspeciesflavortexts(
        where: {language_id: {_in: [7, 9]}}
        order_by: {version_id: desc}
      ) {
        version_id
        flavor_text
        language {
          name
        }
      }
    }
  }
}
''';

  @override
  Future<List<Pokemon>> getPokemons({int? limit, int? offset}) async {
    final response = await _dio.post(
      '/v1beta2',
      data: {
        'query': _gqlQuery,
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