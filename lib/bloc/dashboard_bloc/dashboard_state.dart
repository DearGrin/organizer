part of 'dashboard_bloc.dart';

@freezed
class DashboardState with _$DashboardState {
  const factory DashboardState.initial() = _Initial;
  const factory DashboardState.loaded(List<Experiment> experiments) = _Loaded;
  const factory DashboardState.archiveInProgress() = _ArchiveInProgress;
}
