import 'package:freezed_annotation/freezed_annotation.dart';

import 'measurement.dart';

part 'sample.freezed.dart';
part 'sample.g.dart';

@unfreezed
class Sample with _$Sample {
  factory Sample({
    required int id,
    required String title,
    required String text,
    @Default([]) List<Measurement> measurements,
    required List<String> attachments, //очевидно конечно что не лист
  }) = _Sample;

  factory Sample.fromJson(
    Map<String, Object?> json,
  ) =>
      _$SampleFromJson(json);
}
