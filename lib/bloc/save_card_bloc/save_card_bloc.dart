import 'package:bloc/bloc.dart';
import 'package:first_approval_app/bloc/experiment_card_bloc/experiment_card_bloc.dart';
import 'package:first_approval_app/bloc/experimnet_scheme_bloc/experiment_scheme_bloc.dart';
import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:first_approval_app/repositorys/experiment_card_repository.dart';
import 'package:first_approval_app/repositorys/samples_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

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
    fileManager.writeCardToFile(cardRepo.fields.first, path);
    fileManager.writeSchemeToFile(schemeRepo, path);
  }

  void _acrhive() {}
}
