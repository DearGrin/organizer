import 'package:dotted_border/dotted_border.dart';
import 'package:first_approval_app/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'cubit/FileCubit/file_cubit.dart';
import 'cubit/cubit/experiment_card_cubit.dart';
import 'http_and_backend/http_class.dart';
import 'custom_widgets/utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyWidgetsPage extends StatelessWidget {
  const MyWidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEAEAEA),
      body: Center(
        child: ListView(
          children: [
            BlocProvider<FileCubit>(
              create: (context) => FileCubit(),
              child: const DashboardNavigationCards(),
            ),
            SizedBox(
              height: 10,
            ),
            RecentExperimentCard(),
            SizedBox(
              height: 10,
            ),
            AddCard(text: 'AddExperimentCard'),
            SizedBox(
              height: 10,
            ),
            ExperimentInfoCard(),
            SizedBox(
              height: 10,
            ),
            FilesCard(),
            SizedBox(
              height: 10,
            ),
            ExperimentScheme(),
            SizedBox(
              height: 10,
            ),
            ExperimentNameWidget(),
            SizedBox(
              height: 10,
            ),
            Sample(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}

class DashboardNavigationCards extends StatelessWidget {
  const DashboardNavigationCards({super.key});
  // нужно придумать где хранить файлы и че делать с ними потом делать
  // типа как передаввать сохраненные фалйы в случае чего(например как с картинками условно
  // иметь структуру с context  в которую можно достучаться)

  // Post запрос отправки данных в базу данных
  void _get() async {
    CustomHttpRequest httpRequest = CustomHttpRequest();
    var pupa;

    pupa = await httpRequest.getUserById();
    print('$pupa');
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        NavigationPropertiesCard('Настройки', IconsSvg.setting, () {}),
        NavigationPropertiesCard(
          'Экспорт данных',
          IconsSvg.dataExport,
          _get,
        ),
        NavigationPropertiesCard(
          'Загрузка данных',
          IconsSvg.dataImport,
          BlocProvider.of<FileCubit>(context).pickFiles,
        ),
        NavigationPropertiesCard(
            'Валидация файлов', IconsSvg.validation, () {}),
        NavigationPropertiesCard('Публикация', IconsSvg.menuPublication, () {}),
      ],
    );
  }
}

class NavigationPropertiesCard extends StatelessWidget {
  const NavigationPropertiesCard(this.name, this.icon, this.onTap, {super.key});
  final String name;
  final String icon;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          splashColor: Colors.red,
          onTap: onTap,
          child: Container(
            height: 140,
            width: 240,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(icon),
                HeaderText(name),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class RecentExperimentCard extends StatelessWidget {
  const RecentExperimentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(18.0),
          color: Colors.white,
          width: 240,
          height: 240,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText('01.08.2022', 10, FontWeight.w400),
                  IconButton(
                    onPressed: () {},
                    splashRadius: 10,
                    icon: SvgPicture.asset(IconsSvg.cardClose),
                  )
                ],
              ),
              const CustomText('Название эксперимента', 14, FontWeight.w700),
              const SizedBox(
                height: 15,
              ),
              const CustomText('Цель эксперимента', 12, FontWeight.w400),
              const SizedBox(
                height: 80,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: const EdgeInsets.all(0.0),
                        onPressed: () {},
                        icon: SvgPicture.asset(IconsSvg.cardValidation),
                      ),
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: const EdgeInsets.all(0.0),
                        onPressed: () {},
                        icon: SvgPicture.asset(IconsSvg.cardAttachedFiles),
                      ),
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: const EdgeInsets.all(0.0),
                        onPressed: () {},
                        icon: SvgPicture.asset(IconsSvg.cardArchive),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 44,
                  ),
                  const PublicButton(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PublicButton extends StatelessWidget {
  const PublicButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Stack(
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(color: Colors.black),
            ),
          ),
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: () {},
            child: const CustomText(
              'Публиковать',
              10,
              FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class CustomText extends StatelessWidget {
  final String text;
  final double? fontsize;
  final FontWeight weight;
  final Color? color;
  const CustomText(this.text, this.fontsize, this.weight,
      {Key? key, this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontSize: fontsize,
        fontFamily: "Inter",
        fontWeight: weight,
      ),
    );
  }
}

class AddCard extends StatelessWidget {
  const AddCard({required this.text, super.key, this.bydefault = true});
  final String text;
  final bool bydefault;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DottedBorder(
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
            padding: const EdgeInsets.all(18.0),
            width: 240,
            height: 240,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (bydefault == true)
                      ? () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return const ChooseOptionPopUp();
                            },
                          );
                        }
                      : () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const MyApp()),
                          );
                        },
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset(IconsSvg.ellipse),
                      SvgPicture.asset(IconsSvg.bigPlus),
                    ],
                  ),
                ),
                CustomText(
                  text,
                  16,
                  FontWeight.w700,
                  color: const Color.fromRGBO(153, 153, 153, 0.6),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ChooseOptionPopUp extends StatelessWidget {
  const ChooseOptionPopUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 500,
        width: 760,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 77,
                left: 90,
                bottom: 65,
              ),
              child: CustomText(
                'Выберите способ:',
                20,
                FontWeight.w700,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Card(
                  child: AddCard(
                    text: 'Новая карточка \n  эксперимента',
                    bydefault: false,
                  ),
                ),
                Card(
                  child: AddCard(
                    text: 'Заполнить карточку \n         по образцу',
                    bydefault: false,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ExperimentInfoCard extends StatelessWidget {
  const ExperimentInfoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 1065,
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
              BlocProvider<ExperimentCardCubit>(
                create: (context) => ExperimentCardCubit(),
                child: TextFieldsArea(),
              ),
            ],
          ),
        ),
      ],
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
      // onEditingComplete: () {
      //   BlocProvider.of<ExperimentCardCubit>(context)
      //       .experimentGoalNote(myController.text);
      // },
      onChanged: (value) {
        BlocProvider.of<ExperimentCardCubit>(context)
            .experimentGoalNote(value);
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
                child: TextCard('Цель'),
              ),
              SizedBox(
                width: 30,
              ),
              Expanded(
                flex: 1,
                child: TextCard('Дата проведения'),
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
                    TextCard('Метод'),
                    SizedBox(
                      height: 10,
                    ),
                    TextCard('Объект'),
                    SizedBox(
                      height: 10,
                    ),
                    TextCard('Прибор'),
                    SizedBox(
                      height: 10,
                    ),
                    TextCard('Софт'),
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

class FilesCard extends StatelessWidget {
  const FilesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 25,
            left: 40,
            right: 40,
          ),
          height: 410,
          width: 308,
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
        ),
      ],
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

