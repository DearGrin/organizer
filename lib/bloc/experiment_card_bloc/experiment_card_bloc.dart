import 'package:bloc/bloc.dart';
import 'package:first_approval_app/models/experiment_card_models/card_text_fields.dart';
import 'package:first_approval_app/repositorys/experiment_card_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'experiment_card_event.dart';
part 'experiment_card_state.dart';
part 'experiment_card_bloc.freezed.dart';

class ExperimentCardBloc
    extends Bloc<ExperimentCardEvent, ExperimentCardState> {
  ExperimentCardRepository repository;
  ExperimentCardBloc(this.repository) : super(_Saved(ExperimentCardTextFields())) {
    on<ExperimentCardEvent>((event, emit) {
      event.map(
        saveCard: (event) => _saved(event, emit),
        fieldFilled: (event) => _fieldFilled(event, emit),
      );
    });
  }

  void _saved(
    _SaveCard event,
    Emitter<ExperimentCardState> emit,
  ) {
    repository.addExperiment(event.card);
    repository.saveToFile(event.card);
    emit(ExperimentCardState.saved(event.card));
  }

  void _fieldFilled(
    _FieldFilled event,
    Emitter<ExperimentCardState> emit,
  ) {
    if (repository.fields.isEmpty) {
      repository.addExperiment(ExperimentCardTextFields());
    }
    /// [event.fieldName] - лучше изменить тип на enum (вот пример):
    // enum FieldNameType {
    // goal('Цель'),
    // date('Дата проведения');
    // final String value;
    // const FieldNameType(this.value);
    // }
    /// [FieldNameType.goal.value] = 'Цель'
    /// плюсы:
    ///    1) перебор через switch case (ide сама создаст весь бойлерплейт и проследит за всеми кейсами)
    ///    2) масштабируемость
    ///    3) защита от ошибок (забыл кейс, опечатался и тд)
    ///    4) легче сторить ui через map
    if (event.fieldName == 'Цель') {
      repository.setGoal(event.text);
    } else if (event.fieldName == 'Описание') {
      repository.setDesription(event.text);
    } else if (event.fieldName == 'Дата проведения') {
      repository.setDate(event.text);
    } else if (event.fieldName == 'Метод') {
      repository.setMethod(event.text);
    } else if (event.fieldName == 'Объект') {
      repository.setObject(event.text);
    } else if (event.fieldName == 'Прибор') {
      repository.setDevice(event.text);
    } else if (event.fieldName == 'Софт') {
      repository.setSoft(event.text);
    }
    emit(ExperimentCardState.saved(repository.fields[0]));
  }

}
