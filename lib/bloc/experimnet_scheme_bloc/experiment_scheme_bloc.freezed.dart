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
    required TResult Function() addNewSample,
    required TResult Function(int id) addSampleToGroup,
    required TResult Function(int id) groupSamplesById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addNewSample,
    TResult? Function(int id)? addSampleToGroup,
    TResult? Function(int id)? groupSamplesById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addNewSample,
    TResult Function(int id)? addSampleToGroup,
    TResult Function(int id)? groupSamplesById,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSampleToGroup value) addSampleToGroup,
    required TResult Function(_GroupSamplesById value) groupSamplesById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSampleToGroup value)? addSampleToGroup,
    TResult? Function(_GroupSamplesById value)? groupSamplesById,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSampleToGroup value)? addSampleToGroup,
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
}

/// @nodoc
class __$$_AddNewSampleCopyWithImpl<$Res>
    extends _$ExperimentSchemeEventCopyWithImpl<$Res, _$_AddNewSample>
    implements _$$_AddNewSampleCopyWith<$Res> {
  __$$_AddNewSampleCopyWithImpl(
      _$_AddNewSample _value, $Res Function(_$_AddNewSample) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddNewSample implements _AddNewSample {
  const _$_AddNewSample();

  @override
  String toString() {
    return 'ExperimentSchemeEvent.addNewSample()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddNewSample);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addNewSample,
    required TResult Function(int id) addSampleToGroup,
    required TResult Function(int id) groupSamplesById,
  }) {
    return addNewSample();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addNewSample,
    TResult? Function(int id)? addSampleToGroup,
    TResult? Function(int id)? groupSamplesById,
  }) {
    return addNewSample?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addNewSample,
    TResult Function(int id)? addSampleToGroup,
    TResult Function(int id)? groupSamplesById,
    required TResult orElse(),
  }) {
    if (addNewSample != null) {
      return addNewSample();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSampleToGroup value) addSampleToGroup,
    required TResult Function(_GroupSamplesById value) groupSamplesById,
  }) {
    return addNewSample(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSampleToGroup value)? addSampleToGroup,
    TResult? Function(_GroupSamplesById value)? groupSamplesById,
  }) {
    return addNewSample?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSampleToGroup value)? addSampleToGroup,
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
  const factory _AddNewSample() = _$_AddNewSample;
}

/// @nodoc
abstract class _$$_AddSampleToGroupCopyWith<$Res> {
  factory _$$_AddSampleToGroupCopyWith(
          _$_AddSampleToGroup value, $Res Function(_$_AddSampleToGroup) then) =
      __$$_AddSampleToGroupCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$_AddSampleToGroupCopyWithImpl<$Res>
    extends _$ExperimentSchemeEventCopyWithImpl<$Res, _$_AddSampleToGroup>
    implements _$$_AddSampleToGroupCopyWith<$Res> {
  __$$_AddSampleToGroupCopyWithImpl(
      _$_AddSampleToGroup _value, $Res Function(_$_AddSampleToGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$_AddSampleToGroup(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AddSampleToGroup implements _AddSampleToGroup {
  const _$_AddSampleToGroup({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'ExperimentSchemeEvent.addSampleToGroup(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddSampleToGroup &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddSampleToGroupCopyWith<_$_AddSampleToGroup> get copyWith =>
      __$$_AddSampleToGroupCopyWithImpl<_$_AddSampleToGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addNewSample,
    required TResult Function(int id) addSampleToGroup,
    required TResult Function(int id) groupSamplesById,
  }) {
    return addSampleToGroup(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addNewSample,
    TResult? Function(int id)? addSampleToGroup,
    TResult? Function(int id)? groupSamplesById,
  }) {
    return addSampleToGroup?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addNewSample,
    TResult Function(int id)? addSampleToGroup,
    TResult Function(int id)? groupSamplesById,
    required TResult orElse(),
  }) {
    if (addSampleToGroup != null) {
      return addSampleToGroup(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddNewSample value) addNewSample,
    required TResult Function(_AddSampleToGroup value) addSampleToGroup,
    required TResult Function(_GroupSamplesById value) groupSamplesById,
  }) {
    return addSampleToGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSampleToGroup value)? addSampleToGroup,
    TResult? Function(_GroupSamplesById value)? groupSamplesById,
  }) {
    return addSampleToGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSampleToGroup value)? addSampleToGroup,
    TResult Function(_GroupSamplesById value)? groupSamplesById,
    required TResult orElse(),
  }) {
    if (addSampleToGroup != null) {
      return addSampleToGroup(this);
    }
    return orElse();
  }
}

