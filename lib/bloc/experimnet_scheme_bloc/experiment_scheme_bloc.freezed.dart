// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'experiment_scheme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExperimentSchemeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experiment? experiment) init,
    required TResult Function(String text, String title) addNewSample,
    required TResult Function(String text, String title, int id)
        addSampleToGroup,
    required TResult Function(Sample sample, int idGroup) editSample,
    required TResult Function(int groupId, int sampleId) addMeasurementToSample,
    required TResult Function(
            int groupId, int sampleId, int measurementId, String text)
        editMeasurementText,
    required TResult Function(String? name) addUngroupedSamplesToGroup,
    required TResult Function(int measurementId, int groupId, int sampleId)
        addFilesToMeasurement,
    required TResult Function(int groupId, int sampleId) addFilesToSample,
    required TResult Function() createNewEmptyGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Experiment? experiment)? init,
    TResult? Function(String text, String title)? addNewSample,
    TResult? Function(String text, String title, int id)? addSampleToGroup,
    TResult? Function(Sample sample, int idGroup)? editSample,
    TResult? Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult? Function(
            int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult? Function(String? name)? addUngroupedSamplesToGroup,
    TResult? Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult? Function(int groupId, int sampleId)? addFilesToSample,
    TResult? Function()? createNewEmptyGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experiment? experiment)? init,
    TResult Function(String text, String title)? addNewSample,
    TResult Function(String text, String title, int id)? addSampleToGroup,
    TResult Function(Sample sample, int idGroup)? editSample,
    TResult Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult Function(int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult Function(String? name)? addUngroupedSamplesToGroup,
    TResult Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult Function(int groupId, int sampleId)? addFilesToSample,
    TResult Function()? createNewEmptyGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSample value) addSampleToGroup,
    required TResult Function(_EditSample value) editSample,
    required TResult Function(_AddMeasurementToSample value)
        addMeasurementToSample,
    required TResult Function(_EditMeasurementText value) editMeasurementText,
    required TResult Function(_AddUngroupedSamplesToGroup value)
        addUngroupedSamplesToGroup,
    required TResult Function(_AddFilesToMeasurement value)
        addFilesToMeasurement,
    required TResult Function(_AddFilesToSample value) addFilesToSample,
    required TResult Function(_CreateNewEmptyGroup value) createNewEmptyGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSample value)? addSampleToGroup,
    TResult? Function(_EditSample value)? editSample,
    TResult? Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult? Function(_EditMeasurementText value)? editMeasurementText,
    TResult? Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult? Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult? Function(_AddFilesToSample value)? addFilesToSample,
    TResult? Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSample value)? addSampleToGroup,
    TResult Function(_EditSample value)? editSample,
    TResult Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult Function(_EditMeasurementText value)? editMeasurementText,
    TResult Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult Function(_AddFilesToSample value)? addFilesToSample,
    TResult Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperimentSchemeEventCopyWith<$Res> {
  factory $ExperimentSchemeEventCopyWith(ExperimentSchemeEvent value,
          $Res Function(ExperimentSchemeEvent) then) =
      _$ExperimentSchemeEventCopyWithImpl<$Res, ExperimentSchemeEvent>;
}

