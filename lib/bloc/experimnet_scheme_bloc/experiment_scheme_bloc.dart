import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:first_approval_app/file_service/file_service.dart';
import 'package:first_approval_app/models/attachment.dart';
import 'package:first_approval_app/models/experiment.dart';
import 'package:first_approval_app/models/group.dart';
import 'package:first_approval_app/models/measurement.dart';
import 'package:first_approval_app/models/sample.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'experiment_scheme_event.dart';
part 'experiment_scheme_state.dart';
part 'experiment_scheme_bloc.freezed.dart';

class ExperimentSchemeBloc
    extends Bloc<ExperimentSchemeEvent, ExperimentSchemeState> {
  ExperimentSchemeBloc() : super(const _EmptyState()) {
    on<ExperimentSchemeEvent>((event, emit) async{
     await event.map<FutureOr<void>>(
        init: (event) => _init(event, emit),
        addNewSample: (event) => _addNewSample(event, emit),
        editSample: (event) => _editSample(event, emit),
        addSampleToGroup: (event) => _addSampleToGroup(event, emit),
        addMeasurementToSample: (event) => _addMeasurementToSample(event, emit),
        addUngroupedSamplesToGroup: (event) =>
            _addUngroupedSamplesToGroup(event, emit),
        addFilesToMeasurement: (event) => _addFilesToMeasurement(event, emit),
        addFilesToSample: (event) => _addFilesToSample(event, emit),
        createNewEmptyGroup: (event) => _createNewEmptyGroup(event, emit),
       editMeasurementText: (event) => _editMeasurementText(event, emit),
      );
    });
  }

  int? experimentId;
  int groupId = 0;
  List<Group> data = [];
  List<Sample> ungroupedSamples = [];

  void _init(
      _Init event,
      Emitter<ExperimentSchemeState> emit,
      ){
    if(event.experiment!=null) {
      experimentId = event.experiment!.id;
      if(event.experiment!.groups.isNotEmpty){
        groupId = event.experiment!.groups.length - 1;
        data = event.experiment!.groups;
      }
      if(event.experiment!.ungroupedSamples.isNotEmpty){
        ungroupedSamples = event.experiment!.ungroupedSamples;
      }
    }
    emit(ExperimentSchemeState.loadedState(
      data: data,
      ungroupedSamples: ungroupedSamples,
    ));
  }

  /// [id] формируется через размер списка
  /// что будет если удалить эелемент из середины, а потом добавить новый?
  /// будет два элемента с одинаковым [id], что потом приведет к ошибкам
  /// при поиске элемента по [id]
  /// наиболее простой способ присвоить уникальный [id]:
  ///id: DateTime.now().millisecondsSinceEpoch,
  ///
  /// кроме того сейчас в разных методах этот [id] присваивается разными способоми:
  /// 0, data.length, ungroupedSamples.length + 1

  ///  добавление образцов у которых нет группы
  void _addNewSample(
    _AddNewSample event,
    Emitter<ExperimentSchemeState> emit,
  ) {
    ungroupedSamples.add(Sample(
        id: ungroupedSamples.length,
        title: event.title,
        text: event.text,
        attachments: []));
    emit(const ExperimentSchemeState.loading());
    print(data);
    print(ungroupedSamples);
    emit(ExperimentSchemeState.loadedState(
      data: data,
      ungroupedSamples: ungroupedSamples,
    ));
  }

  /// добавить образец в уже существующую группу
  void _addSampleToGroup(
    _AddSample event,
    Emitter<ExperimentSchemeState> emit,
  ) {
    print('_addSampleToGroup ${event.id}');
    print(data);
    data[event.id].samples.add(
          Sample(
            id: data[event.id].samples.length,
            title: event.title,
            text: event.text,
            attachments: [],
          ),
        );
    print(data);
    print(ungroupedSamples);
    emit(const ExperimentSchemeState.loading());

    emit(ExperimentSchemeState.loadedState(
      data: data,
      ungroupedSamples: ungroupedSamples,
    ));
  }

  _editSample(
    _EditSample event,
    Emitter<ExperimentSchemeState> emit,
  ) {
    if(event.idGroup==-1){
      ungroupedSamples[event.sample.id] = event.sample;
    }
    else{
      data[event.idGroup].samples[event.sample.id] = event.sample;
    }
  }

  /// добавляет измерение в уже существующий образец
  void _addMeasurementToSample(
    _AddMeasurementToSample event,
    Emitter<ExperimentSchemeState> emit,
  ) {
    if (event.groupId == -1) {
      Sample sampleToModify = ungroupedSamples[event.sampleId];
      List<Measurement> measureListCopy = [...sampleToModify.measurements];
      measureListCopy.add(Measurement(addedFiles: []));
      ungroupedSamples[event.sampleId] = sampleToModify.copyWith(measurements: measureListCopy);
      emit(const ExperimentSchemeState.loading());
      emit(ExperimentSchemeState.loadedState(
          data: data, ungroupedSamples: ungroupedSamples));
      return;
    }
///TODO error for groups?
    Sample sampleToModify =  data[event.groupId].samples[event.sampleId];
    List<Measurement> measureListCopy = [...sampleToModify.measurements];
    measureListCopy.add(Measurement(addedFiles: []));

    data[event.groupId].samples[event.sampleId] = sampleToModify.copyWith(measurements: measureListCopy);
        // .measurements
        // .add(Measurement(addedFiles: []));

    emit(const ExperimentSchemeState.loading());
    emit(ExperimentSchemeState.loadedState(
        data: data, ungroupedSamples: ungroupedSamples));
  }

  /// создает группу для несгруппированных образцов и добавляет их туда
  void _addUngroupedSamplesToGroup(
    _AddUngroupedSamplesToGroup event,
    Emitter<ExperimentSchemeState> emit,
  ) {
    data.add(Group(
      name: 'Группа_${groupId+1}',
      id: groupId,
      samples: [...ungroupedSamples],
      groupDescription: '',
    ));
    groupId ++;
    ungroupedSamples.clear();
    emit(const ExperimentSchemeState.loading());
    emit(ExperimentSchemeState.loadedState(
        data: data, ungroupedSamples: ungroupedSamples));
  }

  /// создает пустую группу
  void _createNewEmptyGroup(
      _CreateNewEmptyGroup event, Emitter<ExperimentSchemeState> emit) {
    data.add(
      Group(
          name: 'Группа_$groupId',
          groupDescription: '',
          id: groupId,
          samples: []),
    );
    groupId = groupId++;
    emit(const ExperimentSchemeState.loading());
    emit(
      ExperimentSchemeState.loadedState(
          data: data, ungroupedSamples: ungroupedSamples),
    );
  }

  /// добавляет файлы в измерение
  Future<void> _addFilesToMeasurement(
    _AddFilesToMeasurement event,
    Emitter<ExperimentSchemeState> emit,
  ) async {
    List<Attachment> files = await FileService.instance.pickFiles();

    if (event.groupId == -1) {
      for (var file in files) {
        ungroupedSamples[event.sampleId]
            .measurements[event.measurementId]
            .addedFiles
            .add(file);
      }
    } else {
      for (var file in files) {
        data[event.groupId]
            .samples[event.sampleId]
            .measurements[event.measurementId]
            .addedFiles
            .add(file);
      }
    }
    emit(const ExperimentSchemeState.loading());
    emit(
      ExperimentSchemeState.loadedState(
        data: data,
        ungroupedSamples: ungroupedSamples,
      ),
    );
  }

  /// добавляет файлы в образец
  Future<void> _addFilesToSample(
      _AddFilesToSample event,
      Emitter<ExperimentSchemeState> emit,
      ) async {
    List<Attachment> files = await FileService.instance.pickFiles();

    if (event.groupId == -1) {
      ungroupedSamples[event.sampleId].attachments.addAll(files);
    } else {
      data[event.groupId].samples[event.sampleId].attachments.addAll(files);
    }
    emit(const ExperimentSchemeState.loading());
    emit(
      ExperimentSchemeState.loadedState(
        data: data,
        ungroupedSamples: ungroupedSamples,
      ),
    );
  }

  void _editMeasurementText(
      _EditMeasurementText event,
      Emitter<ExperimentSchemeState> emit,
      ){
    print('Descr changed');
    if(event.groupId==-1){
      Measurement m = ungroupedSamples[event.sampleId].measurements[event.measurementId].copyWith(text: event.text);
      ungroupedSamples[event.sampleId].measurements[event.measurementId] = m;
      print( ungroupedSamples[event.sampleId].measurements[event.measurementId].text);
    }
    else{
      Measurement m = data[event.groupId].samples[event.sampleId].measurements[event.measurementId].copyWith(text: event.text);
      data[event.groupId].samples[event.sampleId].measurements[event.measurementId] = m;
    }
  }

  @override
  void onEvent(ExperimentSchemeEvent event) {
    super.onEvent(event);
    print(event);
  }
}
