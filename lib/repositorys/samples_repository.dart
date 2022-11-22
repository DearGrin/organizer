import 'dart:math';

import 'package:first_approval_app/models/group.dart';
import 'package:first_approval_app/models/sample.dart';

class SampleRepository {
  final List<Group> data = [];
  final List<Sample> ungroupedSamples = [];

  void addGroup(Group group) {
    data.add(group);
  }

  void deleteGroup(int groupNumber) {
    data.removeWhere((element) => element.id == groupNumber);
  }

  void addFirstSample(Sample sample) {
    data.add(Group(name: 'Безымянная группа ', id: 0, samples: [sample]));
    ungroupedSamples.add(sample);
  }

  void addSampleUngrouped(Sample sample) {
    ungroupedSamples.add(sample);
  }

  void addSampleToGroup(Sample sample, int i) {
    data[i] = data[i].copyWith(samples: [...data[i].samples, sample]);
  }

  void editSampleInGroup(
    Sample sample,
    int groupId,
  ) {
    ///нужно написать отдельный метод под несгрупированный семпл

    if (groupId == -1) {
      ungroupedSamples[ungroupedSamples.indexOf(ungroupedSamples
          .firstWhere((element) => element.id == sample.id))] = sample;
    } else {
      final newListSamples = <Sample>[];

      for (final element in data[groupId].samples) {
        if (element.id == sample.id) {
          newListSamples.add(sample);
        } else {
          newListSamples.add(element);
        }
      }

      data[groupId] = data[groupId].copyWith(samples: newListSamples);
    }
  }

  void deleteSampleToGroup(String sampleName, int i) {}

  void clearData() => data.clear();
  List<Group> getData() => data;
  List<Sample> getUngroupedSamples() => ungroupedSamples;
}
