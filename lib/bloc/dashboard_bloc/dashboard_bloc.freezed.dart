// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dashboard_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DashboardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Experiment experiment) deleteExperiment,
    required TResult Function(Experiment experiment) archiveExperiment,
    required TResult Function() exportExperiment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Experiment experiment)? deleteExperiment,
    TResult? Function(Experiment experiment)? archiveExperiment,
    TResult? Function()? exportExperiment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Experiment experiment)? deleteExperiment,
    TResult Function(Experiment experiment)? archiveExperiment,
    TResult Function()? exportExperiment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteExperiment value) deleteExperiment,
    required TResult Function(_ArchiveExperiment value) archiveExperiment,
    required TResult Function(_ExportExperiment value) exportExperiment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteExperiment value)? deleteExperiment,
    TResult? Function(_ArchiveExperiment value)? archiveExperiment,
    TResult? Function(_ExportExperiment value)? exportExperiment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteExperiment value)? deleteExperiment,
    TResult Function(_ArchiveExperiment value)? archiveExperiment,
    TResult Function(_ExportExperiment value)? exportExperiment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardEventCopyWith<$Res> {
  factory $DashboardEventCopyWith(
          DashboardEvent value, $Res Function(DashboardEvent) then) =
      _$DashboardEventCopyWithImpl<$Res, DashboardEvent>;
}

/// @nodoc
class _$DashboardEventCopyWithImpl<$Res, $Val extends DashboardEvent>
    implements $DashboardEventCopyWith<$Res> {
  _$DashboardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'DashboardEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Experiment experiment) deleteExperiment,
    required TResult Function(Experiment experiment) archiveExperiment,
    required TResult Function() exportExperiment,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Experiment experiment)? deleteExperiment,
    TResult? Function(Experiment experiment)? archiveExperiment,
    TResult? Function()? exportExperiment,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Experiment experiment)? deleteExperiment,
    TResult Function(Experiment experiment)? archiveExperiment,
    TResult Function()? exportExperiment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteExperiment value) deleteExperiment,
    required TResult Function(_ArchiveExperiment value) archiveExperiment,
    required TResult Function(_ExportExperiment value) exportExperiment,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteExperiment value)? deleteExperiment,
    TResult? Function(_ArchiveExperiment value)? archiveExperiment,
    TResult? Function(_ExportExperiment value)? exportExperiment,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteExperiment value)? deleteExperiment,
    TResult Function(_ArchiveExperiment value)? archiveExperiment,
    TResult Function(_ExportExperiment value)? exportExperiment,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements DashboardEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_DeleteExperimentCopyWith<$Res> {
  factory _$$_DeleteExperimentCopyWith(
          _$_DeleteExperiment value, $Res Function(_$_DeleteExperiment) then) =
      __$$_DeleteExperimentCopyWithImpl<$Res>;
  @useResult
  $Res call({Experiment experiment});

  $ExperimentCopyWith<$Res> get experiment;
}

