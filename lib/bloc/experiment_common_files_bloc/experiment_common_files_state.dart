part of 'experiment_common_files_bloc.dart';

@freezed
class ExperimentCommonFilesState with _$ExperimentCommonFilesState {
  const factory ExperimentCommonFilesState.initial() = _Initial;
  const factory ExperimentCommonFilesState.loaded(List<Attachment> files) = _Loaded;
}
