import 'package:first_approval_app/custom_widgets/utils.dart';
import 'package:first_approval_app/screens/dashboard/dashboard.dart';
import 'package:first_approval_app/screens_measures/measures.dart';
import 'package:flutter/material.dart';

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: context.nevigationPageHeight),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          HeaderText('Навигация'),
          DrakThemeSwitcher(),
        ],
      ),
    );
  }
}
