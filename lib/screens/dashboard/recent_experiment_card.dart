import 'package:first_approval_app/custom_widgets/custom_text_widget.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/screens/dashboard/public_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class RecentExperimentCard extends StatelessWidget {
  const RecentExperimentCard({super.key});

  String getCurrentTime() {
    var now = DateTime.now();
    var formatter = DateFormat('dd.MM.yyyy');
    String formattedDate = formatter.format(now);
    return formattedDate;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      color: Colors.white,
      width: 240,
      height: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                getCurrentTime(),
                10,
                weight: FontWeight.w400,
              ),
              IconButton(
                /// есть разница между null и пустой функцией в поведении кнопок -
                /// надо учитывать, какое поведение предпочтительнее
                onPressed: () {},
                splashRadius: 10,
                icon: SvgPicture.asset(IconsSvg.cardClose),
              )
            ],
          ),
          const CustomText(
            'Название эксперимента',
            14,
            weight: FontWeight.w700,
          ),
          const SizedBox(
            height: 15,
          ),
          const CustomText(
            'Цель эксперимента',
            12,
            weight: FontWeight.w400,
          ),
          const SizedBox(
            height: 80,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    constraints: const BoxConstraints(),
                    padding: const EdgeInsets.all(0.0),

                    /// есть разница между null и пустой функцией в поведении кнопок -
                    /// надо учитывать, какое поведение предпочтительнее
                    onPressed: () {},
                    icon: SvgPicture.asset(IconsSvg.cardValidation),
                  ),
                  IconButton(
                    constraints: const BoxConstraints(),
                    padding: const EdgeInsets.all(0.0),

                    /// есть разница между null и пустой функцией в поведении кнопок -
                    /// надо учитывать, какое поведение предпочтительнее
                    onPressed: () {},
                    icon: SvgPicture.asset(IconsSvg.cardAttachedFiles),
                  ),
                  IconButton(
                    constraints: const BoxConstraints(),
                    padding: const EdgeInsets.all(0.0),

                    /// есть разница между null и пустой функцией в поведении кнопок -
                    /// надо учитывать, какое поведение предпочтительнее
                    onPressed: () {},
                    icon: SvgPicture.asset(IconsSvg.cardArchive),
                  ),
                ],
              ),
              const SizedBox(
                width: 44,
              ),
              const PublicButton(),
            ],
          ),
        ],
      ),
    );
  }
}
