import 'package:first_approval_app/custom_widgets/utils.dart';
import 'package:first_approval_app/screens/dashboard/show_all_button.dart';
import 'package:first_approval_app/screens_measures/measures.dart';
import 'package:flutter/material.dart';

class ExperimentName extends StatelessWidget {
  const ExperimentName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 70.0,
        bottom: context.nevigationPageHeight,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          HeaderText('Недавние эксперименты'),
          ShowAll(),
        ],
      ),
    );
  }
}