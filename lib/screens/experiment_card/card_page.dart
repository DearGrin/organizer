import 'package:first_approval_app/bloc/experiment_card_bloc/experiment_card_bloc.dart';
import 'package:first_approval_app/bloc/experimnet_scheme_bloc/experiment_scheme_bloc.dart';
import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:first_approval_app/custom_widgets/utils.dart';
import 'package:first_approval_app/fa_app.dart';
import 'package:first_approval_app/models/group.dart';
import 'package:first_approval_app/models/sample.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_card.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_name_widget.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sheme.dart';
import 'package:first_approval_app/screens/experiment_card/file_area.dart';
import 'package:first_approval_app/widgets_present_on_multiple_screens/project_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ProjectBody(
      body: Container(
        margin: const EdgeInsets.only(
          top: 40,
          right: 33,
          left: 28,
          bottom: 53,
        ),
        child: MultiBlocProvider(
          providers: [
            BlocProvider<FileCubit>(create: (context) => FileCubit()),
            BlocProvider<ExperimentCardBloc>(
              create: (context) => ExperimentCardBloc(FileManager()),
            ),
            BlocProvider<ExperimentSchemeBloc>(
              create: (context) => ExperimentSchemeBloc(FileManager()),
            ),
          ],
          child: ListView(
            children: [
              Column(
                children: [
                  const ExperimentNameWidget(),
                  const SizedBox(height: 30),
                  Row(
                    children: const [
                      Flexible(
                        flex: 3,
                        child: ExperimentInfoCard(),
                      ),
                      SizedBox(width: 50),
                      Flexible(child: FilesCard()),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const ExperimentScheme(child: ExperimentSchemeBlocBuilder()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExperimentSchemeBlocBuilder extends StatelessWidget {
  const ExperimentSchemeBlocBuilder({super.key});

  void _addSample(BuildContext context) => context
      .read<ExperimentSchemeBloc>()
      .add(const ExperimentSchemeEvent.addNewSample(
          text: "Введите описание", title: "Образец"));

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExperimentSchemeBloc, ExperimentSchemeState>(
      builder: (context, state) => state.map(
        emptyState: (state) => ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 250, maxHeight: 250),
          child: DottedAreaWidget(
            onTap: () => _addSample(context),
          ),
        ),
        loadedState: (state) {
          return Builder(builder: (context) {
            if (state.data.isEmpty) {
              return ExperimentSchemeWithSamples(
                groups: state.data,
                samples: state.ungroupedSamples,
              );
            }
            return Container();
          });
        },
        errorState: (state) => Container(),
        loading: (state) => Container(),
      ),
    );
  }
}

class ExperimentSchemeWithSamples extends StatelessWidget {
  const ExperimentSchemeWithSamples(
      {super.key, required this.groups, required this.samples});
  final List<Group> groups;
  final List<Sample> samples;

  void _addSamples(BuildContext context) => context
      .read<ExperimentSchemeBloc>()
      .add(const ExperimentSchemeEvent.addUngroupedSamplesToGroup());

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 9,
              child: SizedBox(
                height: 60,
                child: DottedAreaWithSamples(
                  onTap: () => _addSamples(context),
                ),
              ),
            ),
            Expanded(child: Container()),
          ],
        ),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Expanded(
            flex: 9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Groups(data: groups),
                Container(
                  constraints: const BoxConstraints(minHeight: 180),
                  decoration: BoxDecoration(
                      border:
                          Border.all(color: AppColors.borderColor, width: 1)),

                  ///в [UngroupedWidget] описал подробнее - это лишнее
                  child: samples.length > 5
                      ? UngroupedWidget(
                          ungroupedSamples: samples,
                          moreElements: true,
                        )
                      : UngroupedWidget(
                          ungroupedSamples: samples,
                          moreElements: false,
                        ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 180,
              width: 90,
              child: DottedAreaWidget(
                isMiniWidget: true,

                ///для читаемости вынести отдельно
                onTap: () => context
                    .read<ExperimentSchemeBloc>()
                    .add(const ExperimentSchemeEvent.addNewSample(

                        ///пустые не лучше бы?
                        ///а если в TextField использовать hint/label...
                        ///+ зачем эти параметры вообще перендавать при создании нового объекта
                        ///со значениями по умолчанию?
                        text: "Введите описание",
                        title: "Образец")),
              ),
            ),
          ),
        ]),
      ],
    );
  }
}
