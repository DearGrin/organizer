import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:first_approval_app/models/experiment_card_models/card_text_fields.dart';

class ExperimentCardRepository {
  final List<ExperimentCardTextFields> fields = [];
  FileManager fileManager = FileManager();

  void setGoal(String goal) {
    fields[0] = fields[0].copyWith(goal: goal);
  }

  void saveToFile(ExperimentCardTextFields card) {
    fileManager.writeToFile(card.toJson().toString());
  }

  void setDesription(String description) {
    fields[0] = fields[0].copyWith(description: description);
  }

  void setDate(String date) {
    fields[0] = fields[0].copyWith(date: date);
  }

  void setMethod(String method) {
    fields[0] = fields[0].copyWith(method: method);
  }

  void setObject(String object) {
    fields[0] = fields[0].copyWith(object: object);
  }

  void setDevice(String device) {
    fields[0] = fields[0].copyWith(device: device);
  }

  void setSoft(String soft) {
    fields[0] = fields[0].copyWith(soft: soft);
  }

  void addExperiment(ExperimentCardTextFields card) {
    fields.add(card);
  }

  void clearData() => fields.clear();
  ExperimentCardTextFields getOneExperimentCard(int i) => fields[i];
  List<ExperimentCardTextFields> getData() => fields;
}
