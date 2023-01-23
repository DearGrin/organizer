import 'package:freezed_annotation/freezed_annotation.dart';

part 'measurement.freezed.dart';
part 'measurement.g.dart';
///почему используется @unfreezed ???
///вероятно, причина в том, что есть потребность изменять список [samples]
///для этого вместо @unfreezed можно использовать:
/// @Freezed(makeCollectionsUnmodifiable: false)
@unfreezed
class Measurement with _$Measurement {
  factory Measurement({
    required List<String> addedFiles,
    @Default("") String text,
  }) = _Measurement;

  factory Measurement.fromJson(Map<String, dynamic> json) =>
      _$MeasurementFromJson(json);
}
