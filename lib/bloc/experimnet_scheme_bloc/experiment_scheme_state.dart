part of 'experiment_scheme_bloc.dart';

@freezed
class ExperimentSchemeState with _$ExperimentSchemeState {
  const factory ExperimentSchemeState.emptyState() = _EmptyState;
  const factory ExperimentSchemeState.loadedState({
    required List<Group> data,
    required List<Sample> ungroupedSamples,
  }) = _LoadedState;
  const factory ExperimentSchemeState.errorState() = _ErrorState;
  const factory ExperimentSchemeState.loading() = _Loading;
}
