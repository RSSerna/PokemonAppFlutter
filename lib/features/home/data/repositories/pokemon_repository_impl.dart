import 'package:pokemon_app_global66/features/home/data/datasource/pokemon_remote_datasource.dart';
import 'package:pokemon_app_global66/features/home/data/models/pokemon_detail_model.dart';
import 'package:pokemon_app_global66/features/home/data/models/pokemon_model.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/ability_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_species_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/repositories/pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonRemoteDataSource remoteDataSource;

  PokemonRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<PokemonEntity>> getPokemons(
      {int offset = 0, int limit = 20}) async {
    final models =
        await remoteDataSource.fetchPokemons(offset: offset, limit: limit);
    return models.map((m) => m.toEntity()).toList();
  }

  @override
  Future<PokemonDetailEntity> getPokemonDetail(String name) async {
    final model = await remoteDataSource.fetchPokemonDetail(name);
    return model.toEntity();
  }

  @override
  Future<PokemonSpeciesEntity> getPokemonSpecies(
      int id, String languageCode) async {
    final model = await remoteDataSource.fetchPokemonSpecies(id);
    return model.toEntity(languageCode);
  }

  @override
  Future<AbilityDetailEntity> getAbilityDetail(
      String abilityName, String languageCode) async {
    final model = await remoteDataSource.fetchAbilityDetail(abilityName);
    return model.toEntity(languageCode);
  }
}
