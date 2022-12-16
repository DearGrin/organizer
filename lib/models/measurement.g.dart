// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'measurement.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Measurement _$$_MeasurementFromJson(Map<String, dynamic> json) =>
    _$_Measurement(
      addedFiles: (json['addedFiles'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      text: json['text'] as String? ?? "",
    );

Map<String, dynamic> _$$_MeasurementToJson(_$_Measurement instance) =>
    <String, dynamic>{
      'addedFiles': instance.addedFiles,
      'text': instance.text,
    };
