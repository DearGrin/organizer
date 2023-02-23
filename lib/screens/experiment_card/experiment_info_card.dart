import 'package:first_approval_app/custom_widgets/custom_no_border_button.dart';
import 'package:first_approval_app/custom_widgets/custom_text_widget.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/screens/experiment_card/text_fields_area.dart';
import 'package:flutter/material.dart';

class ExperimentInfoCard extends StatelessWidget {
  const ExperimentInfoCard({super.key});

  @override
  Widget build(BuildContext context) {

    void onPressed(){
      ///не понятно, что должна эта кнопка делать

    }

    return Container(
      height: 410,
      padding: const EdgeInsets.all(30.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(
                'Информация об эксперименте',
                20,
                weight: FontWeight.w700,
              ),
              CustomNoBordersButton(
                IconsSvg.moreHorizontal,
                onPressed: () => onPressed,
              ),
            ],
          ),
          const SizedBox(height: 20),
          const TextFieldsArea(),
        ],
      ),
    );
  }
}