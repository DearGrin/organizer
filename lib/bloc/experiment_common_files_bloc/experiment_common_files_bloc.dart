import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:first_approval_app/file_service/file_service.dart';
import 'package:first_approval_app/models/attachment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'experiment_common_files_event.dart';
part 'experiment_common_files_state.dart';
part 'experiment_common_files_bloc.freezed.dart';

class ExperimentCommonFilesBloc extends Bloc<ExperimentCommonFilesEvent, ExperimentCommonFilesState> {
  ExperimentCommonFilesBloc() : super(const ExperimentCommonFilesState.initial()) {
    on<ExperimentCommonFilesEvent>((event, emit) async{
      await event.map<FutureOr<void>>(
          init: (event) => _init(event, emit),
          addFiles: (event) => _addFiles(event, emit),
          deleteFile: (event) => _deleteFile(event, emit),
      );
    });
  }
  List<Attachment> files = [];

  void _init(
      _Init event,
      Emitter<ExperimentCommonFilesState> emit,
      ){
    if(event.files !=null){
      files.addAll(event.files!);
    }
    emit(ExperimentCommonFilesState.loaded(files));
  }

  Future<void> _addFiles(
      _AddFiles event,
      Emitter<ExperimentCommonFilesState> emit,
      ) async {
    List<Attachment> pickedFiles = await FileService.instance.pickFiles();
    print(pickedFiles);
    files.addAll(pickedFiles);
    emit(const ExperimentCommonFilesState.initial());
    emit(ExperimentCommonFilesState.loaded(files));
  }

  void _deleteFile(
      _DeleteFile event,
      Emitter<ExperimentCommonFilesState> emit,
      ) {
    files.removeAt(event.index);
    emit(const ExperimentCommonFilesState.initial());
    emit(ExperimentCommonFilesState.loaded(files));
  }

}
