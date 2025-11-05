import 'package:equatable/equatable.dart';

class PokemonSpeciesEntity extends Equatable {
  final int id;
  final String name;
  final String flavorText;
  final String category;

  const PokemonSpeciesEntity({
    required this.id,
    required this.name,
    required this.flavorText,
    required this.category,
  });

  @override
  List<Object> get props => [id, name, flavorText, category];
}
