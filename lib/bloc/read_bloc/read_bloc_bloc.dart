import 'package:bloc/bloc.dart';
import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_bloc_event.dart';
part 'read_bloc_state.dart';
part 'read_bloc_bloc.freezed.dart';

class ReadBlocBloc extends Bloc<ReadBlocEvent, ReadBlocState> {
  FileManager fileManager;
  ReadBlocBloc(this.fileManager) : super(_Initial()) {
    on<ReadBlocEvent>((event, emit) {
      // TODO: implement e vent handler
    });
  }
}
