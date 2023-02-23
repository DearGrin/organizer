import 'package:first_approval_app/hive/hive_types.dart';
import 'package:first_approval_app/models/attachment.dart';
import 'package:first_approval_app/models/experiment.dart';
import 'package:first_approval_app/models/experiment_card_models/card_text_fields.dart';
import 'package:first_approval_app/models/group.dart';
import 'package:first_approval_app/models/measurement.dart';
import 'package:first_approval_app/models/sample.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HiveService{
  static HiveService? _instance;

  HiveService._();

  static HiveService get instance => _instance ??= HiveService._();


  Future<void> initHive() async {
    await Hive.initFlutter();

    Hive.registerAdapter(ExperimentAdapter());
    Hive.registerAdapter(ExperimentInfoAdapter());
    Hive.registerAdapter(GroupAdapter());
    Hive.registerAdapter(SampleAdapter());
    Hive.registerAdapter(MeasurementAdapter());
    Hive.registerAdapter(AttachmentAdapter());

    await _openAllBoxes();
  }

  Future<void> _openAllBoxes() async {
    await _safeOpenBox<Experiment>(HiveBoxes.experiments);
  }

  Future _safeOpenBox<T>(String name) async {
    try {
      await Hive.openBox<T>(name);
    } catch (error) {
      final box = await Hive.openLazyBox<T>(name);
      await box.deleteFromDisk();
      await box.close();
      await Hive.openBox<T>(name);
    }
  }

  List<Experiment> getData() {
    return Hive.box<Experiment>(HiveBoxes.experiments).values.toList();
  }

  Future<void> addData(Experiment experiment) async{
    final box = Hive.box<Experiment>(HiveBoxes.experiments);
    await box.add(experiment);
  }
  Future<void> editData(Experiment experiment) async{
    final box = Hive.box<Experiment>(HiveBoxes.experiments);
    final int index = box.values.toList().indexWhere((element) => element.id==experiment.id);
    await box.putAt(index, experiment);
  }
  Future<void> deleteData(Experiment experiment) async{
    final box = Hive.box<Experiment>(HiveBoxes.experiments);
    final int index = box.values.toList().indexOf(experiment);
    await box.deleteAt(index);
  }
}