import 'package:first_approval_app/screens/dashboard/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/screens_measures/measures.dart';

/// + сдлеать enum с типами и список этих виджетов через него вызвать
/// пример enum с доп значениями есть в [ExperimentCardBloc]

class SideBarButton extends StatelessWidget {
  const SideBarButton({super.key, this.onPressed, required this.icon});
  final VoidCallback? onPressed;
  final String icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.symmetric(vertical: context.buttonPadding),
      splashRadius: 20.0,
      onPressed: onPressed,
      icon: SvgPicture.asset(icon),
    );
  }
}

class ProjectMenu extends StatelessWidget {
  const ProjectMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffd9d9d9),
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SideBarButton(
                icon: IconsSvg.home,
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Dashboard()),
                ),
              ),
              const SideBarButton(icon: IconsSvg.validation),
              const SideBarButton(icon: IconsSvg.publication),
              const SideBarButton(icon: IconsSvg.setting),
            ],
          ),
          Column(
            children: [
              SvgPicture.asset(IconsSvg.lightModeIcon),
              const MySwitcher(),
              SvgPicture.asset(IconsSvg.nightModeIcon),
            ],
          ),
        ],
      ),
    );
  }
}

///вынести в отдеьлный файл - легче читать и ориентироваться
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
