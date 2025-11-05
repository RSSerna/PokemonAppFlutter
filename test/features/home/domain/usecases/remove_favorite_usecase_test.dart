import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';
import 'package:pokemon_app_global66/features/home/domain/usecases/remove_favorite_usecase.dart';

import 'mocks.mocks.dart';

void main() {
  late MockFavoriteRepository mockRepository;
  late RemoveFavoriteUseCase usecase;

  setUp(() {
    mockRepository = MockFavoriteRepository();
    usecase = RemoveFavoriteUseCase(mockRepository);
  });

  test('should remove favorite successfully', () async {
    when(mockRepository.removeFavorite(1)).thenAnswer((_) async {});
    final result = await usecase(RemoveFavoriteParams(1));
    expect(result, right(unit));
    verify(mockRepository.removeFavorite(1));
  });

  test('should return Failure when repository throws', () async {
    when(mockRepository.removeFavorite(1)).thenThrow(Exception('error'));
    final result = await usecase(RemoveFavoriteParams(1));
    expect(result.isLeft(), true);
    expect(result.fold((l) => l, (r) => null), isA<Failure>());
  });
}
