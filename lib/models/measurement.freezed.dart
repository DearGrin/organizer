// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'measurement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Measurement _$MeasurementFromJson(Map<String, dynamic> json) {
  return _Measurement.fromJson(json);
}

/// @nodoc
mixin _$Measurement {
  List<String> get addedFiles => throw _privateConstructorUsedError;
  set addedFiles(List<String> value) => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  set text(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MeasurementCopyWith<Measurement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MeasurementCopyWith<$Res> {
  factory $MeasurementCopyWith(
          Measurement value, $Res Function(Measurement) then) =
      _$MeasurementCopyWithImpl<$Res, Measurement>;
  @useResult
  $Res call({List<String> addedFiles, String text});
}

/// @nodoc
class _$MeasurementCopyWithImpl<$Res, $Val extends Measurement>
    implements $MeasurementCopyWith<$Res> {
  _$MeasurementCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addedFiles = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      addedFiles: null == addedFiles
          ? _value.addedFiles
          : addedFiles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MeasurementCopyWith<$Res>
    implements $MeasurementCopyWith<$Res> {
  factory _$$_MeasurementCopyWith(
          _$_Measurement value, $Res Function(_$_Measurement) then) =
      __$$_MeasurementCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<String> addedFiles, String text});
}

/// @nodoc
class __$$_MeasurementCopyWithImpl<$Res>
    extends _$MeasurementCopyWithImpl<$Res, _$_Measurement>
    implements _$$_MeasurementCopyWith<$Res> {
  __$$_MeasurementCopyWithImpl(
      _$_Measurement _value, $Res Function(_$_Measurement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addedFiles = null,
    Object? text = null,
  }) {
    return _then(_$_Measurement(
      addedFiles: null == addedFiles
          ? _value.addedFiles
          : addedFiles // ignore: cast_nullable_to_non_nullable
              as List<String>,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Measurement implements _Measurement {
  _$_Measurement({this.addedFiles = const [], this.text = ""});

  factory _$_Measurement.fromJson(Map<String, dynamic> json) =>
      _$$_MeasurementFromJson(json);

  @override
  @JsonKey()
  List<String> addedFiles;
  @override
  @JsonKey()
  String text;

  @override
  String toString() {
    return 'Measurement(addedFiles: $addedFiles, text: $text)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MeasurementCopyWith<_$_Measurement> get copyWith =>
      __$$_MeasurementCopyWithImpl<_$_Measurement>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MeasurementToJson(
      this,
    );
  }
}

abstract class _Measurement implements Measurement {
  factory _Measurement({List<String> addedFiles, String text}) = _$_Measurement;

  factory _Measurement.fromJson(Map<String, dynamic> json) =
      _$_Measurement.fromJson;

  @override
  List<String> get addedFiles;
  set addedFiles(List<String> value);
  @override
  String get text;
  set text(String value);
  @override
  @JsonKey(ignore: true)
  _$$_MeasurementCopyWith<_$_Measurement> get copyWith =>
      throw _privateConstructorUsedError;
}
