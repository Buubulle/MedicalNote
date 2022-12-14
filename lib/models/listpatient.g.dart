// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'listpatient.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PatientsAdapter extends TypeAdapter<Patients> {
  @override
  final int typeId = 0;

  @override
  Patients read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Patients(
      name: fields[0] as String?,
      firstname: fields[1] as String?,
      dateofbirth: fields[3] as String?,
      email: fields[4] as String?,
      phonenumber: fields[5] as String?,
      date: fields[6] as DateTime?,
      id: fields[7] as int?,
      listOfNotes: (fields[8] as List?)?.cast<ListNote>(),
    );
  }

  @override
  void write(BinaryWriter writer, Patients obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.firstname)
      ..writeByte(3)
      ..write(obj.dateofbirth)
      ..writeByte(4)
      ..write(obj.email)
      ..writeByte(5)
      ..write(obj.phonenumber)
      ..writeByte(6)
      ..write(obj.date)
      ..writeByte(7)
      ..write(obj.id)
      ..writeByte(8)
      ..write(obj.listOfNotes);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PatientsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ListNoteAdapter extends TypeAdapter<ListNote> {
  @override
  final int typeId = 10;

  @override
  ListNote read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ListNote(
      title: fields[1] as String?,
      note: fields[2] as String?,
      conclusion: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ListNote obj) {
    writer
      ..writeByte(3)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.note)
      ..writeByte(3)
      ..write(obj.conclusion);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ListNoteAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
