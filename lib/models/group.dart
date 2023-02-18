import 'package:first_approval_app/models/sample.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'group.freezed.dart';
part 'group.g.dart';

@Freezed(makeCollectionsUnmodifiable: false)
class Group with _$Group {
  factory Group({
    required String name,
    required String groupDescription,
    required int id,
    required List<Sample> samples,
  }) = _Group;

  factory Group.fromJson(
    Map<String, Object?> json,
  ) =>
      _$GroupFromJson(json);
}
