import 'package:dartz/dartz.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';
import 'package:pokemon_app_global66/core/usecase/usecase.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/repositories/favorite_repository.dart';

class GetFavoritesUseCase
    implements UseCase<List<PokemonDetailEntity>, NoParams> {
  final FavoriteRepository repository;

  GetFavoritesUseCase(this.repository);

  @override
  Future<Either<Failure, List<PokemonDetailEntity>>> call(
      NoParams params) async {
    try {
      final list = await repository.getFavorites();
      return right(list);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
