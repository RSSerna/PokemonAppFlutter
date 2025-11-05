import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_entity.dart';

part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

@freezed
class PokemonModel with _$PokemonModel {
  const factory PokemonModel({
    required String name,
    required String url,
  }) = _PokemonModel;

  factory PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonModelFromJson(json);
}

extension PokemonModelX on PokemonModel {
  PokemonEntity toEntity() => PokemonEntity(
        name: name,
        url: url,
      );
}
