part of 'experiment_card_bloc.dart';

@freezed
class ExperimentCardEvent with _$ExperimentCardEvent {
  const factory ExperimentCardEvent.saveCard(
    ExperimentCardTextFields card,
  ) = _SaveCard;
  const factory ExperimentCardEvent.fieldFilled(
    String fieldName,
    String text,
  ) = _FieldFilled;
}