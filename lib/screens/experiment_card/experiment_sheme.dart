import 'package:dotted_border/dotted_border.dart';
import 'package:first_approval_app/custom_widgets/custom_no_border_button.dart';
import 'package:first_approval_app/custom_widgets/custom_text_widget.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ExperimentScheme extends StatelessWidget {
  final Widget child;
  const ExperimentScheme({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 25,
        left: 40,
        right: 40,
        bottom: 30,
      ),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(
                'Схема эксперимента',
                20,
                weight: FontWeight.w700,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  CustomNoBordersButton(IconsSvg.import),
                  CustomNoBordersButton(IconsSvg.export),
                ],
              ),
            ],
          ),
          const SizedBox(height: 30),
          child
        ],
      ),
    );
  }
}

///вынести в отдеьлный файл - легче читать и ориентироваться
class DottedAreaWidget extends StatelessWidget {
  ///сделать необязательным парматром
  final VoidCallback? onTap;

  ///в данном случае нет смысла делать [isMiniWidget] nullable
  ///нужно сделать необязательным парметром с указанием значения по умлочанию
  final bool? isMiniWidget;
  const DottedAreaWidget({super.key, this.onTap, this.isMiniWidget});

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      customPath: isMiniWidget != null
          ? (size) {
              return Path()
                ..moveTo(1, 1)
                ..lineTo(size.width, 1)
                ..lineTo(size.width, size.height + 1)
                ..lineTo(1, size.height + 1);
            }
          : null,
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: onTap,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(IconsSvg.ellipse),
                  SvgPicture.asset(IconsSvg.bigPlus),
                ],
              ),
            ),

            ///соответственно не isMiniWidget !=null а isMiniWidget?
            isMiniWidget != null
                ? const CustomText(
                    'Добавить\nобразец',
                    16,
                    weight: FontWeight.w700,

                    ///цвета в стили
                    color: Color.fromRGBO(153, 153, 153, 0.6),
                  )
                : const CustomText(
                    'Добавить новый\nобразец',
                    16,
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

///вынести в отдеьлный файл - легче читать и ориентироваться
class AddSampleWidget extends StatelessWidget {
  const AddSampleWidget({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
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
        child: Column(
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
            const CustomText(
              'Добавить\nобразец',
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
