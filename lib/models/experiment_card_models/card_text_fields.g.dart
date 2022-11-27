// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_text_fields.dart';

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
    };
