import 'package:equatable/equatable.dart';

class PokemonDetailEntity extends Equatable {
  final int id;
  final String name;
  final int height;
  final int weight;
  final List<PokemonTypeEntity> types;
  final List<PokemonAbilityEntity> abilities;

  const PokemonDetailEntity({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.types,
    required this.abilities,
  });

  @override
  List<Object> get props {
    return [
      id,
      name,
      height,
      weight,
      types,
      abilities,
    ];
  }
}

class PokemonTypeEntity extends Equatable {
  final int slot;
  final String name;

  const PokemonTypeEntity({
    required this.slot,
    required this.name,
  });

  @override
  List<Object> get props => [slot, name];
}

class PokemonAbilityEntity extends Equatable {
  final String name;
  final bool isHidden;

  const PokemonAbilityEntity({
    required this.name,
    required this.isHidden,
  });

  @override
  List<Object> get props => [name, isHidden];
}
