// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonDetailModel _$PokemonDetailModelFromJson(Map<String, dynamic> json) {
  return _PokemonDetailModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonDetailModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  List<PokemonTypeModel> get types => throw _privateConstructorUsedError;
  List<PokemonAbilityModel> get abilities => throw _privateConstructorUsedError;

  /// Serializes this PokemonDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonDetailModelCopyWith<PokemonDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonDetailModelCopyWith<$Res> {
  factory $PokemonDetailModelCopyWith(
          PokemonDetailModel value, $Res Function(PokemonDetailModel) then) =
      _$PokemonDetailModelCopyWithImpl<$Res, PokemonDetailModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      List<PokemonTypeModel> types,
      List<PokemonAbilityModel> abilities});
}

/// @nodoc
class _$PokemonDetailModelCopyWithImpl<$Res, $Val extends PokemonDetailModel>
    implements $PokemonDetailModelCopyWith<$Res> {
  _$PokemonDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? abilities = null,
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
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeModel>,
      abilities: null == abilities
          ? _value.abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<PokemonAbilityModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonDetailModelImplCopyWith<$Res>
    implements $PokemonDetailModelCopyWith<$Res> {
  factory _$$PokemonDetailModelImplCopyWith(_$PokemonDetailModelImpl value,
          $Res Function(_$PokemonDetailModelImpl) then) =
      __$$PokemonDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      int height,
      int weight,
      List<PokemonTypeModel> types,
      List<PokemonAbilityModel> abilities});
}

