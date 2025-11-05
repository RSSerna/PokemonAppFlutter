import 'package:dartz/dartz.dart';
import 'package:pokemon_app_global66/core/error/failure.dart';
import 'package:pokemon_app_global66/core/usecase/usecase.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_species_entity.dart';
import 'package:pokemon_app_global66/features/home/domain/repositories/pokemon_repository.dart';

class GetPokemonSpeciesParams {
  final int id;
  final String languageCode;

  GetPokemonSpeciesParams(this.id, this.languageCode);
}

class GetPokemonSpeciesUseCase
    implements UseCase<PokemonSpeciesEntity, GetPokemonSpeciesParams> {
  final PokemonRepository repository;

  GetPokemonSpeciesUseCase(this.repository);

  @override
  Future<Either<Failure, PokemonSpeciesEntity>> call(
      GetPokemonSpeciesParams params) async {
    try {
      final species =
          await repository.getPokemonSpecies(params.id, params.languageCode);
      return right(species);
    } catch (e) {
      return left(Failure(e.toString()));
    }
  }
}
