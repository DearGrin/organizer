import 'package:freezed_annotation/freezed_annotation.dart';
part 'card_text_fields.freezed.dart';
part 'card_text_fields.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class ExperimentCardTextFields with _$ExperimentCardTextFields {
  factory ExperimentCardTextFields({
    @Default('') String goal,
    @Default('') String description,
    @Default('') String date,
    @Default('') String method,
    @Default('') String object,
    @Default('') String device,
    @Default('') String soft,
  }) = _ExperimentCardTextFields;

  factory ExperimentCardTextFields.fromJson(
    Map<String, Object?> json,
  ) =>
      _$ExperimentCardTextFieldsFromJson(json);
}
