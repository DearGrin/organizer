import 'dart:convert';
import 'dart:io';

import 'package:archive/archive_io.dart';
import 'package:file_picker/file_picker.dart';
import 'package:first_approval_app/models/attachment.dart';
import 'package:first_approval_app/models/experiment.dart';
import 'package:path_provider/path_provider.dart';

class FileService{
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
      files.add(Attachment(fileName: file.name, filePath: file.path??''));
    }
    print('files $files');
    return files;
  }

  Future<void> archiveExperiment(Experiment experiment) async{
    String? path = await _getDirectory();
    if (path == null) return;
    var encoder = ZipFileEncoder();
    encoder.create('$path/FA.zip');
    File file = File('$path/Scheme.txt');
    await file.writeAsString(jsonEncode(experiment.toJson()));
    encoder.addFile(file);
    for (Attachment attachment in experiment.allAttachments){
      encoder.addFile(File(attachment.filePath));
    }
    encoder.close();
  }

  Future<Experiment?> exportExperiment() async{
    FilePickerResult? results = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.custom,
      allowedExtensions: ['zip']
    );
    if (results == null) return null;
    final String subDir = DateTime.now().millisecondsSinceEpoch.toString();
    final bytes = File(results.files.first.path!).readAsBytesSync();
    final archive = ZipDecoder().decodeBytes(bytes);
    for (final file in archive) {
      final filename = file.name;
      if (file.isFile) {
        final data = file.content as List<int>;
        File('$_localPath/$subDir/$filename')
          ..createSync(recursive: true)
          ..writeAsBytesSync(data);
      } else {
        Directory('$_localPath/$subDir/$filename').create(recursive: true);
      }
    }
    final String scheme = await File('$_localPath/$subDir/Scheme.txt').readAsString();
    Experiment experiment = Experiment.fromJson(jsonDecode(scheme));
    for(Attachment a in experiment.allAttachments){
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
