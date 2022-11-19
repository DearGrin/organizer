// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Group _$$_GroupFromJson(Map<String, dynamic> json) => _$_Group(
      name: json['name'] as String,
      id: json['id'] as int,
      samples: (json['samples'] as List<dynamic>)
          .map((e) => Sample.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_GroupToJson(_$_Group instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'samples': instance.samples,
    };
