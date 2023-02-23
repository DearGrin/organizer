// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'experiment_card_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExperimentCardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExperimentCardTextFields? card) saveCard,
    required TResult Function(FieldNameType field, String text) fieldFilled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExperimentCardTextFields? card)? saveCard,
    TResult? Function(FieldNameType field, String text)? fieldFilled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExperimentCardTextFields? card)? saveCard,
    TResult Function(FieldNameType field, String text)? fieldFilled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveCard value) saveCard,
    required TResult Function(_FieldFilled value) fieldFilled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveCard value)? saveCard,
    TResult? Function(_FieldFilled value)? fieldFilled,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveCard value)? saveCard,
    TResult Function(_FieldFilled value)? fieldFilled,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperimentCardEventCopyWith<$Res> {
  factory $ExperimentCardEventCopyWith(
          ExperimentCardEvent value, $Res Function(ExperimentCardEvent) then) =
      _$ExperimentCardEventCopyWithImpl<$Res, ExperimentCardEvent>;
}

/// @nodoc
class _$ExperimentCardEventCopyWithImpl<$Res, $Val extends ExperimentCardEvent>
    implements $ExperimentCardEventCopyWith<$Res> {
  _$ExperimentCardEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SaveCardCopyWith<$Res> {
  factory _$$_SaveCardCopyWith(
          _$_SaveCard value, $Res Function(_$_SaveCard) then) =
      __$$_SaveCardCopyWithImpl<$Res>;
  @useResult
  $Res call({ExperimentCardTextFields? card});

  $ExperimentCardTextFieldsCopyWith<$Res>? get card;
}

/// @nodoc
class __$$_SaveCardCopyWithImpl<$Res>
    extends _$ExperimentCardEventCopyWithImpl<$Res, _$_SaveCard>
    implements _$$_SaveCardCopyWith<$Res> {
  __$$_SaveCardCopyWithImpl(
      _$_SaveCard _value, $Res Function(_$_SaveCard) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card = freezed,
  }) {
    return _then(_$_SaveCard(
      freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as ExperimentCardTextFields?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExperimentCardTextFieldsCopyWith<$Res>? get card {
    if (_value.card == null) {
      return null;
    }

    return $ExperimentCardTextFieldsCopyWith<$Res>(_value.card!, (value) {
      return _then(_value.copyWith(card: value));
    });
  }
}

/// @nodoc

class _$_SaveCard with DiagnosticableTreeMixin implements _SaveCard {
  const _$_SaveCard(this.card);

  @override
  final ExperimentCardTextFields? card;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExperimentCardEvent.saveCard(card: $card)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExperimentCardEvent.saveCard'))
      ..add(DiagnosticsProperty('card', card));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveCard &&
            (identical(other.card, card) || other.card == card));
  }

  @override
  int get hashCode => Object.hash(runtimeType, card);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveCardCopyWith<_$_SaveCard> get copyWith =>
      __$$_SaveCardCopyWithImpl<_$_SaveCard>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExperimentCardTextFields? card) saveCard,
    required TResult Function(FieldNameType field, String text) fieldFilled,
  }) {
    return saveCard(card);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExperimentCardTextFields? card)? saveCard,
    TResult? Function(FieldNameType field, String text)? fieldFilled,
  }) {
    return saveCard?.call(card);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExperimentCardTextFields? card)? saveCard,
    TResult Function(FieldNameType field, String text)? fieldFilled,
    required TResult orElse(),
  }) {
    if (saveCard != null) {
      return saveCard(card);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveCard value) saveCard,
    required TResult Function(_FieldFilled value) fieldFilled,
  }) {
    return saveCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveCard value)? saveCard,
    TResult? Function(_FieldFilled value)? fieldFilled,
  }) {
    return saveCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveCard value)? saveCard,
    TResult Function(_FieldFilled value)? fieldFilled,
    required TResult orElse(),
  }) {
    if (saveCard != null) {
      return saveCard(this);
    }
    return orElse();
  }
}

abstract class _SaveCard implements ExperimentCardEvent {
  const factory _SaveCard(final ExperimentCardTextFields? card) = _$_SaveCard;

