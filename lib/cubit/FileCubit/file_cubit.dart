import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:first_approval_app/models/experiment_card_models/card_text_fields.dart';
import 'package:first_approval_app/repositorys/samples_repository.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
part 'file_state.dart';

///в идеале или все через блок как остальные блоки или все через кубиты - единообразие в приложении всегда хорошо
///
/// [FileState] также прогнать через freezed
class FileCubit extends Cubit<FileState> {
  FileCubit() : super(FileState(files: []));
  List<String> files = [];

  ///большинство методов по сути дублируют [FileManager], если чего-то не хватает,
  ///то это надо просто добавить в [FileManager]
  /// а в этом блоке остаются только методы касающиеся стейта
  void pickFiles() async {
    FilePickerResult? results = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      ///мервый код удаляем
      // type: FileType.custom,
      // allowedExtensions: ['list of files'],
    );
    if (results == null) return;

    for (PlatformFile file in results.files) {
      files.add(file.name);
    }
    ///от принтов избавляемся: испольщуем debugPrint или log
    print('files $files');
    emit(FileState(files: files));
  }

  Future<String> get _localPath async {
    // final directory = await getApplicationDocumentsDirectory();
    final directory = await getDownloadsDirectory();
    return directory!.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/FA.txt');
  }

  Future<void> writeToFile(String info) async {
    final file = await _localFile;
    file.writeAsString(info);
  }

  void deleteFileName(String filename) {
    files.removeWhere((element) => element == filename);
    emit(FileState(files: files));
  }
}

///вынести в отдеьный файл
///
///  я бы испольовал mixin для этой задачи
///там, где нужно к классу бы добавлялся with MyFileMixin
///и получал бы доступы к методам без необходимости
///инициализации или инъекций зависимостей
/// mixin MyFileMixin{...}

class FileManager {
  // List<String> files = [];

  Future<List<String>> pickFiles() async {
    FilePickerResult? results = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      // type: FileType.custom,
      // allowedExtensions: ['list of files'],
    );
    if (results == null) return [];

    List<String> files = [];
    for (PlatformFile file in results.files) {
      files.add(file.name);
    }
    print('files $files');
    return files;
  }

  Future<String> get _localPath async {
    final directory = await getDownloadsDirectory();
    return directory!.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path\\FA.txt');
  }

  Future<void> writeToFile(String info) async {
    final file = await _localFile;
    file.writeAsString(info);
  }

  File cardFile(String? dirPath) {
    final path = dirPath;
    return File('$path\\FA.txt');
  }

  Future<File> writeCardToFile(
      ExperimentCardTextFields card, String? dir) async {
    final file = cardFile(dir);
    return file.writeAsString(jsonEncode(card));
  }

  Future<String?> getDirectory() async {
    String? selectedDirectory = await FilePicker.platform.getDirectoryPath();

    if (selectedDirectory == null) {}
    return selectedDirectory;
  }

  Future<File> writeSchemeToFile(
      SampleRepository groupsAndSamples, String? dir) {
    final path = dir;
    File file = File('$path\\Scheme.txt');
    if (groupsAndSamples.data.isEmpty) {
      return file
          .writeAsString(jsonEncode(groupsAndSamples.getUngroupedSamples()));
    }
    return file.writeAsString(jsonEncode(groupsAndSamples.getData()));
  }

  Future<void> saveFiles(List<String> files, String? path) async {
    if (files.isEmpty) {
      return;
    }
    List<String> file = [];
    for (int i = 0; i < files.length; i++) {
      file.add(File(files[i]).path);
    }
    for (var element in file) {
      File(element).copy('$path\\$element');
    }
  }

  Future<String?> getFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    PlatformFile file = result!.files.first;
    return file.path;
  }
}
