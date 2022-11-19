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
    required TResult Function(String text, String title) addNewSample,
    required TResult Function(String text, String title, int id)
        addSampleToGroup,
    required TResult Function(Sample sample, int idGroup) editSample,
    required TResult Function(int id) groupSamplesById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String title)? addNewSample,
    TResult? Function(String text, String title, int id)? addSampleToGroup,
    TResult? Function(Sample sample, int idGroup)? editSample,
    TResult? Function(int id)? groupSamplesById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String title)? addNewSample,
    TResult Function(String text, String title, int id)? addSampleToGroup,
    TResult Function(Sample sample, int idGroup)? editSample,
    TResult Function(int id)? groupSamplesById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSample value) addSampleToGroup,
    required TResult Function(_EditSample value) editSample,
    required TResult Function(_GroupSamplesById value) groupSamplesById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSample value)? addSampleToGroup,
    TResult? Function(_EditSample value)? editSample,
    TResult? Function(_GroupSamplesById value)? groupSamplesById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSample value)? addSampleToGroup,
    TResult Function(_EditSample value)? editSample,
    TResult Function(_GroupSamplesById value)? groupSamplesById,
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
    required TResult Function(String text, String title) addNewSample,
    required TResult Function(String text, String title, int id)
        addSampleToGroup,
    required TResult Function(Sample sample, int idGroup) editSample,
    required TResult Function(int id) groupSamplesById,
  }) {
    return addNewSample(text, title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String title)? addNewSample,
    TResult? Function(String text, String title, int id)? addSampleToGroup,
    TResult? Function(Sample sample, int idGroup)? editSample,
    TResult? Function(int id)? groupSamplesById,
  }) {
    return addNewSample?.call(text, title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String title)? addNewSample,
    TResult Function(String text, String title, int id)? addSampleToGroup,
    TResult Function(Sample sample, int idGroup)? editSample,
    TResult Function(int id)? groupSamplesById,
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
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSample value) addSampleToGroup,
    required TResult Function(_EditSample value) editSample,
    required TResult Function(_GroupSamplesById value) groupSamplesById,
  }) {
    return addNewSample(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSample value)? addSampleToGroup,
    TResult? Function(_EditSample value)? editSample,
    TResult? Function(_GroupSamplesById value)? groupSamplesById,
  }) {
    return addNewSample?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSample value)? addSampleToGroup,
    TResult Function(_EditSample value)? editSample,
    TResult Function(_GroupSamplesById value)? groupSamplesById,
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
    required TResult Function(String text, String title) addNewSample,
    required TResult Function(String text, String title, int id)
        addSampleToGroup,
    required TResult Function(Sample sample, int idGroup) editSample,
    required TResult Function(int id) groupSamplesById,
  }) {
    return addSampleToGroup(text, title, id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String title)? addNewSample,
    TResult? Function(String text, String title, int id)? addSampleToGroup,
    TResult? Function(Sample sample, int idGroup)? editSample,
    TResult? Function(int id)? groupSamplesById,
  }) {
    return addSampleToGroup?.call(text, title, id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String title)? addNewSample,
    TResult Function(String text, String title, int id)? addSampleToGroup,
    TResult Function(Sample sample, int idGroup)? editSample,
    TResult Function(int id)? groupSamplesById,
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
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSample value) addSampleToGroup,
    required TResult Function(_EditSample value) editSample,
    required TResult Function(_GroupSamplesById value) groupSamplesById,
  }) {
    return addSampleToGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSample value)? addSampleToGroup,
    TResult? Function(_EditSample value)? editSample,
    TResult? Function(_GroupSamplesById value)? groupSamplesById,
  }) {
    return addSampleToGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSample value)? addSampleToGroup,
    TResult Function(_EditSample value)? editSample,
    TResult Function(_GroupSamplesById value)? groupSamplesById,
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
    required TResult Function(String text, String title) addNewSample,
    required TResult Function(String text, String title, int id)
        addSampleToGroup,
    required TResult Function(Sample sample, int idGroup) editSample,
    required TResult Function(int id) groupSamplesById,
  }) {
    return editSample(sample, idGroup);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String title)? addNewSample,
    TResult? Function(String text, String title, int id)? addSampleToGroup,
    TResult? Function(Sample sample, int idGroup)? editSample,
    TResult? Function(int id)? groupSamplesById,
  }) {
    return editSample?.call(sample, idGroup);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String title)? addNewSample,
    TResult Function(String text, String title, int id)? addSampleToGroup,
    TResult Function(Sample sample, int idGroup)? editSample,
    TResult Function(int id)? groupSamplesById,
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
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSample value) addSampleToGroup,
    required TResult Function(_EditSample value) editSample,
    required TResult Function(_GroupSamplesById value) groupSamplesById,
  }) {
    return editSample(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSample value)? addSampleToGroup,
    TResult? Function(_EditSample value)? editSample,
    TResult? Function(_GroupSamplesById value)? groupSamplesById,
  }) {
    return editSample?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSample value)? addSampleToGroup,
    TResult Function(_EditSample value)? editSample,
    TResult Function(_GroupSamplesById value)? groupSamplesById,
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
abstract class _$$_GroupSamplesByIdCopyWith<$Res> {
  factory _$$_GroupSamplesByIdCopyWith(
          _$_GroupSamplesById value, $Res Function(_$_GroupSamplesById) then) =
      __$$_GroupSamplesByIdCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_GroupSamplesByIdCopyWithImpl<$Res>
    extends _$ExperimentSchemeEventCopyWithImpl<$Res, _$_GroupSamplesById>
    implements _$$_GroupSamplesByIdCopyWith<$Res> {
  __$$_GroupSamplesByIdCopyWithImpl(
      _$_GroupSamplesById _value, $Res Function(_$_GroupSamplesById) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_GroupSamplesById(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GroupSamplesById implements _GroupSamplesById {
  const _$_GroupSamplesById({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ExperimentSchemeEvent.groupSamplesById(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GroupSamplesById &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GroupSamplesByIdCopyWith<_$_GroupSamplesById> get copyWith =>
      __$$_GroupSamplesByIdCopyWithImpl<_$_GroupSamplesById>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, String title) addNewSample,
    required TResult Function(String text, String title, int id)
        addSampleToGroup,
    required TResult Function(Sample sample, int idGroup) editSample,
    required TResult Function(int id) groupSamplesById,
  }) {
    return groupSamplesById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String text, String title)? addNewSample,
    TResult? Function(String text, String title, int id)? addSampleToGroup,
    TResult? Function(Sample sample, int idGroup)? editSample,
    TResult? Function(int id)? groupSamplesById,
  }) {
    return groupSamplesById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, String title)? addNewSample,
    TResult Function(String text, String title, int id)? addSampleToGroup,
    TResult Function(Sample sample, int idGroup)? editSample,
    TResult Function(int id)? groupSamplesById,
    required TResult orElse(),
  }) {
    if (groupSamplesById != null) {
      return groupSamplesById(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSample value) addSampleToGroup,
    required TResult Function(_EditSample value) editSample,
    required TResult Function(_GroupSamplesById value) groupSamplesById,
  }) {
    return groupSamplesById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSample value)? addSampleToGroup,
    TResult? Function(_EditSample value)? editSample,
    TResult? Function(_GroupSamplesById value)? groupSamplesById,
  }) {
    return groupSamplesById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSample value)? addSampleToGroup,
    TResult Function(_EditSample value)? editSample,
    TResult Function(_GroupSamplesById value)? groupSamplesById,
    required TResult orElse(),
  }) {
    if (groupSamplesById != null) {
      return groupSamplesById(this);
    }
    return orElse();
  }
}

abstract class _GroupSamplesById implements ExperimentSchemeEvent {
  const factory _GroupSamplesById({required final int id}) =
      _$_GroupSamplesById;

  int get id;
  @JsonKey(ignore: true)
  _$$_GroupSamplesByIdCopyWith<_$_GroupSamplesById> get copyWith =>
      throw _privateConstructorUsedError;
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