/// @nodoc
class _$ExperimentSchemeEventCopyWithImpl<$Res,
        $Val extends ExperimentSchemeEvent>
    implements $ExperimentSchemeEventCopyWith<$Res> {
  _$ExperimentSchemeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitCopyWith<$Res> {
  factory _$$_InitCopyWith(_$_Init value, $Res Function(_$_Init) then) =
      __$$_InitCopyWithImpl<$Res>;
  @useResult
  $Res call({Experiment? experiment});

  $ExperimentCopyWith<$Res>? get experiment;
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res>
    extends _$ExperimentSchemeEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? experiment = freezed,
  }) {
    return _then(_$_Init(
      freezed == experiment
          ? _value.experiment
          : experiment // ignore: cast_nullable_to_non_nullable
              as Experiment?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExperimentCopyWith<$Res>? get experiment {
    if (_value.experiment == null) {
      return null;
    }

    return $ExperimentCopyWith<$Res>(_value.experiment!, (value) {
      return _then(_value.copyWith(experiment: value));
    });
  }
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init(this.experiment);

  @override
  final Experiment? experiment;

  @override
  String toString() {
    return 'ExperimentSchemeEvent.init(experiment: $experiment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Init &&
            (identical(other.experiment, experiment) ||
                other.experiment == experiment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, experiment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitCopyWith<_$_Init> get copyWith =>
      __$$_InitCopyWithImpl<_$_Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experiment? experiment) init,
    required TResult Function(String text, String title) addNewSample,
    required TResult Function(String text, String title, int id)
        addSampleToGroup,
    required TResult Function(Sample sample, int idGroup) editSample,
    required TResult Function(int groupId, int sampleId) addMeasurementToSample,
    required TResult Function(
            int groupId, int sampleId, int measurementId, String text)
        editMeasurementText,
    required TResult Function(String? name) addUngroupedSamplesToGroup,
    required TResult Function(int measurementId, int groupId, int sampleId)
        addFilesToMeasurement,
    required TResult Function(int groupId, int sampleId) addFilesToSample,
    required TResult Function() createNewEmptyGroup,
  }) {
    return init(experiment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Experiment? experiment)? init,
    TResult? Function(String text, String title)? addNewSample,
    TResult? Function(String text, String title, int id)? addSampleToGroup,
    TResult? Function(Sample sample, int idGroup)? editSample,
    TResult? Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult? Function(
            int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult? Function(String? name)? addUngroupedSamplesToGroup,
    TResult? Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult? Function(int groupId, int sampleId)? addFilesToSample,
    TResult? Function()? createNewEmptyGroup,
  }) {
    return init?.call(experiment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experiment? experiment)? init,
    TResult Function(String text, String title)? addNewSample,
    TResult Function(String text, String title, int id)? addSampleToGroup,
    TResult Function(Sample sample, int idGroup)? editSample,
    TResult Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult Function(int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult Function(String? name)? addUngroupedSamplesToGroup,
    TResult Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult Function(int groupId, int sampleId)? addFilesToSample,
    TResult Function()? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(experiment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSample value) addSampleToGroup,
    required TResult Function(_EditSample value) editSample,
    required TResult Function(_AddMeasurementToSample value)
        addMeasurementToSample,
    required TResult Function(_EditMeasurementText value) editMeasurementText,
    required TResult Function(_AddUngroupedSamplesToGroup value)
        addUngroupedSamplesToGroup,
    required TResult Function(_AddFilesToMeasurement value)
        addFilesToMeasurement,
    required TResult Function(_AddFilesToSample value) addFilesToSample,
    required TResult Function(_CreateNewEmptyGroup value) createNewEmptyGroup,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSample value)? addSampleToGroup,
    TResult? Function(_EditSample value)? editSample,
    TResult? Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult? Function(_EditMeasurementText value)? editMeasurementText,
    TResult? Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult? Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult? Function(_AddFilesToSample value)? addFilesToSample,
    TResult? Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSample value)? addSampleToGroup,
    TResult Function(_EditSample value)? editSample,
    TResult Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult Function(_EditMeasurementText value)? editMeasurementText,
    TResult Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult Function(_AddFilesToSample value)? addFilesToSample,
    TResult Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements ExperimentSchemeEvent {
  const factory _Init(final Experiment? experiment) = _$_Init;

  Experiment? get experiment;
  @JsonKey(ignore: true)
  _$$_InitCopyWith<_$_Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddNewSampleCopyWith<$Res> {
  factory _$$_AddNewSampleCopyWith(
          _$_AddNewSample value, $Res Function(_$_AddNewSample) then) =
      __$$_AddNewSampleCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, String title});
}

/// @nodoc
class __$$_AddNewSampleCopyWithImpl<$Res>
    extends _$ExperimentSchemeEventCopyWithImpl<$Res, _$_AddNewSample>
    implements _$$_AddNewSampleCopyWith<$Res> {
  __$$_AddNewSampleCopyWithImpl(
      _$_AddNewSample _value, $Res Function(_$_AddNewSample) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? title = null,
  }) {
    return _then(_$_AddNewSample(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddNewSample implements _AddNewSample {
  const _$_AddNewSample({required this.text, required this.title});

  @override
  final String text;
  @override
  final String title;

  @override
  String toString() {
    return 'ExperimentSchemeEvent.addNewSample(text: $text, title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddNewSample &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddNewSampleCopyWith<_$_AddNewSample> get copyWith =>
      __$$_AddNewSampleCopyWithImpl<_$_AddNewSample>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experiment? experiment) init,
    required TResult Function(String text, String title) addNewSample,
    required TResult Function(String text, String title, int id)
        addSampleToGroup,
    required TResult Function(Sample sample, int idGroup) editSample,
    required TResult Function(int groupId, int sampleId) addMeasurementToSample,
    required TResult Function(
            int groupId, int sampleId, int measurementId, String text)
        editMeasurementText,
    required TResult Function(String? name) addUngroupedSamplesToGroup,
    required TResult Function(int measurementId, int groupId, int sampleId)
        addFilesToMeasurement,
    required TResult Function(int groupId, int sampleId) addFilesToSample,
    required TResult Function() createNewEmptyGroup,
  }) {
    return addNewSample(text, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Experiment? experiment)? init,
    TResult? Function(String text, String title)? addNewSample,
    TResult? Function(String text, String title, int id)? addSampleToGroup,
    TResult? Function(Sample sample, int idGroup)? editSample,
    TResult? Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult? Function(
            int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult? Function(String? name)? addUngroupedSamplesToGroup,
    TResult? Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult? Function(int groupId, int sampleId)? addFilesToSample,
    TResult? Function()? createNewEmptyGroup,
  }) {
    return addNewSample?.call(text, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experiment? experiment)? init,
    TResult Function(String text, String title)? addNewSample,
    TResult Function(String text, String title, int id)? addSampleToGroup,
    TResult Function(Sample sample, int idGroup)? editSample,
    TResult Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult Function(int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult Function(String? name)? addUngroupedSamplesToGroup,
    TResult Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult Function(int groupId, int sampleId)? addFilesToSample,
    TResult Function()? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (addNewSample != null) {
      return addNewSample(text, title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSample value) addSampleToGroup,
    required TResult Function(_EditSample value) editSample,
    required TResult Function(_AddMeasurementToSample value)
        addMeasurementToSample,
    required TResult Function(_EditMeasurementText value) editMeasurementText,
    required TResult Function(_AddUngroupedSamplesToGroup value)
        addUngroupedSamplesToGroup,
    required TResult Function(_AddFilesToMeasurement value)
        addFilesToMeasurement,
    required TResult Function(_AddFilesToSample value) addFilesToSample,
    required TResult Function(_CreateNewEmptyGroup value) createNewEmptyGroup,
  }) {
    return addNewSample(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSample value)? addSampleToGroup,
    TResult? Function(_EditSample value)? editSample,
    TResult? Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult? Function(_EditMeasurementText value)? editMeasurementText,
    TResult? Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult? Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult? Function(_AddFilesToSample value)? addFilesToSample,
    TResult? Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
  }) {
    return addNewSample?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSample value)? addSampleToGroup,
    TResult Function(_EditSample value)? editSample,
    TResult Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult Function(_EditMeasurementText value)? editMeasurementText,
    TResult Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult Function(_AddFilesToSample value)? addFilesToSample,
    TResult Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (addNewSample != null) {
      return addNewSample(this);
    }
    return orElse();
  }
}

abstract class _AddNewSample implements ExperimentSchemeEvent {
  const factory _AddNewSample(
      {required final String text,
      required final String title}) = _$_AddNewSample;

  String get text;
  String get title;
  @JsonKey(ignore: true)
  _$$_AddNewSampleCopyWith<_$_AddNewSample> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddSampleCopyWith<$Res> {
  factory _$$_AddSampleCopyWith(
          _$_AddSample value, $Res Function(_$_AddSample) then) =
      __$$_AddSampleCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, String title, int id});
}

/// @nodoc
class __$$_AddSampleCopyWithImpl<$Res>
    extends _$ExperimentSchemeEventCopyWithImpl<$Res, _$_AddSample>
    implements _$$_AddSampleCopyWith<$Res> {
  __$$_AddSampleCopyWithImpl(
      _$_AddSample _value, $Res Function(_$_AddSample) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? title = null,
    Object? id = null,
  }) {
    return _then(_$_AddSample(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AddSample implements _AddSample {
  const _$_AddSample(
      {required this.text, required this.title, required this.id});

  @override
  final String text;
  @override
  final String title;
  @override
  final int id;

  @override
  String toString() {
    return 'ExperimentSchemeEvent.addSampleToGroup(text: $text, title: $title, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddSample &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, title, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddSampleCopyWith<_$_AddSample> get copyWith =>
      __$$_AddSampleCopyWithImpl<_$_AddSample>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experiment? experiment) init,
    required TResult Function(String text, String title) addNewSample,
    required TResult Function(String text, String title, int id)
        addSampleToGroup,
    required TResult Function(Sample sample, int idGroup) editSample,
    required TResult Function(int groupId, int sampleId) addMeasurementToSample,
    required TResult Function(
            int groupId, int sampleId, int measurementId, String text)
        editMeasurementText,
    required TResult Function(String? name) addUngroupedSamplesToGroup,
    required TResult Function(int measurementId, int groupId, int sampleId)
        addFilesToMeasurement,
    required TResult Function(int groupId, int sampleId) addFilesToSample,
    required TResult Function() createNewEmptyGroup,
  }) {
    return addSampleToGroup(text, title, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Experiment? experiment)? init,
    TResult? Function(String text, String title)? addNewSample,
    TResult? Function(String text, String title, int id)? addSampleToGroup,
    TResult? Function(Sample sample, int idGroup)? editSample,
    TResult? Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult? Function(
            int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult? Function(String? name)? addUngroupedSamplesToGroup,
    TResult? Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult? Function(int groupId, int sampleId)? addFilesToSample,
    TResult? Function()? createNewEmptyGroup,
  }) {
    return addSampleToGroup?.call(text, title, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experiment? experiment)? init,
    TResult Function(String text, String title)? addNewSample,
    TResult Function(String text, String title, int id)? addSampleToGroup,
    TResult Function(Sample sample, int idGroup)? editSample,
    TResult Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult Function(int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult Function(String? name)? addUngroupedSamplesToGroup,
    TResult Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult Function(int groupId, int sampleId)? addFilesToSample,
    TResult Function()? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (addSampleToGroup != null) {
      return addSampleToGroup(text, title, id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSample value) addSampleToGroup,
    required TResult Function(_EditSample value) editSample,
    required TResult Function(_AddMeasurementToSample value)
        addMeasurementToSample,
    required TResult Function(_EditMeasurementText value) editMeasurementText,
    required TResult Function(_AddUngroupedSamplesToGroup value)
        addUngroupedSamplesToGroup,
    required TResult Function(_AddFilesToMeasurement value)
        addFilesToMeasurement,
    required TResult Function(_AddFilesToSample value) addFilesToSample,
    required TResult Function(_CreateNewEmptyGroup value) createNewEmptyGroup,
  }) {
    return addSampleToGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSample value)? addSampleToGroup,
    TResult? Function(_EditSample value)? editSample,
    TResult? Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult? Function(_EditMeasurementText value)? editMeasurementText,
    TResult? Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult? Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult? Function(_AddFilesToSample value)? addFilesToSample,
    TResult? Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
  }) {
    return addSampleToGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSample value)? addSampleToGroup,
    TResult Function(_EditSample value)? editSample,
    TResult Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult Function(_EditMeasurementText value)? editMeasurementText,
    TResult Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult Function(_AddFilesToSample value)? addFilesToSample,
    TResult Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (addSampleToGroup != null) {
      return addSampleToGroup(this);
    }
    return orElse();
  }
}

