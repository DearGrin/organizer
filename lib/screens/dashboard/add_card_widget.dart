import 'package:dotted_border/dotted_border.dart';
import 'package:first_approval_app/custom_widgets/custom_text_widget.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/main.dart';
import 'package:first_approval_app/screens/dashboard/create_new_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AddCard extends StatelessWidget {
  const AddCard({required this.text, super.key, this.byDefault = true});
  final String text;
  final bool byDefault;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DottedBorder(
          dashPattern: const [30, 10],
          strokeCap: StrokeCap.butt,
          borderType: BorderType.RRect,

          ///цвет вынести в стили
          color: const Color.fromRGBO(153, 153, 153, 0.6),
          child: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                ///цвет вынести в стили
                color: const Color.fromRGBO(153, 153, 153, 0.6),
                style: BorderStyle.none,
              ),
            ),
            padding: const EdgeInsets.all(18.0),
            width: 240,
            height: 240,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  /// для читаемости вынес бы в отдельную функцию
                  /// _onTap(){
                  /// if(bydefault){...}else{..}
                  /// }
                  /// onTap: _onTap,
                  onTap: (byDefault == true)

                      ///можно просто bydefault? вместо (bydefault == true)?
                      ? () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return const ChooseOptionPopUp();
                            },
                          );
                        }
                      : () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyApp()),
                          );
                        },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(IconsSvg.ellipse),
                      SvgPicture.asset(IconsSvg.bigPlus),
                    ],
                  ),
                ),
                CustomText(
                  text,
                  16,
                  weight: FontWeight.w700,

                  ///цвет вынести в стили
                  color: const Color.fromRGBO(153, 153, 153, 0.6),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
