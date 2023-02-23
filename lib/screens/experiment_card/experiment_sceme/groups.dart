import 'package:first_approval_app/models/group.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sceme/group_element.dart';
import 'package:flutter/material.dart';

class Groups extends StatelessWidget {
  const Groups({Key? key, required this.data}) : super(key: key);
  final List<Group> data;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: data.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GroupElement(data: data[index]);
        });
  }
}
