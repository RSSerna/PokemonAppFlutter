import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_species_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/usecases/get_pokemon_species_usecase.dart';
import 'package:pokemon_app_global66/features/home/presentation/providers/pokemon_list_provider.dart';
import 'package:pokemon_app_global66/providers/locale_provider.dart';

//  Use Case Provider
final getPokemonSpeciesProvider = Provider<GetPokemonSpeciesUseCase>(
  (ref) => GetPokemonSpeciesUseCase(ref.read(pokemonRepositoryProvider)),
);

//  Family Provider for fetching Pokemon species by ID with locale support
final pokemonSpeciesProvider = FutureProvider.autoDispose
    .family<PokemonSpeciesEntity, int>((ref, id) async {
  final getSpecies = ref.read(getPokemonSpeciesProvider);
  final locale = ref.watch(localeProvider);
  final languageCode = locale.languageCode;
  final res = await getSpecies(GetPokemonSpeciesParams(id, languageCode));
  return res.fold(
      (failure) => throw Exception(failure.message), (species) => species);
});
