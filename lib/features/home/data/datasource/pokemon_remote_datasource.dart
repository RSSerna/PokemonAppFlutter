import 'package:dio/dio.dart';
import 'package:pokemon_app_global66/features/home/data/models/ability_detail_model.dart';
import 'package:pokemon_app_global66/features/home/data/models/pokemon_detail_model.dart';
import 'package:pokemon_app_global66/features/home/data/models/pokemon_model.dart';
import 'package:pokemon_app_global66/features/home/data/models/pokemon_species_model.dart';

class PokemonRemoteDataSource {
  final Dio dio;

  PokemonRemoteDataSource(this.dio);

  Future<List<PokemonModel>> fetchPokemons(
      {int offset = 0, int limit = 150}) async {
    final response = await dio.get(
      'https://pokeapi.co/api/v2/pokemon',
      queryParameters: {'offset': offset, 'limit': limit},
    );

    final results = (response.data['results'] as List)
        .map((e) => PokemonModel.fromJson(e))
        .toList();

    return results;
  }

  Future<PokemonDetailModel> fetchPokemonDetail(String name) async {
    final response = await dio.get(
      'https://pokeapi.co/api/v2/pokemon/$name',
    );

    return PokemonDetailModel.fromJson(response.data);
  }

  Future<PokemonSpeciesModel> fetchPokemonSpecies(int id) async {
    final response = await dio.get(
      'https://pokeapi.co/api/v2/pokemon-species/$id',
    );

    return PokemonSpeciesModel.fromJson(response.data);
  }

  Future<AbilityDetailModel> fetchAbilityDetail(String abilityName) async {
    final response = await dio.get(
      'https://pokeapi.co/api/v2/ability/$abilityName',
    );

    return AbilityDetailModel.fromJson(response.data);
  }
}
