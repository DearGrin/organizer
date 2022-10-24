import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/screens_measures/measures.dart';

import '../screens/dashboard/dashboard.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.symmetric(vertical: context.buttonPadding),
      splashRadius: 20.0,
      onPressed: () {},
      icon: SvgPicture.asset(IconsSvg.home),
    );
  }
}

class MySettings extends StatefulWidget {
  const MySettings({Key? key}) : super(key: key);

  @override
  State<MySettings> createState() => _MySettingsState();
}

class _MySettingsState extends State<MySettings> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.symmetric(vertical: context.buttonPadding),
      splashRadius: 20.0,
      onPressed: () {},
      icon: SvgPicture.asset(IconsSvg.setting),
    );
  }
}

class MyExperiment extends StatefulWidget {
  const MyExperiment({Key? key}) : super(key: key);

  @override
  State<MyExperiment> createState() => _MyExperimentState();
}

class _MyExperimentState extends State<MyExperiment> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.symmetric(vertical: context.buttonPadding),
      splashRadius: 20.0,
      onPressed: () {},
      icon: SvgPicture.asset(IconsSvg.experiments),
    );
  }
}

class MyExport extends StatefulWidget {
  const MyExport({Key? key}) : super(key: key);

  @override
  State<MyExport> createState() => _MyExportState();
}

class _MyExportState extends State<MyExport> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.symmetric(vertical: context.buttonPadding),
      splashRadius: 20.0,
      onPressed: () {},
      icon: SvgPicture.asset(IconsSvg.dataExport),
    );
  }
}

class MyImport extends StatefulWidget {
  const MyImport({Key? key}) : super(key: key);

  @override
  State<MyImport> createState() => _MyImportState();
}

class _MyImportState extends State<MyImport> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.symmetric(vertical: context.buttonPadding),
      splashRadius: 20.0,
      onPressed: () {},
      icon: SvgPicture.asset(IconsSvg.dataImport),
    );
  }
}

class MyValidation extends StatefulWidget {
  const MyValidation({Key? key}) : super(key: key);

  @override
  State<MyValidation> createState() => _MyValidationState();
}

class _MyValidationState extends State<MyValidation> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.symmetric(vertical: context.buttonPadding),
      splashRadius: 20.0,
      onPressed: () {},
      icon: SvgPicture.asset(IconsSvg.validation),
    );
  }
}

class MenuPublication extends StatefulWidget {
  const MenuPublication({Key? key}) : super(key: key);

  @override
  State<MenuPublication> createState() => _MenuPublicationState();
}

class _MenuPublicationState extends State<MenuPublication> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.symmetric(vertical: context.buttonPadding),
      splashRadius: 20.0,
      onPressed: () {},
      icon: SvgPicture.asset(IconsSvg.menuPublication),
    );
  }
}

class MySwitcher extends StatefulWidget {
  const MySwitcher({Key? key}) : super(key: key);

  @override
  State<MySwitcher> createState() => _MySwitcherState();
}

class _MySwitcherState extends State<MySwitcher> {
  bool status = false;

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: 1,
      child: Switch(
        value: status,
        onChanged: (value) {
          setState(() {
            status = value;
          });
        },
        activeColor: Colors.black,
      ),
    );
  }
}

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 40.0,
      padding: EdgeInsets.all(
        context.buttonPadding,
      ),
      splashRadius: 25.0,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Dashboard()),
        );
      },
      icon: SvgPicture.asset(IconsSvg.menu),
    );
  }
}
