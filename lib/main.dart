import 'dart:math';

import 'package:dotted_border/dotted_border.dart';
import 'package:first_approval_app/bloc/experiment_card_bloc/experiment_card_bloc.dart';
import 'package:first_approval_app/bloc/experimnet_scheme_bloc/experiment_scheme_bloc.dart';
import 'package:first_approval_app/bloc/save_card_bloc/save_card_bloc.dart';
import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:first_approval_app/models/group.dart';
import 'package:first_approval_app/models/sample.dart';
import 'package:first_approval_app/repositorys/experiment_card_repository.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_card.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sheme.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/widgets_present_on_multiple_screens/project_appbar.dart';
import 'package:first_approval_app/widgets_present_on_multiple_screens/project_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import 'custom_widgets/utils.dart';
import 'repositorys/samples_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'FA',
      home: Provider<SampleRepository>(
        create: (context) => SampleRepository(),
        child: ProjectBody(
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
                  Provider<ExperimentCardRepository>(
                    create: (context) => ExperimentCardRepository(),
                    child: BlocProvider<ExperimentCardBloc>(
                      create: (context) => ExperimentCardBloc(
                        Provider.of(context, listen: false),
                      ),
                      child: BlocProvider<SaveCardBloc>(
                        create: (context) => SaveCardBloc(
                          cardRepo: Provider.of(context, listen: false),
                          schemeRepo: Provider.of(context, listen: false),
                          fileCubit: Provider.of(context, listen: false),
                          fileManager: FileManager(),
                        ),
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
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  BlocProvider(
                    create: (context) => ExperimentSchemeBloc(
                      Provider.of(context, listen: false),
                    ),
                    child: ExperimentScheme(
                      child: BlocBuilder<ExperimentSchemeBloc,
                          ExperimentSchemeState>(
                        builder: (context, state) => state.map(
                          emptyState: (state) => SizedBox(
                            height: 300,
                            child: DottedAreaWidget(
                              onTap: () => context
                                  .read<ExperimentSchemeBloc>()
                                  .add(
                                    const ExperimentSchemeEvent.addNewSample(
                                      text: 'Введите описание',
                                      title: 'Образец',
                                    ),
                                  ),
                            ),
                          ),
                          loadedState: (state) => SizedBox(
                            height: 300,
                            child: Column(
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Row(
                                    children: const [
                                      Flexible(
                                        flex: 20,
                                        child: DottedAreaWithSamples(),
                                      ),
                                      Flexible(
                                        child: SizedBox(),
                                      )
                                    ],
                                  ),
                                ),
                                Flexible(
                                  flex: 3,
                                  child: Row(
                                    children: [
                                      Flexible(
                                        flex: 20,
                                        child: Column(
                                          children: [
                                            Expanded(
                                              flex: 1,
                                              child: Container(
                                                decoration: BoxDecoration(
                                                  border: Border.all(
                                                    width: 2,
                                                    color: const Color.fromRGBO(
                                                        153, 153, 153, 0.6),
                                                  ),
                                                ),
                                                child: Row(
                                                  children: state.data
                                                      .map(
                                                        (e) => Expanded(
                                                          flex: 1,
                                                          child: _GroupWidget(
                                                            group: e,
                                                          ),
                                                        ),
                                                      )
                                                      .toList(),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Flexible(
                                        child: AddSampleWidget(
                                          onTap: () => context
                                              .read<ExperimentSchemeBloc>()
                                              .add(
                                                const ExperimentSchemeEvent
                                                    .addSampleToGroup(
                                                  text: 'Ведите текст',
                                                  title: 'Образец',
                                                  id: 0,
                                                ),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          loading: (state) => const CircularProgressIndicator(),
                          errorState: (state) => Container(),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AddSampleWidget extends StatelessWidget {
  const AddSampleWidget({super.key, required this.onTap});
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return DottedBorder(
      dashPattern: const [30, 10],
      strokeCap: StrokeCap.butt,
      borderType: BorderType.RRect,
      color: const Color.fromRGBO(153, 153, 153, 0.6),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          border: Border.all(
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
              color: Color.fromRGBO(153, 153, 153, 0.6),
            ),
          ],
        ),
      ),
    );
  }
}

class _GroupWidget extends StatelessWidget {
  _GroupWidget({
    super.key,
    required this.group,
  });

  final Group group;
  var controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: group.samples.length < 6
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: group.samples
                      .map(
                        (e) => Expanded(
                          flex: 1,
                          child: _Sample(
                            sample: e,
                            idGroup: group.id,
                          ),
                        ),
                      )
                      .toList())
              : Row(
                  children: [
                    Expanded(
                      child: Scrollbar(
                        controller: controller,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          // shrinkWrap: true,
                          controller: controller,
                          itemCount: group.samples.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: group.samples
                                  .map(
                                    (e) => SizedBox(
                                      width: 300,
                                      child: _Sample(
                                        sample: e,
                                        idGroup: group.id,
                                      ),
                                    ),
                                  )
                                  .toList(),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
        ),
      ],
    );
  }
}

class _Sample extends StatefulWidget {
  final Sample sample;
  final int idGroup;
  const _Sample({
    Key? key,
    required this.sample,
    required this.idGroup,
  }) : super(key: key);

  @override
  State<_Sample> createState() => _SampleState();
}

class _SampleState extends State<_Sample> {
  late TextEditingController fieldTittle;
  late TextEditingController fieldText;

  @override
  void initState() {
    fieldTittle = TextEditingController()..text = widget.sample.tittle;
    fieldText = TextEditingController()..text = widget.sample.text;

    fieldText.addListener(() {
      context.read<ExperimentSchemeBloc>().add(
            ExperimentSchemeEvent.editSample(
                sample: widget.sample.copyWith(text: fieldText.text),
                idGroup: widget.idGroup),
          );
    });
    fieldTittle.addListener(() {
      context.read<ExperimentSchemeBloc>().add(
            ExperimentSchemeEvent.editSample(
                sample: widget.sample.copyWith(tittle: fieldTittle.text),
                idGroup: widget.idGroup),
          );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: const Color.fromRGBO(153, 153, 153, 0.6),
        ),
      ),
      child: ExpansionTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                width: 150,
                child: TextField(
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                  maxLength: 20,
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    counterText: '',
                  ),
                  controller: fieldTittle,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomNoBordersButton(IconsSvg.edit, () {}),
                CustomNoBordersButton(IconsSvg.schemeCompass, () {}),
                CustomNoBordersButton(IconsSvg.attachedFiles, () {}),
              ],
            ),
          ],
        ),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 26),
            child: SizedBox(
              height: 100,
              child: TextField(
                maxLines: 2,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
                controller: fieldText,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CreateSample extends StatefulWidget {
  const _CreateSample({
    Key? key,
  }) : super(key: key);

  @override
  State<_CreateSample> createState() => _CreateSampleState();
}

class _CreateSampleState extends State<_CreateSample> {
  late TextEditingController fieldTittle;
  late TextEditingController fieldText;

  @override
  void initState() {
    fieldTittle = TextEditingController();
    fieldText = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          TextField(
            controller: fieldTittle,
          ),
          TextField(
            controller: fieldText,
          ),
          ElevatedButton(
            onPressed: () {
              context.read<ExperimentSchemeBloc>().add(
                    ExperimentSchemeEvent.addNewSample(
                      text: fieldText.text,
                      title: fieldTittle.text,
                    ),
                  );
              fieldText.clear();
              fieldTittle.clear();
            },
            child: Text("Создать образец"),
          )
        ],
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
