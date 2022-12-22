import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:first_approval_app/repositorys/experiment_card_repository.dart';
import 'package:first_approval_app/repositorys/samples_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:archive/archive_io.dart';

part 'save_card_event.dart';
part 'save_card_state.dart';
part 'save_card_bloc.freezed.dart';

class SaveCardBloc extends Bloc<SaveCardEvent, SaveCardState> {
  ExperimentCardRepository cardRepo;
  SampleRepository schemeRepo;
  FileCubit fileCubit;
  FileManager fileManager;
  SaveCardBloc(
      {required this.cardRepo,
      required this.schemeRepo,
      required this.fileCubit,
      required this.fileManager})
      : super(_Initial()) {
    on<SaveCardEvent>((event, emit) {
      event.map(
        save: (event) => _save(event, emit),
      );
    });
  }

  void _save(_Save event, Emitter<SaveCardState> emit) async {
    String? path = await fileManager.getDirectory();
    if (path == null) return;
    var encoder = ZipFileEncoder();
    encoder.create('$path\\FA.zip');
    encoder.addFile(
        await fileManager.writeCardToFile(cardRepo.fields.first, path));
    encoder.addFile(await fileManager.writeSchemeToFile(schemeRepo, path));
    for (var file in fileCubit.files) {
      encoder.addFile(File(file));
    }
    encoder.close();
  }
}
