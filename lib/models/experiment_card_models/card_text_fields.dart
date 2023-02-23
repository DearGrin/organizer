import 'package:first_approval_app/hive/hive_types.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'card_text_fields.freezed.dart';
part 'card_text_fields.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ExperimentCardTextFields with _$ExperimentCardTextFields {
  @HiveType(typeId: HiveTypes.experimentInfo, adapterName: HiveAdapterNames.experimentInfo)
  factory ExperimentCardTextFields({
    @Default('') @HiveField(0) String goal,
    @Default('') @HiveField(1) String description,
    @Default('') @HiveField(2) String date,
    @Default('') @HiveField(3) String method,
    @Default('') @HiveField(4) String object,
    @Default('') @HiveField(5) String device,
    @Default('') @HiveField(6) String soft,
    @Default('') @HiveField(7) String name,
  }) = _ExperimentCardTextFields;

  factory ExperimentCardTextFields.fromJson(
    Map<String, Object?> json,
  ) =>
      _$ExperimentCardTextFieldsFromJson(json);
}
