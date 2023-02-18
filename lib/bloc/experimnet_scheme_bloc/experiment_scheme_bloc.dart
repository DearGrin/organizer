import 'package:bloc/bloc.dart';
import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:first_approval_app/models/group.dart';
import 'package:first_approval_app/models/measurement.dart';
import 'package:first_approval_app/models/sample.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'experiment_scheme_event.dart';
part 'experiment_scheme_state.dart';
part 'experiment_scheme_bloc.freezed.dart';

class ExperimentSchemeBloc
    extends Bloc<ExperimentSchemeEvent, ExperimentSchemeState> {
  int groupId = 0;
  final List<Group> data = [];
  final List<Sample> ungroupedSamples = [];
  final FileManager fileManager;
  ExperimentSchemeBloc(this.fileManager) : super(const _EmptyState()) {
    on<ExperimentSchemeEvent>((event, emit) {
      event.map(
        addNewSample: (event) => _addNewSample(event, emit),
        editSample: (event) => _editSample(event, emit),
        addSampleToGroup: (event) => _addSampleToGroup(event, emit),
        addMeasurementToSample: (event) => _addMeasurementToSample(event, emit),
        addUngroupedSamplesToGroup: (event) =>
            _addUngroupedSamplesToGroup(event, emit),
        addFilesToMeasurement: (event) => _addFilesToMeasurement(event, emit),
        createNewEmptyGroup: (event) => _createNewEmptyGroup(event, emit),
      );
    });
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
    data[event.id].samples.add(
          Sample(
            id: data[event.id].samples.length,
            title: event.title,
            text: event.text,
            attachments: [],
          ),
        );

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
    // repository.editSampleInGroup(event.sample, event.idGroup);

    // emit(const ExperimentSchemeState.loading());

    // emit(ExperimentSchemeState.loadedState(
    //   data: repository.getData(),
    //   ungroupedSamples: repository.ungroupedSamples,
    // ));
  }

  /// добавляет измерение в уже существующий образец
  void _addMeasurementToSample(
    _AddMeasurementToSample event,
    Emitter<ExperimentSchemeState> emit,
  ) {
    if (event.groupId == -1) {
      ungroupedSamples[event.sampleId].measurements.add(event.measurment);
      emit(const ExperimentSchemeState.loading());
      emit(ExperimentSchemeState.loadedState(
          data: data, ungroupedSamples: ungroupedSamples));
      return;
    }

    data[event.groupId]
        .samples[event.sampleId]
        .measurements
        .add(event.measurment);

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
      name: 'Группа_$groupId',
      id: groupId,
      samples: ungroupedSamples,
      groupDescription: '',
    ));
    groupId = groupId++;
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
    List<String> files = await fileManager.pickFiles();

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
    emit(
      ExperimentSchemeState.loadedState(
        data: data,
        ungroupedSamples: ungroupedSamples,
      ),
    );
  }
}
