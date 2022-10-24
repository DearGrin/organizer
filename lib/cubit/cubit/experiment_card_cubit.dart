import 'package:bloc/bloc.dart';
import 'dart:io';

part 'experiment_card_state.dart';

class ExperimentCardCubit extends Cubit<ExperimentCardState> {
  ExperimentCardCubit() : super(ExperimentCardState());
  ExperimentCardState expState = ExperimentCardState();

  void experimentGoalNote(String experimentGoal) {
    emit(ExperimentCardState());
  }
}
