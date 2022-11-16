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
  String get tittle => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  List<String> get attachments => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SampleCopyWith<Sample> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleCopyWith<$Res> {
  factory $SampleCopyWith(Sample value, $Res Function(Sample) then) =
      _$SampleCopyWithImpl<$Res, Sample>;
  @useResult
  $Res call({String tittle, String text, List<String> attachments});
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
    Object? tittle = null,
    Object? text = null,
    Object? attachments = null,
  }) {
    return _then(_value.copyWith(
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
  $Res call({String tittle, String text, List<String> attachments});
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
    Object? tittle = null,
    Object? text = null,
    Object? attachments = null,
  }) {
    return _then(_$_Sample(
      tittle: null == tittle
          ? _value.tittle
          : tittle // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      attachments: null == attachments
          ? _value._attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Sample implements _Sample {
  const _$_Sample(
      {required this.tittle,
      required this.text,
      required final List<String> attachments})
      : _attachments = attachments;

  factory _$_Sample.fromJson(Map<String, dynamic> json) =>
      _$$_SampleFromJson(json);

  @override
  final String tittle;
  @override
  final String text;
  final List<String> _attachments;
  @override
  List<String> get attachments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_attachments);
  }

  @override
  String toString() {
    return 'Sample(tittle: $tittle, text: $text, attachments: $attachments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sample &&
            (identical(other.tittle, tittle) || other.tittle == tittle) &&
            (identical(other.text, text) || other.text == text) &&
            const DeepCollectionEquality()
                .equals(other._attachments, _attachments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tittle, text,
      const DeepCollectionEquality().hash(_attachments));

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
  const factory _Sample(
      {required final String tittle,
      required final String text,
      required final List<String> attachments}) = _$_Sample;

  factory _Sample.fromJson(Map<String, dynamic> json) = _$_Sample.fromJson;

  @override
  String get tittle;
  @override
  String get text;
  @override
  List<String> get attachments;
  @override
  @JsonKey(ignore: true)
  _$$_SampleCopyWith<_$_Sample> get copyWith =>
      throw _privateConstructorUsedError;
}
