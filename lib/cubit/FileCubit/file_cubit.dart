import 'package:bloc/bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:meta/meta.dart';
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
  List<String> files = [];

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
}
