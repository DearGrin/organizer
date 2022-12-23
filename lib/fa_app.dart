import 'package:first_approval_app/bloc/read_bloc/read_bloc_bloc.dart';
import 'package:first_approval_app/models/experiment_card_models/card_text_fields.dart';
import 'package:first_approval_app/repositorys/experiment_card_repository.dart';
import 'package:first_approval_app/repositorys/samples_repository.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_card.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sheme.dart';
import 'package:first_approval_app/widgets_present_on_multiple_screens/project_appbar.dart';
import 'package:first_approval_app/bloc/save_card_bloc/save_card_bloc.dart';
import 'package:first_approval_app/widgets_present_on_multiple_screens/project_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import 'bloc/experiment_card_bloc/experiment_card_bloc.dart';
import 'bloc/experimnet_scheme_bloc/experiment_scheme_bloc.dart';
import 'cubit/FileCubit/file_cubit.dart';
import 'custom_widgets/utils.dart';
import 'icons/icons_paths.dart';
import 'models/group.dart';
import 'models/measurement.dart';
import 'models/sample.dart';

class FaApp extends StatelessWidget {
  const FaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider<SampleRepository>(
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
                    child: MultiBlocProvider(
                      providers: [
                        BlocProvider<SaveCardBloc>(
                          create: (context) => SaveCardBloc(
                            cardRepo: Provider.of(context, listen: false),
                            schemeRepo: Provider.of(context, listen: false),
                            fileCubit: Provider.of(context, listen: false),
                            fileManager: FileManager(),
                          ),
                        ),
                        BlocProvider(
                          create: (context) => ReadBlocBloc(
                            FileManager(),
                            ExperimentCardTextFields(),
                          ),
                        ),
                      ],
                      child: const ExperimentCard(),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                BlocProvider(
                  create: (context) => ExperimentSchemeBloc(
                    Provider.of(context, listen: false),
                    FileManager(),
                  ),
                  child: ExperimentScheme(
                    child: BlocBuilder<ExperimentSchemeBloc,
                        ExperimentSchemeState>(
                      builder: (context, state) => state.map(
                        emptyState: (state) => ConstrainedBox(
                          constraints: const BoxConstraints(
                              minHeight: 250, maxHeight: 250),
                          child: DottedAreaWidget(
                            onTap: () => context
                                .read<ExperimentSchemeBloc>()
                                .add(const ExperimentSchemeEvent
                                        .addUngroupedSample(
                                    text: "Введите описание",
                                    title: "Образец")),
                          ),
                        ),
                        loadedState: (state) {
                          return Builder(
                            builder: (BuildContext context) {
                              if (state.data.isEmpty) {
                                return Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 9,
                                          child: SizedBox(
                                              height: 60,
                                              child: DottedAreaWithSamples(
                                                onTap: () {
                                                  state.ungroupedSamples
                                                          .isNotEmpty
                                                      ? context
                                                          .read<
                                                              ExperimentSchemeBloc>()
                                                          .add(const ExperimentSchemeEvent
                                                              .addUngroupedSamplesToGroup())
                                                      : null;
                                                },
                                              )),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(),
                                        )
                                      ],
                                    ),
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            flex: 9,
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Groups(data: state.data),
                                                Container(
                                                  constraints:
                                                      const BoxConstraints(
                                                          minHeight: 180,
                                                          minWidth: 2000),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: AppColors
                                                              .borderColor,
                                                          width: 2)),
                                                  child: state.ungroupedSamples
                                                              .length >
                                                          5
                                                      ? UngroupedWidget(
                                                          ungroupedSamples: state
                                                              .ungroupedSamples,
                                                          moreElements: true,
                                                        )
                                                      : UngroupedWidget(
                                                          ungroupedSamples: state
                                                              .ungroupedSamples,
                                                          moreElements: false,
                                                        ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 0),
                                              child: SizedBox(
                                                height: 180,
                                                width: 90,
                                                child: DottedAreaWidget(
                                                  isMiniWidget: true,
                                                  onTap: () => context
                                                      .read<
                                                          ExperimentSchemeBloc>()
                                                      .add(const ExperimentSchemeEvent
                                                              .addUngroupedSample(
                                                          text:
                                                              "Введите описание",
                                                          title: "Образец")),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ]),
                                  ],
                                );
                              } else {
                                return Column(
                                  children: [
                                    Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            flex: 9,
                                            child: Column(
                                              children: [
                                                state.data.isEmpty
                                                    ? SizedBox(
                                                        height: 60,
                                                        child:
                                                            DottedAreaWithSamples(
                                                          onTap: () {
                                                            state.ungroupedSamples
                                                                    .isNotEmpty
                                                                ? context
                                                                    .read<
                                                                        ExperimentSchemeBloc>()
                                                                    .add(const ExperimentSchemeEvent
                                                                        .addUngroupedSamplesToGroup())
                                                                : null;
                                                          },
                                                        ))
                                                    : const SizedBox.shrink(),
                                                Groups(data: state.data),
                                              ],
                                            ),
                                          ),
                                        ]),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 9,
                                          child: SizedBox(
                                              height: 100,
                                              child: AddGroup(
                                                onTap: () {
                                                  context
                                                      .read<
                                                          ExperimentSchemeBloc>()
                                                      .add(const ExperimentSchemeEvent
                                                          .addUngroupedSamplesToGroup());
                                                },
                                              )),
                                        ),
                                        Expanded(flex: 1, child: Container())
                                      ],
                                    )
                                  ],
                                );
                              }
                            },
                          );
                        },
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
    );
  }
}

