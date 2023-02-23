import 'package:first_approval_app/hive/hive_types.dart';
import 'package:first_approval_app/models/attachment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'measurement.dart';

part 'sample.freezed.dart';
part 'sample.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Sample with _$Sample {
  @HiveType(typeId: HiveTypes.sample, adapterName: HiveAdapterNames.sample)
  factory Sample({
    @HiveField(0) required int id,
    @HiveField(1) required String title,
    @HiveField(2) required String text,
    @HiveField(3) @Default([]) List<Measurement> measurements,
    @HiveField(4) required List<Attachment> attachments,
  }) = _Sample;

  factory Sample.fromJson(Map<String, Object?> json,) => _$SampleFromJson(json);

  const Sample._();

  List<Attachment> get allAttachments{
    List<Attachment> tmp = [];
    for(Measurement m in measurements){
      tmp.addAll(m.addedFiles);
    }
    tmp.addAll(attachments);
    return tmp;
  }
}
