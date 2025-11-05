import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';
import 'package:pokemon_app_global66/features/home/domain/usecases/is_favorite_usecase.dart';

import 'mocks.mocks.dart';

void main() {
  late MockFavoriteRepository mockRepository;
  late IsFavoriteUseCase usecase;

  setUp(() {
    mockRepository = MockFavoriteRepository();
    usecase = IsFavoriteUseCase(mockRepository);
  });

  test('should return true when favorite', () async {
    when(mockRepository.isFavorite(1)).thenAnswer((_) async => true);
    final result = await usecase(IsFavoriteParams(1));
    expect(result, right(true));
    verify(mockRepository.isFavorite(1));
  });

  test('should return Failure when repository throws', () async {
    when(mockRepository.isFavorite(1)).thenThrow(Exception('error'));
    final result = await usecase(IsFavoriteParams(1));
    expect(result.isLeft(), true);
    expect(result.fold((l) => l, (r) => null), isA<Failure>());
  });
}
