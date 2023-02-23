// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AttachmentAdapter extends TypeAdapter<_$_Attachment> {
  @override
  final int typeId = 5;

  @override
  _$_Attachment read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Attachment(
      fileName: fields[0] as String,
      filePath: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Attachment obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.fileName)
      ..writeByte(1)
      ..write(obj.filePath);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AttachmentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Attachment _$$_AttachmentFromJson(Map<String, dynamic> json) =>
    _$_Attachment(
      fileName: json['file_name'] as String,
      filePath: json['file_path'] as String,
    );

Map<String, dynamic> _$$_AttachmentToJson(_$_Attachment instance) =>
    <String, dynamic>{
      'file_name': instance.fileName,
      'file_path': instance.filePath,
    };
