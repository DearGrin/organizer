// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'experiment.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExperimentAdapter extends TypeAdapter<_$_Experiment> {
  @override
  final int typeId = 0;

  @override
  _$_Experiment read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Experiment(
      info: fields[0] as ExperimentCardTextFields,
      files: (fields[1] as List).cast<Attachment>(),
      groups: (fields[2] as List).cast<Group>(),
      ungroupedSamples: (fields[3] as List).cast<Sample>(),
      id: fields[4] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Experiment obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.info)
      ..writeByte(4)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.files)
      ..writeByte(2)
      ..write(obj.groups)
      ..writeByte(3)
      ..write(obj.ungroupedSamples);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExperimentAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Experiment _$$_ExperimentFromJson(Map<String, dynamic> json) =>
    _$_Experiment(
      info: ExperimentCardTextFields.fromJson(
          json['info'] as Map<String, dynamic>),
      files: (json['files'] as List<dynamic>)
          .map((e) => Attachment.fromJson(e as Map<String, dynamic>))
          .toList(),
      groups: (json['groups'] as List<dynamic>)
          .map((e) => Group.fromJson(e as Map<String, dynamic>))
          .toList(),
      ungroupedSamples: (json['ungrouped_samples'] as List<dynamic>)
          .map((e) => Sample.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: json['id'] as int,
    );

Map<String, dynamic> _$$_ExperimentToJson(_$_Experiment instance) =>
    <String, dynamic>{
      'info': instance.info.toJson(),
      'files': instance.files.map((e) => e.toJson()).toList(),
      'groups': instance.groups.map((e) => e.toJson()).toList(),
      'ungrouped_samples':
          instance.ungroupedSamples.map((e) => e.toJson()).toList(),
      'id': instance.id,
    };
