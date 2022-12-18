part of 'read_bloc_bloc.dart';

@freezed
class ReadBlocState with _$ReadBlocState {
  const factory ReadBlocState.initial(
    ExperimentCardTextFields card,
  ) = _Initial;
}
