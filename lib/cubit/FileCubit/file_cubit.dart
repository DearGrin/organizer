import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:first_approval_app/models/experiment_card_models/card_text_fields.dart';
import 'package:first_approval_app/repositorys/samples_repository.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';
part 'file_state.dart';

class FileCubit extends Cubit<FileState> {
  FileCubit() : super(FileState(files: []));
  List<String> files = [];
  void pickFiles() async {
    FilePickerResult? results = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      // type: FileType.custom,
      // allowedExtensions: ['list of files'],
    );
    if (results == null) return;

    for (PlatformFile file in results.files) {
      files.add(file.name);
    }
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

class FileManager {
  // List<String> files = [];

  void pickFiles() async {
    FilePickerResult? results = await FilePicker.platform.pickFiles(
      allowMultiple: true,
      // type: FileType.custom,
      // allowedExtensions: ['list of files'],
    );
    if (results == null) return;

    List<String> files = [];
    for (PlatformFile file in results.files) {
      files.add(file.name);
    }
    print('files $files');
  }

  Future<String> get _localPath async {
    final directory = await getDownloadsDirectory();
    return directory!.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/FA.json');
  }

  Future<void> writeToFile(String info) async {
    final file = await _localFile;
    file.writeAsString(info);
  }

  File cardFile(String? dirPath) {
    final path = dirPath;
    return File('$path/FA.txt');
  }

  Future<void> writeCardToFile(
      ExperimentCardTextFields card, String? dir) async {
    final file = cardFile(dir);
    file.writeAsString(jsonEncode(card));
  }

  Future<String?> getDirectory() async {
    String? selectedDirectory = await FilePicker.platform.getDirectoryPath();

    if (selectedDirectory == null) {}
    return selectedDirectory;
  }

  void writeSchemeToFile(SampleRepository groupsAndSamples, String? dir) {
    final path = dir;
    File file = File('$path/Scheme.txt');
    // file.writeAsString(groupsAndSamples.getData().toString());
    file.writeAsString(groupsAndSamples.getUngroupedSamples().toString());
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