abstract class _AddSample implements ExperimentSchemeEvent {
  const factory _AddSample(
      {required final String text,
      required final String title,
      required final int id}) = _$_AddSample;

  String get text;
  String get title;
  int get id;
  @JsonKey(ignore: true)
  _$$_AddSampleCopyWith<_$_AddSample> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditSampleCopyWith<$Res> {
  factory _$$_EditSampleCopyWith(
          _$_EditSample value, $Res Function(_$_EditSample) then) =
      __$$_EditSampleCopyWithImpl<$Res>;
  @useResult
  $Res call({Sample sample, int idGroup});

  $SampleCopyWith<$Res> get sample;
}

/// @nodoc
class __$$_EditSampleCopyWithImpl<$Res>
    extends _$ExperimentSchemeEventCopyWithImpl<$Res, _$_EditSample>
    implements _$$_EditSampleCopyWith<$Res> {
  __$$_EditSampleCopyWithImpl(
      _$_EditSample _value, $Res Function(_$_EditSample) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sample = null,
    Object? idGroup = null,
  }) {
    return _then(_$_EditSample(
      sample: null == sample
          ? _value.sample
          : sample // ignore: cast_nullable_to_non_nullable
              as Sample,
      idGroup: null == idGroup
          ? _value.idGroup
          : idGroup // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SampleCopyWith<$Res> get sample {
    return $SampleCopyWith<$Res>(_value.sample, (value) {
      return _then(_value.copyWith(sample: value));
    });
  }
}

/// @nodoc

class _$_EditSample implements _EditSample {
  const _$_EditSample({required this.sample, required this.idGroup});

  @override
  final Sample sample;
  @override
  final int idGroup;

  @override
  String toString() {
    return 'ExperimentSchemeEvent.editSample(sample: $sample, idGroup: $idGroup)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditSample &&
            (identical(other.sample, sample) || other.sample == sample) &&
            (identical(other.idGroup, idGroup) || other.idGroup == idGroup));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sample, idGroup);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditSampleCopyWith<_$_EditSample> get copyWith =>
      __$$_EditSampleCopyWithImpl<_$_EditSample>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experiment? experiment) init,
    required TResult Function(String text, String title) addNewSample,
    required TResult Function(String text, String title, int id)
        addSampleToGroup,
    required TResult Function(Sample sample, int idGroup) editSample,
    required TResult Function(int groupId, int sampleId) addMeasurementToSample,
    required TResult Function(
            int groupId, int sampleId, int measurementId, String text)
        editMeasurementText,
    required TResult Function(String? name) addUngroupedSamplesToGroup,
    required TResult Function(int measurementId, int groupId, int sampleId)
        addFilesToMeasurement,
    required TResult Function(int groupId, int sampleId) addFilesToSample,
    required TResult Function() createNewEmptyGroup,
  }) {
    return editSample(sample, idGroup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Experiment? experiment)? init,
    TResult? Function(String text, String title)? addNewSample,
    TResult? Function(String text, String title, int id)? addSampleToGroup,
    TResult? Function(Sample sample, int idGroup)? editSample,
    TResult? Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult? Function(
            int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult? Function(String? name)? addUngroupedSamplesToGroup,
    TResult? Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult? Function(int groupId, int sampleId)? addFilesToSample,
    TResult? Function()? createNewEmptyGroup,
  }) {
    return editSample?.call(sample, idGroup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experiment? experiment)? init,
    TResult Function(String text, String title)? addNewSample,
    TResult Function(String text, String title, int id)? addSampleToGroup,
    TResult Function(Sample sample, int idGroup)? editSample,
    TResult Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult Function(int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult Function(String? name)? addUngroupedSamplesToGroup,
    TResult Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult Function(int groupId, int sampleId)? addFilesToSample,
    TResult Function()? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (editSample != null) {
      return editSample(sample, idGroup);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSample value) addSampleToGroup,
    required TResult Function(_EditSample value) editSample,
    required TResult Function(_AddMeasurementToSample value)
        addMeasurementToSample,
    required TResult Function(_EditMeasurementText value) editMeasurementText,
    required TResult Function(_AddUngroupedSamplesToGroup value)
        addUngroupedSamplesToGroup,
    required TResult Function(_AddFilesToMeasurement value)
        addFilesToMeasurement,
    required TResult Function(_AddFilesToSample value) addFilesToSample,
    required TResult Function(_CreateNewEmptyGroup value) createNewEmptyGroup,
  }) {
    return editSample(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSample value)? addSampleToGroup,
    TResult? Function(_EditSample value)? editSample,
    TResult? Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult? Function(_EditMeasurementText value)? editMeasurementText,
    TResult? Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult? Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult? Function(_AddFilesToSample value)? addFilesToSample,
    TResult? Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
  }) {
    return editSample?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSample value)? addSampleToGroup,
    TResult Function(_EditSample value)? editSample,
    TResult Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult Function(_EditMeasurementText value)? editMeasurementText,
    TResult Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult Function(_AddFilesToSample value)? addFilesToSample,
    TResult Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (editSample != null) {
      return editSample(this);
    }
    return orElse();
  }
}

abstract class _EditSample implements ExperimentSchemeEvent {
  const factory _EditSample(
      {required final Sample sample,
      required final int idGroup}) = _$_EditSample;

