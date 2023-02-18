import 'package:bloc/bloc.dart';
import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:first_approval_app/models/experiment_card_models/card_text_fields.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'experiment_card_event.dart';
part 'experiment_card_state.dart';
part 'experiment_card_bloc.freezed.dart';

class ExperimentCardBloc
    extends Bloc<ExperimentCardEvent, ExperimentCardState> {
  final List<ExperimentCardTextFields> fields = [ExperimentCardTextFields()];
  final FileManager fileManager;
  ExperimentCardBloc(this.fileManager)
      : super(_Saved(ExperimentCardTextFields())) {
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
    fields.add(event.card);
    fileManager.writeToFile(fields[fields.length - 1].toString());
    emit(ExperimentCardState.saved(event.card));
  }

  void _fieldFilled(
    _FieldFilled event,
    Emitter<ExperimentCardState> emit,
  ) {
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
      fields[fields.length - 1] =
          fields[fields.length - 1].copyWith(goal: event.text);
    } else if (event.fieldName == 'Описание') {
      fields[fields.length - 1] =
          fields[fields.length - 1].copyWith(description: event.text);
    } else if (event.fieldName == 'Дата проведения') {
      fields[fields.length - 1] =
          fields[fields.length - 1].copyWith(date: event.text);
    } else if (event.fieldName == 'Метод') {
      fields[fields.length - 1] =
          fields[fields.length - 1].copyWith(method: event.text);
    } else if (event.fieldName == 'Объект') {
      fields[fields.length - 1] =
          fields[fields.length - 1].copyWith(object: event.text);
    } else if (event.fieldName == 'Прибор') {
      fields[fields.length - 1] =
          fields[fields.length - 1].copyWith(device: event.text);
    } else if (event.fieldName == 'Софт') {
      fields[fields.length - 1] =
          fields[fields.length - 1].copyWith(soft: event.text);
    }
    emit(ExperimentCardState.saved(fields[fields.length - 1]));
  }
}
