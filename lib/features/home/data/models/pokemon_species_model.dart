// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/pokemon_species_entity.dart';

part 'pokemon_species_model.freezed.dart';
part 'pokemon_species_model.g.dart';

@freezed
class PokemonSpeciesModel with _$PokemonSpeciesModel {
  const PokemonSpeciesModel._();

  const factory PokemonSpeciesModel({
    required int id,
    required String name,
    @JsonKey(name: 'flavor_text_entries')
    required List<FlavorTextEntryModel> flavorTextEntries,
    required List<GenusModel> genera,
  }) = _PokemonSpeciesModel;

  factory PokemonSpeciesModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesModelFromJson(json);

  PokemonSpeciesEntity toEntity(String languageCode) {
    // Get flavor text in the requested language
    final flavorTextEntry = flavorTextEntries.firstWhere(
      (entry) => entry.language.name == languageCode,
      orElse: () => flavorTextEntries.firstWhere(
        (entry) => entry.language.name == 'en',
        orElse: () => flavorTextEntries.first,
      ),
    );

    // Get genus (category) in the requested language
    final genus = genera.firstWhere(
      (g) => g.language.name == languageCode,
      orElse: () => genera.firstWhere(
        (g) => g.language.name == 'en',
        orElse: () => genera.first,
      ),
    );

    // Clean flavor text (remove line breaks and extra spaces)
    final cleanedFlavorText = flavorTextEntry.flavorText
        .replaceAll('\n', ' ')
        .replaceAll('\f', ' ')
        .replaceAll(RegExp(r'\s+'), ' ')
        .trim();

    return PokemonSpeciesEntity(
      id: id,
      name: name,
      flavorText: cleanedFlavorText,
      category: genus.genus,
    );
  }
}

@freezed
class FlavorTextEntryModel with _$FlavorTextEntryModel {
  const factory FlavorTextEntryModel({
    @JsonKey(name: 'flavor_text') required String flavorText,
    required LanguageModel language,
  }) = _FlavorTextEntryModel;

  factory FlavorTextEntryModel.fromJson(Map<String, dynamic> json) =>
      _$FlavorTextEntryModelFromJson(json);
}

@freezed
class GenusModel with _$GenusModel {
  const factory GenusModel({
    required String genus,
    required LanguageModel language,
  }) = _GenusModel;

  factory GenusModel.fromJson(Map<String, dynamic> json) =>
      _$GenusModelFromJson(json);
}

@freezed
class LanguageModel with _$LanguageModel {
  const factory LanguageModel({
    required String name,
  }) = _LanguageModel;

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);
}
