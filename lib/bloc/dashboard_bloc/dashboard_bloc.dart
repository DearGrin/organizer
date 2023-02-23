import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:first_approval_app/file_service/file_service.dart';
import 'package:first_approval_app/hive/hive_service.dart';
import 'package:first_approval_app/models/experiment.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dashboard_event.dart';
part 'dashboard_state.dart';
part 'dashboard_bloc.freezed.dart';

class DashboardBloc extends Bloc<DashboardEvent, DashboardState> {
  DashboardBloc() : super(const DashboardState.initial()) {
    on<DashboardEvent>((event, emit) async{
      await event.map<FutureOr<void>>(
        started: (event) => _fetchData(event, emit),
        deleteExperiment: (event) => _deleteExperiment(event, emit),
        archiveExperiment: (event) => _archiveExperiment(event, emit),
        exportExperiment: (event) => _exportExperiment(event, emit),
      );
    });
  }
  List<Experiment> experiments = [];
  _fetchData( _Started event,
      Emitter<DashboardState> emit,){
    experiments = HiveService.instance.getData();
    emit(DashboardState.loaded(experiments));
  }
  _deleteExperiment( _DeleteExperiment event,
      Emitter<DashboardState> emit,)async{
    await HiveService.instance.deleteData(event.experiment);
    experiments.remove(event.experiment);
    emit(const DashboardState.initial());
    emit(DashboardState.loaded(experiments));
  }
  _archiveExperiment( _ArchiveExperiment event,
      Emitter<DashboardState> emit,)async{
    emit(const DashboardState.archiveInProgress());
    await FileService.instance.archiveExperiment(event.experiment);
    emit(DashboardState.loaded(experiments));
  }
  _exportExperiment( _ExportExperiment event,
      Emitter<DashboardState> emit,)async{
    emit(const DashboardState.archiveInProgress());
    try {
      Experiment? experiment = await FileService.instance.exportExperiment();
      if(experiment!=null){
        HiveService.instance.addData(experiment);
        experiments.add(experiment);
      }
    }catch(e){
      debugPrint('error');
    }
    emit(DashboardState.loaded(experiments));
  }
}
