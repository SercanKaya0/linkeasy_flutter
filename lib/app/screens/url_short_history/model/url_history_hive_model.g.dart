// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'url_history_hive_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class URLHistoryHiveModelAdapter extends TypeAdapter<URLHistoryHiveModel> {
  @override
  final int typeId = 0;

  @override
  URLHistoryHiveModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return URLHistoryHiveModel(
      code: fields[1] as String?,
      fullShareLink: fields[9] as String?,
      fullShortLink: fields[3] as String?,
      fullShortLink2: fields[5] as String?,
      fullShortLink3: fields[7] as String?,
      originalLink: fields[10] as String?,
      shareLink: fields[8] as String?,
      copiedButton: fields[11] as bool?,
      shortLink: fields[2] as String?,
      shortLink2: fields[4] as String?,
      shortLink3: fields[6] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, URLHistoryHiveModel obj) {
    writer
      ..writeByte(11)
      ..writeByte(1)
      ..write(obj.code)
      ..writeByte(2)
      ..write(obj.shortLink)
      ..writeByte(3)
      ..write(obj.fullShortLink)
      ..writeByte(4)
      ..write(obj.shortLink2)
      ..writeByte(5)
      ..write(obj.fullShortLink2)
      ..writeByte(6)
      ..write(obj.shortLink3)
      ..writeByte(7)
      ..write(obj.fullShortLink3)
      ..writeByte(8)
      ..write(obj.shareLink)
      ..writeByte(9)
      ..write(obj.fullShareLink)
      ..writeByte(10)
      ..write(obj.originalLink)
      ..writeByte(11)
      ..write(obj.copiedButton);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is URLHistoryHiveModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
