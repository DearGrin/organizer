import 'package:bloc/bloc.dart';
import 'dart:io';

part 'experiment_card_state.dart';

class ExperimentCardCubit extends Cubit<ExperimentState> {
  ExperimentCardCubit() : super(ExperimentState());
  ExperimentState expState = ExperimentState();

  void experimentGoalNote(String experimentGoal) {
    emit(ExperimentState());
  }
}
