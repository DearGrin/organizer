// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MeasurementAdapter extends TypeAdapter<_$_Measurement> {
  @override
  final int typeId = 4;

  @override
  _$_Measurement read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Measurement(
      addedFiles: (fields[0] as List).cast<Attachment>(),
      text: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Measurement obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.addedFiles)
      ..writeByte(1)
      ..write(obj.text);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MeasurementAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Measurement _$$_MeasurementFromJson(Map<String, dynamic> json) =>
    _$_Measurement(
      addedFiles: (json['addedFiles'] as List<dynamic>)
          .map((e) => Attachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      text: json['text'] as String? ?? "",
    );

Map<String, dynamic> _$$_MeasurementToJson(_$_Measurement instance) =>
    <String, dynamic>{
      'addedFiles': instance.addedFiles,
      'text': instance.text,
    };
