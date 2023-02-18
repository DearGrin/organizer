import 'package:first_approval_app/custom_widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigationPropertiesCard extends StatelessWidget {
  const NavigationPropertiesCard(
    this.name,
    this.icon, {
    super.key,
    this.onTap,
  });
  final String name;
  final String icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          splashColor: Colors.red,
          onTap: onTap,
          child: Container(
            height: 140,
            width: 240,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(icon),
                HeaderText(name),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
