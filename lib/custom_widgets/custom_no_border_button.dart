import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomNoBordersButton extends StatelessWidget {
  const CustomNoBordersButton(this.icon, {super.key, this.onPressed});
  final String icon;

  /// вынести в необязательные парметры
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.grey,
      onTap: onPressed,
      child: SvgPicture.asset(icon),
    );
  }
}
