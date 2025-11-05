import 'package:dartz/dartz.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';

/// Marker class used when a UseCase doesn't require parameters.
class NoParams {}

/// Base abstract UseCase for async calls returning a Future of Either < Failure, T>
abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

/// Base abstract UseCase for Stream results. Returns a Stream of Either < Failure, T>
abstract class StreamUseCase<Type, Params> {
  Stream<Either<Failure, Type>> call(Params params);
}
