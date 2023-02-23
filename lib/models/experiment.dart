import 'package:first_approval_app/hive/hive_types.dart';
import 'package:first_approval_app/models/attachment.dart';
import 'package:first_approval_app/models/experiment_card_models/card_text_fields.dart';
import 'package:first_approval_app/models/group.dart';
import 'package:first_approval_app/models/sample.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'experiment.freezed.dart';
part 'experiment.g.dart';

@freezed
class Experiment with _$Experiment {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  @HiveType(typeId: HiveTypes.experiment, adapterName: HiveAdapterNames.experiment)
  const factory Experiment({
    @HiveField(0) required ExperimentCardTextFields info,
    @HiveField(1) required List<Attachment> files,
    @HiveField(2) required List<Group> groups,
    @HiveField(3) required List<Sample> ungroupedSamples,
    @HiveField(4) required int id,
  }) = _Experiment;

  factory Experiment.fromJson(Map<String, dynamic> json) =>
      _$ExperimentFromJson(json);

  const Experiment._();

  List<Attachment> get allAttachments {
    List<Attachment> tmp = [];
    tmp.addAll(files);
    for(Sample s in ungroupedSamples){
      tmp.addAll(s.allAttachments);
    }
    for(Group g in groups){
      tmp.addAll(g.allAttachments);
    }
    return tmp;
  }

}