  ExperimentCardTextFields? get card;
  @JsonKey(ignore: true)
  _$$_SaveCardCopyWith<_$_SaveCard> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FieldFilledCopyWith<$Res> {
  factory _$$_FieldFilledCopyWith(
          _$_FieldFilled value, $Res Function(_$_FieldFilled) then) =
      __$$_FieldFilledCopyWithImpl<$Res>;
  @useResult
  $Res call({FieldNameType field, String text});
}

/// @nodoc
class __$$_FieldFilledCopyWithImpl<$Res>
    extends _$ExperimentCardEventCopyWithImpl<$Res, _$_FieldFilled>
    implements _$$_FieldFilledCopyWith<$Res> {
  __$$_FieldFilledCopyWithImpl(
      _$_FieldFilled _value, $Res Function(_$_FieldFilled) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? field = null,
    Object? text = null,
  }) {
    return _then(_$_FieldFilled(
      null == field
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as FieldNameType,
      null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_FieldFilled with DiagnosticableTreeMixin implements _FieldFilled {
  const _$_FieldFilled(this.field, this.text);

  @override
  final FieldNameType field;
  @override
  final String text;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExperimentCardEvent.fieldFilled(field: $field, text: $text)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExperimentCardEvent.fieldFilled'))
      ..add(DiagnosticsProperty('field', field))
      ..add(DiagnosticsProperty('text', text));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FieldFilled &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FieldFilledCopyWith<_$_FieldFilled> get copyWith =>
      __$$_FieldFilledCopyWithImpl<_$_FieldFilled>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExperimentCardTextFields? card) saveCard,
    required TResult Function(FieldNameType field, String text) fieldFilled,
  }) {
    return fieldFilled(field, text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExperimentCardTextFields? card)? saveCard,
    TResult? Function(FieldNameType field, String text)? fieldFilled,
  }) {
    return fieldFilled?.call(field, text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExperimentCardTextFields? card)? saveCard,
    TResult Function(FieldNameType field, String text)? fieldFilled,
    required TResult orElse(),
  }) {
    if (fieldFilled != null) {
      return fieldFilled(field, text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SaveCard value) saveCard,
    required TResult Function(_FieldFilled value) fieldFilled,
  }) {
    return fieldFilled(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SaveCard value)? saveCard,
    TResult? Function(_FieldFilled value)? fieldFilled,
  }) {
    return fieldFilled?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SaveCard value)? saveCard,
    TResult Function(_FieldFilled value)? fieldFilled,
    required TResult orElse(),
  }) {
    if (fieldFilled != null) {
      return fieldFilled(this);
    }
    return orElse();
  }
}

abstract class _FieldFilled implements ExperimentCardEvent {
  const factory _FieldFilled(final FieldNameType field, final String text) =
      _$_FieldFilled;

  FieldNameType get field;
  String get text;
  @JsonKey(ignore: true)
  _$$_FieldFilledCopyWith<_$_FieldFilled> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ExperimentCardState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ExperimentCardTextFields? card) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ExperimentCardTextFields? card)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ExperimentCardTextFields? card)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExperimentCardStateCopyWith<$Res> {
  factory $ExperimentCardStateCopyWith(
          ExperimentCardState value, $Res Function(ExperimentCardState) then) =
      _$ExperimentCardStateCopyWithImpl<$Res, ExperimentCardState>;
}

/// @nodoc
class _$ExperimentCardStateCopyWithImpl<$Res, $Val extends ExperimentCardState>
    implements $ExperimentCardStateCopyWith<$Res> {
  _$ExperimentCardStateCopyWithImpl(this._value, this._then);

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
    extends _$ExperimentCardStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExperimentCardState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'ExperimentCardState.initial'));
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
    required TResult Function(ExperimentCardTextFields? card) saved,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ExperimentCardTextFields? card)? saved,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ExperimentCardTextFields? card)? saved,
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
    required TResult Function(_Saved value) saved,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ExperimentCardState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_SavedCopyWith<$Res> {
  factory _$$_SavedCopyWith(_$_Saved value, $Res Function(_$_Saved) then) =
      __$$_SavedCopyWithImpl<$Res>;
  @useResult
  $Res call({ExperimentCardTextFields? card});

  $ExperimentCardTextFieldsCopyWith<$Res>? get card;
}

/// @nodoc
class __$$_SavedCopyWithImpl<$Res>
    extends _$ExperimentCardStateCopyWithImpl<$Res, _$_Saved>
    implements _$$_SavedCopyWith<$Res> {
  __$$_SavedCopyWithImpl(_$_Saved _value, $Res Function(_$_Saved) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? card = freezed,
  }) {
    return _then(_$_Saved(
      freezed == card
          ? _value.card
          : card // ignore: cast_nullable_to_non_nullable
              as ExperimentCardTextFields?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExperimentCardTextFieldsCopyWith<$Res>? get card {
    if (_value.card == null) {
      return null;
    }

    return $ExperimentCardTextFieldsCopyWith<$Res>(_value.card!, (value) {
      return _then(_value.copyWith(card: value));
    });
  }
}

/// @nodoc

class _$_Saved with DiagnosticableTreeMixin implements _Saved {
  const _$_Saved(this.card);

  @override
  final ExperimentCardTextFields? card;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExperimentCardState.saved(card: $card)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExperimentCardState.saved'))
      ..add(DiagnosticsProperty('card', card));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Saved &&
            (identical(other.card, card) || other.card == card));
  }

  @override
  int get hashCode => Object.hash(runtimeType, card);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SavedCopyWith<_$_Saved> get copyWith =>
      __$$_SavedCopyWithImpl<_$_Saved>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(ExperimentCardTextFields? card) saved,
  }) {
    return saved(card);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(ExperimentCardTextFields? card)? saved,
  }) {
    return saved?.call(card);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(ExperimentCardTextFields? card)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(card);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements ExperimentCardState {
  const factory _Saved(final ExperimentCardTextFields? card) = _$_Saved;

  ExperimentCardTextFields? get card;
  @JsonKey(ignore: true)
  _$$_SavedCopyWith<_$_Saved> get copyWith =>
      throw _privateConstructorUsedError;
}
