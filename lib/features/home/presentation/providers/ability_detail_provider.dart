import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/ability_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/usecases/get_ability_detail_usecase.dart';
import 'package:pokemon_app_global66/features/home/presentation/providers/pokemon_list_provider.dart';
import 'package:pokemon_app_global66/providers/locale_provider.dart';

//  Use Case Provider
final getAbilityDetailProvider = Provider<GetAbilityDetailUseCase>(
  (ref) => GetAbilityDetailUseCase(ref.read(pokemonRepositoryProvider)),
);

//  Family Provider for fetching ability details by name with locale support
final abilityDetailProvider = FutureProvider.autoDispose
    .family<AbilityDetailEntity, String>((ref, abilityName) async {
  final getAbility = ref.read(getAbilityDetailProvider);
  final locale = ref.watch(localeProvider);
  final languageCode = locale.languageCode;
  final res =
      await getAbility(GetAbilityDetailParams(abilityName, languageCode));
  return res.fold(
      (failure) => throw Exception(failure.message), (detail) => detail);
});
