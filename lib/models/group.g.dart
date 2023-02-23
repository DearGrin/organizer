// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GroupAdapter extends TypeAdapter<_$_Group> {
  @override
  final int typeId = 2;

  @override
  _$_Group read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Group(
      name: fields[0] as String,
      groupDescription: fields[1] as String,
      id: fields[2] as int,
      samples: (fields[3] as List).cast<Sample>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_Group obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.groupDescription)
      ..writeByte(2)
      ..write(obj.id)
      ..writeByte(3)
      ..write(obj.samples);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GroupAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Group _$$_GroupFromJson(Map<String, dynamic> json) => _$_Group(
      name: json['name'] as String,
      groupDescription: json['groupDescription'] as String,
      id: json['id'] as int,
      samples: (json['samples'] as List<dynamic>)
          .map((e) => Sample.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GroupToJson(_$_Group instance) => <String, dynamic>{
      'name': instance.name,
      'groupDescription': instance.groupDescription,
      'id': instance.id,
      'samples': instance.samples,
    };
