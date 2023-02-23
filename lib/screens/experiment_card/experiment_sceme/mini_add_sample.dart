import 'package:first_approval_app/bloc/experimnet_scheme_bloc/experiment_scheme_bloc.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MiniAddSample extends StatelessWidget {
  const MiniAddSample(
      {Key? key,
        required this.height,
        required this.visible,
        required this.groupId})
      : super(key: key);
  final double height;
  final bool visible;
  final int groupId;

  @override
  Widget build(BuildContext context) {
    void onTap(){
      print('Tap on addSampleToGroup $groupId');
      context.read<ExperimentSchemeBloc>().add(ExperimentSchemeEvent.addSampleToGroup(

        /// [text] и [title] хардкодом - их нельзя редактировать?
          text: "",
          title: "Образец",
          id: groupId,
      ));
    }
    return Padding(
      padding: const EdgeInsets.only(top: 71),
      child: Visibility(
        visible: visible,
        child: SizedBox(
          /// потенциально может привести к ошибке, е
          height: height - 69,

          /// в идеале нужно избавиться от привезяки к [height]
          /// тем более, что в случае со списком (когда элементов >5)
          /// используется [BoxConstraints] c minHeight: 180 - те условие всегда true
          child: height < 160
              ? Container()
              : DottedAreaWidget(
            isMiniWidget: true,
            onTap: onTap,
          ),
        ),
      ),
    );
  }
}