  Sample get sample;
  int get idGroup;
  @JsonKey(ignore: true)
  _$$_EditSampleCopyWith<_$_EditSample> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddMeasurementToSampleCopyWith<$Res> {
  factory _$$_AddMeasurementToSampleCopyWith(_$_AddMeasurementToSample value,
          $Res Function(_$_AddMeasurementToSample) then) =
      __$$_AddMeasurementToSampleCopyWithImpl<$Res>;
  @useResult
  $Res call({int groupId, int sampleId});
}

/// @nodoc
class __$$_AddMeasurementToSampleCopyWithImpl<$Res>
    extends _$ExperimentSchemeEventCopyWithImpl<$Res, _$_AddMeasurementToSample>
    implements _$$_AddMeasurementToSampleCopyWith<$Res> {
  __$$_AddMeasurementToSampleCopyWithImpl(_$_AddMeasurementToSample _value,
      $Res Function(_$_AddMeasurementToSample) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? sampleId = null,
  }) {
    return _then(_$_AddMeasurementToSample(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AddMeasurementToSample implements _AddMeasurementToSample {
  const _$_AddMeasurementToSample(
      {required this.groupId, required this.sampleId});

  @override
  final int groupId;
  @override
  final int sampleId;

  @override
  String toString() {
    return 'ExperimentSchemeEvent.addMeasurementToSample(groupId: $groupId, sampleId: $sampleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddMeasurementToSample &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId, sampleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddMeasurementToSampleCopyWith<_$_AddMeasurementToSample> get copyWith =>
      __$$_AddMeasurementToSampleCopyWithImpl<_$_AddMeasurementToSample>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experiment? experiment) init,
    required TResult Function(String text, String title) addNewSample,
    required TResult Function(String text, String title, int id)
        addSampleToGroup,
    required TResult Function(Sample sample, int idGroup) editSample,
    required TResult Function(int groupId, int sampleId) addMeasurementToSample,
    required TResult Function(
            int groupId, int sampleId, int measurementId, String text)
        editMeasurementText,
    required TResult Function(String? name) addUngroupedSamplesToGroup,
    required TResult Function(int measurementId, int groupId, int sampleId)
        addFilesToMeasurement,
    required TResult Function(int groupId, int sampleId) addFilesToSample,
    required TResult Function() createNewEmptyGroup,
  }) {
    return addMeasurementToSample(groupId, sampleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Experiment? experiment)? init,
    TResult? Function(String text, String title)? addNewSample,
    TResult? Function(String text, String title, int id)? addSampleToGroup,
    TResult? Function(Sample sample, int idGroup)? editSample,
    TResult? Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult? Function(
            int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult? Function(String? name)? addUngroupedSamplesToGroup,
    TResult? Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult? Function(int groupId, int sampleId)? addFilesToSample,
    TResult? Function()? createNewEmptyGroup,
  }) {
    return addMeasurementToSample?.call(groupId, sampleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experiment? experiment)? init,
    TResult Function(String text, String title)? addNewSample,
    TResult Function(String text, String title, int id)? addSampleToGroup,
    TResult Function(Sample sample, int idGroup)? editSample,
    TResult Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult Function(int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult Function(String? name)? addUngroupedSamplesToGroup,
    TResult Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult Function(int groupId, int sampleId)? addFilesToSample,
    TResult Function()? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (addMeasurementToSample != null) {
      return addMeasurementToSample(groupId, sampleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSample value) addSampleToGroup,
    required TResult Function(_EditSample value) editSample,
    required TResult Function(_AddMeasurementToSample value)
        addMeasurementToSample,
    required TResult Function(_EditMeasurementText value) editMeasurementText,
    required TResult Function(_AddUngroupedSamplesToGroup value)
        addUngroupedSamplesToGroup,
    required TResult Function(_AddFilesToMeasurement value)
        addFilesToMeasurement,
    required TResult Function(_AddFilesToSample value) addFilesToSample,
    required TResult Function(_CreateNewEmptyGroup value) createNewEmptyGroup,
  }) {
    return addMeasurementToSample(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSample value)? addSampleToGroup,
    TResult? Function(_EditSample value)? editSample,
    TResult? Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult? Function(_EditMeasurementText value)? editMeasurementText,
    TResult? Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult? Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult? Function(_AddFilesToSample value)? addFilesToSample,
    TResult? Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
  }) {
    return addMeasurementToSample?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSample value)? addSampleToGroup,
    TResult Function(_EditSample value)? editSample,
    TResult Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult Function(_EditMeasurementText value)? editMeasurementText,
    TResult Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult Function(_AddFilesToSample value)? addFilesToSample,
    TResult Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (addMeasurementToSample != null) {
      return addMeasurementToSample(this);
    }
    return orElse();
  }
}

abstract class _AddMeasurementToSample implements ExperimentSchemeEvent {
  const factory _AddMeasurementToSample(
      {required final int groupId,
      required final int sampleId}) = _$_AddMeasurementToSample;

  int get groupId;
  int get sampleId;
  @JsonKey(ignore: true)
  _$$_AddMeasurementToSampleCopyWith<_$_AddMeasurementToSample> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EditMeasurementTextCopyWith<$Res> {
  factory _$$_EditMeasurementTextCopyWith(_$_EditMeasurementText value,
          $Res Function(_$_EditMeasurementText) then) =
      __$$_EditMeasurementTextCopyWithImpl<$Res>;
  @useResult
  $Res call({int groupId, int sampleId, int measurementId, String text});
}

/// @nodoc
class __$$_EditMeasurementTextCopyWithImpl<$Res>
    extends _$ExperimentSchemeEventCopyWithImpl<$Res, _$_EditMeasurementText>
    implements _$$_EditMeasurementTextCopyWith<$Res> {
  __$$_EditMeasurementTextCopyWithImpl(_$_EditMeasurementText _value,
      $Res Function(_$_EditMeasurementText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? sampleId = null,
    Object? measurementId = null,
    Object? text = null,
  }) {
    return _then(_$_EditMeasurementText(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as int,
      measurementId: null == measurementId
          ? _value.measurementId
          : measurementId // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditMeasurementText implements _EditMeasurementText {
  const _$_EditMeasurementText(
      {required this.groupId,
      required this.sampleId,
      required this.measurementId,
      required this.text});

  @override
  final int groupId;
  @override
  final int sampleId;
  @override
  final int measurementId;
  @override
  final String text;

  @override
  String toString() {
    return 'ExperimentSchemeEvent.editMeasurementText(groupId: $groupId, sampleId: $sampleId, measurementId: $measurementId, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditMeasurementText &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId) &&
            (identical(other.measurementId, measurementId) ||
                other.measurementId == measurementId) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, groupId, sampleId, measurementId, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EditMeasurementTextCopyWith<_$_EditMeasurementText> get copyWith =>
      __$$_EditMeasurementTextCopyWithImpl<_$_EditMeasurementText>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experiment? experiment) init,
    required TResult Function(String text, String title) addNewSample,
    required TResult Function(String text, String title, int id)
        addSampleToGroup,
    required TResult Function(Sample sample, int idGroup) editSample,
    required TResult Function(int groupId, int sampleId) addMeasurementToSample,
    required TResult Function(
            int groupId, int sampleId, int measurementId, String text)
        editMeasurementText,
    required TResult Function(String? name) addUngroupedSamplesToGroup,
    required TResult Function(int measurementId, int groupId, int sampleId)
        addFilesToMeasurement,
    required TResult Function(int groupId, int sampleId) addFilesToSample,
    required TResult Function() createNewEmptyGroup,
  }) {
    return editMeasurementText(groupId, sampleId, measurementId, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Experiment? experiment)? init,
    TResult? Function(String text, String title)? addNewSample,
    TResult? Function(String text, String title, int id)? addSampleToGroup,
    TResult? Function(Sample sample, int idGroup)? editSample,
    TResult? Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult? Function(
            int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult? Function(String? name)? addUngroupedSamplesToGroup,
    TResult? Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult? Function(int groupId, int sampleId)? addFilesToSample,
    TResult? Function()? createNewEmptyGroup,
  }) {
    return editMeasurementText?.call(groupId, sampleId, measurementId, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experiment? experiment)? init,
    TResult Function(String text, String title)? addNewSample,
    TResult Function(String text, String title, int id)? addSampleToGroup,
    TResult Function(Sample sample, int idGroup)? editSample,
    TResult Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult Function(int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult Function(String? name)? addUngroupedSamplesToGroup,
    TResult Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult Function(int groupId, int sampleId)? addFilesToSample,
    TResult Function()? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (editMeasurementText != null) {
      return editMeasurementText(groupId, sampleId, measurementId, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSample value) addSampleToGroup,
    required TResult Function(_EditSample value) editSample,
    required TResult Function(_AddMeasurementToSample value)
        addMeasurementToSample,
    required TResult Function(_EditMeasurementText value) editMeasurementText,
    required TResult Function(_AddUngroupedSamplesToGroup value)
        addUngroupedSamplesToGroup,
    required TResult Function(_AddFilesToMeasurement value)
        addFilesToMeasurement,
    required TResult Function(_AddFilesToSample value) addFilesToSample,
    required TResult Function(_CreateNewEmptyGroup value) createNewEmptyGroup,
  }) {
    return editMeasurementText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSample value)? addSampleToGroup,
    TResult? Function(_EditSample value)? editSample,
    TResult? Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult? Function(_EditMeasurementText value)? editMeasurementText,
    TResult? Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult? Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult? Function(_AddFilesToSample value)? addFilesToSample,
    TResult? Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
  }) {
    return editMeasurementText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSample value)? addSampleToGroup,
    TResult Function(_EditSample value)? editSample,
    TResult Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult Function(_EditMeasurementText value)? editMeasurementText,
    TResult Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult Function(_AddFilesToSample value)? addFilesToSample,
    TResult Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (editMeasurementText != null) {
      return editMeasurementText(this);
    }
    return orElse();
  }
}

abstract class _EditMeasurementText implements ExperimentSchemeEvent {
  const factory _EditMeasurementText(
      {required final int groupId,
      required final int sampleId,
      required final int measurementId,
      required final String text}) = _$_EditMeasurementText;

