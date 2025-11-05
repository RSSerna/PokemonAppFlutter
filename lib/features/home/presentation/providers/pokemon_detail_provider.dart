import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/usecases/get_pokemon_detail_usecase.dart';
import 'package:pokemon_app_global66/features/home/presentation/providers/pokemon_list_provider.dart';

//  Use Case Provider
final getPokemonDetailProvider = Provider<GetPokemonDetailUseCase>(
  (ref) => GetPokemonDetailUseCase(ref.read(pokemonRepositoryProvider)),
);

//  Family Provider for fetching Pokemon details by name
final pokemonDetailProvider = FutureProvider.autoDispose
    .family<PokemonDetailEntity, String>((ref, name) async {
  final getDetail = ref.read(getPokemonDetailProvider);
  final res = await getDetail(GetPokemonDetailParams(name));
  return res.fold(
      (failure) => throw Exception(failure.message), (detail) => detail);
});
