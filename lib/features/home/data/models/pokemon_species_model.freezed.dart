// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_species_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonSpeciesModel _$PokemonSpeciesModelFromJson(Map<String, dynamic> json) {
  return _PokemonSpeciesModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpeciesModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorTextEntryModel> get flavorTextEntries =>
      throw _privateConstructorUsedError;
  List<GenusModel> get genera => throw _privateConstructorUsedError;

  /// Serializes this PokemonSpeciesModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonSpeciesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonSpeciesModelCopyWith<PokemonSpeciesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesModelCopyWith<$Res> {
  factory $PokemonSpeciesModelCopyWith(
          PokemonSpeciesModel value, $Res Function(PokemonSpeciesModel) then) =
      _$PokemonSpeciesModelCopyWithImpl<$Res, PokemonSpeciesModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'flavor_text_entries')
      List<FlavorTextEntryModel> flavorTextEntries,
      List<GenusModel> genera});
}

/// @nodoc
class _$PokemonSpeciesModelCopyWithImpl<$Res, $Val extends PokemonSpeciesModel>
    implements $PokemonSpeciesModelCopyWith<$Res> {
  _$PokemonSpeciesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonSpeciesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? flavorTextEntries = null,
    Object? genera = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      flavorTextEntries: null == flavorTextEntries
          ? _value.flavorTextEntries
          : flavorTextEntries // ignore: cast_nullable_to_non_nullable
              as List<FlavorTextEntryModel>,
      genera: null == genera
          ? _value.genera
          : genera // ignore: cast_nullable_to_non_nullable
              as List<GenusModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSpeciesModelImplCopyWith<$Res>
    implements $PokemonSpeciesModelCopyWith<$Res> {
  factory _$$PokemonSpeciesModelImplCopyWith(_$PokemonSpeciesModelImpl value,
          $Res Function(_$PokemonSpeciesModelImpl) then) =
      __$$PokemonSpeciesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      @JsonKey(name: 'flavor_text_entries')
      List<FlavorTextEntryModel> flavorTextEntries,
      List<GenusModel> genera});
}

/// @nodoc
class __$$PokemonSpeciesModelImplCopyWithImpl<$Res>
    extends _$PokemonSpeciesModelCopyWithImpl<$Res, _$PokemonSpeciesModelImpl>
    implements _$$PokemonSpeciesModelImplCopyWith<$Res> {
  __$$PokemonSpeciesModelImplCopyWithImpl(_$PokemonSpeciesModelImpl _value,
      $Res Function(_$PokemonSpeciesModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonSpeciesModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? flavorTextEntries = null,
    Object? genera = null,
  }) {
    return _then(_$PokemonSpeciesModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      flavorTextEntries: null == flavorTextEntries
          ? _value._flavorTextEntries
          : flavorTextEntries // ignore: cast_nullable_to_non_nullable
              as List<FlavorTextEntryModel>,
      genera: null == genera
          ? _value._genera
          : genera // ignore: cast_nullable_to_non_nullable
              as List<GenusModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpeciesModelImpl extends _PokemonSpeciesModel {
  const _$PokemonSpeciesModelImpl(
      {required this.id,
      required this.name,
      @JsonKey(name: 'flavor_text_entries')
      required final List<FlavorTextEntryModel> flavorTextEntries,
      required final List<GenusModel> genera})
      : _flavorTextEntries = flavorTextEntries,
        _genera = genera,
        super._();

  factory _$PokemonSpeciesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpeciesModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<FlavorTextEntryModel> _flavorTextEntries;
  @override
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorTextEntryModel> get flavorTextEntries {
    if (_flavorTextEntries is EqualUnmodifiableListView)
      return _flavorTextEntries;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_flavorTextEntries);
  }

  final List<GenusModel> _genera;
  @override
  List<GenusModel> get genera {
    if (_genera is EqualUnmodifiableListView) return _genera;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genera);
  }

  @override
  String toString() {
    return 'PokemonSpeciesModel(id: $id, name: $name, flavorTextEntries: $flavorTextEntries, genera: $genera)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpeciesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._flavorTextEntries, _flavorTextEntries) &&
            const DeepCollectionEquality().equals(other._genera, _genera));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      const DeepCollectionEquality().hash(_flavorTextEntries),
      const DeepCollectionEquality().hash(_genera));

  /// Create a copy of PokemonSpeciesModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpeciesModelImplCopyWith<_$PokemonSpeciesModelImpl> get copyWith =>
      __$$PokemonSpeciesModelImplCopyWithImpl<_$PokemonSpeciesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpeciesModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpeciesModel extends PokemonSpeciesModel {
  const factory _PokemonSpeciesModel(
      {required final int id,
      required final String name,
      @JsonKey(name: 'flavor_text_entries')
      required final List<FlavorTextEntryModel> flavorTextEntries,
      required final List<GenusModel> genera}) = _$PokemonSpeciesModelImpl;
  const _PokemonSpeciesModel._() : super._();

  factory _PokemonSpeciesModel.fromJson(Map<String, dynamic> json) =
      _$PokemonSpeciesModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(name: 'flavor_text_entries')
  List<FlavorTextEntryModel> get flavorTextEntries;
  @override
  List<GenusModel> get genera;

  /// Create a copy of PokemonSpeciesModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSpeciesModelImplCopyWith<_$PokemonSpeciesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FlavorTextEntryModel _$FlavorTextEntryModelFromJson(Map<String, dynamic> json) {
  return _FlavorTextEntryModel.fromJson(json);
}

/// @nodoc
mixin _$FlavorTextEntryModel {
  @JsonKey(name: 'flavor_text')
  String get flavorText => throw _privateConstructorUsedError;
  LanguageModel get language => throw _privateConstructorUsedError;

  /// Serializes this FlavorTextEntryModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FlavorTextEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlavorTextEntryModelCopyWith<FlavorTextEntryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlavorTextEntryModelCopyWith<$Res> {
  factory $FlavorTextEntryModelCopyWith(FlavorTextEntryModel value,
          $Res Function(FlavorTextEntryModel) then) =
      _$FlavorTextEntryModelCopyWithImpl<$Res, FlavorTextEntryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'flavor_text') String flavorText,
      LanguageModel language});

  $LanguageModelCopyWith<$Res> get language;
}

