// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonDetailModelImpl _$$PokemonDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonDetailModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => PokemonAbilityModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PokemonDetailModelImplToJson(
        _$PokemonDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
      'abilities': instance.abilities,
    };

_$PokemonTypeModelImpl _$$PokemonTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonTypeModelImpl(
      slot: (json['slot'] as num).toInt(),
      type: TypeInfoModel.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonTypeModelImplToJson(
        _$PokemonTypeModelImpl instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

_$TypeInfoModelImpl _$$TypeInfoModelImplFromJson(Map<String, dynamic> json) =>
    _$TypeInfoModelImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$TypeInfoModelImplToJson(_$TypeInfoModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$PokemonAbilityModelImpl _$$PokemonAbilityModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonAbilityModelImpl(
      isHidden: json['is_hidden'] as bool? ?? false,
      ability:
          AbilityInfoModel.fromJson(json['ability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PokemonAbilityModelImplToJson(
        _$PokemonAbilityModelImpl instance) =>
    <String, dynamic>{
      'is_hidden': instance.isHidden,
      'ability': instance.ability,
    };

_$AbilityInfoModelImpl _$$AbilityInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AbilityInfoModelImpl(
      name: json['name'] as String,
    );

Map<String, dynamic> _$$AbilityInfoModelImplToJson(
        _$AbilityInfoModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
