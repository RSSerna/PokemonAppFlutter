import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';
import 'package:pokemon_app_global66/core/usecase/usecase.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/usecases/watch_favorites_usecase.dart';

import 'mocks.mocks.dart';

void main() {
  late MockFavoriteRepository mockRepository;
  late WatchFavoritesUseCase usecase;

  setUp(() {
    mockRepository = MockFavoriteRepository();
    usecase = WatchFavoritesUseCase(mockRepository);
  });

  test('should emit favorites list in stream', () async {
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
    when(mockRepository.watchFavorites())
        .thenAnswer((_) => Stream.value(favorites));
    final stream = usecase(NoParams());
    expectLater(stream, emits(right(favorites)));
  });

  test('should emit Failure when stream throws', () async {
    when(mockRepository.watchFavorites())
        .thenAnswer((_) => Stream.error(Exception('error')));
    final stream = usecase(NoParams());
    expectLater(stream, emits(isA<Left<Failure, List<PokemonDetailEntity>>>()));
  });
}
