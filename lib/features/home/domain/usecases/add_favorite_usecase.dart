import 'package:dartz/dartz.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';
import 'package:pokemon_app_global66/core/usecase/usecase.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/repositories/favorite_repository.dart';

class AddFavoriteParams {
  final PokemonDetailEntity pokemon;

  AddFavoriteParams(this.pokemon);
}

class AddFavoriteUseCase implements UseCase<Unit, AddFavoriteParams> {
  final FavoriteRepository repository;

  AddFavoriteUseCase(this.repository);

  @override
  Future<Either<Failure, Unit>> call(AddFavoriteParams params) async {
    try {
      await repository.addFavorite(params.pokemon);
      return right(unit);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
