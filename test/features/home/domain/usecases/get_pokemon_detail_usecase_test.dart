import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/usecases/get_pokemon_detail_usecase.dart';

import 'mocks.mocks.dart';

void main() {
  late MockPokemonRepository mockRepository;
  late GetPokemonDetailUseCase usecase;

  setUp(() {
    mockRepository = MockPokemonRepository();
    usecase = GetPokemonDetailUseCase(mockRepository);
  });

  test('should return pokemon detail', () async {
    final detail = PokemonDetailEntity(
      id: 1,
      name: 'Bulbasaur',
      height: 7,
      weight: 69,
      types: const [PokemonTypeEntity(slot: 1, name: 'grass')],
      abilities: const [
        PokemonAbilityEntity(name: 'overgrow', isHidden: false)
      ],
    );
    when(mockRepository.getPokemonDetail('Bulbasaur'))
        .thenAnswer((_) async => detail);
    final result = await usecase(GetPokemonDetailParams('Bulbasaur'));
    expect(result, right(detail));
    verify(mockRepository.getPokemonDetail('Bulbasaur'));
  });

  test('should return Failure when repository throws', () async {
    when(mockRepository.getPokemonDetail('Bulbasaur'))
        .thenThrow(Exception('error'));
    final result = await usecase(GetPokemonDetailParams('Bulbasaur'));
    expect(result.isLeft(), true);
    expect(result.fold((l) => l, (r) => null), isA<Failure>());
  });
}