/// @nodoc
class __$$_DeleteExperimentCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$_DeleteExperiment>
    implements _$$_DeleteExperimentCopyWith<$Res> {
  __$$_DeleteExperimentCopyWithImpl(
      _$_DeleteExperiment _value, $Res Function(_$_DeleteExperiment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? experiment = null,
  }) {
    return _then(_$_DeleteExperiment(
      null == experiment
          ? _value.experiment
          : experiment // ignore: cast_nullable_to_non_nullable
              as Experiment,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExperimentCopyWith<$Res> get experiment {
    return $ExperimentCopyWith<$Res>(_value.experiment, (value) {
      return _then(_value.copyWith(experiment: value));
    });
  }
}

/// @nodoc

class _$_DeleteExperiment implements _DeleteExperiment {
  const _$_DeleteExperiment(this.experiment);

  @override
  final Experiment experiment;

  @override
  String toString() {
    return 'DashboardEvent.deleteExperiment(experiment: $experiment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteExperiment &&
            (identical(other.experiment, experiment) ||
                other.experiment == experiment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, experiment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteExperimentCopyWith<_$_DeleteExperiment> get copyWith =>
      __$$_DeleteExperimentCopyWithImpl<_$_DeleteExperiment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Experiment experiment) deleteExperiment,
    required TResult Function(Experiment experiment) archiveExperiment,
    required TResult Function() exportExperiment,
  }) {
    return deleteExperiment(experiment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Experiment experiment)? deleteExperiment,
    TResult? Function(Experiment experiment)? archiveExperiment,
    TResult? Function()? exportExperiment,
  }) {
    return deleteExperiment?.call(experiment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Experiment experiment)? deleteExperiment,
    TResult Function(Experiment experiment)? archiveExperiment,
    TResult Function()? exportExperiment,
    required TResult orElse(),
  }) {
    if (deleteExperiment != null) {
      return deleteExperiment(experiment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteExperiment value) deleteExperiment,
    required TResult Function(_ArchiveExperiment value) archiveExperiment,
    required TResult Function(_ExportExperiment value) exportExperiment,
  }) {
    return deleteExperiment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteExperiment value)? deleteExperiment,
    TResult? Function(_ArchiveExperiment value)? archiveExperiment,
    TResult? Function(_ExportExperiment value)? exportExperiment,
  }) {
    return deleteExperiment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteExperiment value)? deleteExperiment,
    TResult Function(_ArchiveExperiment value)? archiveExperiment,
    TResult Function(_ExportExperiment value)? exportExperiment,
    required TResult orElse(),
  }) {
    if (deleteExperiment != null) {
      return deleteExperiment(this);
    }
    return orElse();
  }
}

abstract class _DeleteExperiment implements DashboardEvent {
  const factory _DeleteExperiment(final Experiment experiment) =
      _$_DeleteExperiment;

  Experiment get experiment;
  @JsonKey(ignore: true)
  _$$_DeleteExperimentCopyWith<_$_DeleteExperiment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ArchiveExperimentCopyWith<$Res> {
  factory _$$_ArchiveExperimentCopyWith(_$_ArchiveExperiment value,
          $Res Function(_$_ArchiveExperiment) then) =
      __$$_ArchiveExperimentCopyWithImpl<$Res>;
  @useResult
  $Res call({Experiment experiment});

  $ExperimentCopyWith<$Res> get experiment;
}

/// @nodoc
class __$$_ArchiveExperimentCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$_ArchiveExperiment>
    implements _$$_ArchiveExperimentCopyWith<$Res> {
  __$$_ArchiveExperimentCopyWithImpl(
      _$_ArchiveExperiment _value, $Res Function(_$_ArchiveExperiment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? experiment = null,
  }) {
    return _then(_$_ArchiveExperiment(
      null == experiment
          ? _value.experiment
          : experiment // ignore: cast_nullable_to_non_nullable
              as Experiment,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExperimentCopyWith<$Res> get experiment {
    return $ExperimentCopyWith<$Res>(_value.experiment, (value) {
      return _then(_value.copyWith(experiment: value));
    });
  }
}

/// @nodoc

class _$_ArchiveExperiment implements _ArchiveExperiment {
  const _$_ArchiveExperiment(this.experiment);

  @override
  final Experiment experiment;

  @override
  String toString() {
    return 'DashboardEvent.archiveExperiment(experiment: $experiment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArchiveExperiment &&
            (identical(other.experiment, experiment) ||
                other.experiment == experiment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, experiment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArchiveExperimentCopyWith<_$_ArchiveExperiment> get copyWith =>
      __$$_ArchiveExperimentCopyWithImpl<_$_ArchiveExperiment>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Experiment experiment) deleteExperiment,
    required TResult Function(Experiment experiment) archiveExperiment,
    required TResult Function() exportExperiment,
  }) {
    return archiveExperiment(experiment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Experiment experiment)? deleteExperiment,
    TResult? Function(Experiment experiment)? archiveExperiment,
    TResult? Function()? exportExperiment,
  }) {
    return archiveExperiment?.call(experiment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Experiment experiment)? deleteExperiment,
    TResult Function(Experiment experiment)? archiveExperiment,
    TResult Function()? exportExperiment,
    required TResult orElse(),
  }) {
    if (archiveExperiment != null) {
      return archiveExperiment(experiment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteExperiment value) deleteExperiment,
    required TResult Function(_ArchiveExperiment value) archiveExperiment,
    required TResult Function(_ExportExperiment value) exportExperiment,
  }) {
    return archiveExperiment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteExperiment value)? deleteExperiment,
    TResult? Function(_ArchiveExperiment value)? archiveExperiment,
    TResult? Function(_ExportExperiment value)? exportExperiment,
  }) {
    return archiveExperiment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteExperiment value)? deleteExperiment,
    TResult Function(_ArchiveExperiment value)? archiveExperiment,
    TResult Function(_ExportExperiment value)? exportExperiment,
    required TResult orElse(),
  }) {
    if (archiveExperiment != null) {
      return archiveExperiment(this);
    }
    return orElse();
  }
}

