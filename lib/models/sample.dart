import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample.freezed.dart';
part 'sample.g.dart';

@freezed
class Sample with _$Sample {
  const factory Sample({
    required String tittle,
    required String text,
    required List<String> attachments,
  }) = _Sample;

  factory Sample.fromJson(
    Map<String, Object?> json,
  ) =>
      _$SampleFromJson(json);
}
