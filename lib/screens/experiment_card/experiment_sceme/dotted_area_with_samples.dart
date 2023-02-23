import 'package:dotted_border/dotted_border.dart';
import 'package:first_approval_app/custom_widgets/custom_text_widget.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DottedAreaWithSamples extends StatelessWidget {
  final VoidCallback? onTap;
  const DottedAreaWithSamples({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      customPath: (size) {
        return Path()
          ..moveTo(0, size.height)
          ..lineTo(0, 0)
          ..lineTo(size.width, 0)
          ..lineTo(size.width, size.height);
      },
      dashPattern: const [30, 10],
      strokeCap: StrokeCap.butt,
      borderType: BorderType.RRect,

      ///цвета в стили
      color: const Color.fromRGBO(153, 153, 153, 0.6),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            ///цвета в стили
            color: const Color.fromRGBO(153, 153, 153, 0.6),
            style: BorderStyle.none,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: onTap,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(IconsSvg.schemeLittleEllipse),
                  SvgPicture.asset(IconsSvg.schemeLittlePLus),
                ],
              ),
            ),
            const SizedBox(width: 10),
            const CustomText(
              'Объединить в группу',
              12,
              weight: FontWeight.w700,

              ///цвета в стили
              color: Color.fromRGBO(153, 153, 153, 0.6),
            ),
          ],
        ),
      ),
    );
  }
}