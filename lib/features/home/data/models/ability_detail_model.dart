import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokemon_app_global66/features/home/domain/entities/ability_detail_entity.dart';

part 'ability_detail_model.freezed.dart';
part 'ability_detail_model.g.dart';

@freezed
class AbilityDetailModel with _$AbilityDetailModel {
  const AbilityDetailModel._();

  const factory AbilityDetailModel({
    required int id,
    required String name,
    required List<AbilityNameModel> names,
  }) = _AbilityDetailModel;

  factory AbilityDetailModel.fromJson(Map<String, dynamic> json) =>
      _$AbilityDetailModelFromJson(json);

  AbilityDetailEntity toEntity(String languageCode) {
    // Get name in the requested language
    final localizedName = names.firstWhere(
      (n) => n.language.name == languageCode,
      orElse: () => names.firstWhere(
        (n) => n.language.name == 'en',
        orElse: () => names.first,
      ),
    );

    return AbilityDetailEntity(
      id: id,
      name: name,
      localizedName: localizedName.name,
    );
  }
}

@freezed
class AbilityNameModel with _$AbilityNameModel {
  const factory AbilityNameModel({
    required String name,
    required LanguageModel language,
  }) = _AbilityNameModel;

  factory AbilityNameModel.fromJson(Map<String, dynamic> json) =>
      _$AbilityNameModelFromJson(json);
}

@freezed
class LanguageModel with _$LanguageModel {
  const factory LanguageModel({
    required String name,
  }) = _LanguageModel;

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);
}
