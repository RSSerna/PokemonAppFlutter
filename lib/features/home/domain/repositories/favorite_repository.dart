import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_detail_entity.dart';

abstract class FavoriteRepository {
  Future<List<PokemonDetailEntity>> getFavorites();
  Future<void> addFavorite(PokemonDetailEntity pokemon);
  Future<void> removeFavorite(int pokemonId);
  Future<bool> isFavorite(int pokemonId);
  Stream<List<PokemonDetailEntity>> watchFavorites();
}
