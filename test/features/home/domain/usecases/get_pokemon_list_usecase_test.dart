import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/usecases/get_pokemon_list_usecase.dart';

import 'mocks.mocks.dart';

void main() {
  late MockPokemonRepository mockRepository;
  late GetPokemonListUseCase usecase;

  setUp(() {
    mockRepository = MockPokemonRepository();
    usecase = GetPokemonListUseCase(mockRepository);
  });

  test('should return list of pokemons when repository returns data', () async {
    final tPokemons = [PokemonEntity(name: 'Pikachu', url: 'url')];
    when(mockRepository.getPokemons(offset: 0, limit: 150))
        .thenAnswer((_) async => tPokemons);

    final result = await usecase(GetPokemonListParams());
    expect(result, Right(tPokemons));
    verify(mockRepository.getPokemons(offset: 0, limit: 150));
    verifyNoMoreInteractions(mockRepository);
  });

  test('should return Failure when repository throws', () async {
    when(mockRepository.getPokemons(offset: 0, limit: 150))
        .thenThrow(Exception('error'));

    final result = await usecase(GetPokemonListParams());
    expect(result.isLeft(), true);
    expect(result.fold((l) => l, (r) => null), isA<Failure>());
  });
}
