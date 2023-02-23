import 'package:first_approval_app/hive/hive_types.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'attachment.freezed.dart';
part 'attachment.g.dart';

@freezed
class Attachment with _$Attachment {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  @HiveType(typeId: HiveTypes.attachment, adapterName: HiveAdapterNames.attachment)
  const factory Attachment({
    @HiveField(0) required String fileName,
    @HiveField(1) required String filePath,
  }) = _Attachment;

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);
}