abstract class _ArchiveExperiment implements DashboardEvent {
  const factory _ArchiveExperiment(final Experiment experiment) =
      _$_ArchiveExperiment;

  Experiment get experiment;
  @JsonKey(ignore: true)
  _$$_ArchiveExperimentCopyWith<_$_ArchiveExperiment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ExportExperimentCopyWith<$Res> {
  factory _$$_ExportExperimentCopyWith(
          _$_ExportExperiment value, $Res Function(_$_ExportExperiment) then) =
      __$$_ExportExperimentCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ExportExperimentCopyWithImpl<$Res>
    extends _$DashboardEventCopyWithImpl<$Res, _$_ExportExperiment>
    implements _$$_ExportExperimentCopyWith<$Res> {
  __$$_ExportExperimentCopyWithImpl(
      _$_ExportExperiment _value, $Res Function(_$_ExportExperiment) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ExportExperiment implements _ExportExperiment {
  const _$_ExportExperiment();

  @override
  String toString() {
    return 'DashboardEvent.exportExperiment()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ExportExperiment);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Experiment experiment) deleteExperiment,
    required TResult Function(Experiment experiment) archiveExperiment,
    required TResult Function() exportExperiment,
  }) {
    return exportExperiment();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(Experiment experiment)? deleteExperiment,
    TResult? Function(Experiment experiment)? archiveExperiment,
    TResult? Function()? exportExperiment,
  }) {
    return exportExperiment?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Experiment experiment)? deleteExperiment,
    TResult Function(Experiment experiment)? archiveExperiment,
    TResult Function()? exportExperiment,
    required TResult orElse(),
  }) {
    if (exportExperiment != null) {
      return exportExperiment();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_DeleteExperiment value) deleteExperiment,
    required TResult Function(_ArchiveExperiment value) archiveExperiment,
    required TResult Function(_ExportExperiment value) exportExperiment,
  }) {
    return exportExperiment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_DeleteExperiment value)? deleteExperiment,
    TResult? Function(_ArchiveExperiment value)? archiveExperiment,
    TResult? Function(_ExportExperiment value)? exportExperiment,
  }) {
    return exportExperiment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_DeleteExperiment value)? deleteExperiment,
    TResult Function(_ArchiveExperiment value)? archiveExperiment,
    TResult Function(_ExportExperiment value)? exportExperiment,
    required TResult orElse(),
  }) {
    if (exportExperiment != null) {
      return exportExperiment(this);
    }
    return orElse();
  }
}

abstract class _ExportExperiment implements DashboardEvent {
  const factory _ExportExperiment() = _$_ExportExperiment;
}

