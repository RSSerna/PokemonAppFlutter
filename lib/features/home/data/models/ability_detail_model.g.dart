// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ability_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AbilityDetailModelImpl _$$AbilityDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AbilityDetailModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      names: (json['names'] as List<dynamic>)
          .map((e) => AbilityNameModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$AbilityDetailModelImplToJson(
        _$AbilityDetailModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'names': instance.names,
    };

_$AbilityNameModelImpl _$$AbilityNameModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AbilityNameModelImpl(
      name: json['name'] as String,
      language:
          LanguageModel.fromJson(json['language'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AbilityNameModelImplToJson(
        _$AbilityNameModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
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
