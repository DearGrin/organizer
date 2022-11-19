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
  int get id => throw _privateConstructorUsedError;
  set id(int value) => throw _privateConstructorUsedError;
  String get tittle => throw _privateConstructorUsedError;
  set tittle(String value) => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  set text(String value) => throw _privateConstructorUsedError;
  List<String> get attachments => throw _privateConstructorUsedError;
  set attachments(List<String> value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SampleCopyWith<Sample> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleCopyWith<$Res> {
  factory $SampleCopyWith(Sample value, $Res Function(Sample) then) =
      _$SampleCopyWithImpl<$Res, Sample>;
  @useResult
  $Res call({int id, String tittle, String text, List<String> attachments});
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
    Object? tittle = null,
    Object? text = null,
    Object? attachments = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tittle: null == tittle
          ? _value.tittle
          : tittle // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SampleCopyWith<$Res> implements $SampleCopyWith<$Res> {
  factory _$$_SampleCopyWith(_$_Sample value, $Res Function(_$_Sample) then) =
      __$$_SampleCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String tittle, String text, List<String> attachments});
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
    Object? tittle = null,
    Object? text = null,
    Object? attachments = null,
  }) {
    return _then(_$_Sample(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      tittle: null == tittle
          ? _value.tittle
          : tittle // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: null == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sample implements _Sample {
  _$_Sample(
      {required this.id,
      required this.tittle,
      required this.text,
      required this.attachments});

  factory _$_Sample.fromJson(Map<String, dynamic> json) =>
      _$$_SampleFromJson(json);

  @override
  int id;
  @override
  String tittle;
  @override
  String text;
  @override
  List<String> attachments;

  @override
  String toString() {
    return 'Sample(id: $id, tittle: $tittle, text: $text, attachments: $attachments)';
  }

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

abstract class _Sample implements Sample {
  factory _Sample(
      {required int id,
      required String tittle,
      required String text,
      required List<String> attachments}) = _$_Sample;

  factory _Sample.fromJson(Map<String, dynamic> json) = _$_Sample.fromJson;

  @override
  int get id;
  set id(int value);
  @override
  String get tittle;
  set tittle(String value);
  @override
  String get text;
  set text(String value);
  @override
  List<String> get attachments;
  set attachments(List<String> value);
  @override
  @JsonKey(ignore: true)
  _$$_SampleCopyWith<_$_Sample> get copyWith =>
      throw _privateConstructorUsedError;
}