/// @nodoc
mixin _$DashboardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Experiment> experiments) loaded,
    required TResult Function() archiveInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Experiment> experiments)? loaded,
    TResult? Function()? archiveInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Experiment> experiments)? loaded,
    TResult Function()? archiveInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ArchiveInProgress value) archiveInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ArchiveInProgress value)? archiveInProgress,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ArchiveInProgress value)? archiveInProgress,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DashboardStateCopyWith<$Res> {
  factory $DashboardStateCopyWith(
          DashboardState value, $Res Function(DashboardState) then) =
      _$DashboardStateCopyWithImpl<$Res, DashboardState>;
}

/// @nodoc
class _$DashboardStateCopyWithImpl<$Res, $Val extends DashboardState>
    implements $DashboardStateCopyWith<$Res> {
  _$DashboardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'DashboardState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Experiment> experiments) loaded,
    required TResult Function() archiveInProgress,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Experiment> experiments)? loaded,
    TResult? Function()? archiveInProgress,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Experiment> experiments)? loaded,
    TResult Function()? archiveInProgress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ArchiveInProgress value) archiveInProgress,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ArchiveInProgress value)? archiveInProgress,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ArchiveInProgress value)? archiveInProgress,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DashboardState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Experiment> experiments});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? experiments = null,
  }) {
    return _then(_$_Loaded(
      null == experiments
          ? _value._experiments
          : experiments // ignore: cast_nullable_to_non_nullable
              as List<Experiment>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<Experiment> experiments)
      : _experiments = experiments;

  final List<Experiment> _experiments;
  @override
  List<Experiment> get experiments {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_experiments);
  }

  @override
  String toString() {
    return 'DashboardState.loaded(experiments: $experiments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality()
                .equals(other._experiments, _experiments));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_experiments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Experiment> experiments) loaded,
    required TResult Function() archiveInProgress,
  }) {
    return loaded(experiments);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Experiment> experiments)? loaded,
    TResult? Function()? archiveInProgress,
  }) {
    return loaded?.call(experiments);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Experiment> experiments)? loaded,
    TResult Function()? archiveInProgress,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(experiments);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ArchiveInProgress value) archiveInProgress,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ArchiveInProgress value)? archiveInProgress,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ArchiveInProgress value)? archiveInProgress,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements DashboardState {
  const factory _Loaded(final List<Experiment> experiments) = _$_Loaded;

  List<Experiment> get experiments;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ArchiveInProgressCopyWith<$Res> {
  factory _$$_ArchiveInProgressCopyWith(_$_ArchiveInProgress value,
          $Res Function(_$_ArchiveInProgress) then) =
      __$$_ArchiveInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ArchiveInProgressCopyWithImpl<$Res>
    extends _$DashboardStateCopyWithImpl<$Res, _$_ArchiveInProgress>
    implements _$$_ArchiveInProgressCopyWith<$Res> {
  __$$_ArchiveInProgressCopyWithImpl(
      _$_ArchiveInProgress _value, $Res Function(_$_ArchiveInProgress) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ArchiveInProgress implements _ArchiveInProgress {
  const _$_ArchiveInProgress();

  @override
  String toString() {
    return 'DashboardState.archiveInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ArchiveInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Experiment> experiments) loaded,
    required TResult Function() archiveInProgress,
  }) {
    return archiveInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Experiment> experiments)? loaded,
    TResult? Function()? archiveInProgress,
  }) {
    return archiveInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Experiment> experiments)? loaded,
    TResult Function()? archiveInProgress,
    required TResult orElse(),
  }) {
    if (archiveInProgress != null) {
      return archiveInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_ArchiveInProgress value) archiveInProgress,
  }) {
    return archiveInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_ArchiveInProgress value)? archiveInProgress,
  }) {
    return archiveInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_ArchiveInProgress value)? archiveInProgress,
    required TResult orElse(),
  }) {
    if (archiveInProgress != null) {
      return archiveInProgress(this);
    }
    return orElse();
  }
}

abstract class _ArchiveInProgress implements DashboardState {
  const factory _ArchiveInProgress() = _$_ArchiveInProgress;
}
