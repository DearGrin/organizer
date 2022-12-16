// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sample.dart';

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
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_SampleToJson(_$_Sample instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'text': instance.text,
      'measurements': instance.measurements,
      'attachments': instance.attachments,
    };
