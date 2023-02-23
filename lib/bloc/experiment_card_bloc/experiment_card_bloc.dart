import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:first_approval_app/models/experiment_card_models/card_text_fields.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'experiment_card_event.dart';
part 'experiment_card_state.dart';
part 'experiment_card_bloc.freezed.dart';

class ExperimentCardBloc
    extends Bloc<ExperimentCardEvent, ExperimentCardState> {
  ExperimentCardBloc()
      : super(const ExperimentCardState.initial()) {
    on<ExperimentCardEvent>((event, emit) {
      event.map(
        saveCard: (event) => _saved(event, emit),
        fieldFilled: (event) => _fieldFilled(event, emit),
      );
    });
  }

  String goal = '';
  String description = '';
  String date = '';
  String method = '';
  String object = '';
  String device = '';
  String soft = '';
  String name = '';

  ExperimentCardTextFields get experimentInfo => ExperimentCardTextFields(
    goal: goal,
    description: description,
    date: date,
    method: method,
    object: object,
    device: device,
    soft: soft,
    name: name,
  );

  void _saved(
    _SaveCard event,
    Emitter<ExperimentCardState> emit,
  ) {
    goal = event.card?.goal??'';
    description = event.card?.description??'';
    date = event.card?.date??'';
    method = event.card?.method??'';
    object = event.card?.object??'';
    soft = event.card?.soft??'';
    name = event.card?.name??FieldNameType.name.value;
    emit(ExperimentCardState.saved(experimentInfo));
  }

  void _fieldFilled(
    _FieldFilled event,
    Emitter<ExperimentCardState> emit,
  ) {
    log('FILLED EVENT');
    log('name: ${event.field} text: ${event.text}');
     switch (event.field){
       case FieldNameType.goal:
         goal = event.text;
         break;
       case FieldNameType.description:
         description = event.text;
         break;
       case FieldNameType.date:
         date = event.text;
         break;
       case FieldNameType.method:
         method = event.text;
         break;
       case FieldNameType.object:
         object = event.text;
         break;
       case FieldNameType.device:
         device = event.text;
         break;
       case FieldNameType.soft:
         soft = event.text;
         break;
       case FieldNameType.name:
          name = event.text;
         break;
     }
  }
}

enum FieldNameType {
  goal('Цель'),
  description('Описание'),
  date('Дата проведения'),
  method('Метод'),
  object('Объект'),
  device('Прибор'),
  soft('Софт'),
  name('Название эксперимента');

  final String value;
  const FieldNameType(this.value);
}
