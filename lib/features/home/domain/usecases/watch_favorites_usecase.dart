import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';
import 'package:pokemon_app_global66/core/usecase/usecase.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_detail_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/repositories/favorite_repository.dart';

class WatchFavoritesUseCase
    implements StreamUseCase<List<PokemonDetailEntity>, NoParams> {
  final FavoriteRepository repository;

  WatchFavoritesUseCase(this.repository);

  @override
  Stream<Either<Failure, List<PokemonDetailEntity>>> call(NoParams params) {
    // Map successful lists to Right(list). Convert errors to Left(Failure).
    final stream = repository
        .watchFavorites()
        .map<Either<Failure, List<PokemonDetailEntity>>>((list) => right(list));

    return stream.transform(StreamTransformer.fromHandlers(
      handleError: (error, st, sink) =>
          sink.add(left(Failure(error.toString()))),
    ));
  }
}
