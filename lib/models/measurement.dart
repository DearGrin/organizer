
import 'package:freezed_annotation/freezed_annotation.dart';

part 'measurement.freezed.dart';
part 'measurement.g.dart';


@unfreezed
class Measurement with _$Measurement{
  factory Measurement({
    @Default([]) List<String> addedFiles,
    @Default("") String text,
  }) = _Measurement;

  factory Measurement.fromJson(Map<String, dynamic> json) => _$MeasurementFromJson(json);
}
