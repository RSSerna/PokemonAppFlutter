// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_species_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonSpeciesModelImpl _$$PokemonSpeciesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonSpeciesModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      flavorTextEntries: (json['flavor_text_entries'] as List<dynamic>)
          .map((e) => FlavorTextEntryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      genera: (json['genera'] as List<dynamic>)
          .map((e) => GenusModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonSpeciesModelImplToJson(
        _$PokemonSpeciesModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'flavor_text_entries': instance.flavorTextEntries,
      'genera': instance.genera,
    };

_$FlavorTextEntryModelImpl _$$FlavorTextEntryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$FlavorTextEntryModelImpl(
      flavorText: json['flavor_text'] as String,
      language:
          LanguageModel.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FlavorTextEntryModelImplToJson(
        _$FlavorTextEntryModelImpl instance) =>
    <String, dynamic>{
      'flavor_text': instance.flavorText,
      'language': instance.language,
    };

_$GenusModelImpl _$$GenusModelImplFromJson(Map<String, dynamic> json) =>
    _$GenusModelImpl(
      genus: json['genus'] as String,
      language:
          LanguageModel.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$GenusModelImplToJson(_$GenusModelImpl instance) =>
    <String, dynamic>{
      'genus': instance.genus,
      'language': instance.language,
    };

_$LanguageModelImpl _$$LanguageModelImplFromJson(Map<String, dynamic> json) =>
    _$LanguageModelImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$LanguageModelImplToJson(_$LanguageModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