/// @nodoc
class __$$PokemonDetailModelImplCopyWithImpl<$Res>
    extends _$PokemonDetailModelCopyWithImpl<$Res, _$PokemonDetailModelImpl>
    implements _$$PokemonDetailModelImplCopyWith<$Res> {
  __$$PokemonDetailModelImplCopyWithImpl(_$PokemonDetailModelImpl _value,
      $Res Function(_$PokemonDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? height = null,
    Object? weight = null,
    Object? types = null,
    Object? abilities = null,
  }) {
    return _then(_$PokemonDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<PokemonTypeModel>,
      abilities: null == abilities
          ? _value._abilities
          : abilities // ignore: cast_nullable_to_non_nullable
              as List<PokemonAbilityModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonDetailModelImpl implements _PokemonDetailModel {
  const _$PokemonDetailModelImpl(
      {required this.id,
      required this.name,
      required this.height,
      required this.weight,
      required final List<PokemonTypeModel> types,
      required final List<PokemonAbilityModel> abilities})
      : _types = types,
        _abilities = abilities;

  factory _$PokemonDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonDetailModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final int height;
  @override
  final int weight;
  final List<PokemonTypeModel> _types;
  @override
  List<PokemonTypeModel> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  final List<PokemonAbilityModel> _abilities;
  @override
  List<PokemonAbilityModel> get abilities {
    if (_abilities is EqualUnmodifiableListView) return _abilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_abilities);
  }

  @override
  String toString() {
    return 'PokemonDetailModel(id: $id, name: $name, height: $height, weight: $weight, types: $types, abilities: $abilities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            const DeepCollectionEquality()
                .equals(other._abilities, _abilities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      height,
      weight,
      const DeepCollectionEquality().hash(_types),
      const DeepCollectionEquality().hash(_abilities));

  /// Create a copy of PokemonDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonDetailModelImplCopyWith<_$PokemonDetailModelImpl> get copyWith =>
      __$$PokemonDetailModelImplCopyWithImpl<_$PokemonDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonDetailModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonDetailModel implements PokemonDetailModel {
  const factory _PokemonDetailModel(
          {required final int id,
          required final String name,
          required final int height,
          required final int weight,
          required final List<PokemonTypeModel> types,
          required final List<PokemonAbilityModel> abilities}) =
      _$PokemonDetailModelImpl;

  factory _PokemonDetailModel.fromJson(Map<String, dynamic> json) =
      _$PokemonDetailModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  int get height;
  @override
  int get weight;
  @override
  List<PokemonTypeModel> get types;
  @override
  List<PokemonAbilityModel> get abilities;

  /// Create a copy of PokemonDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonDetailModelImplCopyWith<_$PokemonDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonTypeModel _$PokemonTypeModelFromJson(Map<String, dynamic> json) {
  return _PokemonTypeModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeModel {
  int get slot => throw _privateConstructorUsedError;
  TypeInfoModel get type => throw _privateConstructorUsedError;

  /// Serializes this PokemonTypeModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonTypeModelCopyWith<PokemonTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeModelCopyWith<$Res> {
  factory $PokemonTypeModelCopyWith(
          PokemonTypeModel value, $Res Function(PokemonTypeModel) then) =
      _$PokemonTypeModelCopyWithImpl<$Res, PokemonTypeModel>;
  @useResult
  $Res call({int slot, TypeInfoModel type});

  $TypeInfoModelCopyWith<$Res> get type;
}

/// @nodoc
class _$PokemonTypeModelCopyWithImpl<$Res, $Val extends PokemonTypeModel>
    implements $PokemonTypeModelCopyWith<$Res> {
  _$PokemonTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeInfoModel,
    ) as $Val);
  }

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TypeInfoModelCopyWith<$Res> get type {
    return $TypeInfoModelCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonTypeModelImplCopyWith<$Res>
    implements $PokemonTypeModelCopyWith<$Res> {
  factory _$$PokemonTypeModelImplCopyWith(_$PokemonTypeModelImpl value,
          $Res Function(_$PokemonTypeModelImpl) then) =
      __$$PokemonTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int slot, TypeInfoModel type});

  @override
  $TypeInfoModelCopyWith<$Res> get type;
}

/// @nodoc
class __$$PokemonTypeModelImplCopyWithImpl<$Res>
    extends _$PokemonTypeModelCopyWithImpl<$Res, _$PokemonTypeModelImpl>
    implements _$$PokemonTypeModelImplCopyWith<$Res> {
  __$$PokemonTypeModelImplCopyWithImpl(_$PokemonTypeModelImpl _value,
      $Res Function(_$PokemonTypeModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slot = null,
    Object? type = null,
  }) {
    return _then(_$PokemonTypeModelImpl(
      slot: null == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TypeInfoModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonTypeModelImpl implements _PokemonTypeModel {
  const _$PokemonTypeModelImpl({required this.slot, required this.type});

  factory _$PokemonTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeModelImplFromJson(json);

  @override
  final int slot;
  @override
  final TypeInfoModel type;

  @override
  String toString() {
    return 'PokemonTypeModel(slot: $slot, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeModelImpl &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, slot, type);

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeModelImplCopyWith<_$PokemonTypeModelImpl> get copyWith =>
      __$$PokemonTypeModelImplCopyWithImpl<_$PokemonTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypeModel implements PokemonTypeModel {
  const factory _PokemonTypeModel(
      {required final int slot,
      required final TypeInfoModel type}) = _$PokemonTypeModelImpl;

  factory _PokemonTypeModel.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeModelImpl.fromJson;

  @override
  int get slot;
  @override
  TypeInfoModel get type;

  /// Create a copy of PokemonTypeModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonTypeModelImplCopyWith<_$PokemonTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

TypeInfoModel _$TypeInfoModelFromJson(Map<String, dynamic> json) {
  return _TypeInfoModel.fromJson(json);
}

/// @nodoc
mixin _$TypeInfoModel {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this TypeInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TypeInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TypeInfoModelCopyWith<TypeInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeInfoModelCopyWith<$Res> {
  factory $TypeInfoModelCopyWith(
          TypeInfoModel value, $Res Function(TypeInfoModel) then) =
      _$TypeInfoModelCopyWithImpl<$Res, TypeInfoModel>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$TypeInfoModelCopyWithImpl<$Res, $Val extends TypeInfoModel>
    implements $TypeInfoModelCopyWith<$Res> {
  _$TypeInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TypeInfoModel
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
abstract class _$$TypeInfoModelImplCopyWith<$Res>
    implements $TypeInfoModelCopyWith<$Res> {
  factory _$$TypeInfoModelImplCopyWith(
          _$TypeInfoModelImpl value, $Res Function(_$TypeInfoModelImpl) then) =
      __$$TypeInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$TypeInfoModelImplCopyWithImpl<$Res>
    extends _$TypeInfoModelCopyWithImpl<$Res, _$TypeInfoModelImpl>
    implements _$$TypeInfoModelImplCopyWith<$Res> {
  __$$TypeInfoModelImplCopyWithImpl(
      _$TypeInfoModelImpl _value, $Res Function(_$TypeInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TypeInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$TypeInfoModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypeInfoModelImpl implements _TypeInfoModel {
  const _$TypeInfoModelImpl({required this.name});

  factory _$TypeInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypeInfoModelImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'TypeInfoModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypeInfoModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of TypeInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TypeInfoModelImplCopyWith<_$TypeInfoModelImpl> get copyWith =>
      __$$TypeInfoModelImplCopyWithImpl<_$TypeInfoModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypeInfoModelImplToJson(
      this,
    );
  }
}

abstract class _TypeInfoModel implements TypeInfoModel {
  const factory _TypeInfoModel({required final String name}) =
      _$TypeInfoModelImpl;

  factory _TypeInfoModel.fromJson(Map<String, dynamic> json) =
      _$TypeInfoModelImpl.fromJson;

  @override
  String get name;

  /// Create a copy of TypeInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TypeInfoModelImplCopyWith<_$TypeInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PokemonAbilityModel _$PokemonAbilityModelFromJson(Map<String, dynamic> json) {
  return _PokemonAbilityModel.fromJson(json);
}

/// @nodoc
mixin _$PokemonAbilityModel {
// ignore: invalid_annotation_target
  @JsonKey(name: 'is_hidden')
  bool get isHidden => throw _privateConstructorUsedError;
  AbilityInfoModel get ability => throw _privateConstructorUsedError;

  /// Serializes this PokemonAbilityModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonAbilityModelCopyWith<PokemonAbilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonAbilityModelCopyWith<$Res> {
  factory $PokemonAbilityModelCopyWith(
          PokemonAbilityModel value, $Res Function(PokemonAbilityModel) then) =
      _$PokemonAbilityModelCopyWithImpl<$Res, PokemonAbilityModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'is_hidden') bool isHidden, AbilityInfoModel ability});

  $AbilityInfoModelCopyWith<$Res> get ability;
}

/// @nodoc
class _$PokemonAbilityModelCopyWithImpl<$Res, $Val extends PokemonAbilityModel>
    implements $PokemonAbilityModelCopyWith<$Res> {
  _$PokemonAbilityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHidden = null,
    Object? ability = null,
  }) {
    return _then(_value.copyWith(
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as AbilityInfoModel,
    ) as $Val);
  }

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AbilityInfoModelCopyWith<$Res> get ability {
    return $AbilityInfoModelCopyWith<$Res>(_value.ability, (value) {
      return _then(_value.copyWith(ability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PokemonAbilityModelImplCopyWith<$Res>
    implements $PokemonAbilityModelCopyWith<$Res> {
  factory _$$PokemonAbilityModelImplCopyWith(_$PokemonAbilityModelImpl value,
          $Res Function(_$PokemonAbilityModelImpl) then) =
      __$$PokemonAbilityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'is_hidden') bool isHidden, AbilityInfoModel ability});

  @override
  $AbilityInfoModelCopyWith<$Res> get ability;
}

/// @nodoc
class __$$PokemonAbilityModelImplCopyWithImpl<$Res>
    extends _$PokemonAbilityModelCopyWithImpl<$Res, _$PokemonAbilityModelImpl>
    implements _$$PokemonAbilityModelImplCopyWith<$Res> {
  __$$PokemonAbilityModelImplCopyWithImpl(_$PokemonAbilityModelImpl _value,
      $Res Function(_$PokemonAbilityModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isHidden = null,
    Object? ability = null,
  }) {
    return _then(_$PokemonAbilityModelImpl(
      isHidden: null == isHidden
          ? _value.isHidden
          : isHidden // ignore: cast_nullable_to_non_nullable
              as bool,
      ability: null == ability
          ? _value.ability
          : ability // ignore: cast_nullable_to_non_nullable
              as AbilityInfoModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonAbilityModelImpl implements _PokemonAbilityModel {
  const _$PokemonAbilityModelImpl(
      {@JsonKey(name: 'is_hidden') this.isHidden = false,
      required this.ability});

  factory _$PokemonAbilityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonAbilityModelImplFromJson(json);

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'is_hidden')
  final bool isHidden;
  @override
  final AbilityInfoModel ability;

  @override
  String toString() {
    return 'PokemonAbilityModel(isHidden: $isHidden, ability: $ability)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonAbilityModelImpl &&
            (identical(other.isHidden, isHidden) ||
                other.isHidden == isHidden) &&
            (identical(other.ability, ability) || other.ability == ability));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, isHidden, ability);

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonAbilityModelImplCopyWith<_$PokemonAbilityModelImpl> get copyWith =>
      __$$PokemonAbilityModelImplCopyWithImpl<_$PokemonAbilityModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonAbilityModelImplToJson(
      this,
    );
  }
}

abstract class _PokemonAbilityModel implements PokemonAbilityModel {
  const factory _PokemonAbilityModel(
      {@JsonKey(name: 'is_hidden') final bool isHidden,
      required final AbilityInfoModel ability}) = _$PokemonAbilityModelImpl;

  factory _PokemonAbilityModel.fromJson(Map<String, dynamic> json) =
      _$PokemonAbilityModelImpl.fromJson;

// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'is_hidden')
  bool get isHidden;
  @override
  AbilityInfoModel get ability;

  /// Create a copy of PokemonAbilityModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonAbilityModelImplCopyWith<_$PokemonAbilityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AbilityInfoModel _$AbilityInfoModelFromJson(Map<String, dynamic> json) {
  return _AbilityInfoModel.fromJson(json);
}

/// @nodoc
mixin _$AbilityInfoModel {
  String get name => throw _privateConstructorUsedError;

  /// Serializes this AbilityInfoModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AbilityInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AbilityInfoModelCopyWith<AbilityInfoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityInfoModelCopyWith<$Res> {
  factory $AbilityInfoModelCopyWith(
          AbilityInfoModel value, $Res Function(AbilityInfoModel) then) =
      _$AbilityInfoModelCopyWithImpl<$Res, AbilityInfoModel>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$AbilityInfoModelCopyWithImpl<$Res, $Val extends AbilityInfoModel>
    implements $AbilityInfoModelCopyWith<$Res> {
  _$AbilityInfoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AbilityInfoModel
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
abstract class _$$AbilityInfoModelImplCopyWith<$Res>
    implements $AbilityInfoModelCopyWith<$Res> {
  factory _$$AbilityInfoModelImplCopyWith(_$AbilityInfoModelImpl value,
          $Res Function(_$AbilityInfoModelImpl) then) =
      __$$AbilityInfoModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$AbilityInfoModelImplCopyWithImpl<$Res>
    extends _$AbilityInfoModelCopyWithImpl<$Res, _$AbilityInfoModelImpl>
    implements _$$AbilityInfoModelImplCopyWith<$Res> {
  __$$AbilityInfoModelImplCopyWithImpl(_$AbilityInfoModelImpl _value,
      $Res Function(_$AbilityInfoModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AbilityInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$AbilityInfoModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbilityInfoModelImpl implements _AbilityInfoModel {
  const _$AbilityInfoModelImpl({required this.name});

  factory _$AbilityInfoModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbilityInfoModelImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'AbilityInfoModel(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbilityInfoModelImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  /// Create a copy of AbilityInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AbilityInfoModelImplCopyWith<_$AbilityInfoModelImpl> get copyWith =>
      __$$AbilityInfoModelImplCopyWithImpl<_$AbilityInfoModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbilityInfoModelImplToJson(
      this,
    );
  }
}

abstract class _AbilityInfoModel implements AbilityInfoModel {
  const factory _AbilityInfoModel({required final String name}) =
      _$AbilityInfoModelImpl;

  factory _AbilityInfoModel.fromJson(Map<String, dynamic> json) =
      _$AbilityInfoModelImpl.fromJson;

  @override
  String get name;

  /// Create a copy of AbilityInfoModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AbilityInfoModelImplCopyWith<_$AbilityInfoModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
