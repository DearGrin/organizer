import 'package:dotted_border/dotted_border.dart';
import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:first_approval_app/screens_measures/measures.dart';
import 'package:first_approval_app/widgets_present_on_multiple_screens/project_appbar.dart';
import 'package:first_approval_app/custom_widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../http_and_backend/http_class.dart';
import '../../icons/icons_paths.dart';
import '../../main.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProjectAppBar(
        icon: SvgPicture.asset(IconsSvg.notification),
        onTap: () {},
      ),
      body: BlocProvider<FileCubit>(
        create: (context) => FileCubit(),
        child: Container(
          color: const Color(0xffEAEAEA),
          padding: EdgeInsets.only(
            left: context.navigationPagePadding,
            right: context.navigationPagePadding,
            top: context.nevigationPageHeight,
            bottom: context.nevigationPageHeight,
          ),
          child: Column(
            children: [
              const Navigation(),
              const DashboardNavigationCards(),
              const ExperimentName(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AddCard(
                    text: 'Добавить карточку\n     эскперимента',
                  ),
                  RecentExperimentCard(),
                  RecentExperimentCard(),
                  RecentExperimentCard(),
                  RecentExperimentCard(),
                ],
              ),
            ],
          ),
        ),
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
                  weight: FontWeight.w700,
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

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: context.nevigationPageHeight),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          HeaderText('Навигация'),
          DrakThemeSwitcher(),
        ],
      ),
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
                weight: FontWeight.w700,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Card(
                  child: AddCard(
                    text: 'Новая карточка\nэксперимента',
                    bydefault: false,
                  ),
                ),
                Card(
                  child: AddCard(
                    text: 'Заполнить карточку \nпо образцу',
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

class DashboardNavigationCards extends StatelessWidget {
  const DashboardNavigationCards({super.key});

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
    return Container(
      padding: const EdgeInsets.all(18),
      color: Colors.white,
      width: 240,
      height: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText('01.08.2022', 10, weight: FontWeight.w400,),
              IconButton(
                onPressed: () {},
                splashRadius: 10,
                icon: SvgPicture.asset(IconsSvg.cardClose),
              )
            ],
          ),
          const CustomText('Название эксперимента', 14, weight: FontWeight.w700,),
          const SizedBox(
            height: 15,
          ),
          const CustomText('Цель эксперимента', 12, weight: FontWeight.w400,),
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
    );
  }
}

class DrakThemeSwitcher extends StatelessWidget {
  const DrakThemeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(IconsSvg.lightModeIcon),
        const HorizontalSwitcher(),
        SvgPicture.asset(IconsSvg.nightModeIcon),
      ],
    );
  }
}

class HorizontalSwitcher extends StatefulWidget {
  const HorizontalSwitcher({Key? key}) : super(key: key);

  @override
  State<HorizontalSwitcher> createState() => _HorizontalSwitcherState();
}

class _HorizontalSwitcherState extends State<HorizontalSwitcher> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: status,
      onChanged: (value) {
        setState(() {
          status = value;
        });
      },
      activeColor: Colors.black,
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
              weight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class ExperimentName extends StatelessWidget {
  const ExperimentName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 70.0,
        bottom: context.nevigationPageHeight,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          HeaderText('Недавние эксперименты'),
          ShowAll(),
        ],
      ),
    );
  }
}

class ShowAll extends StatefulWidget {
  const ShowAll({super.key});

  @override
  State<ShowAll> createState() => _ShowAllState();
}

class _ShowAllState extends State<ShowAll> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: const Text(
        'Показать все',
        style: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: 16,
          fontFamily: "Inter",
          fontWeight: FontWeight.w700,
          color: Colors.black,
        ),
      ),
    );
  }
}