abstract class _AddSampleToGroup implements ExperimentSchemeEvent {
  const factory _AddSampleToGroup({required final int id}) =
      _$_AddSampleToGroup;

  int get id;
  @JsonKey(ignore: true)
  _$$_AddSampleToGroupCopyWith<_$_AddSampleToGroup> get copyWith =>
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
    required TResult Function() addNewSample,
    required TResult Function(int id) addSampleToGroup,
    required TResult Function(int id) groupSamplesById,
  }) {
    return groupSamplesById(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? addNewSample,
    TResult? Function(int id)? addSampleToGroup,
    TResult? Function(int id)? groupSamplesById,
  }) {
    return groupSamplesById?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addNewSample,
    TResult Function(int id)? addSampleToGroup,
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
    required TResult Function(_AddSampleToGroup value) addSampleToGroup,
    required TResult Function(_GroupSamplesById value) groupSamplesById,
  }) {
    return groupSamplesById(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddNewSample value)? addNewSample,
    TResult? Function(_AddSampleToGroup value)? addSampleToGroup,
    TResult? Function(_GroupSamplesById value)? groupSamplesById,
  }) {
    return groupSamplesById?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddNewSample value)? addNewSample,
    TResult Function(_AddSampleToGroup value)? addSampleToGroup,
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
    required TResult Function(List<Sample> data) loadedState,
    required TResult Function() errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emptyState,
    TResult? Function(List<Sample> data)? loadedState,
    TResult? Function()? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyState,
    TResult Function(List<Sample> data)? loadedState,
    TResult Function()? errorState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyState value) emptyState,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_ErrorState value) errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyState value)? emptyState,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_ErrorState value)? errorState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyState value)? emptyState,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_ErrorState value)? errorState,
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
    required TResult Function(List<Sample> data) loadedState,
    required TResult Function() errorState,
  }) {
    return emptyState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emptyState,
    TResult? Function(List<Sample> data)? loadedState,
    TResult? Function()? errorState,
  }) {
    return emptyState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyState,
    TResult Function(List<Sample> data)? loadedState,
    TResult Function()? errorState,
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
  }) {
    return emptyState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyState value)? emptyState,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return emptyState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyState value)? emptyState,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_ErrorState value)? errorState,
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
  $Res call({List<Sample> data});
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
  }) {
    return _then(_$_LoadedState(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Sample>,
    ));
  }
}

/// @nodoc

class _$_LoadedState implements _LoadedState {
  const _$_LoadedState({required final List<Sample> data}) : _data = data;

  final List<Sample> _data;
  @override
  List<Sample> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ExperimentSchemeState.loadedState(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadedState &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedStateCopyWith<_$_LoadedState> get copyWith =>
      __$$_LoadedStateCopyWithImpl<_$_LoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emptyState,
    required TResult Function(List<Sample> data) loadedState,
    required TResult Function() errorState,
  }) {
    return loadedState(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emptyState,
    TResult? Function(List<Sample> data)? loadedState,
    TResult? Function()? errorState,
  }) {
    return loadedState?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyState,
    TResult Function(List<Sample> data)? loadedState,
    TResult Function()? errorState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmptyState value) emptyState,
    required TResult Function(_LoadedState value) loadedState,
    required TResult Function(_ErrorState value) errorState,
  }) {
    return loadedState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyState value)? emptyState,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return loadedState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyState value)? emptyState,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_ErrorState value)? errorState,
    required TResult orElse(),
  }) {
    if (loadedState != null) {
      return loadedState(this);
    }
    return orElse();
  }
}

abstract class _LoadedState implements ExperimentSchemeState {
  const factory _LoadedState({required final List<Sample> data}) =
      _$_LoadedState;

  List<Sample> get data;
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
    required TResult Function(List<Sample> data) loadedState,
    required TResult Function() errorState,
  }) {
    return errorState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? emptyState,
    TResult? Function(List<Sample> data)? loadedState,
    TResult? Function()? errorState,
  }) {
    return errorState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emptyState,
    TResult Function(List<Sample> data)? loadedState,
    TResult Function()? errorState,
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
  }) {
    return errorState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EmptyState value)? emptyState,
    TResult? Function(_LoadedState value)? loadedState,
    TResult? Function(_ErrorState value)? errorState,
  }) {
    return errorState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmptyState value)? emptyState,
    TResult Function(_LoadedState value)? loadedState,
    TResult Function(_ErrorState value)? errorState,
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
