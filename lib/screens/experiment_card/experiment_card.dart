import 'package:first_approval_app/bloc/experiment_card_bloc/experiment_card_bloc.dart';
import 'package:first_approval_app/bloc/read_bloc/read_bloc_bloc.dart';
import 'package:first_approval_app/bloc/save_card_bloc/save_card_bloc.dart';
import 'package:first_approval_app/custom_widgets/custom_no_border_button.dart';
import 'package:first_approval_app/custom_widgets/custom_text_widget.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_name_widget.dart';
import 'package:first_approval_app/screens/experiment_card/file_area.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
              child: FilesCard(),
            ),
          ],
        ),
      ],
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
              CustomNoBordersButton(
                IconsSvg.moreHorizontal,

                /// для читаемости лучше вынести функцию отдельно
                onPressed: () => context.read<ReadBlocBloc>().add(
                      const ReadBlocEvent.started(),
                    ),
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
                myController.text,
              ),
            );
      },

      /// для читаемости лучше вынести функцию отдельно
      onChanged: (value) {
        context.read<ExperimentCardBloc>().add(
              ExperimentCardEvent.fieldFilled(
                widget.name,
                myController.text,
              ),
            );
      },
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
}

///вынести в отдеьлный файл - легче читать и ориентироваться
class TextFieldsArea extends StatelessWidget {
  const TextFieldsArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
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