  int get groupId;
  int get sampleId;
  int get measurementId;
  String get text;
  @JsonKey(ignore: true)
  _$$_EditMeasurementTextCopyWith<_$_EditMeasurementText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddUngroupedSamplesToGroupCopyWith<$Res> {
  factory _$$_AddUngroupedSamplesToGroupCopyWith(
          _$_AddUngroupedSamplesToGroup value,
          $Res Function(_$_AddUngroupedSamplesToGroup) then) =
      __$$_AddUngroupedSamplesToGroupCopyWithImpl<$Res>;
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$_AddUngroupedSamplesToGroupCopyWithImpl<$Res>
    extends _$ExperimentSchemeEventCopyWithImpl<$Res,
        _$_AddUngroupedSamplesToGroup>
    implements _$$_AddUngroupedSamplesToGroupCopyWith<$Res> {
  __$$_AddUngroupedSamplesToGroupCopyWithImpl(
      _$_AddUngroupedSamplesToGroup _value,
      $Res Function(_$_AddUngroupedSamplesToGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_AddUngroupedSamplesToGroup(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_AddUngroupedSamplesToGroup implements _AddUngroupedSamplesToGroup {
  const _$_AddUngroupedSamplesToGroup({this.name});

  @override
  final String? name;

  @override
  String toString() {
    return 'ExperimentSchemeEvent.addUngroupedSamplesToGroup(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddUngroupedSamplesToGroup &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddUngroupedSamplesToGroupCopyWith<_$_AddUngroupedSamplesToGroup>
      get copyWith => __$$_AddUngroupedSamplesToGroupCopyWithImpl<
          _$_AddUngroupedSamplesToGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experiment? experiment) init,
    required TResult Function(String text, String title) addNewSample,
    required TResult Function(String text, String title, int id)
        addSampleToGroup,
    required TResult Function(Sample sample, int idGroup) editSample,
    required TResult Function(int groupId, int sampleId) addMeasurementToSample,
    required TResult Function(
            int groupId, int sampleId, int measurementId, String text)
        editMeasurementText,
    required TResult Function(String? name) addUngroupedSamplesToGroup,
    required TResult Function(int measurementId, int groupId, int sampleId)
        addFilesToMeasurement,
    required TResult Function(int groupId, int sampleId) addFilesToSample,
    required TResult Function() createNewEmptyGroup,
  }) {
    return addUngroupedSamplesToGroup(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Experiment? experiment)? init,
    TResult? Function(String text, String title)? addNewSample,
    TResult? Function(String text, String title, int id)? addSampleToGroup,
    TResult? Function(Sample sample, int idGroup)? editSample,
    TResult? Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult? Function(
            int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult? Function(String? name)? addUngroupedSamplesToGroup,
    TResult? Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult? Function(int groupId, int sampleId)? addFilesToSample,
    TResult? Function()? createNewEmptyGroup,
  }) {
    return addUngroupedSamplesToGroup?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experiment? experiment)? init,
    TResult Function(String text, String title)? addNewSample,
    TResult Function(String text, String title, int id)? addSampleToGroup,
    TResult Function(Sample sample, int idGroup)? editSample,
    TResult Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult Function(int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult Function(String? name)? addUngroupedSamplesToGroup,
    TResult Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult Function(int groupId, int sampleId)? addFilesToSample,
    TResult Function()? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (addUngroupedSamplesToGroup != null) {
      return addUngroupedSamplesToGroup(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSample value) addSampleToGroup,
    required TResult Function(_EditSample value) editSample,
    required TResult Function(_AddMeasurementToSample value)
        addMeasurementToSample,
    required TResult Function(_EditMeasurementText value) editMeasurementText,
    required TResult Function(_AddUngroupedSamplesToGroup value)
        addUngroupedSamplesToGroup,
    required TResult Function(_AddFilesToMeasurement value)
        addFilesToMeasurement,
    required TResult Function(_AddFilesToSample value) addFilesToSample,
    required TResult Function(_CreateNewEmptyGroup value) createNewEmptyGroup,
  }) {
    return addUngroupedSamplesToGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSample value)? addSampleToGroup,
    TResult? Function(_EditSample value)? editSample,
    TResult? Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult? Function(_EditMeasurementText value)? editMeasurementText,
    TResult? Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult? Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult? Function(_AddFilesToSample value)? addFilesToSample,
    TResult? Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
  }) {
    return addUngroupedSamplesToGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSample value)? addSampleToGroup,
    TResult Function(_EditSample value)? editSample,
    TResult Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult Function(_EditMeasurementText value)? editMeasurementText,
    TResult Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult Function(_AddFilesToSample value)? addFilesToSample,
    TResult Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (addUngroupedSamplesToGroup != null) {
      return addUngroupedSamplesToGroup(this);
    }
    return orElse();
  }
}

abstract class _AddUngroupedSamplesToGroup implements ExperimentSchemeEvent {
  const factory _AddUngroupedSamplesToGroup({final String? name}) =
      _$_AddUngroupedSamplesToGroup;

