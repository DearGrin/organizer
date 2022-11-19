part of 'experiment_scheme_bloc.dart';

@freezed
class ExperimentSchemeState with _$ExperimentSchemeState {
  const factory ExperimentSchemeState.emptyState() = _EmptyState;
  const factory ExperimentSchemeState.loadedState({
    required List<Group> data,
    required List<Sample> ungroupedSamples,
  }) = _LoadedState;
  const factory ExperimentSchemeState.errorState() = _ErrorState;
  const factory ExperimentSchemeState.loading() = _Loading;
}

// Cостояния:
//
// первый открытый экран, на нем еще ничего нет, просто отрисован
// Второй: нажата кнопка добавить образец
// третий: появился пустой образец
// четвертый: добавляем/удаляем образцы
// пятый: объединить образцы в группу
// шестой: группа с образцами есть и возможность добавить
// новый образец как в пункте один

// ТУ ДУ БЛЯТЬ
// ОПИСАТЬ МОДЕЛЬ ДАННЫХ !!!(ТИПО СДЕЛАЛ)
// ВСЕ ЧТО СВЯЗАНО С ГРУППАМИ
// РЕАЛИЗОВАТЬ РЕПОЗИТОРИЙ ЧТО КАК ЗАЧЕМ И ПОЧЕМУ БУДЕТ ХРАНИТЬСЯ
// ПОТОМ ВСЕ СОБЫТИЯ У БЛОКА В СВЯЗКЕ С РЕПОЗИТОРИЕМ
// БЛОК ДОЛЖЕН ТОЛЬКО МЕНЕДЖИТЬ ДАННЫЕ
//
//class Repository
///add group
///delete  group
///add sample to group
///delete sample from group
///getData-> ///Map<int, Group>
///clearData

//final Map<int, Group> data = {};
