import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:first_approval_app/models/experiment_card_models/card_text_fields.dart';
import 'package:first_approval_app/models/group.dart';
import 'package:first_approval_app/models/sample.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:archive/archive_io.dart';

part 'save_card_event.dart';
part 'save_card_state.dart';
part 'save_card_bloc.freezed.dart';

class SaveCardBloc extends Bloc<SaveCardEvent, SaveCardState> {
  /// не забываем использовать final
  final ExperimentCardTextFields card;
  final List<Group> groups;
  final List<Sample> samples;

  /// [FileCubit] выглядит как репо для работы с файловым менеджером
  /// зачем тогда [FileManager] отдельно получать и использовать
  FileCubit fileCubit;
  FileManager fileManager;
  SaveCardBloc(this.groups, this.samples,
      {required this.card, required this.fileCubit, required this.fileManager})

      /// не забываем использовать const
      : super(const _Initial()) {
    on<SaveCardEvent>((event, emit) {
      event.map(
        save: (event) => _save(event, emit),
      );
    });
  }

  void _save(_Save event, Emitter<SaveCardState> emit) async {
    ///вот тут напрашивается какой-то лоадинг стейт, пока операции в процессе
    String? path = await fileManager.getDirectory();
    if (path == null) return;
    var encoder = ZipFileEncoder();
    encoder.create('$path\\FA.zip');
    encoder.addFile(await fileManager.writeCardToFile(card, path));
    encoder.addFile(await fileManager.writeGroupsToFile(groups, path));
    encoder.addFile(await fileManager.writeSamplesToFile(samples, path));
    for (var file in fileCubit.files) {
      encoder.addFile(File(file));
    }
    encoder.close();
  }
}
