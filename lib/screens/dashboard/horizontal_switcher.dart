import 'package:flutter/material.dart';

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