  String? get name;
  @JsonKey(ignore: true)
  _$$_AddUngroupedSamplesToGroupCopyWith<_$_AddUngroupedSamplesToGroup>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddFilesToMeasurementCopyWith<$Res> {
  factory _$$_AddFilesToMeasurementCopyWith(_$_AddFilesToMeasurement value,
          $Res Function(_$_AddFilesToMeasurement) then) =
      __$$_AddFilesToMeasurementCopyWithImpl<$Res>;
  @useResult
  $Res call({int measurementId, int groupId, int sampleId});
}

/// @nodoc
class __$$_AddFilesToMeasurementCopyWithImpl<$Res>
    extends _$ExperimentSchemeEventCopyWithImpl<$Res, _$_AddFilesToMeasurement>
    implements _$$_AddFilesToMeasurementCopyWith<$Res> {
  __$$_AddFilesToMeasurementCopyWithImpl(_$_AddFilesToMeasurement _value,
      $Res Function(_$_AddFilesToMeasurement) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? measurementId = null,
    Object? groupId = null,
    Object? sampleId = null,
  }) {
    return _then(_$_AddFilesToMeasurement(
      measurementId: null == measurementId
          ? _value.measurementId
          : measurementId // ignore: cast_nullable_to_non_nullable
              as int,
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AddFilesToMeasurement implements _AddFilesToMeasurement {
  const _$_AddFilesToMeasurement(
      {required this.measurementId,
      required this.groupId,
      required this.sampleId});

  @override
  final int measurementId;
  @override
  final int groupId;
  @override
  final int sampleId;

  @override
  String toString() {
    return 'ExperimentSchemeEvent.addFilesToMeasurement(measurementId: $measurementId, groupId: $groupId, sampleId: $sampleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddFilesToMeasurement &&
            (identical(other.measurementId, measurementId) ||
                other.measurementId == measurementId) &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, measurementId, groupId, sampleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddFilesToMeasurementCopyWith<_$_AddFilesToMeasurement> get copyWith =>
      __$$_AddFilesToMeasurementCopyWithImpl<_$_AddFilesToMeasurement>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experiment? experiment) init,
    required TResult Function(String text, String title) addNewSample,
    required TResult Function(String text, String title, int id)
        addSampleToGroup,
    required TResult Function(Sample sample, int idGroup) editSample,
    required TResult Function(int groupId, int sampleId) addMeasurementToSample,
    required TResult Function(
            int groupId, int sampleId, int measurementId, String text)
        editMeasurementText,
    required TResult Function(String? name) addUngroupedSamplesToGroup,
    required TResult Function(int measurementId, int groupId, int sampleId)
        addFilesToMeasurement,
    required TResult Function(int groupId, int sampleId) addFilesToSample,
    required TResult Function() createNewEmptyGroup,
  }) {
    return addFilesToMeasurement(measurementId, groupId, sampleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Experiment? experiment)? init,
    TResult? Function(String text, String title)? addNewSample,
    TResult? Function(String text, String title, int id)? addSampleToGroup,
    TResult? Function(Sample sample, int idGroup)? editSample,
    TResult? Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult? Function(
            int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult? Function(String? name)? addUngroupedSamplesToGroup,
    TResult? Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult? Function(int groupId, int sampleId)? addFilesToSample,
    TResult? Function()? createNewEmptyGroup,
  }) {
    return addFilesToMeasurement?.call(measurementId, groupId, sampleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experiment? experiment)? init,
    TResult Function(String text, String title)? addNewSample,
    TResult Function(String text, String title, int id)? addSampleToGroup,
    TResult Function(Sample sample, int idGroup)? editSample,
    TResult Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult Function(int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult Function(String? name)? addUngroupedSamplesToGroup,
    TResult Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult Function(int groupId, int sampleId)? addFilesToSample,
    TResult Function()? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (addFilesToMeasurement != null) {
      return addFilesToMeasurement(measurementId, groupId, sampleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSample value) addSampleToGroup,
    required TResult Function(_EditSample value) editSample,
    required TResult Function(_AddMeasurementToSample value)
        addMeasurementToSample,
    required TResult Function(_EditMeasurementText value) editMeasurementText,
    required TResult Function(_AddUngroupedSamplesToGroup value)
        addUngroupedSamplesToGroup,
    required TResult Function(_AddFilesToMeasurement value)
        addFilesToMeasurement,
    required TResult Function(_AddFilesToSample value) addFilesToSample,
    required TResult Function(_CreateNewEmptyGroup value) createNewEmptyGroup,
  }) {
    return addFilesToMeasurement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSample value)? addSampleToGroup,
    TResult? Function(_EditSample value)? editSample,
    TResult? Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult? Function(_EditMeasurementText value)? editMeasurementText,
    TResult? Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult? Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult? Function(_AddFilesToSample value)? addFilesToSample,
    TResult? Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
  }) {
    return addFilesToMeasurement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSample value)? addSampleToGroup,
    TResult Function(_EditSample value)? editSample,
    TResult Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult Function(_EditMeasurementText value)? editMeasurementText,
    TResult Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult Function(_AddFilesToSample value)? addFilesToSample,
    TResult Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (addFilesToMeasurement != null) {
      return addFilesToMeasurement(this);
    }
    return orElse();
  }
}

abstract class _AddFilesToMeasurement implements ExperimentSchemeEvent {
  const factory _AddFilesToMeasurement(
      {required final int measurementId,
      required final int groupId,
      required final int sampleId}) = _$_AddFilesToMeasurement;

