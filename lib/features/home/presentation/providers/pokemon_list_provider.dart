import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app_global66/features/home/data/datasource/pokemon_remote_datasource.dart';
import 'package:pokemon_app_global66/features/home/data/repositories/pokemon_repository_impl.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/usecases/get_pokemon_list_usecase.dart';
import 'package:pokemon_app_global66/features/home/presentation/providers/pokemon_detail_provider.dart';
import 'package:pokemon_app_global66/features/home/presentation/providers/search_filter_provider.dart';

//  Dio Provider
final dioProvider = Provider<Dio>((ref) => Dio());

//  DataSource Provider
final remoteDataSourceProvider = Provider<PokemonRemoteDataSource>(
  (ref) => PokemonRemoteDataSource(ref.read(dioProvider)),
);

//  Repository Provider
final pokemonRepositoryProvider = Provider<PokemonRepositoryImpl>(
  (ref) => PokemonRepositoryImpl(ref.read(remoteDataSourceProvider)),
);

//  Use Case Provider
final getPokemonListProvider = Provider<GetPokemonListUseCase>(
  (ref) => GetPokemonListUseCase(ref.read(pokemonRepositoryProvider)),
);

//  Future Provider (para la UI)
final pokemonListProvider =
    FutureProvider.autoDispose<List<PokemonEntity>>((ref) async {
  final getList = ref.read(getPokemonListProvider);
  final result = await getList(GetPokemonListParams());
  return result.fold(
      (failure) => throw Exception(failure.message), (list) => list);
});

//  Filtered Pokemon List Provider
final filteredPokemonListProvider =
    FutureProvider.autoDispose<List<PokemonEntity>>((ref) async {
  // Get the full pokemon list
  final pokemonList = await ref.watch(pokemonListProvider.future);

  // Get the current filter state
  final filterState = ref.watch(searchFilterProvider);

  // If search is not active, return the full list
  if (!filterState.isSearchActive) {
    return pokemonList;
  }

  // If no filters are applied, return the full list
  if (filterState.selectedTypes.isEmpty && filterState.searchQuery.isEmpty) {
    return pokemonList;
  }

  // Apply filters
  List<PokemonEntity> filteredList = pokemonList;

  // Filter by search query (by name)
  if (filterState.searchQuery.isNotEmpty) {
    filteredList = filteredList.where((pokemon) {
      return pokemon.name
          .toLowerCase()
          .contains(filterState.searchQuery.toLowerCase());
    }).toList();
  }

  // Filter by selected types
  if (filterState.selectedTypes.isNotEmpty) {
    // We need to get pokemon details to check types
    // For now, we'll filter by fetching details for each pokemon
    final filteredByType = <PokemonEntity>[];

    for (final pokemon in filteredList) {
      try {
        final detail =
            await ref.read(pokemonDetailProvider(pokemon.name).future);

        // Check if pokemon has any of the selected types
        final hasSelectedType = detail.types.any((type) =>
            filterState.selectedTypes.contains(type.name.toLowerCase()));

        if (hasSelectedType) {
          filteredByType.add(pokemon);
        }
      } catch (e) {
        // If there's an error fetching details, skip this pokemon
        continue;
      }
    }

    return filteredByType;
  }

  return filteredList;
});
