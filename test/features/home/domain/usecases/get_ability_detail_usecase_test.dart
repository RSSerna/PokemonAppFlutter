import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/ability_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/usecases/get_ability_detail_usecase.dart';

import 'mocks.mocks.dart';

void main() {
  late MockPokemonRepository mockRepository;
  late GetAbilityDetailUseCase usecase;

  setUp(() {
    mockRepository = MockPokemonRepository();
    usecase = GetAbilityDetailUseCase(mockRepository);
  });

  test('should return ability detail', () async {
    final ability = AbilityDetailEntity(
      id: 1,
      name: 'Overgrow',
      localizedName: 'Overgrow',
    );
    when(mockRepository.getAbilityDetail('Overgrow', 'en'))
        .thenAnswer((_) async => ability);
    final result = await usecase(GetAbilityDetailParams('Overgrow', 'en'));
    expect(result, right(ability));
    verify(mockRepository.getAbilityDetail('Overgrow', 'en'));
  });

  test('should return Failure when repository throws', () async {
    when(mockRepository.getAbilityDetail('Overgrow', 'en'))
        .thenThrow(Exception('error'));
    final result = await usecase(GetAbilityDetailParams('Overgrow', 'en'));
    expect(result.isLeft(), true);
    expect(result.fold((l) => l, (r) => null), isA<Failure>());
  });
}
