import 'package:first_approval_app/bloc/dashboard_bloc/dashboard_bloc.dart';
import 'package:first_approval_app/custom_widgets/custom_text_widget.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/models/experiment.dart';
import 'package:first_approval_app/screens/dashboard/public_button.dart';
import 'package:first_approval_app/screens/experiment_card/card_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class RecentExperimentCard extends StatelessWidget {
  final Experiment experiment;
  const RecentExperimentCard(this.experiment, {super.key});

  String getCurrentTime() {
    var now = DateTime.now();
    var formatter = DateFormat('dd.MM.yyyy');
    String formattedDate = formatter.format(now);
    return formattedDate;
  }

  @override
  Widget build(BuildContext context) {

    void deleteExperiment(){
      context.read<DashboardBloc>().add(DashboardEvent.deleteExperiment(experiment));
    }
    void onExperimentTap(){
      Navigator.of(context).push(
        MaterialPageRoute(
            builder: (context) => CardPage(experiment)),
      ).then((value) => context.read<DashboardBloc>().add(const DashboardEvent.started()));
    }

    void onArchiveTap(){
      context.read<DashboardBloc>().add(DashboardEvent.archiveExperiment(experiment));
    }

    return GestureDetector(
      onTap: onExperimentTap,
      child: Container(
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
                  experiment.info.date,
                  10,
                  weight: FontWeight.w400,
                ),
                IconButton(
                  onPressed: deleteExperiment,
                  splashRadius: 10,
                  icon: SvgPicture.asset(IconsSvg.cardClose),
                )
              ],
            ),
             CustomText(
              experiment.info.name,
              14,
              weight: FontWeight.w700,
            ),
            const SizedBox(height: 15),
             CustomText(
              experiment.info.goal,
              12,
              weight: FontWeight.w400,
            ),
            const SizedBox(height: 80),
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
                      onPressed: onArchiveTap,
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
      ),
    );
  }
}
