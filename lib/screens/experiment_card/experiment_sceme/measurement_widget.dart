import 'package:first_approval_app/bloc/experimnet_scheme_bloc/experiment_scheme_bloc.dart';
import 'package:first_approval_app/custom_widgets/custom_no_border_button.dart';
import 'package:first_approval_app/custom_widgets/utils.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/models/attachment.dart';
import 'package:first_approval_app/models/sample.dart';
import 'package:first_approval_app/screens/experiment_card/file_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MeasurementWidget extends StatefulWidget {
  const MeasurementWidget(
      {Key? key, required this.measurementIndex, required this.sampleId, required this.groupId})
      : super(key: key);
  final int measurementIndex;
  final int sampleId;
  final int groupId;

  @override
  State<MeasurementWidget> createState() => _MeasurementWidgetState();
}

class _MeasurementWidgetState extends State<MeasurementWidget> {
  bool tileExpanded = false;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 2, color: AppColors.borderColor))),
      child: ExpansionTile(
        tilePadding: const EdgeInsets.only(left: 10, right: 18),
        iconColor: AppColors.expansionTileIconColor,
        textColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Измерение_${widget.measurementIndex + 1}",
              style: AppTextStyles.measurementTextStyle,
            ),
            Row(
              children: [
                CustomNoBordersButton(
                  tileExpanded ? IconsSvg.inactiveEdit : IconsSvg.edit,
                ),
                const SizedBox(width: 5),
                CustomNoBordersButton(
                  IconsSvg.attachedFilesWithoutRedCircle,
                  onPressed: _addFilesToMeasurement,
                ),
              ],
            ),
          ],
        ),
        children: [
          BlocBuilder<ExperimentSchemeBloc, ExperimentSchemeState>(
            builder: (context, state) {
             return state.map(
                  emptyState: ((state) => const SizedBox.shrink()),
                  errorState: ((state) => const SizedBox.shrink()),
                  loading: ((state) => const SizedBox.shrink()),
                  loadedState: ((state) {
                    Sample? sample;
                    List<Attachment> files = [];
                    if (widget.groupId == -1) {
                      if(state.ungroupedSamples.length>widget.sampleId) {
                        sample = state.ungroupedSamples[widget.sampleId];
                        files = sample
                            .measurements[widget.measurementIndex].addedFiles;
                      }
                    } else {
                      sample =  state.data[widget.groupId].samples[widget.sampleId];
                      files = sample
                          .measurements[widget.measurementIndex].addedFiles;
                    }
                    return ConstrainedBox(
                      constraints: const BoxConstraints(minHeight: 52),
                      child: Column(
                        children: [
                          TextField(
                            controller: _textEditingController..text = sample?.measurements[widget.measurementIndex].text??'',
                            maxLines: 3,
                            decoration: const InputDecoration(border: InputBorder.none),
                            onChanged: _onDescriptionChanged,
                          ),
                          Row(
                            children: files.map((e) => File(fileName: e.fileName)).toList(),
                          )
                        ],
                      ),
                    );
              }),
              );
            },
          )
        ],
        onExpansionChanged: (bool expanded) {
          setState(() => tileExpanded = expanded);
        },
      ),
    );
  }

  void _addFilesToMeasurement() {
    context.read<ExperimentSchemeBloc>().add(
      ExperimentSchemeEvent.addFilesToMeasurement(
        measurementId: widget.measurementIndex,
        groupId: widget.groupId,
        sampleId: widget.sampleId,
      ),
    );
  }

  void _onDescriptionChanged(String value) {
    context.read<ExperimentSchemeBloc>().add(ExperimentSchemeEvent.editMeasurementText(
        groupId: widget.groupId,
        sampleId: widget.sampleId,
        measurementId: widget.measurementIndex,
        text: value));
  }
}
