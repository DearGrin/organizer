// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SampleAdapter extends TypeAdapter<_$_Sample> {
  @override
  final int typeId = 3;

  @override
  _$_Sample read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Sample(
      id: fields[0] as int,
      title: fields[1] as String,
      text: fields[2] as String,
      measurements: (fields[3] as List).cast<Measurement>(),
      attachments: (fields[4] as List).cast<Attachment>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_Sample obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.text)
      ..writeByte(3)
      ..write(obj.measurements)
      ..writeByte(4)
      ..write(obj.attachments);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SampleAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sample _$$_SampleFromJson(Map<String, dynamic> json) => _$_Sample(
      id: json['id'] as int,
      title: json['title'] as String,
      text: json['text'] as String,
      measurements: (json['measurements'] as List<dynamic>?)
              ?.map((e) => Measurement.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => Attachment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SampleToJson(_$_Sample instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'text': instance.text,
      'measurements': instance.measurements,
      'attachments': instance.attachments,
    };
