import 'package:hive/hive.dart';
import 'package:pokemon_app_global66/features/home/data/models/favorite_pokemon_model.dart';

class FavoriteLocalDataSource {
  static const String _boxName = 'favorites';

  Future<Box<FavoritePokemonModel>> _getBox() async {
    try {
      if (!Hive.isBoxOpen(_boxName)) {
        return await Hive.openBox<FavoritePokemonModel>(_boxName);
      }
      return Hive.box<FavoritePokemonModel>(_boxName);
    } catch (e) {
      // Si hay error al abrir la caja, intentar eliminarla y crear una nueva
      try {
        await Hive.deleteBoxFromDisk(_boxName);
        return await Hive.openBox<FavoritePokemonModel>(_boxName);
      } catch (e2) {
        rethrow;
      }
    }
  }

  Future<List<FavoritePokemonModel>> getFavorites() async {
    try {
      final box = await _getBox();
      return box.values.toList();
    } catch (e) {
      return [];
    }
  }

  Future<void> addFavorite(FavoritePokemonModel pokemon) async {
    try {
      final box = await _getBox();
      await box.put(pokemon.id, pokemon);
    } catch (e) {
      // Silenciar error si no se puede agregar
    }
  }

  Future<void> removeFavorite(int pokemonId) async {
    try {
      final box = await _getBox();
      await box.delete(pokemonId);
    } catch (e) {
      // Silenciar error si no se puede eliminar
    }
  }

  Future<bool> isFavorite(int pokemonId) async {
    try {
      final box = await _getBox();
      return box.containsKey(pokemonId);
    } catch (e) {
      // Si hay error al abrir la caja, retornar false
      return false;
    }
  }

  Stream<List<FavoritePokemonModel>> watchFavorites() async* {
    try {
      final box = await _getBox();
      yield box.values.toList();

      await for (final _ in box.watch()) {
        yield box.values.toList();
      }
    } catch (e) {
      yield [];
    }
  }
}
