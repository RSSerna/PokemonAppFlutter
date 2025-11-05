import 'package:dartz/dartz.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';
import 'package:pokemon_app_global66/core/usecase/usecase.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/repositories/pokemon_repository.dart';

class GetPokemonDetailParams {
  final String name;

  GetPokemonDetailParams(this.name);
}

class GetPokemonDetailUseCase
    implements UseCase<PokemonDetailEntity, GetPokemonDetailParams> {
  final PokemonRepository repository;

  GetPokemonDetailUseCase(this.repository);

  @override
  Future<Either<Failure, PokemonDetailEntity>> call(
      GetPokemonDetailParams params) async {
    try {
      final detail = await repository.getPokemonDetail(params.name);
      return right(detail);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
