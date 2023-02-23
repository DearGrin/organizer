// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'experiment_common_files_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExperimentCommonFilesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Attachment>? files) init,
    required TResult Function() addFiles,
    required TResult Function(int index) deleteFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Attachment>? files)? init,
    TResult? Function()? addFiles,
    TResult? Function(int index)? deleteFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Attachment>? files)? init,
    TResult Function()? addFiles,
    TResult Function(int index)? deleteFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddFiles value) addFiles,
    required TResult Function(_DeleteFile value) deleteFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddFiles value)? addFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddFiles value)? addFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperimentCommonFilesEventCopyWith<$Res> {
  factory $ExperimentCommonFilesEventCopyWith(ExperimentCommonFilesEvent value,
          $Res Function(ExperimentCommonFilesEvent) then) =
      _$ExperimentCommonFilesEventCopyWithImpl<$Res,
          ExperimentCommonFilesEvent>;
}

/// @nodoc
class _$ExperimentCommonFilesEventCopyWithImpl<$Res,
        $Val extends ExperimentCommonFilesEvent>
    implements $ExperimentCommonFilesEventCopyWith<$Res> {
  _$ExperimentCommonFilesEventCopyWithImpl(this._value, this._then);

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
  $Res call({List<Attachment>? files});
}

/// @nodoc
class __$$_InitCopyWithImpl<$Res>
    extends _$ExperimentCommonFilesEventCopyWithImpl<$Res, _$_Init>
    implements _$$_InitCopyWith<$Res> {
  __$$_InitCopyWithImpl(_$_Init _value, $Res Function(_$_Init) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = freezed,
  }) {
    return _then(_$_Init(
      freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<Attachment>?,
    ));
  }
}

/// @nodoc

class _$_Init implements _Init {
  const _$_Init(final List<Attachment>? files) : _files = files;

  final List<Attachment>? _files;
  @override
  List<Attachment>? get files {
    final value = _files;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ExperimentCommonFilesEvent.init(files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Init &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitCopyWith<_$_Init> get copyWith =>
      __$$_InitCopyWithImpl<_$_Init>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Attachment>? files) init,
    required TResult Function() addFiles,
    required TResult Function(int index) deleteFile,
  }) {
    return init(files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Attachment>? files)? init,
    TResult? Function()? addFiles,
    TResult? Function(int index)? deleteFile,
  }) {
    return init?.call(files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Attachment>? files)? init,
    TResult Function()? addFiles,
    TResult Function(int index)? deleteFile,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddFiles value) addFiles,
    required TResult Function(_DeleteFile value) deleteFile,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddFiles value)? addFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddFiles value)? addFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _Init implements ExperimentCommonFilesEvent {
  const factory _Init(final List<Attachment>? files) = _$_Init;

  List<Attachment>? get files;
  @JsonKey(ignore: true)
  _$$_InitCopyWith<_$_Init> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddFilesCopyWith<$Res> {
  factory _$$_AddFilesCopyWith(
          _$_AddFiles value, $Res Function(_$_AddFiles) then) =
      __$$_AddFilesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AddFilesCopyWithImpl<$Res>
    extends _$ExperimentCommonFilesEventCopyWithImpl<$Res, _$_AddFiles>
    implements _$$_AddFilesCopyWith<$Res> {
  __$$_AddFilesCopyWithImpl(
      _$_AddFiles _value, $Res Function(_$_AddFiles) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AddFiles implements _AddFiles {
  const _$_AddFiles();

  @override
  String toString() {
    return 'ExperimentCommonFilesEvent.addFiles()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AddFiles);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Attachment>? files) init,
    required TResult Function() addFiles,
    required TResult Function(int index) deleteFile,
  }) {
    return addFiles();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Attachment>? files)? init,
    TResult? Function()? addFiles,
    TResult? Function(int index)? deleteFile,
  }) {
    return addFiles?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Attachment>? files)? init,
    TResult Function()? addFiles,
    TResult Function(int index)? deleteFile,
    required TResult orElse(),
  }) {
    if (addFiles != null) {
      return addFiles();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddFiles value) addFiles,
    required TResult Function(_DeleteFile value) deleteFile,
  }) {
    return addFiles(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddFiles value)? addFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
  }) {
    return addFiles?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddFiles value)? addFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    required TResult orElse(),
  }) {
    if (addFiles != null) {
      return addFiles(this);
    }
    return orElse();
  }
}

abstract class _AddFiles implements ExperimentCommonFilesEvent {
  const factory _AddFiles() = _$_AddFiles;
}

