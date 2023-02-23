import 'package:first_approval_app/custom_widgets/custom_no_border_button.dart';
import 'package:first_approval_app/custom_widgets/utils.dart';
import 'package:first_approval_app/fa_app.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/models/group.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sceme/mini_add_sample.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sceme/sample_widget.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sceme/ungrouped_widget.dart';
import 'package:flutter/material.dart';

///вынести в отдеьлный файл - легче читать и ориентироваться
///ТРЕБУЕТСЯ РЕФАКТОРИНГ ЭТОГО ВИДЖЕТА - разбить на части, убрать лишнее
class GroupElement extends StatefulWidget {
  final Group data;
  const GroupElement({Key? key, required this.data})
      : super(key: key);

  @override
  State<GroupElement> createState() => _GroupElementState();
}

class _GroupElementState extends State<GroupElement> {
  double height = 0;
  bool visible = false;
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 9,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderColor, width: 2)),
            child: WidgetSizeOffsetWrapper(
              onSizeChange: (Size size) {
                setState(() {
                  height = size.height;
                });
              },
              child: ExpansionTile(
                /// для читаемости вынести отдельно
                onExpansionChanged: (isExpanded) {
                  if (isExpanded) {
                    visible = true;
                  } else {
                    visible = false;
                  }
                  setState(() {});
                },

                ///значения по умлочанию опускаем
                initiallyExpanded: false,
                iconColor: Colors.black,
                expandedCrossAxisAlignment: CrossAxisAlignment.start,
                tilePadding: const EdgeInsets.only(
                    top: 10, bottom: 10, right: 18, left: 14),
                textColor: Colors.black,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.data.name,
                        style: AppTextStyles.groupTitleTextStyle),
                    const CustomNoBordersButton(IconsSvg.edit)
                  ],
                ),
                children: [
                  Container(
                    constraints: const BoxConstraints(minHeight: 180),
                    child: Column(
                      ///значения по умлочанию опускаем
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        widget.data.groupDescription.isNotEmpty
                            ? const TextField(
                          decoration:
                          InputDecoration(border: InputBorder.none),
                        )
                            : const SizedBox.shrink(),
                        UngroupedWidget(ungroupedSamples:  widget.data.samples, groupId:  widget.data.id,),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Expanded(
            child: MiniAddSample(
              height: height,
              visible: visible,
              groupId: widget.data.id,
            )),
      ],
    );
  }
}