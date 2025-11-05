// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ability_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AbilityDetailModel _$AbilityDetailModelFromJson(Map<String, dynamic> json) {
  return _AbilityDetailModel.fromJson(json);
}

/// @nodoc
mixin _$AbilityDetailModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<AbilityNameModel> get names => throw _privateConstructorUsedError;

  /// Serializes this AbilityDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AbilityDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AbilityDetailModelCopyWith<AbilityDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityDetailModelCopyWith<$Res> {
  factory $AbilityDetailModelCopyWith(
          AbilityDetailModel value, $Res Function(AbilityDetailModel) then) =
      _$AbilityDetailModelCopyWithImpl<$Res, AbilityDetailModel>;
  @useResult
  $Res call({int id, String name, List<AbilityNameModel> names});
}

/// @nodoc
class _$AbilityDetailModelCopyWithImpl<$Res, $Val extends AbilityDetailModel>
    implements $AbilityDetailModelCopyWith<$Res> {
  _$AbilityDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AbilityDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? names = null,
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
      names: null == names
          ? _value.names
          : names // ignore: cast_nullable_to_non_nullable
              as List<AbilityNameModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbilityDetailModelImplCopyWith<$Res>
    implements $AbilityDetailModelCopyWith<$Res> {
  factory _$$AbilityDetailModelImplCopyWith(_$AbilityDetailModelImpl value,
          $Res Function(_$AbilityDetailModelImpl) then) =
      __$$AbilityDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, List<AbilityNameModel> names});
}

/// @nodoc
class __$$AbilityDetailModelImplCopyWithImpl<$Res>
    extends _$AbilityDetailModelCopyWithImpl<$Res, _$AbilityDetailModelImpl>
    implements _$$AbilityDetailModelImplCopyWith<$Res> {
  __$$AbilityDetailModelImplCopyWithImpl(_$AbilityDetailModelImpl _value,
      $Res Function(_$AbilityDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AbilityDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? names = null,
  }) {
    return _then(_$AbilityDetailModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      names: null == names
          ? _value._names
          : names // ignore: cast_nullable_to_non_nullable
              as List<AbilityNameModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbilityDetailModelImpl extends _AbilityDetailModel {
  const _$AbilityDetailModelImpl(
      {required this.id,
      required this.name,
      required final List<AbilityNameModel> names})
      : _names = names,
        super._();

  factory _$AbilityDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbilityDetailModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  final List<AbilityNameModel> _names;
  @override
  List<AbilityNameModel> get names {
    if (_names is EqualUnmodifiableListView) return _names;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_names);
  }

  @override
  String toString() {
    return 'AbilityDetailModel(id: $id, name: $name, names: $names)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbilityDetailModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._names, _names));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, name, const DeepCollectionEquality().hash(_names));

  /// Create a copy of AbilityDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AbilityDetailModelImplCopyWith<_$AbilityDetailModelImpl> get copyWith =>
      __$$AbilityDetailModelImplCopyWithImpl<_$AbilityDetailModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbilityDetailModelImplToJson(
      this,
    );
  }
}

abstract class _AbilityDetailModel extends AbilityDetailModel {
  const factory _AbilityDetailModel(
      {required final int id,
      required final String name,
      required final List<AbilityNameModel> names}) = _$AbilityDetailModelImpl;
  const _AbilityDetailModel._() : super._();

  factory _AbilityDetailModel.fromJson(Map<String, dynamic> json) =
      _$AbilityDetailModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  List<AbilityNameModel> get names;

  /// Create a copy of AbilityDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AbilityDetailModelImplCopyWith<_$AbilityDetailModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AbilityNameModel _$AbilityNameModelFromJson(Map<String, dynamic> json) {
  return _AbilityNameModel.fromJson(json);
}

/// @nodoc
mixin _$AbilityNameModel {
  String get name => throw _privateConstructorUsedError;
  LanguageModel get language => throw _privateConstructorUsedError;

  /// Serializes this AbilityNameModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AbilityNameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AbilityNameModelCopyWith<AbilityNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbilityNameModelCopyWith<$Res> {
  factory $AbilityNameModelCopyWith(
          AbilityNameModel value, $Res Function(AbilityNameModel) then) =
      _$AbilityNameModelCopyWithImpl<$Res, AbilityNameModel>;
  @useResult
  $Res call({String name, LanguageModel language});

  $LanguageModelCopyWith<$Res> get language;
}

/// @nodoc
class _$AbilityNameModelCopyWithImpl<$Res, $Val extends AbilityNameModel>
    implements $AbilityNameModelCopyWith<$Res> {
  _$AbilityNameModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AbilityNameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? language = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as LanguageModel,
    ) as $Val);
  }

  /// Create a copy of AbilityNameModel
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
abstract class _$$AbilityNameModelImplCopyWith<$Res>
    implements $AbilityNameModelCopyWith<$Res> {
  factory _$$AbilityNameModelImplCopyWith(_$AbilityNameModelImpl value,
          $Res Function(_$AbilityNameModelImpl) then) =
      __$$AbilityNameModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, LanguageModel language});

  @override
  $LanguageModelCopyWith<$Res> get language;
}

/// @nodoc
class __$$AbilityNameModelImplCopyWithImpl<$Res>
    extends _$AbilityNameModelCopyWithImpl<$Res, _$AbilityNameModelImpl>
    implements _$$AbilityNameModelImplCopyWith<$Res> {
  __$$AbilityNameModelImplCopyWithImpl(_$AbilityNameModelImpl _value,
      $Res Function(_$AbilityNameModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AbilityNameModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? language = null,
  }) {
    return _then(_$AbilityNameModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
class _$AbilityNameModelImpl implements _AbilityNameModel {
  const _$AbilityNameModelImpl({required this.name, required this.language});

  factory _$AbilityNameModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbilityNameModelImplFromJson(json);

  @override
  final String name;
  @override
  final LanguageModel language;

  @override
  String toString() {
    return 'AbilityNameModel(name: $name, language: $language)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbilityNameModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, language);

  /// Create a copy of AbilityNameModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AbilityNameModelImplCopyWith<_$AbilityNameModelImpl> get copyWith =>
      __$$AbilityNameModelImplCopyWithImpl<_$AbilityNameModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbilityNameModelImplToJson(
      this,
    );
  }
}

abstract class _AbilityNameModel implements AbilityNameModel {
  const factory _AbilityNameModel(
      {required final String name,
      required final LanguageModel language}) = _$AbilityNameModelImpl;

  factory _AbilityNameModel.fromJson(Map<String, dynamic> json) =
      _$AbilityNameModelImpl.fromJson;

  @override
  String get name;
  @override
  LanguageModel get language;

  /// Create a copy of AbilityNameModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AbilityNameModelImplCopyWith<_$AbilityNameModelImpl> get copyWith =>
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