/// @nodoc
class _$FlavorTextEntryModelCopyWithImpl<$Res,
        $Val extends FlavorTextEntryModel>
    implements $FlavorTextEntryModelCopyWith<$Res> {
  _$FlavorTextEntryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlavorTextEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorText = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      flavorText: null == flavorText
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageModel,
    ) as $Val);
  }

  /// Create a copy of FlavorTextEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LanguageModelCopyWith<$Res> get language {
    return $LanguageModelCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FlavorTextEntryModelImplCopyWith<$Res>
    implements $FlavorTextEntryModelCopyWith<$Res> {
  factory _$$FlavorTextEntryModelImplCopyWith(_$FlavorTextEntryModelImpl value,
          $Res Function(_$FlavorTextEntryModelImpl) then) =
      __$$FlavorTextEntryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'flavor_text') String flavorText,
      LanguageModel language});

  @override
  $LanguageModelCopyWith<$Res> get language;
}

/// @nodoc
class __$$FlavorTextEntryModelImplCopyWithImpl<$Res>
    extends _$FlavorTextEntryModelCopyWithImpl<$Res, _$FlavorTextEntryModelImpl>
    implements _$$FlavorTextEntryModelImplCopyWith<$Res> {
  __$$FlavorTextEntryModelImplCopyWithImpl(_$FlavorTextEntryModelImpl _value,
      $Res Function(_$FlavorTextEntryModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of FlavorTextEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flavorText = null,
    Object? language = null,
  }) {
    return _then(_$FlavorTextEntryModelImpl(
      flavorText: null == flavorText
          ? _value.flavorText
          : flavorText // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlavorTextEntryModelImpl implements _FlavorTextEntryModel {
  const _$FlavorTextEntryModelImpl(
      {@JsonKey(name: 'flavor_text') required this.flavorText,
      required this.language});

  factory _$FlavorTextEntryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlavorTextEntryModelImplFromJson(json);

  @override
  @JsonKey(name: 'flavor_text')
  final String flavorText;
  @override
  final LanguageModel language;

  @override
  String toString() {
    return 'FlavorTextEntryModel(flavorText: $flavorText, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlavorTextEntryModelImpl &&
            (identical(other.flavorText, flavorText) ||
                other.flavorText == flavorText) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, flavorText, language);

  /// Create a copy of FlavorTextEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlavorTextEntryModelImplCopyWith<_$FlavorTextEntryModelImpl>
      get copyWith =>
          __$$FlavorTextEntryModelImplCopyWithImpl<_$FlavorTextEntryModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlavorTextEntryModelImplToJson(
      this,
    );
  }
}

abstract class _FlavorTextEntryModel implements FlavorTextEntryModel {
  const factory _FlavorTextEntryModel(
      {@JsonKey(name: 'flavor_text') required final String flavorText,
      required final LanguageModel language}) = _$FlavorTextEntryModelImpl;

  factory _FlavorTextEntryModel.fromJson(Map<String, dynamic> json) =
      _$FlavorTextEntryModelImpl.fromJson;

  @override
  @JsonKey(name: 'flavor_text')
  String get flavorText;
  @override
  LanguageModel get language;

  /// Create a copy of FlavorTextEntryModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlavorTextEntryModelImplCopyWith<_$FlavorTextEntryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

GenusModel _$GenusModelFromJson(Map<String, dynamic> json) {
  return _GenusModel.fromJson(json);
}

/// @nodoc
mixin _$GenusModel {
  String get genus => throw _privateConstructorUsedError;
  LanguageModel get language => throw _privateConstructorUsedError;

  /// Serializes this GenusModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GenusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GenusModelCopyWith<GenusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenusModelCopyWith<$Res> {
  factory $GenusModelCopyWith(
          GenusModel value, $Res Function(GenusModel) then) =
      _$GenusModelCopyWithImpl<$Res, GenusModel>;
  @useResult
  $Res call({String genus, LanguageModel language});

  $LanguageModelCopyWith<$Res> get language;
}

/// @nodoc
class _$GenusModelCopyWithImpl<$Res, $Val extends GenusModel>
    implements $GenusModelCopyWith<$Res> {
  _$GenusModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GenusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genus = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      genus: null == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageModel,
    ) as $Val);
  }

  /// Create a copy of GenusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LanguageModelCopyWith<$Res> get language {
    return $LanguageModelCopyWith<$Res>(_value.language, (value) {
      return _then(_value.copyWith(language: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GenusModelImplCopyWith<$Res>
    implements $GenusModelCopyWith<$Res> {
  factory _$$GenusModelImplCopyWith(
          _$GenusModelImpl value, $Res Function(_$GenusModelImpl) then) =
      __$$GenusModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String genus, LanguageModel language});

  @override
  $LanguageModelCopyWith<$Res> get language;
}

/// @nodoc
class __$$GenusModelImplCopyWithImpl<$Res>
    extends _$GenusModelCopyWithImpl<$Res, _$GenusModelImpl>
    implements _$$GenusModelImplCopyWith<$Res> {
  __$$GenusModelImplCopyWithImpl(
      _$GenusModelImpl _value, $Res Function(_$GenusModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of GenusModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genus = null,
    Object? language = null,
  }) {
    return _then(_$GenusModelImpl(
      genus: null == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GenusModelImpl implements _GenusModel {
  const _$GenusModelImpl({required this.genus, required this.language});

  factory _$GenusModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GenusModelImplFromJson(json);

  @override
  final String genus;
  @override
  final LanguageModel language;

  @override
  String toString() {
    return 'GenusModel(genus: $genus, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GenusModelImpl &&
            (identical(other.genus, genus) || other.genus == genus) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, genus, language);

  /// Create a copy of GenusModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GenusModelImplCopyWith<_$GenusModelImpl> get copyWith =>
      __$$GenusModelImplCopyWithImpl<_$GenusModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GenusModelImplToJson(
      this,
    );
  }
}

abstract class _GenusModel implements GenusModel {
  const factory _GenusModel(
      {required final String genus,
      required final LanguageModel language}) = _$GenusModelImpl;

  factory _GenusModel.fromJson(Map<String, dynamic> json) =
      _$GenusModelImpl.fromJson;

  @override
  String get genus;
  @override
  LanguageModel get language;

  /// Create a copy of GenusModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GenusModelImplCopyWith<_$GenusModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LanguageModel _$LanguageModelFromJson(Map<String, dynamic> json) {
  return _LanguageModel.fromJson(json);
}

/// @nodoc
mixin _$LanguageModel {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this LanguageModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageModelCopyWith<LanguageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageModelCopyWith<$Res> {
  factory $LanguageModelCopyWith(
          LanguageModel value, $Res Function(LanguageModel) then) =
      _$LanguageModelCopyWithImpl<$Res, LanguageModel>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$LanguageModelCopyWithImpl<$Res, $Val extends LanguageModel>
    implements $LanguageModelCopyWith<$Res> {
  _$LanguageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageModelImplCopyWith<$Res>
    implements $LanguageModelCopyWith<$Res> {
  factory _$$LanguageModelImplCopyWith(
          _$LanguageModelImpl value, $Res Function(_$LanguageModelImpl) then) =
      __$$LanguageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$LanguageModelImplCopyWithImpl<$Res>
    extends _$LanguageModelCopyWithImpl<$Res, _$LanguageModelImpl>
    implements _$$LanguageModelImplCopyWith<$Res> {
  __$$LanguageModelImplCopyWithImpl(
      _$LanguageModelImpl _value, $Res Function(_$LanguageModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$LanguageModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageModelImpl implements _LanguageModel {
  const _$LanguageModelImpl({required this.name});

  factory _$LanguageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageModelImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'LanguageModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageModelImplCopyWith<_$LanguageModelImpl> get copyWith =>
      __$$LanguageModelImplCopyWithImpl<_$LanguageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageModelImplToJson(
      this,
    );
  }
}

abstract class _LanguageModel implements LanguageModel {
  const factory _LanguageModel({required final String name}) =
      _$LanguageModelImpl;

  factory _LanguageModel.fromJson(Map<String, dynamic> json) =
      _$LanguageModelImpl.fromJson;

  @override
  String get name;

  /// Create a copy of LanguageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageModelImplCopyWith<_$LanguageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
