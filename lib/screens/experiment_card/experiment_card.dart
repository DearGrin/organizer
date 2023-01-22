import 'package:first_approval_app/bloc/experiment_card_bloc/experiment_card_bloc.dart';
import 'package:first_approval_app/bloc/read_bloc/read_bloc_bloc.dart';
import 'package:first_approval_app/bloc/save_card_bloc/save_card_bloc.dart';
import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/custom_widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

class ExperimentCard extends StatelessWidget {
  const ExperimentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
              ///значения по умлочанию принято опускать
              flex: 1,
              child: FilesCard(),
            ),
          ],
        ),
      ],
    );
  }
}
///вынести в отдеьлный файл - легче читать и ориентироваться
class ExperimentNameWidget extends StatelessWidget {
  const ExperimentNameWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CustomText(
                  'Название эксперимента',
                  20,
                  weight: FontWeight.w700,
                ),
              ],
            ),
          ),
          const Flexible(
            ///значения по умлочанию принято опускать
            flex: 1,
            child: ExperimentPageButtons(),
          ),
        ],
      ),
    );
  }
}
///вынести в отдеьлный файл - легче читать и ориентироваться
class ExperimentInfoCard extends StatelessWidget {
  const ExperimentInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 410,
      padding: const EdgeInsets.all(30.0),
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(
                'Информация об эксперименте',
                20,
                weight: FontWeight.w700,
              ),
              ///зачем тут [BlocBuilder] ?
              ///вызвать функцию через  context.read можно и без него
              ///а виджет никак не меняется от стейта блока
              BlocBuilder<ReadBlocBloc, ReadBlocState>(
                builder: (context, state) {
                  return CustomNoBordersButton(
                    IconsSvg.moreHorizontal,
                    /// для читаемости лучше вынести функцию отдельно
                    () {
                      context.read<ReadBlocBloc>().add(
                            const ReadBlocEvent.started(),
                          );
                    },
                  );
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const TextFieldsArea(),
        ],
      ),
    );
  }
}
///вынести в отдеьлный файл - легче читать и ориентироваться
class TextCard extends StatefulWidget {
  final String name;
  final int lines;
  const TextCard(this.name, {Key? key, this.lines = 1}) : super(key: key);

  @override
  State<TextCard> createState() => _TextCardState();
}

