import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:first_approval_app/models/experiment_card_models/card_text_fields.dart';

///ошибка в названии папки: repositories правильно

/// Вопрос архитектурный и, вероятно, причина оишбки во время работы с несколькими группами экспериментов:
/// [fields] по сути неотъемлемая часть бизнес логики, те блока
/// хранить в нем эту переменную логично и удобно
/// соответсвенно, методы по добавлению и изменению тоже идут в блок
///
/// а вот взаимодействие с файловым менеджером (потом, возможно, с базой данных) -
/// это, действительно, следует вынести в репозиторий
///
/// Кроме того если приложение будет для нескольких элментов ui создавать отдельные блоки [ExperimentCardBloc],
/// что логично, а репозиторий использовать общий через Provider, то хранение [fields]
/// на уровне репозитория приведет к ошибке - данные будут изменяться не там, где ожидается и т.д.
class ExperimentCardRepository {
  final List<ExperimentCardTextFields> fields = [];
  /// final и const лучше использовать как можно чаще
  FileManager fileManager = FileManager();


  /// Странно - тут нет ошибки? всегда используется тольно [fields[0]]
  /// тем не менее [fields] - это СПИСОК, где, вероятно могут быть несколько элменетов,
  /// но нигде нет изменения конкретного элемента - только первого
  ///
  /// Кроме того изначально  [fields] - пуст
  /// значит [fields[0]] - приведет к ошибке - нужно не забыть или про проверку или 100% быть уверенным в существовании элемента
  ///
  void setGoal(String goal) {
    fields[0] = fields[0].copyWith(goal: goal);
  }

  void saveToFile(ExperimentCardTextFields card) {
    ///эта функция аснихронная - ее нужно await, чтобы не было ошибок
    ///+ в иделае показывать пользователю прогресс/лоадер и не давать повторно ее запускать
    fileManager.writeToFile(card.toString());
  }

  void setDesription(String description) {
    fields[0] = fields[0].copyWith(description: description);
  }

  void setDate(String date) {
    fields[0] = fields[0].copyWith(date: date);
  }

  void setMethod(String method) {
    fields[0] = fields[0].copyWith(method: method);
  }

  void setObject(String object) {
    fields[0] = fields[0].copyWith(object: object);
  }

  void setDevice(String device) {
    fields[0] = fields[0].copyWith(device: device);
  }

  void setSoft(String soft) {
    fields[0] = fields[0].copyWith(soft: soft);
  }

  void addExperiment(ExperimentCardTextFields card) {
    fields.add(card);
  }

  void clearData() => fields.clear();
  ///лично мое мнение, если переменная публичная (приватная начинается с '_'),
  ///то нет наобхожимости в геттерах, тк можно напрямую получить это элемент
  ///   это чисто стилистический момент
  ExperimentCardTextFields getOneExperimentCard(int i) => fields[i];
  List<ExperimentCardTextFields> getData() => fields;
}

///Архитектурный бонус
///Репозитории хорошо бы делать abstract - те делать из них интерфейс
///на мылых проектах это неритично, но с разрастанием/усложнением проекта -
///это упрощает код - интерфейс остается, а логика меняется при необходиомсти

/// этот класс мы указываем в блоке
abstract class MyRepo{
  ///не забываем в случае с аснихронными функциями укзывать Future<T>
  Future<void> saveToFile(ExperimentCardTextFields card);
}
/// а этот класс мы инициализируем через Provider и передаем в блок
class MyRepoImpl implements MyRepo{
  final FileManager _fileManager = FileManager();
  @override
  Future<void> saveToFile(ExperimentCardTextFields card) async{
    await _fileManager.writeToFile(card.toString());
  }
}