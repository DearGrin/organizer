import 'package:first_approval_app/bloc/experimnet_scheme_bloc/experiment_scheme_bloc.dart';
import 'package:first_approval_app/custom_widgets/custom_no_border_button.dart';
import 'package:first_approval_app/custom_widgets/utils.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/models/sample.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sceme/measurement_widget.dart';
import 'package:first_approval_app/screens/experiment_card/file_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

///разбить на части
class SampleWidget extends StatefulWidget {
  final Sample sample;
  final int idGroup;

  const SampleWidget({
    Key? key,
    required this.sample,
    required this.idGroup,
  }) : super(key: key);

  @override
  State<SampleWidget> createState() => _SampleState();
}

class _SampleState extends State<SampleWidget> {
  late TextEditingController fieldTittle;
  late TextEditingController fieldText;

  @override
  void initState() {
    fieldTittle = TextEditingController()..text = widget.sample.title;
    fieldText = TextEditingController()..text = widget.sample.text;
    super.initState();
  }

  @override
  void dispose() {
    fieldTittle.dispose();
    fieldText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(color: AppColors.borderColor, width: 2),
              right: BorderSide(color: AppColors.borderColor, width: 2),
              left: BorderSide(color: AppColors.borderColor, width: 2))),
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                border: Border(bottom: BorderSide(color: AppColors.borderColor, width: 2))),
            child: ExpansionTile(
              iconColor: AppColors.expansionTileIconColor,
              tilePadding: const EdgeInsets.only(left: 10, right: 16),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 150,
                    child: TextField(
                      style: AppTextStyles.sampleTextStyle,
                      maxLength: 20,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        counterText: '',
                      ),
                      controller: fieldTittle,
                      onChanged: _onTitleChanged,
                    ),
                  ),
                  Row(
                    children: [
                      const CustomNoBordersButton(IconsSvg.edit),
                      CustomNoBordersButton(
                        IconsSvg.schemeCompass,
                        onPressed: _addMeasurement,
                      ),
                      CustomNoBordersButton(
                        IconsSvg.attachedFiles,
                        onPressed: _addFilesToSample,
                      ),
                    ],
                  ),
                ],
              ),
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 26),
                      child: SizedBox(
                        height: 100,
                        child: TextField(
                          maxLines: 2,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                          ),
                          controller: fieldText,
                          onChanged: _onTextChanged,
                        ),
                      ),
                    ),
                    Row(
                      children: widget.sample.attachments.map((e) => File(fileName: e.fileName)).toList(),
                    )
                  ],
                ),
              ],
            ),
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: widget.sample.measurements.length,
              itemBuilder: (context, index) {
                return MeasurementWidget(
                  sampleId: widget.sample.id,
                  groupId: widget.idGroup,
                  measurementIndex: index,
                );
              }),
        ],
      ),
    );
  }

  void _addMeasurement() {
    print('add measurement');
    BlocProvider.of<ExperimentSchemeBloc>(context).add(
      ExperimentSchemeEvent.addMeasurementToSample(
        groupId: widget.idGroup,
        sampleId: widget.sample.id,
      ),
    );
  }
  void _onTitleChanged(String value){
    context.read<ExperimentSchemeBloc>().add(
      ExperimentSchemeEvent.editSample(
          sample: widget.sample.copyWith(title: fieldTittle.text), idGroup: widget.idGroup),
    );
  }
  void _onTextChanged(String value){
    context.read<ExperimentSchemeBloc>().add(
      ExperimentSchemeEvent.editSample(
          sample: widget.sample.copyWith(text: fieldTittle.text), idGroup: widget.idGroup),
    );
  }
  void _addFilesToSample(){
    context.read<ExperimentSchemeBloc>().add(
      ExperimentSchemeEvent.addFilesToSample(
        groupId: widget.idGroup,
        sampleId: widget.sample.id,
      )
    );
  }
}
