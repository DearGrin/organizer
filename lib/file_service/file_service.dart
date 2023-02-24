import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:file_picker/file_picker.dart';
import 'package:first_approval_app/models/attachment.dart';
import 'package:first_approval_app/models/experiment.dart';
import 'package:path_provider/path_provider.dart';

class FileService {
  static FileService? _instance;

  FileService._();

  static FileService get instance => _instance ??= FileService._();

  Future<List<Attachment>> pickFiles() async {
    FilePickerResult? results = await FilePicker.platform.pickFiles(
      allowMultiple: true,
    );
    if (results == null) return [];

    List<Attachment> files = [];
    for (PlatformFile file in results.files) {
      files.add(Attachment(fileName: file.name, filePath: file.path ?? ''));
    }
    return files;
  }

  Future<void> archiveExperiment(Experiment experiment) async {
    String? path = await _getDirectory();
    if (path == null) return;
    var encoder = ZipFileEncoder();
    encoder.create('$path/FA.zip');
    File file = File('$path/Scheme.txt');
    await file.writeAsString(jsonEncode(experiment.toJson()));
    encoder.addFile(file);
    for (Attachment attachment in experiment.allAttachments) {
      encoder.addFile(File(attachment.filePath));
    }
    encoder.close();
  }

  Future<Experiment?> exportExperiment() async {
    FilePickerResult? results = await FilePicker.platform.pickFiles(
        allowMultiple: false,
        type: FileType.custom,
        allowedExtensions: ['zip']);
    if (results == null) return null;
    final String subDir = DateTime.now().millisecondsSinceEpoch.toString();
    final bytes = File(results.files.first.path!).readAsBytesSync();
    final archive = ZipDecoder().decodeBytes(bytes);

    for (final file in archive) {
      final filename = file.name;
      final filePath = Platform.isWindows
          ? '${await _localPath}\\$subDir\\$filename'
          : '${await _localPath}/$subDir/$filename';
      if (file.isFile) {
        final data = file.content as List<int>;
        File(filePath)
          ..createSync(recursive: true)
          ..writeAsBytesSync(data);
      } else {
        Directory(filePath).create(recursive: true);
      }
    }
    final filePath = Platform.isWindows
        ? '${await _localPath}\\$subDir\\Scheme.txt'
        : '${await _localPath}/$subDir/Scheme.txt';
    final String scheme = await File(filePath).readAsString();
    Experiment experiment = Experiment.fromJson(jsonDecode(scheme));
    for (Attachment a in experiment.allAttachments) {
      a = a.copyWith(filePath: '$_localPath/$subDir/${a.fileName}');
    }
    return experiment;
  }

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  Future<String?> _getDirectory() async {
    String? selectedDirectory = await FilePicker.platform.getDirectoryPath();

    if (selectedDirectory == null) {}
    return selectedDirectory;
  }
}
