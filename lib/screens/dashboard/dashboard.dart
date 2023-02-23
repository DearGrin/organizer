import 'package:first_approval_app/bloc/dashboard_bloc/dashboard_bloc.dart';
import 'package:first_approval_app/http_and_backend/http_class.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/screens/dashboard/add_card_widget.dart';
import 'package:first_approval_app/screens/dashboard/create_new_card_widget.dart';
import 'package:first_approval_app/screens/dashboard/dashboard_navigation_cards.dart';
import 'package:first_approval_app/screens/dashboard/experiment_name.dart';
import 'package:first_approval_app/screens/dashboard/horizontal_switcher.dart';
import 'package:first_approval_app/screens/dashboard/navidation_cards.dart';
import 'package:first_approval_app/screens/dashboard/navigation_widget.dart';
import 'package:first_approval_app/screens/dashboard/recent_experiment_card.dart';
import 'package:first_approval_app/screens/dashboard/show_all_button.dart';
import 'package:first_approval_app/screens/experiment_card/card_page.dart';
import 'package:first_approval_app/screens_measures/measures.dart';
import 'package:first_approval_app/widgets_present_on_multiple_screens/project_appbar.dart';
import 'package:first_approval_app/custom_widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => DashboardBloc()..add(const DashboardEvent.started())),
      ],
      child: const DashboardView(),
    );
  }
}

class DashboardView extends StatefulWidget {
  const DashboardView({Key? key}) : super(key: key);

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///цвет вынести в стили
      backgroundColor: const Color(0xffEAEAEA),
      appBar: ProjectAppBar(
        icon: SvgPicture.asset(IconsSvg.notification),

        /// есть разница между null и пустой функцией в поведении кнопок -
        /// надо учитывать, какое поведение предпочтительнее
        onTap: () {},
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            left: context.navigationPagePadding,
            right: context.navigationPagePadding,
            top: context.nevigationPageHeight,
            bottom: context.nevigationPageHeight,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Navigation(),
              const DashboardNavigationCards(),
              const ExperimentName(),
              BlocConsumer<DashboardBloc, DashboardState>(
                listenWhen: (prev, current) =>
                    (current == const DashboardState.archiveInProgress() ||
                        prev == const DashboardState.archiveInProgress()),
                listener: (context, state) {
                  if (state == const DashboardState.archiveInProgress()) {
                    _showArchiveLoader();
                  } else {
                    Navigator.of(context).pop();
                  }
                },
                builder: (context, state) {
                  List<Widget> widgets = [
                    AddCard(
                      text: 'Добавить карточку\n     эскперимента',
                      onTap: _showDialog,
                    )
                  ];
                  state.whenOrNull(
                    loaded: (experiments) =>
                        widgets.addAll(experiments.map((e) => RecentExperimentCard(e)).toList()),
                  );
                  return Wrap(
                    runSpacing: 20,
                    spacing: 20,
                    children: widgets,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return const ChooseOptionPopUp();
      },
    ).then((value) {
      if (value != null) {
        Navigator.of(context)
            .push(
              MaterialPageRoute(builder: (context) => const CardPage(null)),
            )
            .then((value) => context.read<DashboardBloc>().add(const DashboardEvent.started()));
      }
    });
  }

  void _showArchiveLoader() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
