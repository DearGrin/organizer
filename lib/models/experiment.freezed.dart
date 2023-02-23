// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'experiment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Experiment _$ExperimentFromJson(Map<String, dynamic> json) {
  return _Experiment.fromJson(json);
}

/// @nodoc
mixin _$Experiment {
  @HiveField(0)
  ExperimentCardTextFields get info => throw _privateConstructorUsedError;
  @HiveField(1)
  List<Attachment> get files => throw _privateConstructorUsedError;
  @HiveField(2)
  List<Group> get groups => throw _privateConstructorUsedError;
  @HiveField(3)
  List<Sample> get ungroupedSamples => throw _privateConstructorUsedError;
  @HiveField(4)
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExperimentCopyWith<Experiment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperimentCopyWith<$Res> {
  factory $ExperimentCopyWith(
          Experiment value, $Res Function(Experiment) then) =
      _$ExperimentCopyWithImpl<$Res, Experiment>;
  @useResult
  $Res call(
      {@HiveField(0) ExperimentCardTextFields info,
      @HiveField(1) List<Attachment> files,
      @HiveField(2) List<Group> groups,
      @HiveField(3) List<Sample> ungroupedSamples,
      @HiveField(4) int id});

  $ExperimentCardTextFieldsCopyWith<$Res> get info;
}

/// @nodoc
class _$ExperimentCopyWithImpl<$Res, $Val extends Experiment>
    implements $ExperimentCopyWith<$Res> {
  _$ExperimentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? files = null,
    Object? groups = null,
    Object? ungroupedSamples = null,
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ExperimentCardTextFields,
      files: null == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
      groups: null == groups
          ? _value.groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
      ungroupedSamples: null == ungroupedSamples
          ? _value.ungroupedSamples
          : ungroupedSamples // ignore: cast_nullable_to_non_nullable
              as List<Sample>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExperimentCardTextFieldsCopyWith<$Res> get info {
    return $ExperimentCardTextFieldsCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ExperimentCopyWith<$Res>
    implements $ExperimentCopyWith<$Res> {
  factory _$$_ExperimentCopyWith(
          _$_Experiment value, $Res Function(_$_Experiment) then) =
      __$$_ExperimentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) ExperimentCardTextFields info,
      @HiveField(1) List<Attachment> files,
      @HiveField(2) List<Group> groups,
      @HiveField(3) List<Sample> ungroupedSamples,
      @HiveField(4) int id});

  @override
  $ExperimentCardTextFieldsCopyWith<$Res> get info;
}

/// @nodoc
class __$$_ExperimentCopyWithImpl<$Res>
    extends _$ExperimentCopyWithImpl<$Res, _$_Experiment>
    implements _$$_ExperimentCopyWith<$Res> {
  __$$_ExperimentCopyWithImpl(
      _$_Experiment _value, $Res Function(_$_Experiment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? info = null,
    Object? files = null,
    Object? groups = null,
    Object? ungroupedSamples = null,
    Object? id = null,
  }) {
    return _then(_$_Experiment(
      info: null == info
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as ExperimentCardTextFields,
      files: null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
      groups: null == groups
          ? _value._groups
          : groups // ignore: cast_nullable_to_non_nullable
              as List<Group>,
      ungroupedSamples: null == ungroupedSamples
          ? _value._ungroupedSamples
          : ungroupedSamples // ignore: cast_nullable_to_non_nullable
              as List<Sample>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
@HiveType(
    typeId: HiveTypes.experiment, adapterName: HiveAdapterNames.experiment)
class _$_Experiment extends _Experiment with DiagnosticableTreeMixin {
  const _$_Experiment(
      {@HiveField(0) required this.info,
      @HiveField(1) required final List<Attachment> files,
      @HiveField(2) required final List<Group> groups,
      @HiveField(3) required final List<Sample> ungroupedSamples,
      @HiveField(4) required this.id})
      : _files = files,
        _groups = groups,
        _ungroupedSamples = ungroupedSamples,
        super._();

  factory _$_Experiment.fromJson(Map<String, dynamic> json) =>
      _$$_ExperimentFromJson(json);

  @override
  @HiveField(0)
  final ExperimentCardTextFields info;
  final List<Attachment> _files;
  @override
  @HiveField(1)
  List<Attachment> get files {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  final List<Group> _groups;
  @override
  @HiveField(2)
  List<Group> get groups {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_groups);
  }

  final List<Sample> _ungroupedSamples;
  @override
  @HiveField(3)
  List<Sample> get ungroupedSamples {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ungroupedSamples);
  }

  @override
  @HiveField(4)
  final int id;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Experiment(info: $info, files: $files, groups: $groups, ungroupedSamples: $ungroupedSamples, id: $id)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Experiment'))
      ..add(DiagnosticsProperty('info', info))
      ..add(DiagnosticsProperty('files', files))
      ..add(DiagnosticsProperty('groups', groups))
      ..add(DiagnosticsProperty('ungroupedSamples', ungroupedSamples))
      ..add(DiagnosticsProperty('id', id));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Experiment &&
            (identical(other.info, info) || other.info == info) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            const DeepCollectionEquality().equals(other._groups, _groups) &&
            const DeepCollectionEquality()
                .equals(other._ungroupedSamples, _ungroupedSamples) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      info,
      const DeepCollectionEquality().hash(_files),
      const DeepCollectionEquality().hash(_groups),
      const DeepCollectionEquality().hash(_ungroupedSamples),
      id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExperimentCopyWith<_$_Experiment> get copyWith =>
      __$$_ExperimentCopyWithImpl<_$_Experiment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExperimentToJson(
      this,
    );
  }
}

abstract class _Experiment extends Experiment {
  const factory _Experiment(
      {@HiveField(0) required final ExperimentCardTextFields info,
      @HiveField(1) required final List<Attachment> files,
      @HiveField(2) required final List<Group> groups,
      @HiveField(3) required final List<Sample> ungroupedSamples,
      @HiveField(4) required final int id}) = _$_Experiment;
  const _Experiment._() : super._();

  factory _Experiment.fromJson(Map<String, dynamic> json) =
      _$_Experiment.fromJson;

  @override
  @HiveField(0)
  ExperimentCardTextFields get info;
  @override
  @HiveField(1)
  List<Attachment> get files;
  @override
  @HiveField(2)
  List<Group> get groups;
  @override
  @HiveField(3)
  List<Sample> get ungroupedSamples;
  @override
  @HiveField(4)
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$_ExperimentCopyWith<_$_Experiment> get copyWith =>
      throw _privateConstructorUsedError;
}