class WidgetSizeRenderObject extends RenderProxyBox {
  final OnWidgetSizeChange onSizeChange;
  Size? currentSize;

  WidgetSizeRenderObject(this.onSizeChange);

  @override
  void performLayout() {
    super.performLayout();

    try {
      Size? newSize = child?.size;

      if (newSize != null && currentSize != newSize) {
        currentSize = newSize;
        WidgetsBinding.instance.addPostFrameCallback((_) {
          onSizeChange(newSize);
        });
      }
    } catch (e) {
      debugPrint("$e");
    }
  }
}

typedef OnWidgetSizeChange = void Function(Size size);

class WidgetSizeOffsetWrapper extends SingleChildRenderObjectWidget {
  final OnWidgetSizeChange onSizeChange;

  const WidgetSizeOffsetWrapper({
    Key? key,
    required this.onSizeChange,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return WidgetSizeRenderObject(onSizeChange);
  }
}

class Groups extends StatefulWidget {
  const Groups({Key? key, required this.data}) : super(key: key);
  final List<Group> data;

  @override
  State<Groups> createState() => _GroupsState();
}

class _GroupsState extends State<Groups> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: widget.data.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GroupElement(
            data: widget.data,
            index: index,
          );
        });
  }
}

class GroupElement extends StatefulWidget {
  const GroupElement({Key? key, required this.data, required this.index})
      : super(key: key);
  final List<Group> data;
  final int index;

  @override
  State<GroupElement> createState() => _GroupElementState();
}

