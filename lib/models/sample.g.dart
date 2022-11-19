// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Sample _$$_SampleFromJson(Map<String, dynamic> json) => _$_Sample(
      id: json['id'] as int,
      tittle: json['tittle'] as String,
      text: json['text'] as String,
      attachments: (json['attachments'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_SampleToJson(_$_Sample instance) => <String, dynamic>{
      'id': instance.id,
      'tittle': instance.tittle,
      'text': instance.text,
      'attachments': instance.attachments,
    };
