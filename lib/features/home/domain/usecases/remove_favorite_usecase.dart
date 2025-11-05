import 'package:dartz/dartz.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';
import 'package:pokemon_app_global66/core/usecase/usecase.dart';
import 'package:pokemon_app_global66/features/home/domain/repositories/favorite_repository.dart';

class RemoveFavoriteParams {
  final int pokemonId;

  RemoveFavoriteParams(this.pokemonId);
}

class RemoveFavoriteUseCase implements UseCase<Unit, RemoveFavoriteParams> {
  final FavoriteRepository repository;

  RemoveFavoriteUseCase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(RemoveFavoriteParams params) async {
    try {
      await repository.removeFavorite(params.pokemonId);
      return right(unit);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