  int get measurementId;
  int get groupId;
  int get sampleId;
  @JsonKey(ignore: true)
  _$$_AddFilesToMeasurementCopyWith<_$_AddFilesToMeasurement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddFilesToSampleCopyWith<$Res> {
  factory _$$_AddFilesToSampleCopyWith(
          _$_AddFilesToSample value, $Res Function(_$_AddFilesToSample) then) =
      __$$_AddFilesToSampleCopyWithImpl<$Res>;
  @useResult
  $Res call({int groupId, int sampleId});
}

/// @nodoc
class __$$_AddFilesToSampleCopyWithImpl<$Res>
    extends _$ExperimentSchemeEventCopyWithImpl<$Res, _$_AddFilesToSample>
    implements _$$_AddFilesToSampleCopyWith<$Res> {
  __$$_AddFilesToSampleCopyWithImpl(
      _$_AddFilesToSample _value, $Res Function(_$_AddFilesToSample) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupId = null,
    Object? sampleId = null,
  }) {
    return _then(_$_AddFilesToSample(
      groupId: null == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as int,
      sampleId: null == sampleId
          ? _value.sampleId
          : sampleId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AddFilesToSample implements _AddFilesToSample {
  const _$_AddFilesToSample({required this.groupId, required this.sampleId});

  @override
  final int groupId;
  @override
  final int sampleId;

  @override
  String toString() {
    return 'ExperimentSchemeEvent.addFilesToSample(groupId: $groupId, sampleId: $sampleId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddFilesToSample &&
            (identical(other.groupId, groupId) || other.groupId == groupId) &&
            (identical(other.sampleId, sampleId) ||
                other.sampleId == sampleId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupId, sampleId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddFilesToSampleCopyWith<_$_AddFilesToSample> get copyWith =>
      __$$_AddFilesToSampleCopyWithImpl<_$_AddFilesToSample>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experiment? experiment) init,
    required TResult Function(String text, String title) addNewSample,
    required TResult Function(String text, String title, int id)
        addSampleToGroup,
    required TResult Function(Sample sample, int idGroup) editSample,
    required TResult Function(int groupId, int sampleId) addMeasurementToSample,
    required TResult Function(
            int groupId, int sampleId, int measurementId, String text)
        editMeasurementText,
    required TResult Function(String? name) addUngroupedSamplesToGroup,
    required TResult Function(int measurementId, int groupId, int sampleId)
        addFilesToMeasurement,
    required TResult Function(int groupId, int sampleId) addFilesToSample,
    required TResult Function() createNewEmptyGroup,
  }) {
    return addFilesToSample(groupId, sampleId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Experiment? experiment)? init,
    TResult? Function(String text, String title)? addNewSample,
    TResult? Function(String text, String title, int id)? addSampleToGroup,
    TResult? Function(Sample sample, int idGroup)? editSample,
    TResult? Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult? Function(
            int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult? Function(String? name)? addUngroupedSamplesToGroup,
    TResult? Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult? Function(int groupId, int sampleId)? addFilesToSample,
    TResult? Function()? createNewEmptyGroup,
  }) {
    return addFilesToSample?.call(groupId, sampleId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experiment? experiment)? init,
    TResult Function(String text, String title)? addNewSample,
    TResult Function(String text, String title, int id)? addSampleToGroup,
    TResult Function(Sample sample, int idGroup)? editSample,
    TResult Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult Function(int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult Function(String? name)? addUngroupedSamplesToGroup,
    TResult Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult Function(int groupId, int sampleId)? addFilesToSample,
    TResult Function()? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (addFilesToSample != null) {
      return addFilesToSample(groupId, sampleId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSample value) addSampleToGroup,
    required TResult Function(_EditSample value) editSample,
    required TResult Function(_AddMeasurementToSample value)
        addMeasurementToSample,
    required TResult Function(_EditMeasurementText value) editMeasurementText,
    required TResult Function(_AddUngroupedSamplesToGroup value)
        addUngroupedSamplesToGroup,
    required TResult Function(_AddFilesToMeasurement value)
        addFilesToMeasurement,
    required TResult Function(_AddFilesToSample value) addFilesToSample,
    required TResult Function(_CreateNewEmptyGroup value) createNewEmptyGroup,
  }) {
    return addFilesToSample(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSample value)? addSampleToGroup,
    TResult? Function(_EditSample value)? editSample,
    TResult? Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult? Function(_EditMeasurementText value)? editMeasurementText,
    TResult? Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult? Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult? Function(_AddFilesToSample value)? addFilesToSample,
    TResult? Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
  }) {
    return addFilesToSample?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSample value)? addSampleToGroup,
    TResult Function(_EditSample value)? editSample,
    TResult Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult Function(_EditMeasurementText value)? editMeasurementText,
    TResult Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult Function(_AddFilesToSample value)? addFilesToSample,
    TResult Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (addFilesToSample != null) {
      return addFilesToSample(this);
    }
    return orElse();
  }
}

abstract class _AddFilesToSample implements ExperimentSchemeEvent {
  const factory _AddFilesToSample(
      {required final int groupId,
      required final int sampleId}) = _$_AddFilesToSample;

  int get groupId;
  int get sampleId;
  @JsonKey(ignore: true)
  _$$_AddFilesToSampleCopyWith<_$_AddFilesToSample> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateNewEmptyGroupCopyWith<$Res> {
  factory _$$_CreateNewEmptyGroupCopyWith(_$_CreateNewEmptyGroup value,
          $Res Function(_$_CreateNewEmptyGroup) then) =
      __$$_CreateNewEmptyGroupCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateNewEmptyGroupCopyWithImpl<$Res>
    extends _$ExperimentSchemeEventCopyWithImpl<$Res, _$_CreateNewEmptyGroup>
    implements _$$_CreateNewEmptyGroupCopyWith<$Res> {
  __$$_CreateNewEmptyGroupCopyWithImpl(_$_CreateNewEmptyGroup _value,
      $Res Function(_$_CreateNewEmptyGroup) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CreateNewEmptyGroup implements _CreateNewEmptyGroup {
  const _$_CreateNewEmptyGroup();

  @override
  String toString() {
    return 'ExperimentSchemeEvent.createNewEmptyGroup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CreateNewEmptyGroup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Experiment? experiment) init,
    required TResult Function(String text, String title) addNewSample,
    required TResult Function(String text, String title, int id)
        addSampleToGroup,
    required TResult Function(Sample sample, int idGroup) editSample,
    required TResult Function(int groupId, int sampleId) addMeasurementToSample,
    required TResult Function(
            int groupId, int sampleId, int measurementId, String text)
        editMeasurementText,
    required TResult Function(String? name) addUngroupedSamplesToGroup,
    required TResult Function(int measurementId, int groupId, int sampleId)
        addFilesToMeasurement,
    required TResult Function(int groupId, int sampleId) addFilesToSample,
    required TResult Function() createNewEmptyGroup,
  }) {
    return createNewEmptyGroup();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Experiment? experiment)? init,
    TResult? Function(String text, String title)? addNewSample,
    TResult? Function(String text, String title, int id)? addSampleToGroup,
    TResult? Function(Sample sample, int idGroup)? editSample,
    TResult? Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult? Function(
            int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult? Function(String? name)? addUngroupedSamplesToGroup,
    TResult? Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult? Function(int groupId, int sampleId)? addFilesToSample,
    TResult? Function()? createNewEmptyGroup,
  }) {
    return createNewEmptyGroup?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Experiment? experiment)? init,
    TResult Function(String text, String title)? addNewSample,
    TResult Function(String text, String title, int id)? addSampleToGroup,
    TResult Function(Sample sample, int idGroup)? editSample,
    TResult Function(int groupId, int sampleId)? addMeasurementToSample,
    TResult Function(int groupId, int sampleId, int measurementId, String text)?
        editMeasurementText,
    TResult Function(String? name)? addUngroupedSamplesToGroup,
    TResult Function(int measurementId, int groupId, int sampleId)?
        addFilesToMeasurement,
    TResult Function(int groupId, int sampleId)? addFilesToSample,
    TResult Function()? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (createNewEmptyGroup != null) {
      return createNewEmptyGroup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSample value) addSampleToGroup,
    required TResult Function(_EditSample value) editSample,
    required TResult Function(_AddMeasurementToSample value)
        addMeasurementToSample,
    required TResult Function(_EditMeasurementText value) editMeasurementText,
    required TResult Function(_AddUngroupedSamplesToGroup value)
        addUngroupedSamplesToGroup,
    required TResult Function(_AddFilesToMeasurement value)
        addFilesToMeasurement,
    required TResult Function(_AddFilesToSample value) addFilesToSample,
    required TResult Function(_CreateNewEmptyGroup value) createNewEmptyGroup,
  }) {
    return createNewEmptyGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSample value)? addSampleToGroup,
    TResult? Function(_EditSample value)? editSample,
    TResult? Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult? Function(_EditMeasurementText value)? editMeasurementText,
    TResult? Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult? Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult? Function(_AddFilesToSample value)? addFilesToSample,
    TResult? Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
  }) {
    return createNewEmptyGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSample value)? addSampleToGroup,
    TResult Function(_EditSample value)? editSample,
    TResult Function(_AddMeasurementToSample value)? addMeasurementToSample,
    TResult Function(_EditMeasurementText value)? editMeasurementText,
    TResult Function(_AddUngroupedSamplesToGroup value)?
        addUngroupedSamplesToGroup,
    TResult Function(_AddFilesToMeasurement value)? addFilesToMeasurement,
    TResult Function(_AddFilesToSample value)? addFilesToSample,
    TResult Function(_CreateNewEmptyGroup value)? createNewEmptyGroup,
    required TResult orElse(),
  }) {
    if (createNewEmptyGroup != null) {
      return createNewEmptyGroup(this);
    }
    return orElse();
  }
}

abstract class _CreateNewEmptyGroup implements ExperimentSchemeEvent {
  const factory _CreateNewEmptyGroup() = _$_CreateNewEmptyGroup;
}

/// @nodoc
mixin _$ExperimentSchemeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyState,
    required TResult Function(List<Group> data, List<Sample> ungroupedSamples)
        loadedState,
    required TResult Function() errorState,
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emptyState,
    TResult? Function(List<Group> data, List<Sample> ungroupedSamples)?
        loadedState,
    TResult? Function()? errorState,
    TResult? Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyState,
    TResult Function(List<Group> data, List<Sample> ungroupedSamples)?
        loadedState,
    TResult Function()? errorState,
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyState value) emptyState,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_Loading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyState value)? emptyState,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_ErrorState value)? errorState,
    TResult? Function(_Loading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyState value)? emptyState,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperimentSchemeStateCopyWith<$Res> {
  factory $ExperimentSchemeStateCopyWith(ExperimentSchemeState value,
          $Res Function(ExperimentSchemeState) then) =
      _$ExperimentSchemeStateCopyWithImpl<$Res, ExperimentSchemeState>;
}

