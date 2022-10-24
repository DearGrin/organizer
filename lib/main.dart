import 'package:first_approval_app/bloc/experimnet_scheme_bloc/experiment_scheme_bloc.dart';
import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:first_approval_app/cubit/cubit/experiment_card_cubit.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_card.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sheme.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/widgets_present_on_multiple_screens/project_appbar.dart';
import 'package:first_approval_app/widgets_present_on_multiple_screens/project_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

//double densityAmt = touchMode ? 0.0 : -1.0;
// VisualDensity density =
//     VisualDensity(horizontal: densityAmt, vertical: densityAmt);

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       // theme: ThemeData(visualDensity: density),
//       debugShowCheckedModeBanner: false,
//       title: 'FA',
//       home: MyWidgetsPage(),
//     );
//   }
// }

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FA',
      home: ProjectBody(
        body: BlocProvider<FileCubit>(
          create: (context) => FileCubit(),
          child: Container(
            margin: const EdgeInsets.only(
              top: 40,
              right: 33,
              left: 28,
              bottom: 53,
            ),
            child: ListView(
              children: [
                BlocProvider<ExperimentCardCubit>(
                  create: (context) => ExperimentCardCubit(),
                  child: Column(
                    children: [
                      const ExperimentNameWidget(),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: const [
                          Flexible(
                            flex: 3,
                            child: ExperimentInfoCard(),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Flexible(
                            flex: 1,
                            child: FilesCard(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                BlocProvider(
                  lazy: false,
                  create: (context) => ExperimentSchemeBloc(),
                  child:
                      BlocBuilder<ExperimentSchemeBloc, ExperimentSchemeState>(
                    builder: (context, state) => state.map(
                      emptyState: (state) => ExperimentScheme(
                        onTap: () => context
                            .read<ExperimentSchemeBloc>()
                            .add(const ExperimentSchemeEvent.addNewSample()),
                      ),
                      loadedState: (state) => Column(
                        children: state.data
                            .map(
                              (e) => NewSample(
                                data: e,
                                onPressed: () =>
                                    context.read<ExperimentSchemeBloc>().add(
                                          const ExperimentSchemeEvent
                                              .addNewSample(),
                                        ),
                              ),
                            )
                            .toList(),
                      ),
                      errorState: (state) => Container(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ProjectBody extends StatelessWidget {
  final Widget body;
  const ProjectBody({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAEAEA),
      appBar: ProjectAppBar(
        icon: SvgPicture.asset(IconsSvg.notification),
        onTap: () {},
      ),
      body: Row(
        children: [
          const ProjectMenu(),
          Flexible(child: body),
        ],
      ),
    );
  }
}

class ProjectMenu extends StatelessWidget {
  const ProjectMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      child: Column(
        children: [
          Menu(),
          Home(),
          MySettings(),
          MyExperiment(),
          MyExport(),
          MyImport(),
          MyValidation(),
          MenuPublication(),
          SvgPicture.asset(IconsSvg.lightModeIcon),
          MySwitcher(),
          SvgPicture.asset(IconsSvg.nightModeIcon),
        ],
      ),
    );
  }
}
