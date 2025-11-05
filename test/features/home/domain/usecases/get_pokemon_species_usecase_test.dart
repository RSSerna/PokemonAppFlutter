import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_species_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/usecases/get_pokemon_species_usecase.dart';

import 'mocks.mocks.dart';

void main() {
  late MockPokemonRepository mockRepository;
  late GetPokemonSpeciesUseCase usecase;

  setUp(() {
    mockRepository = MockPokemonRepository();
    usecase = GetPokemonSpeciesUseCase(mockRepository);
  });

  test('should return pokemon species', () async {
    final species = PokemonSpeciesEntity(
      id: 1,
      name: 'Bulbasaur',
      flavorText: '',
      category: '',
    );
    when(mockRepository.getPokemonSpecies(1, 'en'))
        .thenAnswer((_) async => species);
    final result = await usecase(GetPokemonSpeciesParams(1, 'en'));
    expect(result, right(species));
    verify(mockRepository.getPokemonSpecies(1, 'en'));
  });

  test('should return Failure when repository throws', () async {
    when(mockRepository.getPokemonSpecies(1, 'en'))
        .thenThrow(Exception('error'));
    final result = await usecase(GetPokemonSpeciesParams(1, 'en'));
    expect(result.isLeft(), true);
    expect(result.fold((l) => l, (r) => null), isA<Failure>());
  });
}
