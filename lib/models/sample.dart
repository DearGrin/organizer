import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample.freezed.dart';
part 'sample.g.dart';

@unfreezed
class Sample with _$Sample {
  factory Sample({
    required int id,
    required String tittle,
    required String text,
    required List<String> attachments, //очевидно конечно что не лист
  }) = _Sample;

  factory Sample.fromJson(
    Map<String, Object?> json,
  ) =>
      _$SampleFromJson(json);
}
