import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/screens/dashboard/horizontal_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrakThemeSwitcher extends StatelessWidget {
  const DrakThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(IconsSvg.lightModeIcon),
        const HorizontalSwitcher(),
        SvgPicture.asset(IconsSvg.nightModeIcon),
      ],
    );
  }
}