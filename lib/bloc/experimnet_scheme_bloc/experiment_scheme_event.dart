part of 'experiment_scheme_bloc.dart';

@freezed
class ExperimentSchemeEvent with _$ExperimentSchemeEvent {
  const factory ExperimentSchemeEvent.addNewSample({
    required String text,
    required String title,
  }) = _AddNewSample;

  const factory ExperimentSchemeEvent.addSampleToGroup({
    required String text,
    required String title,
    required int id,
  }) = _AddSample;

  const factory ExperimentSchemeEvent.editSample({
    required Sample sample,
    required int idGroup,
  }) = _EditSample;

  const factory ExperimentSchemeEvent.addMeasurementToSample({
    required int groupId,
    required int sampleId,
    required Measurement measurment,
  }) = _AddMeasurementToSample;

  const factory ExperimentSchemeEvent.addUngroupedSamplesToGroup({
    String? name,
  }) = _AddUngroupedSamplesToGroup;

  const factory ExperimentSchemeEvent.addFilesToMeasurement({
    required int measurementId,
    required int groupId,
    required int sampleId,
  }) = _AddFilesToMeasurement;

  const factory ExperimentSchemeEvent.createNewEmptyGroup() =
      _CreateNewEmptyGroup;
}
