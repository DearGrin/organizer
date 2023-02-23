import 'dart:developer';

import 'package:first_approval_app/bloc/experiment_card_bloc/experiment_card_bloc.dart';
import 'package:first_approval_app/custom_widgets/custom_button_with_borders.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExperimentPageButtons extends StatelessWidget {
  final VoidCallback onSave;
  const ExperimentPageButtons({required this.onSave, super.key});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const CustomButtonsWithBorders(IconsSvg.back),
          const SizedBox(width: 20),
          CustomButtonsWithBorders(
            IconsSvg.saved,
            onPressed: onSave,
            withText: true,
          ),
          const SizedBox(width: 10),
          const CustomButtonsWithBorders(IconsSvg.archive),
          const SizedBox(width: 10),
          const CustomButtonsWithBorders(IconsSvg.export),
          const SizedBox(width: 10),
          const CustomButtonsWithBorders(IconsSvg.publication),
        ],
      ),
    );
  }
}
