part of 'experiment_common_files_bloc.dart';

@freezed
class ExperimentCommonFilesEvent with _$ExperimentCommonFilesEvent {
  const factory ExperimentCommonFilesEvent.init(List<Attachment>? files) = _Init;
  const factory ExperimentCommonFilesEvent.addFiles() = _AddFiles;
  const factory ExperimentCommonFilesEvent.deleteFile(int index) = _DeleteFile;
}
