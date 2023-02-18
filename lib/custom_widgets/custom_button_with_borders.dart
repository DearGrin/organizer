import 'package:first_approval_app/custom_widgets/custom_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButtonsWithBorders extends StatelessWidget {
  const CustomButtonsWithBorders(
    this.icon, {
    this.withText = false,
    super.key,
    this.onPressed,
  });
  final String icon;
  final bool withText;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: onPressed,
        child: withText
            ? Row(
                children: [
                  SvgPicture.asset(icon),
                  const SizedBox(
                    width: 12,
                  ),
                  const CustomText(
                    'Сохранить',
                    10,
                    weight: FontWeight.w400,
                  )
                ],
              )
            : SvgPicture.asset(icon),
      ),
    );
  }
}
