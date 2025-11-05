import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app_global66/core/usecase/usecase.dart';
import 'package:pokemon_app_global66/features/home/data/datasource/favorite_local_datasource.dart';
import 'package:pokemon_app_global66/features/home/data/repositories/favorite_repository_impl.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/usecases/add_favorite_usecase.dart';
import 'package:pokemon_app_global66/features/home/domain/usecases/get_favorites_usecase.dart';
import 'package:pokemon_app_global66/features/home/domain/usecases/is_favorite_usecase.dart';
import 'package:pokemon_app_global66/features/home/domain/usecases/remove_favorite_usecase.dart';
import 'package:pokemon_app_global66/features/home/domain/usecases/watch_favorites_usecase.dart';

//  DataSource Provider
final favoriteLocalDataSourceProvider = Provider<FavoriteLocalDataSource>(
  (ref) => FavoriteLocalDataSource(),
);

//  Repository Provider
final favoriteRepositoryProvider = Provider<FavoriteRepositoryImpl>(
  (ref) => FavoriteRepositoryImpl(ref.read(favoriteLocalDataSourceProvider)),
);

//  Use Cases Providers
final addFavoriteProvider = Provider<AddFavoriteUseCase>(
  (ref) => AddFavoriteUseCase(ref.read(favoriteRepositoryProvider)),
);

final removeFavoriteProvider = Provider<RemoveFavoriteUseCase>(
  (ref) => RemoveFavoriteUseCase(ref.read(favoriteRepositoryProvider)),
);

final isFavoriteProvider = Provider<IsFavoriteUseCase>(
  (ref) => IsFavoriteUseCase(ref.read(favoriteRepositoryProvider)),
);

final getFavoritesProvider = Provider<GetFavoritesUseCase>(
  (ref) => GetFavoritesUseCase(ref.read(favoriteRepositoryProvider)),
);

final watchFavoritesProvider = Provider<WatchFavoritesUseCase>(
  (ref) => WatchFavoritesUseCase(ref.read(favoriteRepositoryProvider)),
);

//  Stream Provider for UI (reactivo)
final favoritesStreamProvider =
    StreamProvider<List<PokemonDetailEntity>>((ref) {
  final watchFavorites = ref.read(watchFavoritesProvider);
  // call with NoParams and unwrap Either, converting Left into a Stream error
  return watchFavorites(NoParams()).map((either) => either.fold(
      (failure) => throw Exception(failure.message), (list) => list));
});

//  StateNotifier para manejar el estado de favoritos de cada pokemon
class FavoriteStatusNotifier extends StateNotifier<Map<int, bool>> {
  final IsFavoriteUseCase isFavoriteUseCase;

  FavoriteStatusNotifier(this.isFavoriteUseCase) : super({});

  Future<bool> checkFavorite(int pokemonId) async {
    // Si ya tenemos el estado en cache, retornarlo
    if (state.containsKey(pokemonId)) {
      return state[pokemonId]!;
    }

    // Si no, consultar y actualizar el estado
    final res = await isFavoriteUseCase(IsFavoriteParams(pokemonId));
    return res.fold((failure) {
      state = {...state, pokemonId: false};
      return false;
    }, (isFav) {
      state = {...state, pokemonId: isFav};
      return isFav;
    });
  }

  void updateFavoriteStatus(int pokemonId, bool isFavorite) {
    state = {...state, pokemonId: isFavorite};
  }

  void clearCache() {
    state = {};
  }
}

final favoriteStatusNotifierProvider =
    StateNotifierProvider<FavoriteStatusNotifier, Map<int, bool>>((ref) {
  return FavoriteStatusNotifier(ref.read(isFavoriteProvider));
});

//  Provider to check if a specific pokemon is favorite (reactivo)
final isFavoritePokemonProvider =
    Provider.autoDispose.family<bool, int>((ref, pokemonId) {
  // Escuchar cambios en el estado de favoritos
  final favoriteStatusMap = ref.watch(favoriteStatusNotifierProvider);

  // Si ya está en el cache, retornar el valor
  if (favoriteStatusMap.containsKey(pokemonId)) {
    return favoriteStatusMap[pokemonId]!;
  }

  // Si no está en cache, consultar de forma asíncrona
  final notifier = ref.read(favoriteStatusNotifierProvider.notifier);
  notifier.checkFavorite(pokemonId);

  // Mientras tanto, retornar false por defecto
  return false;
});

//  StateNotifier for managing favorite actions
class FavoritesNotifier
    extends StateNotifier<AsyncValue<List<PokemonDetailEntity>>> {
  final AddFavoriteUseCase addFavoriteUseCase;
  final RemoveFavoriteUseCase removeFavoriteUseCase;
  final GetFavoritesUseCase getFavoritesUseCase;
  final FavoriteStatusNotifier statusNotifier;

  FavoritesNotifier({
    required this.addFavoriteUseCase,
    required this.removeFavoriteUseCase,
    required this.getFavoritesUseCase,
    required this.statusNotifier,
  }) : super(const AsyncValue.loading()) {
    loadFavorites();
  }

  Future<void> loadFavorites() async {
    state = const AsyncValue.loading();
    final res = await getFavoritesUseCase(NoParams());
    res.fold((failure) {
      state = AsyncValue.error(Exception(failure.message), StackTrace.current);
    }, (favorites) {
      state = AsyncValue.data(favorites);
    });
  }

  Future<void> toggleFavorite(
      PokemonDetailEntity pokemon, bool isFavorite) async {
    if (isFavorite) {
      final res = await removeFavoriteUseCase(RemoveFavoriteParams(pokemon.id));
      res.fold((failure) {
        state =
            AsyncValue.error(Exception(failure.message), StackTrace.current);
      }, (_) {
        statusNotifier.updateFavoriteStatus(pokemon.id, false);
      });
    } else {
      final res = await addFavoriteUseCase(AddFavoriteParams(pokemon));
      res.fold((failure) {
        state =
            AsyncValue.error(Exception(failure.message), StackTrace.current);
      }, (_) {
        statusNotifier.updateFavoriteStatus(pokemon.id, true);
      });
    }

    await loadFavorites();
  }
}

final favoritesNotifierProvider = StateNotifierProvider<FavoritesNotifier,
    AsyncValue<List<PokemonDetailEntity>>>((ref) {
  return FavoritesNotifier(
    addFavoriteUseCase: ref.read(addFavoriteProvider),
    removeFavoriteUseCase: ref.read(removeFavoriteProvider),
    getFavoritesUseCase: ref.read(getFavoritesProvider),
    statusNotifier: ref.read(favoriteStatusNotifierProvider.notifier),
  );
});