class ExperimentScheme extends StatelessWidget {
  const ExperimentScheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.only(
            top: 25,
            left: 40,
            right: 40,
            bottom: 30,
          ),
          height: 360,
          width: 1395,
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(
                    'Схема эксперимента',
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
                height: 30,
              ),
              Expanded(
                child: DottedBorder(
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
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SvgPicture.asset(IconsSvg.ellipse),
                            SvgPicture.asset(IconsSvg.bigPlus),
                          ],
                        ),
                        const CustomText(
                          'Добавить карточку \n     эксперимента',
                          16,
                          FontWeight.w700,
                          color: Color.fromRGBO(153, 153, 153, 0.6),
                        ),
                      ],
                    ),
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

class ExperimentNameWidget extends StatelessWidget {
  const ExperimentNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          CustomText(
            'Название эксперимента',
            20,
            FontWeight.w700,
          ),
          ExperimentPageButtons(),
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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButtonsWithBorders(IconsSvg.back, () {}),
        const SizedBox(width: 20),
        BlocBuilder<ExperimentCardCubit, ExperimentCardState>(
          builder: (context, state) {
            return CustomButtonsWithBorders(
                  IconsSvg.saved,
                  () {
                    showDialog(
                      context: context,
                      builder: (context) {return Text(state.experimentGoal);}
                    );
                  },
                  withText: true,
                );
          },
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


class Sample extends StatelessWidget {
  const Sample({super.key});

  List<Widget> createFileList() {
    List<Widget> files = <Widget>[];

    for (int i = 1; i <= 10; i++) {
      files.add(MyFiles('Файл_${i.toString()}', 5));
      files.add(const SizedBox(
        width: 10,
      ));
    }
    return files;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 14,
        left: 20,
        right: 20,
        bottom: 50,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color.fromRGBO(153, 153, 153, 0.35),
          width: 4,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(
                'Образец_1',
                14,
                FontWeight.w700,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomNoBordersButton(IconsSvg.edit, () {}),
                  const SizedBox(
                    width: 8,
                  ),
                  CustomNoBordersButton(IconsSvg.measurements, () {}),
                  const SizedBox(
                    width: 8,
                  ),
                  CustomNoBordersButton(IconsSvg.attachedFiles, () {}),
                  const SizedBox(
                    width: 8,
                  ),
                  CustomNoBordersButton(IconsSvg.schemeArrowUp, () {}),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: const [
              CustomText(
                'Равным образом постоянный количественный рост и сфера нашей активности способствует подготовки и реализации направлений прогрессивного развития.',
                12,
                FontWeight.w400,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            children: createFileList(),
          ),
        ],
      ),
    );
  }
}
