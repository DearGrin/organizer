// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sample.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Sample _$SampleFromJson(Map<String, dynamic> json) {
  return _Sample.fromJson(json);
}

/// @nodoc
mixin _$Sample {
  @HiveField(0)
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  String get text => throw _privateConstructorUsedError;
  @HiveField(3)
  List<Measurement> get measurements => throw _privateConstructorUsedError;
  @HiveField(4)
  List<Attachment> get attachments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SampleCopyWith<Sample> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleCopyWith<$Res> {
  factory $SampleCopyWith(Sample value, $Res Function(Sample) then) =
      _$SampleCopyWithImpl<$Res, Sample>;
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String title,
      @HiveField(2) String text,
      @HiveField(3) List<Measurement> measurements,
      @HiveField(4) List<Attachment> attachments});
}

/// @nodoc
class _$SampleCopyWithImpl<$Res, $Val extends Sample>
    implements $SampleCopyWith<$Res> {
  _$SampleCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? text = null,
    Object? measurements = null,
    Object? attachments = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      measurements: null == measurements
          ? _value.measurements
          : measurements // ignore: cast_nullable_to_non_nullable
              as List<Measurement>,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SampleCopyWith<$Res> implements $SampleCopyWith<$Res> {
  factory _$$_SampleCopyWith(_$_Sample value, $Res Function(_$_Sample) then) =
      __$$_SampleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int id,
      @HiveField(1) String title,
      @HiveField(2) String text,
      @HiveField(3) List<Measurement> measurements,
      @HiveField(4) List<Attachment> attachments});
}

/// @nodoc
class __$$_SampleCopyWithImpl<$Res>
    extends _$SampleCopyWithImpl<$Res, _$_Sample>
    implements _$$_SampleCopyWith<$Res> {
  __$$_SampleCopyWithImpl(_$_Sample _value, $Res Function(_$_Sample) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? text = null,
    Object? measurements = null,
    Object? attachments = null,
  }) {
    return _then(_$_Sample(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      measurements: null == measurements
          ? _value.measurements
          : measurements // ignore: cast_nullable_to_non_nullable
              as List<Measurement>,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: HiveTypes.sample, adapterName: HiveAdapterNames.sample)
class _$_Sample extends _Sample {
  _$_Sample(
      {@HiveField(0) required this.id,
      @HiveField(1) required this.title,
      @HiveField(2) required this.text,
      @HiveField(3) this.measurements = const [],
      @HiveField(4) required this.attachments})
      : super._();

  factory _$_Sample.fromJson(Map<String, dynamic> json) =>
      _$$_SampleFromJson(json);

  @override
  @HiveField(0)
  final int id;
  @override
  @HiveField(1)
  final String title;
  @override
  @HiveField(2)
  final String text;
  @override
  @JsonKey()
  @HiveField(3)
  final List<Measurement> measurements;
  @override
  @HiveField(4)
  final List<Attachment> attachments;

  @override
  String toString() {
    return 'Sample(id: $id, title: $title, text: $text, measurements: $measurements, attachments: $attachments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sample &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other.measurements, measurements) &&
            const DeepCollectionEquality()
                .equals(other.attachments, attachments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      text,
      const DeepCollectionEquality().hash(measurements),
      const DeepCollectionEquality().hash(attachments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SampleCopyWith<_$_Sample> get copyWith =>
      __$$_SampleCopyWithImpl<_$_Sample>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SampleToJson(
      this,
    );
  }
}

abstract class _Sample extends Sample {
  factory _Sample(
      {@HiveField(0) required final int id,
      @HiveField(1) required final String title,
      @HiveField(2) required final String text,
      @HiveField(3) final List<Measurement> measurements,
      @HiveField(4) required final List<Attachment> attachments}) = _$_Sample;
  _Sample._() : super._();

  factory _Sample.fromJson(Map<String, dynamic> json) = _$_Sample.fromJson;

  @override
  @HiveField(0)
  int get id;
  @override
  @HiveField(1)
  String get title;
  @override
  @HiveField(2)
  String get text;
  @override
  @HiveField(3)
  List<Measurement> get measurements;
  @override
  @HiveField(4)
  List<Attachment> get attachments;
  @override
  @JsonKey(ignore: true)
  _$$_SampleCopyWith<_$_Sample> get copyWith =>
      throw _privateConstructorUsedError;
}
