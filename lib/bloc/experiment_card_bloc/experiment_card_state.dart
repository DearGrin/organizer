part of 'experiment_card_bloc.dart';

@freezed
class ExperimentCardState with _$ExperimentCardState {
  const factory ExperimentCardState.saved(
    ExperimentCardTextFields card,
  ) = _Saved;
}
