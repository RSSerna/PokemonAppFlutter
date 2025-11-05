import 'package:dartz/dartz.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';
import 'package:pokemon_app_global66/core/usecase/usecase.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/ability_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/repositories/pokemon_repository.dart';

class GetAbilityDetailParams {
  final String abilityName;
  final String languageCode;

  GetAbilityDetailParams(this.abilityName, this.languageCode);
}

class GetAbilityDetailUseCase
    implements UseCase<AbilityDetailEntity, GetAbilityDetailParams> {
  final PokemonRepository repository;

  GetAbilityDetailUseCase(this.repository);

  @override
  Future<Either<Failure, AbilityDetailEntity>> call(
      GetAbilityDetailParams params) async {
    try {
      final detail = await repository.getAbilityDetail(
          params.abilityName, params.languageCode);
      return right(detail);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
