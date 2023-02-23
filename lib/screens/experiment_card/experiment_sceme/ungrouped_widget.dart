
import 'package:first_approval_app/custom_widgets/utils.dart';
import 'package:first_approval_app/models/sample.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sceme/sample_widget.dart';
import 'package:flutter/material.dart';

/// а вот тут лечше StatefulWidget тк нужно объявить ScrollController и его dispose

class UngroupedWidget extends StatelessWidget {
  final int groupId;
  const UngroupedWidget(
      {Key? key, required this.ungroupedSamples, required this.groupId})
      : super(key: key);

  final List<Sample> ungroupedSamples;

  @override
  Widget build(BuildContext context) {
        return LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) =>
          Scrollbar(
            ///добавить контроллер
            child: SingleChildScrollView(

              ///добавить контроллер
                scrollDirection: Axis.horizontal,

                ///нужен ли этот параметр?
                primary: true,

                /// ListView лучше
                child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: ungroupedSamples
                        .map((e) => ConstrainedBox(
                        constraints: BoxConstraints(
                            minWidth: 300,
                            maxWidth: (constraints.maxWidth/ungroupedSamples.length)>300?
                            constraints.maxWidth/ungroupedSamples.length : 300,
                        ),
                          child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.borderColor)),
                          child: SampleWidget(
                            sample: e,
                            idGroup: groupId,
                          )),
                        ))
                        .toList())),
          ),
        );
  }
}