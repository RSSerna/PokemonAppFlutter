import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/usecases/add_favorite_usecase.dart';

import 'mocks.mocks.dart';

void main() {
  late MockFavoriteRepository mockRepository;
  late AddFavoriteUseCase usecase;

  setUp(() {
    mockRepository = MockFavoriteRepository();
    usecase = AddFavoriteUseCase(mockRepository);
  });

  test('should add favorite successfully', () async {
    final pokemon = PokemonDetailEntity(
      id: 1,
      name: 'Bulbasaur',
      height: 7,
      weight: 69,
      types: const [PokemonTypeEntity(slot: 1, name: 'grass')],
      abilities: const [
        PokemonAbilityEntity(name: 'overgrow', isHidden: false)
      ],
    );
    when(mockRepository.addFavorite(pokemon)).thenAnswer((_) async {});
    final result = await usecase(AddFavoriteParams(pokemon));
    expect(result, right(unit));
    verify(mockRepository.addFavorite(pokemon));
  });

  test('should return Failure when repository throws', () async {
    final pokemon = PokemonDetailEntity(
      id: 1,
      name: 'Bulbasaur',
      height: 7,
      weight: 69,
      types: const [PokemonTypeEntity(slot: 1, name: 'grass')],
      abilities: const [
        PokemonAbilityEntity(name: 'overgrow', isHidden: false)
      ],
    );
    when(mockRepository.addFavorite(pokemon)).thenThrow(Exception('error'));
    final result = await usecase(AddFavoriteParams(pokemon));
    expect(result.isLeft(), true);
    expect(result.fold((l) => l, (r) => null), isA<Failure>());
  });
}
