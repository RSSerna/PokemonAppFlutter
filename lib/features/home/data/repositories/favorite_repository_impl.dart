import 'package:pokemon_app_global66/features/home/data/datasource/favorite_local_datasource.dart';
import 'package:pokemon_app_global66/features/home/data/models/favorite_pokemon_model.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/repositories/favorite_repository.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  final FavoriteLocalDataSource localDataSource;

  FavoriteRepositoryImpl(this.localDataSource);

  @override
  Future<List<PokemonDetailEntity>> getFavorites() async {
    final models = await localDataSource.getFavorites();
    return models.map((m) => m.toEntity()).toList();
  }

  @override
  Future<void> addFavorite(PokemonDetailEntity pokemon) async {
    final model = FavoritePokemonModel.fromEntity(pokemon);
    await localDataSource.addFavorite(model);
  }

  @override
  Future<void> removeFavorite(int pokemonId) async {
    await localDataSource.removeFavorite(pokemonId);
  }

  @override
  Future<bool> isFavorite(int pokemonId) async {
    return await localDataSource.isFavorite(pokemonId);
  }

  @override
  Stream<List<PokemonDetailEntity>> watchFavorites() {
    return localDataSource.watchFavorites().map(
          (models) => models.map((m) => m.toEntity()).toList(),
        );
  }
}
