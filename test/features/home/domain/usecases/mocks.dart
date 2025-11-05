import 'package:mockito/annotations.dart';
import 'package:pokemon_app_global66/features/home/domain/repositories/favorite_repository.dart';
import 'package:pokemon_app_global66/features/home/domain/repositories/pokemon_repository.dart';

@GenerateMocks([
  PokemonRepository,
  FavoriteRepository,
])
void main() {}
