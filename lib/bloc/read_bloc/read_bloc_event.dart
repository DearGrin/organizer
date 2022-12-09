part of 'read_bloc_bloc.dart';

@freezed
class ReadBlocEvent with _$ReadBlocEvent {
  const factory ReadBlocEvent.started() = _Started;
}