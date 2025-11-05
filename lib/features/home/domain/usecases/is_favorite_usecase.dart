import 'package:dartz/dartz.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';
import 'package:pokemon_app_global66/core/usecase/usecase.dart';
import 'package:pokemon_app_global66/features/home/domain/repositories/favorite_repository.dart';

class IsFavoriteParams {
  final int pokemonId;

  IsFavoriteParams(this.pokemonId);
}

class IsFavoriteUseCase implements UseCase<bool, IsFavoriteParams> {
  final FavoriteRepository repository;

  IsFavoriteUseCase(this.repository);

  @override
  Future<Either<Failure, bool>> call(IsFavoriteParams params) async {
    try {
      final result = await repository.isFavorite(params.pokemonId);
      return right(result);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
