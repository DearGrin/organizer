import 'package:bloc/bloc.dart';
import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:first_approval_app/models/group.dart';
import 'package:first_approval_app/models/sample.dart';
import 'package:first_approval_app/repositorys/samples_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../models/measurement.dart';

part 'experiment_scheme_event.dart';
part 'experiment_scheme_state.dart';
part 'experiment_scheme_bloc.freezed.dart';

class ExperimentSchemeBloc
    extends Bloc<ExperimentSchemeEvent, ExperimentSchemeState> {
  SampleRepository repository;
  FileManager fileManager;
  ExperimentSchemeBloc(this.repository, this.fileManager)
      : super(const _EmptyState()) {
    on<ExperimentSchemeEvent>((event, emit) {
      event.map(
        addNewSample: (event) => _addNewSample(event, emit),
        editSample: (event) => _editSample(event, emit),
        addSampleToGroup: (event) => _addSampleToGroup(event, emit),
        groupSamplesById: (event) => _groupSamplesById(event, emit),
        addMeasurementToSample: (event) => _addMeasurementToSample(event, emit),
        addUngroupedSample: (event) => _addUngroupedSample(event, emit),
        addUngroupedSamplesToGroup: (event) =>
            _addUngroupedSamplesToGroup(event, emit),
        addFilesToMeasurement: (event) => _addFilesToMeasurement(event, emit),
      );
    });
  }

  void _addNewSample(
    _AddNewSample event,
    Emitter<ExperimentSchemeState> emit,
  ) {
    state.map(
      emptyState: (state) {
        repository.addFirstSample(
          Sample(
            id: 0,
            title: event.title,
            text: event.text,
            attachments: [],
          ),
        );

        emit(const ExperimentSchemeState.loading());

        emit(ExperimentSchemeState.loadedState(
          data: repository.getData(),
          ungroupedSamples: repository.ungroupedSamples,
        ));
      },
      loadedState: (state) {
        repository.addSampleUngrouped(
          Sample(
            id: repository.ungroupedSamples.length + 1,
            title: event.title,
            text: event.text,
            attachments: [],
          ),
        );

        emit(const ExperimentSchemeState.loading());

        emit(ExperimentSchemeState.loadedState(
          data: repository.getData(),
          ungroupedSamples: repository.ungroupedSamples,
        ));
      },
      errorState: (state) {},
      loading: (state) {},
    );
  }

  void _addSampleToGroup(
    _AddSample event,
    Emitter<ExperimentSchemeState> emit,
  ) {
    repository.addSampleToGroup(
      Sample(
        id: repository.data
                .firstWhere((element) => element.id == event.id)
                .samples
                .length +
            1,
        title: event.title,
        text: event.text,
        attachments: [],
      ),
      event.id,
    );

    emit(const ExperimentSchemeState.loading());

    emit(ExperimentSchemeState.loadedState(
      data: repository.getData(),
      ungroupedSamples: repository.ungroupedSamples,
    ));
  }

  void _groupSamplesById(
    _GroupSamplesById event,
    Emitter<ExperimentSchemeState> emit,
  ) {}

  _editSample(
    _EditSample event,
    Emitter<ExperimentSchemeState> emit,
  ) {
    repository.editSampleInGroup(event.sample, event.idGroup);

    emit(const ExperimentSchemeState.loading());

    emit(ExperimentSchemeState.loadedState(
      data: repository.getData(),
      ungroupedSamples: repository.ungroupedSamples,
    ));
  }

  void _addMeasurementToSample(
    _AddMeasurementToSample event,
    Emitter<ExperimentSchemeState> emit,
  ) {
    if (event.groupId == null) {
      repository.ungroupedSamples.asMap().forEach((key, value) {
        if (value.id == event.sample.id) {
          repository.ungroupedSamples[key].measurements =
              List.from(repository.ungroupedSamples[key].measurements)
                ..add(Measurement());
        }
      });
    } else {
      repository.data.asMap().forEach((keyGroup, groupValue) {
        groupValue.samples.asMap().forEach((key, value) {
          if (value.id == event.sample.id && groupValue.id == event.groupId) {
            repository.data[keyGroup].samples[key].measurements =
                List.from(repository.data[keyGroup].samples[key].measurements)
                  ..add(Measurement());
          }
        });
      });
    }

    emit(const ExperimentSchemeState.loading());
    emit(ExperimentSchemeState.loadedState(
        data: repository.getData(),
        ungroupedSamples: repository.ungroupedSamples));
  }

  void _addUngroupedSamplesToGroup(
    _AddUngroupedSamplesToGroup event,
    Emitter<ExperimentSchemeState> emit,
  ) {
    List<Sample> samples = [...repository.ungroupedSamples];

    repository.addGroup(Group(
        name: "Группа_${repository.data.length}",
        id: repository.data.length,
        samples: samples,
        groupDescription: ""));
    repository.clearUngroupedSamples();
    emit(const ExperimentSchemeState.loading());
    emit(ExperimentSchemeState.loadedState(
        data: repository.getData(),
        ungroupedSamples: repository.ungroupedSamples));
  }

  void _addUngroupedSample(
    _AddUngroupedSample event,
    Emitter<ExperimentSchemeState> emit,
  ) {
    repository.addSampleUngrouped(Sample(
      id: repository.ungroupedSamples.length,
      title: event.title,
      text: event.text,
      attachments: [],
    ));
    emit(const ExperimentSchemeState.loading());
    emit(ExperimentSchemeState.loadedState(
        data: repository.getData(),
        ungroupedSamples: repository.ungroupedSamples));
  }

  Future<void> _addFilesToMeasurement(
    _AddFilesToMeasurement event,
    Emitter<ExperimentSchemeState> emit,
  ) async {
    List<String> files = await fileManager.pickFiles();
    for (var file in files) {
      repository.addFileToMeasurement(
          file, event.measurementId, event.groupId, event.sampleId);
    }
    emit(
      ExperimentSchemeState.loadedState(
        data: repository.getData(),
        ungroupedSamples: repository.getUngroupedSamples(),
      ),
    );
  }
}
