import 'package:first_approval_app/hive/hive_types.dart';
import 'package:first_approval_app/models/attachment.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'measurement.freezed.dart';
part 'measurement.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Measurement with _$Measurement {
  @HiveType(typeId: HiveTypes.measurement, adapterName: HiveAdapterNames.measurement)
  factory Measurement({
    @HiveField(0) required List<Attachment> addedFiles,
    @Default("") @HiveField(1) String text,
  }) = _Measurement;

  factory Measurement.fromJson(Map<String, dynamic> json) =>
      _$MeasurementFromJson(json);
}
