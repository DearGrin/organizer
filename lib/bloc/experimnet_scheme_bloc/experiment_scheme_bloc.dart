import 'package:bloc/bloc.dart';
import 'package:first_approval_app/models/sample.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'experiment_scheme_event.dart';
part 'experiment_scheme_state.dart';
part 'experiment_scheme_bloc.freezed.dart';

class ExperimentSchemeBloc
    extends Bloc<ExperimentSchemeEvent, ExperimentSchemeState> {
  // final ExperimentSchemeBloc pupa;
  ExperimentSchemeBloc() : super(const _EmptyState()) {
    on<ExperimentSchemeEvent>((event, emit) {
      event.map(
        addNewSample: (event) => _addNewSample(event, emit),
        addSampleToGroup: (event) => _addSampleToGroup(event, emit),
        groupSamplesById: (event) => _groupSamplesById(event, emit),
      );
    });
    // pupa.stream.listen((event) {
    //   pupa.state.map(
    //     emptyState: (state) {},
    //     loadedState: (state) {},
    //     errorState: (state) {},
    //   );
    // });
  }

  void _addNewSample(
    _AddNewSample event,
    Emitter<ExperimentSchemeState> emit,
  ) {
    state.map(
      emptyState: (state) {
        emit(const ExperimentSchemeState.loadedState(
          data: [
            Sample(
              text: 'text',
              tittle: 'newSample',
              attachments: [],
            ),
          ],
        ));
      },
      loadedState: (state) {
        emit(
          ExperimentSchemeState.loadedState(
            data: [
              ...state.data,
              const Sample(
                text: 'text',
                tittle: 'newSample',
                attachments: [],
              )
            ],
          ),
        );
      },
      errorState: (state) {},
    );
  }

  void _addSampleToGroup(
    _AddSampleToGroup event,
    Emitter<ExperimentSchemeState> emit,
  ) {
    event.id;
  }

  void _groupSamplesById(
    _GroupSamplesById event,
    Emitter<ExperimentSchemeState> emit,
  ) {}
}
