import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';
import 'package:pokemon_app_global66/core/usecase/usecase.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/usecases/get_favorites_usecase.dart';

import 'mocks.mocks.dart';

void main() {
  late MockFavoriteRepository mockRepository;
  late GetFavoritesUseCase usecase;

  setUp(() {
    mockRepository = MockFavoriteRepository();
    usecase = GetFavoritesUseCase(mockRepository);
  });

  test('should return favorites list', () async {
    final favorites = [
      PokemonDetailEntity(
        id: 1,
        name: 'Bulbasaur',
        height: 7,
        weight: 69,
        types: const [PokemonTypeEntity(slot: 1, name: 'grass')],
        abilities: const [
          PokemonAbilityEntity(name: 'overgrow', isHidden: false)
        ],
      )
    ];
    when(mockRepository.getFavorites()).thenAnswer((_) async => favorites);
    final result = await usecase(NoParams());
    expect(result, right(favorites));
    verify(mockRepository.getFavorites());
  });

  test('should return Failure when repository throws', () async {
    when(mockRepository.getFavorites()).thenThrow(Exception('error'));
    final result = await usecase(NoParams());
    expect(result.isLeft(), true);
    expect(result.fold((l) => l, (r) => null), isA<Failure>());
  });
}
