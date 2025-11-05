// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_pokemon_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class FavoritePokemonModelAdapter extends TypeAdapter<FavoritePokemonModel> {
  @override
  final int typeId = 0;

  @override
  FavoritePokemonModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return FavoritePokemonModel(
      id: fields[0] as int,
      name: fields[1] as String,
      height: fields[2] as int,
      weight: fields[3] as int,
      types: (fields[4] as List).cast<PokemonTypeModel>(),
      abilities: (fields[5] as List).cast<PokemonAbilityModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, FavoritePokemonModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.height)
      ..writeByte(3)
      ..write(obj.weight)
      ..writeByte(4)
      ..write(obj.types)
      ..writeByte(5)
      ..write(obj.abilities);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FavoritePokemonModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PokemonTypeModelAdapter extends TypeAdapter<PokemonTypeModel> {
  @override
  final int typeId = 1;

  @override
  PokemonTypeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonTypeModel(
      slot: fields[0] as int,
      name: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonTypeModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.slot)
      ..writeByte(1)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonTypeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class PokemonAbilityModelAdapter extends TypeAdapter<PokemonAbilityModel> {
  @override
  final int typeId = 2;

  @override
  PokemonAbilityModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonAbilityModel(
      name: fields[0] as String,
      isHidden: fields[1] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, PokemonAbilityModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.isHidden);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonAbilityModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
