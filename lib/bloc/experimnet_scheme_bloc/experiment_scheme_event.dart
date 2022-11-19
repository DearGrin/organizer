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


  const factory ExperimentSchemeEvent.groupSamplesById({
    required int id,
  }) = _GroupSamplesById;
}
