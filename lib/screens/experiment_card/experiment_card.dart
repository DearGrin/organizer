import 'package:first_approval_app/bloc/experiment_card_bloc/experiment_card_bloc.dart';
import 'package:first_approval_app/bloc/save_card_bloc/save_card_bloc.dart';
import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/custom_widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';

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
            flex: 1,
            child: ExperimentPageButtons(),
          ),
        ],
      ),
    );
  }
}

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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomNoBordersButton(
                    IconsSvg.import,
                    () {},
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  CustomNoBordersButton(
                    IconsSvg.export,
                    () {},
                  ),
                ],
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
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      onSubmitted: (value) {
        context.read<ExperimentCardBloc>().add(
              ExperimentCardEvent.fieldFilled(
                widget.name,
                getText(),
              ),
            );
      },
      onChanged: (value) {
        context.read<ExperimentCardBloc>().add(
              ExperimentCardEvent.fieldFilled(
                widget.name,
                getText(),
              ),
            );
      },
      onEditingComplete: () {},
      maxLines: widget.lines,
      decoration: InputDecoration(
        filled: true,
        hoverColor: const Color(0x00eaeaea),
        border: const OutlineInputBorder(),
        labelText: widget.name,
      ),
    );
  }

  String getText() => myController.text;
}

class TextFieldsArea extends StatelessWidget {
  const TextFieldsArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
                flex: 1,
                child: Column(
                  children: const [
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

class ExperimentPageButtons extends StatelessWidget {
  const ExperimentPageButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomButtonsWithBorders(IconsSvg.back, () {}),
        const SizedBox(width: 20),
        BlocBuilder<SaveCardBloc, SaveCardState>(
          builder: (context, state) => state.map(
            initial: (state) => CustomButtonsWithBorders(
              IconsSvg.saved,
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
        CustomButtonsWithBorders(IconsSvg.archive, () {}),
        const SizedBox(width: 10),
        CustomButtonsWithBorders(IconsSvg.export, () {}),
        const SizedBox(width: 10),
        CustomButtonsWithBorders(IconsSvg.publication, () {}),
      ],
    );
  }
}

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
            trailing: CustomNoBordersButton(IconsSvg.trashIcon, () {
              context.read<FileCubit>().deleteFileName(widget.fileName);
            }),
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
