import 'package:dotted_border/dotted_border.dart';
import 'package:first_approval_app/custom_widgets/custom_text_widget.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


/// Архитектурный вопрос: я бы каждый класс вынес в отдельный файл:
/// - лечге ориентироваться
/// - нет "лишних" импортов, где они не требуются
/// - сейчас в одном файле смешаны виджеты и стили
class HeaderText extends StatelessWidget {
  final String text;
  const HeaderText(this.text, {Key? key}) : super(key: key);

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


class AddGroup extends StatelessWidget {
  ///вынести в необязательные параметры
  final VoidCallback? onTap;
  /// не забываем использовать const
  const AddGroup({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      customPath: (size) {
        return Path()
          ..moveTo(1, 0)
          ..lineTo(1, 100)
          ..lineTo(size.width - 1, size.height)
          ..lineTo(size.width - 1, 0);
      } ,
      dashPattern: const [30, 10],
      strokeCap: StrokeCap.butt,
      borderType: BorderType.RRect,
      color: AppColors.dottedColor,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
            color: AppColors.dottedColor,
            style: BorderStyle.none,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: onTap,
              ///тут бы иконку отрисовать и избавиться от Stack двух иконок
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(IconsSvg.schemeLittleEllipse),
                  SvgPicture.asset(IconsSvg.schemeLittlePLus),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const CustomText(
              'Добавить группу',
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

///стилей мало - их вполне можно добавить в стандартную тему
class AppColors {
  static const Color borderColor = Color.fromRGBO(153, 153, 153, 0.6);
  static const Color expansionTileIconColor = Color(0xff28303F);
  static const Color dottedColor = Color.fromRGBO(153, 153, 153, 0.6);
}

///стилей мало - их вполне можно добавить в тему и использовать через
///Theme.of(context).textTheme.header1 например
class AppTextStyles {
  static const measurementTextStyle = TextStyle(
      fontSize: 12,
      fontWeight: FontWeight.w700,
      height: 1.21);
  static const sampleTextStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
  );
  static const groupTitleTextStyle =  TextStyle(
      fontSize: 16,
      fontWeight:
      FontWeight
          .w700,
      height: 1.21);
}