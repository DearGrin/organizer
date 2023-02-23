import 'package:first_approval_app/bloc/dashboard_bloc/dashboard_bloc.dart';
import 'package:first_approval_app/http_and_backend/http_class.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/screens/dashboard/navidation_cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

    void onDownloadPress(){
      context.read<DashboardBloc>().add(const DashboardEvent.exportExperiment());
    }


    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Row(
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
            onTap: onDownloadPress,
          ),
          const NavigationPropertiesCard(
            'Валидация файлов',
            IconsSvg.validation,
          ),
          const NavigationPropertiesCard('Публикация', IconsSvg.menuPublication),
        ],
      ),
    );
  }
}