class _TextCardState extends State<TextCard> {
  var myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    myController = TextEditingController(text: '');
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      /// для читаемости лучше вынести функцию отдельно
      onSubmitted: (value) {
        context.read<ExperimentCardBloc>().add(
              ExperimentCardEvent.fieldFilled(
                widget.name,
                getText(),
              ),
            );
      },
      /// для читаемости лучше вынести функцию отдельно
      onChanged: (value) {
        context.read<ExperimentCardBloc>().add(
              ExperimentCardEvent.fieldFilled(
                widget.name,
                getText(),
              ),
            );
      },
      ///нет смысла в пустом параметре, можно просто убрать
      onEditingComplete: () {},
      maxLines: widget.lines,
      decoration: InputDecoration(
        filled: true,
        ///цвета в стили
        hoverColor: const Color(0x00eaeaea),
        border: const OutlineInputBorder(),
        labelText: widget.name,
      ),
    );
  }

  ///смысл в этом геттере, можно использовать без него
  String getText() => myController.text;
}
///вынести в отдеьлный файл - легче читать и ориентироваться
class TextFieldsArea extends StatelessWidget {
  const TextFieldsArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      ///значения по умлочанию принято опускать
      flex: 1,
      child: Column(
        children: [
          Row(
            children: const [
              Expanded(
                flex: 3,
                child: TextCard(
                  'Цель',
                ),
              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                flex: 1,
                child: TextCard(
                  'Дата проведения',
                ),
              )
            ],
          ),
          const SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                flex: 3,
                child: Column(
                  children: const [
                    TextCard(
                      'Описание',
                      lines: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                ///значения по умлочанию принято опускать
                flex: 1,
                child: Column(
                  children: const [
                    ///в [ExperimentCardBloc] есть комментарий про enum
                    ///вот и использовать FieldNameType.values.map
                    ///для списка виджетов по возможности (вижу, что немного неудобно в данном случае)
                    ///как минимум можно вместо хардкода названия использовать FieldNameType.method.value
                    TextCard(
                      'Метод',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextCard(
                      'Объект',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextCard(
                      'Прибор',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextCard(
                      'Софт',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
///вынести в отдеьлный файл - легче читать и ориентироваться
class ExperimentPageButtons extends StatelessWidget {
  const ExperimentPageButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        /// есть разница между null и пустой функцией в поведении кнопок -
        /// надо учитывать, какое поведение предпочтительнее
        CustomButtonsWithBorders(IconsSvg.back, () {}),
        const SizedBox(width: 20),
        ///зачем тут [BlocBuilder] ?
        ///вызвать функцию через  context.read можно и без него
        ///а виджет никак не меняется от стейта блока
        BlocBuilder<SaveCardBloc, SaveCardState>(
          builder: (context, state) => state.map(
            initial: (state) => CustomButtonsWithBorders(
              IconsSvg.saved,
              /// для читаемости лучше вынести функцию отдельно
              () {
                context.read<SaveCardBloc>().add(
                      const SaveCardEvent.save(),
                    );
              },
              withText: true,
            ),
          ),
        ),
        const SizedBox(width: 10),
        /// есть разница между null и пустой функцией в поведении кнопок -
        /// надо учитывать, какое поведение предпочтительнее
        CustomButtonsWithBorders(IconsSvg.archive, () {}),
        const SizedBox(width: 10),
        /// есть разница между null и пустой функцией в поведении кнопок -
        /// надо учитывать, какое поведение предпочтительнее
        CustomButtonsWithBorders(IconsSvg.export, () {}),
        const SizedBox(width: 10),
        /// есть разница между null и пустой функцией в поведении кнопок -
        /// надо учитывать, какое поведение предпочтительнее
        CustomButtonsWithBorders(IconsSvg.publication, () {}),
      ],
    );
  }
}
///вынести в отдеьлный файл - легче читать и ориентироваться
class FilesCard extends StatelessWidget {
  const FilesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        top: 25,
        bottom: 30,
      ),
      height: 410,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                  'Файлы',
                  20,
                  weight: FontWeight.w700,
                ),
                CustomNoBordersButton(
                  IconsSvg.moreHorizontal,
                  /// для читаемости лучше вынести функцию отдельно
                  () {
                    context.read<FileCubit>().pickFiles();
                  },
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: BlocBuilder<FileCubit, FileState>(
              builder: (context, state) {
                if (state.files.isNotEmpty) {
                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.files.length,
                      itemBuilder: (context, index) {
                        return MyFiles(state.files[index]);
                      });
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
///вынести в отдеьлный файл - легче читать и ориентироваться
class MyFiles extends StatefulWidget {
  const MyFiles(this.fileName, {super.key});

  final String fileName;

  @override
  State<MyFiles> createState() => _MyFilesState();
}

class _MyFilesState extends State<MyFiles> {
  bool mouseInArea = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47,
      child: MouseRegion(
        onEnter: (PointerEvent event) {
          mouseInArea = true;
          setState(() {});
        },
        onExit: (PointerEvent event) {
          mouseInArea = false;
          setState(() {});
        },
        child: Container(
          color: mouseInArea ? const Color(0xffF5F5F5) : Colors.white,
          child: ListTile(
            contentPadding: const EdgeInsets.only(left: 40, right: 40),
            dense: true,
            minLeadingWidth: 16,
            trailing: mouseInArea
                ? CustomNoBordersButton(IconsSvg.trashIcon, () {
              /// для читаемости лучше вынести функцию отдельно
                    context.read<FileCubit>().deleteFileName(widget.fileName);
                  })
                : null,
            leading: SvgPicture.asset(IconsSvg.file),
            title: CustomText(
              widget.fileName,
              12,
              textAlign: TextAlign.start,
              textOverflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
