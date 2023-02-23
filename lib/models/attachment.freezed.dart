// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'attachment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Attachment _$AttachmentFromJson(Map<String, dynamic> json) {
  return _Attachment.fromJson(json);
}

/// @nodoc
mixin _$Attachment {
  @HiveField(0)
  String get fileName => throw _privateConstructorUsedError;
  @HiveField(1)
  String get filePath => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttachmentCopyWith<Attachment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentCopyWith<$Res> {
  factory $AttachmentCopyWith(
          Attachment value, $Res Function(Attachment) then) =
      _$AttachmentCopyWithImpl<$Res, Attachment>;
  @useResult
  $Res call({@HiveField(0) String fileName, @HiveField(1) String filePath});
}

/// @nodoc
class _$AttachmentCopyWithImpl<$Res, $Val extends Attachment>
    implements $AttachmentCopyWith<$Res> {
  _$AttachmentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? filePath = null,
  }) {
    return _then(_value.copyWith(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttachmentCopyWith<$Res>
    implements $AttachmentCopyWith<$Res> {
  factory _$$_AttachmentCopyWith(
          _$_Attachment value, $Res Function(_$_Attachment) then) =
      __$$_AttachmentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String fileName, @HiveField(1) String filePath});
}

/// @nodoc
class __$$_AttachmentCopyWithImpl<$Res>
    extends _$AttachmentCopyWithImpl<$Res, _$_Attachment>
    implements _$$_AttachmentCopyWith<$Res> {
  __$$_AttachmentCopyWithImpl(
      _$_Attachment _value, $Res Function(_$_Attachment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fileName = null,
    Object? filePath = null,
  }) {
    return _then(_$_Attachment(
      fileName: null == fileName
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      filePath: null == filePath
          ? _value.filePath
          : filePath // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
@HiveType(
    typeId: HiveTypes.attachment, adapterName: HiveAdapterNames.attachment)
class _$_Attachment with DiagnosticableTreeMixin implements _Attachment {
  const _$_Attachment(
      {@HiveField(0) required this.fileName,
      @HiveField(1) required this.filePath});

  factory _$_Attachment.fromJson(Map<String, dynamic> json) =>
      _$$_AttachmentFromJson(json);

  @override
  @HiveField(0)
  final String fileName;
  @override
  @HiveField(1)
  final String filePath;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Attachment(fileName: $fileName, filePath: $filePath)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Attachment'))
      ..add(DiagnosticsProperty('fileName', fileName))
      ..add(DiagnosticsProperty('filePath', filePath));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Attachment &&
            (identical(other.fileName, fileName) ||
                other.fileName == fileName) &&
            (identical(other.filePath, filePath) ||
                other.filePath == filePath));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fileName, filePath);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttachmentCopyWith<_$_Attachment> get copyWith =>
      __$$_AttachmentCopyWithImpl<_$_Attachment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttachmentToJson(
      this,
    );
  }
}

abstract class _Attachment implements Attachment {
  const factory _Attachment(
      {@HiveField(0) required final String fileName,
      @HiveField(1) required final String filePath}) = _$_Attachment;

  factory _Attachment.fromJson(Map<String, dynamic> json) =
      _$_Attachment.fromJson;

  @override
  @HiveField(0)
  String get fileName;
  @override
  @HiveField(1)
  String get filePath;
  @override
  @JsonKey(ignore: true)
  _$$_AttachmentCopyWith<_$_Attachment> get copyWith =>
      throw _privateConstructorUsedError;
}
