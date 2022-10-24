import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HeaderText extends StatelessWidget {
  final String text;
  const HeaderText(this.text ,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
            text,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: "Inter",
              fontWeight: FontWeight.w700,
            ),
          );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final double? fontsize;
  final FontWeight weight;
  final Color? color;
  const CustomText(this.text, this.fontsize, this.weight,
      {Key? key, this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: color,
        fontSize: fontsize,
        fontFamily: "Inter",
        fontWeight: weight,
      ),
    );
  }
}

class CustomButtonsWithBorders extends StatelessWidget {
  const CustomButtonsWithBorders(this.icon, this.onPressed,
      {this.withText = false, super.key});
  final String icon;
  final bool withText;
  final VoidCallback onPressed;

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
                    FontWeight.w400,
                  )
                ],
              )
            : SvgPicture.asset(icon),
      ),
    );
  }
}

class CustomNoBordersButton extends StatelessWidget {
  const CustomNoBordersButton(this.icon, this.onPressed, {super.key});
  final String icon;
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