import 'package:hive/hive.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_detail_entity.dart';

part 'favorite_pokemon_model.g.dart';

@HiveType(typeId: 0)
class FavoritePokemonModel extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String name;

  @HiveField(2)
  final int height;

  @HiveField(3)
  final int weight;

  @HiveField(4)
  final List<PokemonTypeModel> types;

  @HiveField(5)
  final List<PokemonAbilityModel> abilities;

  FavoritePokemonModel({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.types,
    required this.abilities,
  });

  factory FavoritePokemonModel.fromEntity(PokemonDetailEntity entity) {
    return FavoritePokemonModel(
      id: entity.id,
      name: entity.name,
      height: entity.height,
      weight: entity.weight,
      types: entity.types
          .map((t) => PokemonTypeModel(slot: t.slot, name: t.name))
          .toList(),
      abilities: entity.abilities
          .map((a) => PokemonAbilityModel(name: a.name, isHidden: a.isHidden))
          .toList(),
    );
  }

  PokemonDetailEntity toEntity() {
    return PokemonDetailEntity(
      id: id,
      name: name,
      height: height,
      weight: weight,
      types: types
          .map((t) => PokemonTypeEntity(slot: t.slot, name: t.name))
          .toList(),
      abilities: abilities
          .map((a) => PokemonAbilityEntity(name: a.name, isHidden: a.isHidden))
          .toList(),
    );
  }
}

@HiveType(typeId: 1)
class PokemonTypeModel {
  @HiveField(0)
  final int slot;

  @HiveField(1)
  final String name;

  PokemonTypeModel({
    required this.slot,
    required this.name,
  });
}

@HiveType(typeId: 2)
class PokemonAbilityModel {
  @HiveField(0)
  final String name;

  @HiveField(1)
  final bool isHidden;

  PokemonAbilityModel({
    required this.name,
    required this.isHidden,
  });
}
