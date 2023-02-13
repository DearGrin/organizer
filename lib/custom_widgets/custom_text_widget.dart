import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight weight;
  final Color? color;
  final TextOverflow? textOverflow;
  final TextAlign textAlign;
  const CustomText(this.text, this.fontSize,
      {Key? key,
      this.color = Colors.black,
      this.textOverflow = TextOverflow.ellipsis,
      this.weight = FontWeight.normal,
      this.textAlign = TextAlign.center})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        overflow: textOverflow,
        color: color,
        fontSize: fontSize,
        fontFamily: "Inter",
        fontWeight: weight,
      ),
    );
  }
}