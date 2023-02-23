import 'package:first_approval_app/hive/hive_types.dart';
import 'package:first_approval_app/models/attachment.dart';
import 'package:first_approval_app/models/sample.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Group with _$Group {
  @HiveType(typeId: HiveTypes.group, adapterName: HiveAdapterNames.group)
  factory Group({
    @HiveField(0) required String name,
    @HiveField(1) required String groupDescription,
    @HiveField(2) required int id,
    @HiveField(3) required List<Sample> samples,
  }) = _Group;

  factory Group.fromJson(Map<String, Object?> json,) => _$GroupFromJson(json);

  const Group._();

  List<Attachment> get allAttachments {
    List<Attachment> tmp = [];
    for(Sample  s in samples){
      tmp.addAll(s.allAttachments);
    }
    return tmp;
  }
}
