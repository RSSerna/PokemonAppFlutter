import 'package:dartz/dartz.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';
import 'package:pokemon_app_global66/core/usecase/usecase.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/repositories/pokemon_repository.dart';

class GetPokemonListParams {
  final int offset;
  final int limit;

  GetPokemonListParams({this.offset = 0, this.limit = 150});
}

class GetPokemonListUseCase
    implements UseCase<List<PokemonEntity>, GetPokemonListParams> {
  final PokemonRepository repository;

  GetPokemonListUseCase(this.repository);

  @override
  Future<Either<Failure, List<PokemonEntity>>> call(
      GetPokemonListParams params) async {
    try {
      final list = await repository.getPokemons(
          offset: params.offset, limit: params.limit);
      return right(list);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