class _GroupElementState extends State<GroupElement> {
  double height = 0;
  bool visible = false;
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 9,
          child: Container(
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.borderColor, width: 2)),
            child: Theme(
              data: ThemeData(dividerColor: Colors.transparent),
              child: WidgetSizeOffsetWrapper(
                onSizeChange: (Size size) {
                  setState(() {
                    height = size.height;
                  });
                },
                child: ExpansionTile(
                  onExpansionChanged: (isExpanded) {
                    if (isExpanded) {
                      visible = true;
                    } else {
                      visible = false;
                    }
                    setState(() {});
                  },
                  initiallyExpanded: false,
                  iconColor: Colors.black,
                  expandedCrossAxisAlignment: CrossAxisAlignment.start,
                  tilePadding: const EdgeInsets.only(
                      top: 10, bottom: 10, right: 18, left: 14),
                  textColor: Colors.black,
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.data[widget.index].name,
                          style: AppTextStyles.groupTitleTextStyle),
                      CustomNoBordersButton(IconsSvg.edit, () {})
                    ],
                  ),
                  children: [
                    Container(
                      constraints: const BoxConstraints(minHeight: 180),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          widget.data[widget.index].groupDescription.isNotEmpty
                              ? const TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )
                              : const SizedBox.shrink(),
                          widget.data[widget.index].samples.length <= 5
                              ? Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: widget.data[widget.index].samples
                                      .map((e) => Expanded(
                                              child: _Sample(
                                            sample: e,
                                            idGroup:
                                                widget.data[widget.index].id,
                                          )))
                                      .toList())
                              : Scrollbar(
                                  child: SingleChildScrollView(
                                    primary: true,
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: widget
                                            .data[widget.index].samples
                                            .map((e) => ConstrainedBox(
                                                  constraints:
                                                      const BoxConstraints(
                                                          maxWidth: 300,
                                                          minHeight: 180),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      _Sample(
                                                        sample: e,
                                                        idGroup: widget
                                                            .data[widget.index]
                                                            .id,
                                                      ),
                                                    ],
                                                  ),
                                                ))
                                            .toList()),
                                  ),
                                ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Expanded(
            flex: 1,
            child: MiniAddSample(
              height: height,
              visible: visible,
              groupId: widget.data[widget.index].id,
            )),
      ],
    );
  }
}

class MiniAddSample extends StatelessWidget {
  const MiniAddSample(
      {Key? key,
      required this.height,
      required this.visible,
      required this.groupId})
      : super(key: key);
  final double height;
  final bool visible;
  final int groupId;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 71),
      child: Visibility(
        visible: visible,
        child: SizedBox(
          height: height - 69,
          child: height < 160
              ? Container()
              : DottedAreaWidget(
                  isMiniWidget: true,
                  onTap: () {
                    context.read<ExperimentSchemeBloc>().add(
                        ExperimentSchemeEvent.addSampleToGroup(
                            text: "", title: "Образец", id: groupId));
                  },
                ),
        ),
      ),
    );
  }
}

class UngroupedWidget extends StatelessWidget {
  const UngroupedWidget(
      {Key? key, required this.ungroupedSamples, required this.moreElements})
      : super(key: key);

  final List<Sample> ungroupedSamples;
  final bool moreElements;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (moreElements) {
        return Scrollbar(
          child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              primary: true,
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: ungroupedSamples
                      .map((e) => Container(
                          width: 300,
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.borderColor)),
                          child: Column(
                            children: [
                              _Sample(
                                sample: e,
                              ),
                            ],
                          )))
                      .toList())),
        );
      } else {
        return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: ungroupedSamples
                .map((e) => Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.borderColor)),
                      child: _Sample(
                        sample: e,
                      ),
                    )))
                .toList());
      }
    });
  }
}

class _Sample extends StatefulWidget {
  Sample sample;
  final int? idGroup;

  _Sample({
    Key? key,
    required this.sample,
    this.idGroup,
  }) : super(key: key);

  @override
  State<_Sample> createState() => _SampleState();
}

class _SampleState extends State<_Sample> {
  late TextEditingController fieldTittle;
  late TextEditingController fieldText;

