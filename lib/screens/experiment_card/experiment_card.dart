import 'package:first_approval_app/bloc/experiment_card_bloc/experiment_card_bloc.dart';
import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/custom_widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubit/cubit/experiment_card_cubit.dart';

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
              children: [
                const CustomText(
                  'Название эксперимента',
                  20,
                  FontWeight.w700,
                ),
              ],
            ),
          ),
          Flexible(
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
                FontWeight.w700,
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
        BlocBuilder<ExperimentCardBloc, ExperimentCardState>(
          builder: (context, state) => state.map(
            saved: (state) => CustomButtonsWithBorders(
              IconsSvg.saved,
              () {
                context.read<ExperimentCardBloc>().add(
                      ExperimentCardEvent.saveCard(state.card),
                    );
                print(state.card);
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
      padding: const EdgeInsets.only(
        top: 25,
        left: 40,
        right: 40,
      ),
      height: 410,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText('Файлы', 20, FontWeight.w700),
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
          SizedBox(
            height: 30,
          ),
          const MyFiles('Файл_1', 10),
          const MyFiles('Файл_2', 10),
        ],
      ),
    );
  }
}

class MyFiles extends StatelessWidget {
  const MyFiles(this.fileName, this.spaceBetween, {super.key});
  final String fileName;
  final double spaceBetween;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomNoBordersButton(IconsSvg.file, () {}),
        SizedBox(
          width: spaceBetween,
        ),
        CustomText(fileName, 12, FontWeight.w400),
      ],
    );
  }
}
