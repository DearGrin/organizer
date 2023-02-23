import 'package:first_approval_app/bloc/experimnet_scheme_bloc/experiment_scheme_bloc.dart';
import 'package:first_approval_app/custom_widgets/utils.dart';
import 'package:first_approval_app/fa_app.dart';
import 'package:first_approval_app/models/group.dart';
import 'package:first_approval_app/models/sample.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sceme/dotted_area_with_samples.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sceme/groups.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sceme/ungrouped_widget.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExperimentSchemeWithSamples extends StatelessWidget {
  const ExperimentSchemeWithSamples(
      {super.key, required this.groups, required this.samples});
  final List<Group> groups;
  final List<Sample> samples;

  @override
  Widget build(BuildContext context) {

    void addSamplesToGroup() {
      context
          .read<ExperimentSchemeBloc>()
          .add(const ExperimentSchemeEvent.addUngroupedSamplesToGroup());
    }
    void addSample(){
      context.read<ExperimentSchemeBloc>()
          .add(const ExperimentSchemeEvent.addNewSample(
          text: "Введите описание",
          title: "Образец",
      ),
      );
    }

    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 9,
              child: SizedBox(
                height: 60,
                child: DottedAreaWithSamples(
                  onTap: () => addSamplesToGroup(),
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
        Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          Expanded(
            flex: 9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Groups(data: groups),
                Container(
                  constraints: const BoxConstraints(minHeight: 180),
                  decoration: BoxDecoration(
                      border:
                      Border.all(color: AppColors.borderColor, width: 1)),

                  ///в [UngroupedWidget] описал подробнее - это лишнее
                  child:UngroupedWidget(ungroupedSamples: samples, groupId: -1,),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 180,
              child: DottedAreaWidget(
                isMiniWidget: true,
                onTap: () => addSample(),
              ),
            ),
          ),
        ]),
      ],
    );
  }
}