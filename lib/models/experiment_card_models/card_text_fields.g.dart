// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_text_fields.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ExperimentInfoAdapter extends TypeAdapter<_$_ExperimentCardTextFields> {
  @override
  final int typeId = 1;

  @override
  _$_ExperimentCardTextFields read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_ExperimentCardTextFields(
      goal: fields[0] as String,
      description: fields[1] as String,
      date: fields[2] as String,
      method: fields[3] as String,
      object: fields[4] as String,
      device: fields[5] as String,
      soft: fields[6] as String,
      name: fields[7] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_ExperimentCardTextFields obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.goal)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.date)
      ..writeByte(3)
      ..write(obj.method)
      ..writeByte(4)
      ..write(obj.object)
      ..writeByte(5)
      ..write(obj.device)
      ..writeByte(6)
      ..write(obj.soft)
      ..writeByte(7)
      ..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExperimentInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ExperimentCardTextFields _$$_ExperimentCardTextFieldsFromJson(
        Map<String, dynamic> json) =>
    _$_ExperimentCardTextFields(
      goal: json['goal'] as String? ?? '',
      description: json['description'] as String? ?? '',
      date: json['date'] as String? ?? '',
      method: json['method'] as String? ?? '',
      object: json['object'] as String? ?? '',
      device: json['device'] as String? ?? '',
      soft: json['soft'] as String? ?? '',
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$_ExperimentCardTextFieldsToJson(
        _$_ExperimentCardTextFields instance) =>
    <String, dynamic>{
      'goal': instance.goal,
      'description': instance.description,
      'date': instance.date,
      'method': instance.method,
      'object': instance.object,
      'device': instance.device,
      'soft': instance.soft,
      'name': instance.name,
    };