/// @nodoc
abstract class _$$_DeleteFileCopyWith<$Res> {
  factory _$$_DeleteFileCopyWith(
          _$_DeleteFile value, $Res Function(_$_DeleteFile) then) =
      __$$_DeleteFileCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$_DeleteFileCopyWithImpl<$Res>
    extends _$ExperimentCommonFilesEventCopyWithImpl<$Res, _$_DeleteFile>
    implements _$$_DeleteFileCopyWith<$Res> {
  __$$_DeleteFileCopyWithImpl(
      _$_DeleteFile _value, $Res Function(_$_DeleteFile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$_DeleteFile(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DeleteFile implements _DeleteFile {
  const _$_DeleteFile(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'ExperimentCommonFilesEvent.deleteFile(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteFile &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteFileCopyWith<_$_DeleteFile> get copyWith =>
      __$$_DeleteFileCopyWithImpl<_$_DeleteFile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Attachment>? files) init,
    required TResult Function() addFiles,
    required TResult Function(int index) deleteFile,
  }) {
    return deleteFile(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Attachment>? files)? init,
    TResult? Function()? addFiles,
    TResult? Function(int index)? deleteFile,
  }) {
    return deleteFile?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Attachment>? files)? init,
    TResult Function()? addFiles,
    TResult Function(int index)? deleteFile,
    required TResult orElse(),
  }) {
    if (deleteFile != null) {
      return deleteFile(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Init value) init,
    required TResult Function(_AddFiles value) addFiles,
    required TResult Function(_DeleteFile value) deleteFile,
  }) {
    return deleteFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Init value)? init,
    TResult? Function(_AddFiles value)? addFiles,
    TResult? Function(_DeleteFile value)? deleteFile,
  }) {
    return deleteFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Init value)? init,
    TResult Function(_AddFiles value)? addFiles,
    TResult Function(_DeleteFile value)? deleteFile,
    required TResult orElse(),
  }) {
    if (deleteFile != null) {
      return deleteFile(this);
    }
    return orElse();
  }
}

abstract class _DeleteFile implements ExperimentCommonFilesEvent {
  const factory _DeleteFile(final int index) = _$_DeleteFile;

  int get index;
  @JsonKey(ignore: true)
  _$$_DeleteFileCopyWith<_$_DeleteFile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExperimentCommonFilesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Attachment> files) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Attachment> files)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Attachment> files)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperimentCommonFilesStateCopyWith<$Res> {
  factory $ExperimentCommonFilesStateCopyWith(ExperimentCommonFilesState value,
          $Res Function(ExperimentCommonFilesState) then) =
      _$ExperimentCommonFilesStateCopyWithImpl<$Res,
          ExperimentCommonFilesState>;
}

/// @nodoc
class _$ExperimentCommonFilesStateCopyWithImpl<$Res,
        $Val extends ExperimentCommonFilesState>
    implements $ExperimentCommonFilesStateCopyWith<$Res> {
  _$ExperimentCommonFilesStateCopyWithImpl(this._value, this._then);

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
    extends _$ExperimentCommonFilesStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ExperimentCommonFilesState.initial()';
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
    required TResult Function(List<Attachment> files) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Attachment> files)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Attachment> files)? loaded,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExperimentCommonFilesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadedCopyWith<$Res> {
  factory _$$_LoadedCopyWith(_$_Loaded value, $Res Function(_$_Loaded) then) =
      __$$_LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Attachment> files});
}

/// @nodoc
class __$$_LoadedCopyWithImpl<$Res>
    extends _$ExperimentCommonFilesStateCopyWithImpl<$Res, _$_Loaded>
    implements _$$_LoadedCopyWith<$Res> {
  __$$_LoadedCopyWithImpl(_$_Loaded _value, $Res Function(_$_Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? files = null,
  }) {
    return _then(_$_Loaded(
      null == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded(final List<Attachment> files) : _files = files;

  final List<Attachment> _files;
  @override
  List<Attachment> get files {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_files);
  }

  @override
  String toString() {
    return 'ExperimentCommonFilesState.loaded(files: $files)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Loaded &&
            const DeepCollectionEquality().equals(other._files, _files));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_files));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      __$$_LoadedCopyWithImpl<_$_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Attachment> files) loaded,
  }) {
    return loaded(files);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Attachment> files)? loaded,
  }) {
    return loaded?.call(files);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Attachment> files)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(files);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ExperimentCommonFilesState {
  const factory _Loaded(final List<Attachment> files) = _$_Loaded;

  List<Attachment> get files;
  @JsonKey(ignore: true)
  _$$_LoadedCopyWith<_$_Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}
