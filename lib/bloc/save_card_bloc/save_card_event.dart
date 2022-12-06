part of 'save_card_bloc.dart';

@freezed
class SaveCardEvent with _$SaveCardEvent {
  const factory SaveCardEvent.save() = _Save;
}