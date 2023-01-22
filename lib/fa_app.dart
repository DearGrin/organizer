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

///ТРЕБУЕТСЯ ОБЯЗАТЕЛЬНЫЙ РЕФАКТОРИНГ
class FaApp extends StatelessWidget {
  const FaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///тут идет череда инициализаций Provider и Bloc
    /// 1) нужно разбить на отдельные файлы и виджеты
    /// 2) можно использовать MultiProvider и MultiBlocProvider
    /// для упрощения и больше логичности процессов инициализации компонентов
    /// тогда вполне можно было использовать context.read() для инъеккции зависимостей
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
                            ///для читаемости вынести отдельно
                            onTap: () => context
                                .read<ExperimentSchemeBloc>()
                                .add(const ExperimentSchemeEvent
                                        .addUngroupedSample(
                              ///пустые не лучше бы?
                              ///а если в TextField использовать hint/label...
                              ///+ зачем эти параметры вообще перендавать при создании нового объекта
                              ///со значениями по умолчанию?
                                    text: "Введите описание",
                                    title: "Образец")),
                          ),
                        ),
                        loadedState: (state) {
                          return Builder(
                            builder: (BuildContext context) {
                              ///однозначно разбивать на части
                              ///пока дочитал до else уже успел забыть, что какое-то условие было
                              ///если я правильно понял: это условие определяет есть ли группы
                              ///можно в Column в children добавить в нужном месте это условие
                              /// if (state.data.isNotEmpty) ...[Widget<SomeGroups>]
                              /// "..." - это spread operator
                              if (state.data.isEmpty) {
                                return Column(
                                  children: [
                                    ///этот виджет общий в обоих условиях - вынести отдельно
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 9,
                                          child: SizedBox(
                                              height: 60,
                                              child: DottedAreaWithSamples(
                                                /// вынести отддельно для читаемости
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
                                        /// а нужен ли тут этот разделитель на 10% от высоты?
                                        /// SizedBox с фикс высотой не подойдет?
                                        Expanded(
                                          ///опускаем значения по умолчанию
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
                                                          ///смущает меня minWidth 2000 - при маленьком окне/экране ошибок не вызывает?
                                                          ///тем более что тут нагромождение column и row
                                                          ///можно использовать CrossAxisAlignment.stretch и следаить за виджетами внутри
                                                          ///(но вроде бы везде используются Flex/ListView)
                                                          minWidth: 2000),
                                                  decoration: BoxDecoration(
                                                      border: Border.all(
                                                          color: AppColors
                                                              .borderColor,
                                                          width: 2)),
                                                  ///в [UngroupedWidget] описал подробнее - это лишнее
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
                                            ///опускаем значения по умолчанию
                                            flex: 1,
                                            /// а смысл в Padding, если отступ 0?
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.only(top: 0),
                                              child: SizedBox(
                                                height: 180,
                                                width: 90,
                                                child: DottedAreaWidget(
                                                  isMiniWidget: true,
                                                  ///для читаемости вынести отдельно
                                                  onTap: () => context
                                                      .read<
                                                          ExperimentSchemeBloc>()
                                                      .add(const ExperimentSchemeEvent
                                                              .addUngroupedSample(
                                                    ///пустые не лучше бы?
                                                    ///а если в TextField использовать hint/label...
                                                    ///+ зачем эти параметры вообще перендавать при создании нового объекта
                                                    ///со значениями по умолчанию?
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
                                            ///в row 1 элемент - смысл в flex:9?
                                            flex: 9,
                                            child: Column(
                                              children: [
                                                state.data.isEmpty
                                                    ? SizedBox(
                                                        height: 60,
                                                        child:
                                                            DottedAreaWithSamples(
                                                              ///для читаемости вынести отдельно
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
                                              ///для читаемости вынести отдельно
                                              onTap: () {
                                                context
                                                    .read<
                                                        ExperimentSchemeBloc>()
                                                    .add(const ExperimentSchemeEvent
                                                        .addUngroupedSamplesToGroup());
                                              },
                                            ),
                                          ),
                                        ),
                                        ///опускаем значения по умлочанию
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
///вынести в отдеьлный файл - легче читать и ориентироваться
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
///вынести в отдеьлный файл - легче читать и ориентироваться
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
///вынести в отдеьлный файл - легче читать и ориентироваться
///нет стейта - нет смысла в StatefulWidget
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
            ///передвать не список + индекс, а сам элемент из списка
            data: widget.data,
            index: index,
          );
        });
  }
}
///вынести в отдеьлный файл - легче читать и ориентироваться
///ТРЕБУЕТСЯ РЕФАКТОРИНГ ЭТОГО ВИДЖЕТА - разбить на части, убрать лишнее
class GroupElement extends StatefulWidget {
  const GroupElement({Key? key, required this.data, required this.index})
      : super(key: key);
  ///не понял зачем передавать весь список, когда требуется только элемент
  final List<Group> data;
  ///лишний парметр - удалить
  final int index;
  ///таким образом вместо длинной конструкции widget.data[widget.index].name
  ///можно использовать [widget.Group.name]

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
            ///зачем отдельно использовать тут Theme, если всего-то нужно цвет [dividerColor] поменять?
            ///не увидел тут divider  - нужно ли это вообще?
            child: Theme(
              data: ThemeData(dividerColor: Colors.transparent),
              ///надо копать, но есть подозрение, что этот виджет с его операциями лишний ...
              child: WidgetSizeOffsetWrapper(
                onSizeChange: (Size size) {
                  setState(() {
                    height = size.height;
                  });
                },
                child: ExpansionTile(
                  /// для читаемости вынести отдельно
                  onExpansionChanged: (isExpanded) {
                    if (isExpanded) {
                      visible = true;
                    } else {
                      visible = false;
                    }
                    setState(() {});
                  },
                  ///значения по умлочанию опускаем
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
                      /// есть разница между null и пустой функцией в поведении кнопок -
                      /// надо учитывать, какое поведение предпочтительнее
                      CustomNoBordersButton(IconsSvg.edit, () {})
                    ],
                  ),
                  children: [
                    Container(
                      constraints: const BoxConstraints(minHeight: 180),
                      child: Column(
                        ///значения по умлочанию опускаем
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          widget.data[widget.index].groupDescription.isNotEmpty
                              ? const TextField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                )
                              : const SizedBox.shrink(),
                          ///зачем это место?
                          ///высчитать размер элемента по-другому и передать в список
                          /// в списке используется [BoxConstraints] - те ширина всегда будет 300
                           /// возможно, растягивать и вовсе необязательно
                          /// + вот кейс: ширина области 1200, а элементов 5
                          /// те ширина элемента будет 240, что меньше случая со списком
                          /// смысл тогда расстягивать?
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
                            /// вот тут должен использовать объявленный контроллер
                                  child: SingleChildScrollView(
                                    /// вот тут должен использовать объявленный контроллер
                                    /// точно нужен это параметр primary=true ?
                                    primary: true,
                                    scrollDirection: Axis.horizontal,
                                    ///куда проще было бы использовать ListView
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
                                                  ///в [Column] всего 1 элемент - нужен ли тогда это виджет?
                                                  child: Column(
                                                    ///значения по умлочанию опускаем
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
          ///значения по умлочанию опускаем
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
///вынести в отдеьлный файл - легче читать и ориентироваться
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
          /// потенциально может привести к ошибке, е
          height: height - 69,
          /// в идеале нужно избавиться от привезяки к [height]
          /// тем более, что в случае со списком (когда элементов >5)
          /// используется [BoxConstraints] c minHeight: 180 - те условие всегда true
          child: height < 160
              ? Container()
              : DottedAreaWidget(
                  isMiniWidget: true,
                  onTap: () {
                    context.read<ExperimentSchemeBloc>().add(
                        ExperimentSchemeEvent.addSampleToGroup(
                          /// [text] и [title] хардкодом - их нельзя редактировать?
                            text: "", title: "Образец", id: groupId));
                  },
                ),
        ),
      ),
    );
  }
}
///вынести в отдеьлный файл - легче читать и ориентироваться
/// а вот тут лечше StatefulWidget тк нужно объявить ScrollController и его dispose
class UngroupedWidget extends StatelessWidget {
  const UngroupedWidget(
      {Key? key, required this.ungroupedSamples, required this.moreElements})
      : super(key: key);

  final List<Sample> ungroupedSamples;
  final bool moreElements;

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      ///зачем это условие?
      ///повторяется сценарий верстки [GroupElement] - нужно унифицировать
      ///по сути
      if (moreElements) {
        return Scrollbar(
          ///добавить контроллер
          child: SingleChildScrollView(
            ///добавить контроллер
              scrollDirection: Axis.horizontal,
              ///нужен ли этот параметр?
              primary: true,
              /// ListView лучше
              child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: ungroupedSamples
                      .map((e) => Container(
                          width: 300,
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.borderColor)),
                          ///зачем тут column?
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
        ///считаю, что эта часть лишняя
        return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: ungroupedSamples
                .map((e) => Expanded(
              ///опускаем параметры по умлочанию
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

///вынести в отдеьлный файл - легче читать и ориентироваться
///разбить на части
class _Sample extends StatefulWidget {
  ///почему не final?
  ///не увидел, чтобы эта переменная менялась
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
  ///не забыть про dispose контроллеров

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(color: AppColors.borderColor, width: 2),
              right: BorderSide(color: AppColors.borderColor, width: 2),
              left: BorderSide(color: AppColors.borderColor, width: 2))),
      child: Column(
        ///опускаем значения по умолчанию
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            decoration: const BoxDecoration(
                border: Border(
                    bottom:
                        BorderSide(color: AppColors.borderColor, width: 2))),
            ///зачем тут Theme?
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
                          ///а смысл в пустом counterText?
                          counterText: '',
                        ),
                        controller: fieldTittle,
                      ),
                    ),
                    Row(
                      children: [
                        /// есть разница между null и пустой функцией в поведении кнопок -
                        /// надо учитывать, какое поведение предпочтительнее
                        CustomNoBordersButton(IconsSvg.edit, () {}),
                        ///для читаемости вынести метод отдельно
                        CustomNoBordersButton(IconsSvg.schemeCompass, () {
                          context
                              .read<ExperimentSchemeBloc>()
                              .add(ExperimentSchemeEvent.addMeasurementToSample(
                                groupId: widget.idGroup,
                                sample: widget.sample,
                              ));
                        }),
                        ///для читаемости вынести метод отдельно
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
                  ///не понял: в чем разница с точки зрения верстки с этим условием?
                  ///список [Sample] по-разному формируется - нужно:
                  ///унифицированный виджет, в который передается этот список парметром
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
                    ///непонятно почему в одном случае Column а в другом ListView
                    ///нужно вынести виджет списка отдельно и тогда
                    ///можно будет использовать читаемую и унифицированную конструкцию
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: list,
                    );
                  } else {
                    ///не помню, где присваивается [groupId]
                    ///возможно там аналогичная ситуация с уникальностью и удалением/добавлением
                    ///как и с [sampleId]
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
                ///обычно что-то бы пользователю показать во время загрузки
                loading: () => const SizedBox.shrink());
          }),
        ],
      ),
    );
  }
}
///вынести в отдеьлный файл - легче читать и ориентироваться
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
///не забыть про dispose контроллеров
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
              ///для читаемости вынести отдельно
              context.read<ExperimentSchemeBloc>().add(
                    ExperimentSchemeEvent.addNewSample(
                      text: fieldText.text,
                      title: fieldTittle.text,
                    ),
                  );
              fieldText.clear();
              fieldTittle.clear();
            },
            ///не забываем про const
            child: Text("Создать образец"),
          )
        ],
      ),
    );
  }
}
///вынести в отдеьлный файл - легче читать и ориентироваться
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
      ///зачем тут Theme?
      ///вообще [dividerColor] можно задать в теме ...
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
                      /// есть разница между null и пустой функцией в поведении кнопок -
                      /// надо учитывать, какое поведение предпочтительнее
                      () {}),
                  const SizedBox(
                    width: 5,
                  ),
                  CustomNoBordersButton(
                    IconsSvg.attachedFilesWithoutRedCircle,
                    () {
                      ///для читаемости вынести отдельно
                      context.read<ExperimentSchemeBloc>().add(
                            ExperimentSchemeEvent.addFilesToMeasurement(
                                measurementId: widget.measurementIndex,
                                ///а вот это странно:
                                ///если widget.groupId == null, то значит нет группы, а не группа с id 0?
                                groupId: widget.groupId ?? 0,
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
                children: [
                  const TextField(
                    ///нет ни контрорллера ни методов onChanged/onSubmitted
                    ///куда значение-то передавать?
                    maxLines: 3,
                    decoration: InputDecoration(border: InputBorder.none),
                  ),
                  BlocBuilder<ExperimentSchemeBloc, ExperimentSchemeState>(
                    builder: (context, state) {
                      return Row(
                        children: state.map(
                            emptyState: ((state) => []),
                            loadedState: ((state) => state
                            ///у виджета есть параметр [groupId], те потенциально эти измерения
                            ///могут быть сгруппированы
                            ///но список формируется только из [ungroupedSamples]
                            ///это не ошибка?
                                .ungroupedSamples[widget.sampleId]
                                .measurements[widget.measurementIndex]
                                .addedFiles
                                .map(
                                  (e) => File(
                                    fileName: e,
                                  ),
                                )
                                .toList()),
                            ///обычно что-то бы пользователю показать при ошибке
                            errorState: ((state) => []),
                            ///обычно что-то бы пользователю показать во время загрузки
                            loading: ((state) => [])),
                      );
                    },
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
///вынести в отдеьлный файл - легче читать и ориентироваться
class File extends StatelessWidget {
  final String fileName;
  const File({super.key, required this.fileName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          ///почему бы просто не использовать [Icon]?
          ///зачем тут кнопка?
          IconButton(
            /// есть разница между null и пустой функцией в поведении кнопок -
            /// надо учитывать, какое поведение предпочтительнее
            onPressed: () {},
            icon: SvgPicture.asset(IconsSvg.file),
          ),
          Text(fileName),
        ],
      ),
    );
  }
}
///вынести в отдеьлный файл - легче читать и ориентироваться
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
      ///цвета в стили
      backgroundColor: const Color(0xffEAEAEA),
      appBar: ProjectAppBar(
        icon: SvgPicture.asset(IconsSvg.notification),
        /// есть разница между null и пустой функцией в поведении кнопок -
        /// надо учитывать, какое поведение предпочтительнее
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
///вынести в отдеьлный файл - легче читать и ориентироваться
///использовать enum для составления списка унифицированного виджета
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
          /// не забываем использовать const
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
