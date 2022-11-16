part of 'experiment_scheme_bloc.dart';

@freezed
class ExperimentSchemeEvent with _$ExperimentSchemeEvent {
  const factory ExperimentSchemeEvent.addNewSample() = _AddNewSample;
  const factory ExperimentSchemeEvent.addSampleToGroup({
    required int id,
  }) = _AddSampleToGroup;
  const factory ExperimentSchemeEvent.groupSamplesById({
    required int id,
  }) = _GroupSamplesById;
}