/// @nodoc
class _$ExperimentSchemeStateCopyWithImpl<$Res,
        $Val extends ExperimentSchemeState>
    implements $ExperimentSchemeStateCopyWith<$Res> {
  _$ExperimentSchemeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EmptyStateCopyWith<$Res> {
  factory _$$_EmptyStateCopyWith(
          _$_EmptyState value, $Res Function(_$_EmptyState) then) =
      __$$_EmptyStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptyStateCopyWithImpl<$Res>
    extends _$ExperimentSchemeStateCopyWithImpl<$Res, _$_EmptyState>
    implements _$$_EmptyStateCopyWith<$Res> {
  __$$_EmptyStateCopyWithImpl(
      _$_EmptyState _value, $Res Function(_$_EmptyState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EmptyState implements _EmptyState {
  const _$_EmptyState();

  @override
  String toString() {
    return 'ExperimentSchemeState.emptyState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmptyState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyState,
    required TResult Function(List<Group> data, List<Sample> ungroupedSamples)
        loadedState,
    required TResult Function() errorState,
    required TResult Function() loading,
  }) {
    return emptyState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emptyState,
    TResult? Function(List<Group> data, List<Sample> ungroupedSamples)?
        loadedState,
    TResult? Function()? errorState,
    TResult? Function()? loading,
  }) {
    return emptyState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyState,
    TResult Function(List<Group> data, List<Sample> ungroupedSamples)?
        loadedState,
    TResult Function()? errorState,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (emptyState != null) {
      return emptyState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyState value) emptyState,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_Loading value) loading,
  }) {
    return emptyState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyState value)? emptyState,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_ErrorState value)? errorState,
    TResult? Function(_Loading value)? loading,
  }) {
    return emptyState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyState value)? emptyState,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (emptyState != null) {
      return emptyState(this);
    }
    return orElse();
  }
}

abstract class _EmptyState implements ExperimentSchemeState {
  const factory _EmptyState() = _$_EmptyState;
}

/// @nodoc
abstract class _$$_LoadedStateCopyWith<$Res> {
  factory _$$_LoadedStateCopyWith(
          _$_LoadedState value, $Res Function(_$_LoadedState) then) =
      __$$_LoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Group> data, List<Sample> ungroupedSamples});
}

/// @nodoc
class __$$_LoadedStateCopyWithImpl<$Res>
    extends _$ExperimentSchemeStateCopyWithImpl<$Res, _$_LoadedState>
    implements _$$_LoadedStateCopyWith<$Res> {
  __$$_LoadedStateCopyWithImpl(
      _$_LoadedState _value, $Res Function(_$_LoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? ungroupedSamples = null,
  }) {
    return _then(_$_LoadedState(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Group>,
      ungroupedSamples: null == ungroupedSamples
          ? _value._ungroupedSamples
          : ungroupedSamples // ignore: cast_nullable_to_non_nullable
              as List<Sample>,
    ));
  }
}

/// @nodoc

class _$_LoadedState implements _LoadedState {
  const _$_LoadedState(
      {required final List<Group> data,
      required final List<Sample> ungroupedSamples})
      : _data = data,
        _ungroupedSamples = ungroupedSamples;

  final List<Group> _data;
  @override
  List<Group> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  final List<Sample> _ungroupedSamples;
  @override
  List<Sample> get ungroupedSamples {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ungroupedSamples);
  }

  @override
  String toString() {
    return 'ExperimentSchemeState.loadedState(data: $data, ungroupedSamples: $ungroupedSamples)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedState &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._ungroupedSamples, _ungroupedSamples));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_ungroupedSamples));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      __$$_LoadedStateCopyWithImpl<_$_LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyState,
    required TResult Function(List<Group> data, List<Sample> ungroupedSamples)
        loadedState,
    required TResult Function() errorState,
    required TResult Function() loading,
  }) {
    return loadedState(data, ungroupedSamples);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emptyState,
    TResult? Function(List<Group> data, List<Sample> ungroupedSamples)?
        loadedState,
    TResult? Function()? errorState,
    TResult? Function()? loading,
  }) {
    return loadedState?.call(data, ungroupedSamples);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyState,
    TResult Function(List<Group> data, List<Sample> ungroupedSamples)?
        loadedState,
    TResult Function()? errorState,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(data, ungroupedSamples);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyState value) emptyState,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_Loading value) loading,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyState value)? emptyState,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_ErrorState value)? errorState,
    TResult? Function(_Loading value)? loading,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyState value)? emptyState,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class _LoadedState implements ExperimentSchemeState {
  const factory _LoadedState(
      {required final List<Group> data,
      required final List<Sample> ungroupedSamples}) = _$_LoadedState;

  List<Group> get data;
  List<Sample> get ungroupedSamples;
  @JsonKey(ignore: true)
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorStateCopyWith<$Res> {
  factory _$$_ErrorStateCopyWith(
          _$_ErrorState value, $Res Function(_$_ErrorState) then) =
      __$$_ErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ErrorStateCopyWithImpl<$Res>
    extends _$ExperimentSchemeStateCopyWithImpl<$Res, _$_ErrorState>
    implements _$$_ErrorStateCopyWith<$Res> {
  __$$_ErrorStateCopyWithImpl(
      _$_ErrorState _value, $Res Function(_$_ErrorState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ErrorState implements _ErrorState {
  const _$_ErrorState();

  @override
  String toString() {
    return 'ExperimentSchemeState.errorState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyState,
    required TResult Function(List<Group> data, List<Sample> ungroupedSamples)
        loadedState,
    required TResult Function() errorState,
    required TResult Function() loading,
  }) {
    return errorState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emptyState,
    TResult? Function(List<Group> data, List<Sample> ungroupedSamples)?
        loadedState,
    TResult? Function()? errorState,
    TResult? Function()? loading,
  }) {
    return errorState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyState,
    TResult Function(List<Group> data, List<Sample> ungroupedSamples)?
        loadedState,
    TResult Function()? errorState,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyState value) emptyState,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_Loading value) loading,
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyState value)? emptyState,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_ErrorState value)? errorState,
    TResult? Function(_Loading value)? loading,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyState value)? emptyState,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (errorState != null) {
      return errorState(this);
    }
    return orElse();
  }
}

abstract class _ErrorState implements ExperimentSchemeState {
  const factory _ErrorState() = _$_ErrorState;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$ExperimentSchemeStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ExperimentSchemeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyState,
    required TResult Function(List<Group> data, List<Sample> ungroupedSamples)
        loadedState,
    required TResult Function() errorState,
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emptyState,
    TResult? Function(List<Group> data, List<Sample> ungroupedSamples)?
        loadedState,
    TResult? Function()? errorState,
    TResult? Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyState,
    TResult Function(List<Group> data, List<Sample> ungroupedSamples)?
        loadedState,
    TResult Function()? errorState,
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyState value) emptyState,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_ErrorState value) errorState,
    required TResult Function(_Loading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyState value)? emptyState,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_ErrorState value)? errorState,
    TResult? Function(_Loading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyState value)? emptyState,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_ErrorState value)? errorState,
    TResult Function(_Loading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ExperimentSchemeState {
  const factory _Loading() = _$_Loading;
}
