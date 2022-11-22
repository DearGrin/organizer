import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:first_approval_app/models/group.dart';
import 'package:first_approval_app/models/sample.dart';
import 'package:first_approval_app/repositorys/samples_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'experiment_scheme_event.dart';
part 'experiment_scheme_state.dart';
part 'experiment_scheme_bloc.freezed.dart';

class ExperimentSchemeBloc
    extends Bloc<ExperimentSchemeEvent, ExperimentSchemeState> {
  SampleRepository repository;
  ExperimentSchemeBloc(this.repository) : super(const _EmptyState()) {
    on<ExperimentSchemeEvent>((event, emit) {
      event.map(
        addNewSample: (event) => _addNewSample(event, emit),
        editSample: (event) => _editSample(event, emit),
        addSampleToGroup: (event) => _addSampleToGroup(event, emit),
        groupSamplesById: (event) => _groupSamplesById(event, emit),
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
            tittle: event.title,
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
            tittle: event.title,
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
        tittle: event.title,
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
}
