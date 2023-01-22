import 'package:dotted_border/dotted_border.dart';
import 'package:first_approval_app/bloc/experimnet_scheme_bloc/experiment_scheme_bloc.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/custom_widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                children: [
                  CustomNoBordersButton(
                    IconsSvg.import,
                    /// есть разница между null и пустой функцией в поведении кнопок -
                    /// надо учитывать, какое поведение предпочтительнее
                    () {},
                  ),
                  ///зачем при MainAxisAlignment.spaceEvenly вставлять SizedBox?
                  const SizedBox(
                    width: 5,
                  ),
                  CustomNoBordersButton(
                    IconsSvg.export,
                    /// есть разница между null и пустой функцией в поведении кнопок -
                    /// надо учитывать, какое поведение предпочтительнее
                    () {},
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
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
      customPath: isMiniWidget != null ? (size) {

        return Path()
          ..moveTo(1, 1)
          ..lineTo(size.width, 1)
          ..lineTo(size.width, size.height + 1)
          ..lineTo(1, size.height + 1);
      } : null,
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
            isMiniWidget != null ? const CustomText(
              'Добавить\nобразец',
              16,
              weight: FontWeight.w700,
              ///цвета в стили
              color: Color.fromRGBO(153, 153, 153, 0.6),
            ) :  const CustomText(
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
class DottedAreaWithSamples extends StatelessWidget {
  ///сделать необязательным парматром
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
            const SizedBox(
              width: 10,
            ),
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
    ///удаляем мертвый код
    // Flexible(
    //   flex: 3,
    //   child: Container(
    //     decoration: BoxDecoration(
    //       border: Border.all(
    //         width: 3.0,
    //         color: const Color.fromRGBO(153, 153, 153, 0.6),
    //         style: BorderStyle.solid,
    //       ),
    //     ),
    //     child: Column(
    //       children: children,
    //     ),
    //   );
  }
}
///удаляем мертвый код
// class GroupUpSamplesWidget extends StatelessWidget {
//   final VoidCallback? onTap;
//   final List<Sample> children;
//   const GroupUpSamplesWidget({
//     super.key,
//     this.onTap,
//     required this.children,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: DottedBorder(
//         dashPattern: const [30, 10],
//         strokeCap: StrokeCap.butt,
//         borderType: BorderType.RRect,
//         color: const Color.fromRGBO(153, 153, 153, 0.6),
//         child: Container(
//           alignment: Alignment.center,
//           decoration: BoxDecoration(
//             border: Border.all(
//               color: const Color.fromRGBO(153, 153, 153, 0.6),
//               style: BorderStyle.none,
//             ),
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               InkWell(
//                 onTap: onTap,
//                 child: Stack(
//                   alignment: Alignment.center,
//                   children: [
//                     SvgPicture.asset(IconsSvg.schemeLittleEllipse),
//                     SvgPicture.asset(IconsSvg.schemeLittlePLus),
//                   ],
//                 ),
//               ),
//               const CustomText(
//                 'Объединить в группу',
//                 16,
//                 FontWeight.w700,
//                 color: Color.fromRGBO(153, 153, 153, 0.6),
//               ),
//               NewSample(),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

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
///вынести в отдеьлный файл - легче читать и ориентироваться
class NewSample extends StatefulWidget {
  const NewSample({super.key});

  @override
  State<NewSample> createState() => _NewSampleState();
}

class _NewSampleState extends State<NewSample> {
  late TextEditingController title;
  late TextEditingController descriptionText;

  @override
  void initState() {
    title = TextEditingController();
    descriptionText = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: ExpansionTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              controller: title,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /// есть разница между null и пустой функцией в поведении кнопок -
                /// надо учитывать, какое поведение предпочтительнее
                CustomNoBordersButton(IconsSvg.edit, () {}),
                CustomNoBordersButton(IconsSvg.schemeCompass, () {}),
                CustomNoBordersButton(IconsSvg.attachedFiles, () {}),
              ],
            ),
          ],
        ),
        children: [
          ElevatedButton(
            onPressed: () {
              ///для читаемости вынести отдельно
              context.read<ExperimentSchemeBloc>().add(
                    ExperimentSchemeEvent.addNewSample(
                      text: descriptionText.text,
                      title: title.text,
                    ),
                  );

              descriptionText.clear();
              title.clear();
            },
            child: const Text('Добавить образец'),
          )
        ],
        ///удаляем мертвый код
        // children: [
        //   TextField(
        //     controller: descriptionText,
        //     style: const TextStyle(),
        //     decoration: const InputDecoration(
        //       hintText: "Введите описание",
        //     ),
        //     maxLines: 3,
        //   ),
        //   ElevatedButton(
        //     onPressed: () {
        //       context.read<ExperimentSchemeBloc>().add(
        //             ExperimentSchemeEvent.addNewSample(
        //               text: descriptionText.text,
        //               title: title.text,
        //             ),
        //           );

        //       descriptionText.clear();
        //       title.clear();
        //     },
        //     child: const Text('Добавить образец'),
        //   )
        // ],
      ),
    );
  }
}