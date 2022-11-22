// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listsettings.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SettingsAdapter extends TypeAdapter<Settings> {
  @override
  final int typeId = 20;

  @override
  Settings read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Settings(
      name: fields[0] as String?,
      firstname: fields[1] as String?,
      job: fields[2] as String?,
      phonenumber: fields[3] as String?,
      email: fields[4] as String?,
      Institution: (fields[5] as List?)?.cast<ListInstitution>(),
    );
  }

  @override
  void write(BinaryWriter writer, Settings obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.firstname)
      ..writeByte(2)
      ..write(obj.job)
      ..writeByte(3)
      ..write(obj.phonenumber)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.Institution);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SettingsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ListInstitutionAdapter extends TypeAdapter<ListInstitution> {
  @override
  final int typeId = 30;

  @override
  ListInstitution read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ListInstitution(
      institution: fields[0] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ListInstitution obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.institution);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListInstitutionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}