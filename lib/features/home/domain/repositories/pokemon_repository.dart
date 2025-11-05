import 'package:pokemon_app_global66/features/home/domain/entities/ability_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_species_entity.dart';

abstract class PokemonRepository {
  Future<List<PokemonEntity>> getPokemons({int offset = 0, int limit = 20});
  Future<PokemonDetailEntity> getPokemonDetail(String name);
  Future<PokemonSpeciesEntity> getPokemonSpecies(int id, String languageCode);
  Future<AbilityDetailEntity> getAbilityDetail(
      String abilityName, String languageCode);
}
