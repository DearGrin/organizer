import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:first_approval_app/custom_widgets/custom_text_widget.dart';
import 'package:first_approval_app/http_and_backend/http_class.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/screens/dashboard/add_card_widget.dart';
import 'package:first_approval_app/screens/dashboard/navidation_cards.dart';
import 'package:first_approval_app/screens/dashboard/navigation_widget.dart';
import 'package:first_approval_app/screens/dashboard/recent_experiment_card.dart';
import 'package:first_approval_app/screens/dashboard/show_all_button.dart';
import 'package:first_approval_app/screens_measures/measures.dart';
import 'package:first_approval_app/widgets_present_on_multiple_screens/project_appbar.dart';
import 'package:first_approval_app/custom_widgets/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ProjectAppBar(
        icon: SvgPicture.asset(IconsSvg.notification),

        /// есть разница между null и пустой функцией в поведении кнопок -
        /// надо учитывать, какое поведение предпочтительнее
        onTap: () {},
      ),
      body: BlocProvider<FileCubit>(
        create: (context) => FileCubit(),
        child: Container(
          ///цвет вынести в стили
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
                children: const [
                  /// не забываем использовать const
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

///вынести в отдеьлный файл - легче читать и ориентироваться
class DashboardNavigationCards extends StatelessWidget {
  const DashboardNavigationCards({super.key});

  // Post запрос отправки данных в базу данных
  ///Так очень плохо - у сетевых запросов часто бывают ошибки -
  ///в такой реализации это приведет к крашам/красным экранам  и тд
  ///обязательно эту логику выносить в блок
  ///и оборачивать в try catch
  void _get() async {
    CustomHttpRequest httpRequest = CustomHttpRequest();

    /// лишнее
    var pupa;

    /// смысл в этой переменной, если она никуда не передается?
    pupa = await httpRequest.getUserById();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const NavigationPropertiesCard('Настройки', IconsSvg.setting),
        NavigationPropertiesCard(
          'Экспорт данных',
          IconsSvg.dataExport,
          onTap: () => _get,
        ),
        NavigationPropertiesCard(
          'Загрузка данных',
          IconsSvg.dataImport,
          onTap: () => BlocProvider.of<FileCubit>(context).pickFiles,
        ),
        const NavigationPropertiesCard(
          'Валидация файлов',
          IconsSvg.validation,
        ),
        const NavigationPropertiesCard('Публикация', IconsSvg.menuPublication),
      ],
    );
  }
}

///вынести в отдеьлный файл - легче читать и ориентироваться
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

///вынести в отдеьлный файл - легче читать и ориентироваться
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
          /// 1) явно надо куда сохранить новое значение
          /// 2) явно надо при запуске получить это значение
          /// 3) ну и сменить тему, соответственно
          status = value;
        });
      },
      activeColor: Colors.black,
    );
  }
}

///вынести в отдеьлный файл - легче читать и ориентироваться


///вынести в отдеьлный файл - легче читать и ориентироваться
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