  @override
  void initState() {
    fieldTittle = TextEditingController()..text = widget.sample.title;
    fieldText = TextEditingController()..text = widget.sample.text;

    fieldText.addListener(() {
      context.read<ExperimentSchemeBloc>().add(
            ExperimentSchemeEvent.editSample(
                sample: widget.sample.copyWith(text: fieldText.text),
                idGroup: widget.idGroup!),
          );
    });
    fieldTittle.addListener(() {
      context.read<ExperimentSchemeBloc>().add(
            ExperimentSchemeEvent.editSample(
                sample: widget.sample.copyWith(title: fieldTittle.text),
                idGroup: widget.idGroup!),
          );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(color: AppColors.borderColor, width: 2),
              right: BorderSide(color: AppColors.borderColor, width: 2),
              left: BorderSide(color: AppColors.borderColor, width: 2))),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: const BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(color: AppColors.borderColor, width: 2))),
            child: Theme(
              data: ThemeData(dividerColor: Colors.transparent),
              child: ExpansionTile(
                iconColor: AppColors.expansionTileIconColor,
                tilePadding: const EdgeInsets.only(left: 10, right: 16),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 150,
                      child: TextField(
                        style: AppTextStyles.sampleTextStyle,
                        maxLength: 20,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          counterText: '',
                        ),
                        controller: fieldTittle,
                      ),
                    ),
                    Row(
                      children: [
                        CustomNoBordersButton(IconsSvg.edit, () {}),
                        CustomNoBordersButton(IconsSvg.schemeCompass, () {
                          context
                              .read<ExperimentSchemeBloc>()
                              .add(ExperimentSchemeEvent.addMeasurementToSample(
                                groupId: widget.idGroup,
                                sample: widget.sample,
                              ));
                        }),
                        CustomNoBordersButton(IconsSvg.attachedFiles, () {
                          context.read<FileCubit>().pickFiles();
                        }),
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
            ),
          ),
          BlocBuilder<ExperimentSchemeBloc, ExperimentSchemeState>(
              builder: (context, state) {
            return state.when(
                emptyState: () => const SizedBox.shrink(),
                loadedState: (data, u) {
                  if (widget.idGroup == null) {
                    Sample sample = u.firstWhere(
                        (element) => element.id == widget.sample.id);
                    List<Measurement> measurements = sample.measurements;
                    List<Widget> list = [];
                    measurements.asMap().forEach((key, value) {
                      list.add(MeasurementWidget(
                          sampleId: widget.sample.id,
                          groupId: widget.idGroup,
                          measurementIndex: key));
                    });
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: list,
                    );
                  } else {
                    Group group = data
                        .firstWhere((element) => element.id == widget.idGroup);
                    Sample sample = group.samples.firstWhere(
                        (element) => element.id == widget.sample.id);
                    List<Measurement> measurements = sample.measurements;
                    return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: measurements.length,
                        itemBuilder: (context, index) {
                          return MeasurementWidget(
                            sampleId: widget.sample.id,
                            groupId: widget.idGroup,
                            measurementIndex: index,
                          );
                        });
                  }
                },
                errorState: () => const SizedBox.shrink(),
                loading: () => const SizedBox.shrink());
          }),
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

class MeasurementWidget extends StatefulWidget {
  const MeasurementWidget(
      {Key? key,
      required this.measurementIndex,
      required this.sampleId,
      required this.groupId})
      : super(key: key);
  final int measurementIndex;
  final int sampleId;
  final int? groupId;

  @override
  State<MeasurementWidget> createState() => _MeasurementWidgetState();
}

class _MeasurementWidgetState extends State<MeasurementWidget> {
  bool tileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              bottom: BorderSide(width: 2, color: AppColors.borderColor))),
      child: Theme(
        data: ThemeData(
          dividerColor: Colors.transparent,
        ),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.only(left: 10, right: 18),
          iconColor: AppColors.expansionTileIconColor,
          textColor: Colors.black,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Измерение_${widget.measurementIndex + 1}",
                style: AppTextStyles.measurementTextStyle,
              ),
              Row(
                children: [
                  CustomNoBordersButton(
                      tileExpanded ? IconsSvg.inactiveEdit : IconsSvg.edit,
                      () {}),
                  const SizedBox(
                    width: 5,
                  ),
                  CustomNoBordersButton(
                    IconsSvg.attachedFilesWithoutRedCircle,
                    () {
                      context.read<ExperimentSchemeBloc>().add(
                            ExperimentSchemeEvent.addFilesToMeasurement(
                                measurementId: widget.measurementIndex,
                                groupId: widget.groupId,
                                sampleId: widget.sampleId),
                          );
                    },
                  ),
                ],
              ),
            ],
          ),
          children: [
            ConstrainedBox(
              constraints: const BoxConstraints(minHeight: 52),
              child: Column(
                children: const [
                  TextField(
                    maxLines: null,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                ],
              ),
            )
          ],
          onExpansionChanged: (bool expanded) {
            setState(() => tileExpanded = expanded);
          },
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
      resizeToAvoidBottomInset: false,
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
