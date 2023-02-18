import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/widgets_present_on_multiple_screens/project_appbar.dart';
import 'package:first_approval_app/widgets_present_on_multiple_screens/project_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProjectBody extends StatelessWidget {
  final Widget body;

  const ProjectBody({
    Key? key,
    required this.body,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,

      ///цвета в стили
      backgroundColor: const Color(0xffEAEAEA),
      appBar: ProjectAppBar(
        icon: SvgPicture.asset(IconsSvg.notification),

        /// есть разница между null и пустой функцией в поведении кнопок -
        /// надо учитывать, какое поведение предпочтительнее
        onTap: () {},
      ),
      body: Row(
        children: [
          const ProjectMenu(),
          Flexible(child: body),
        ],
      ),
    );
  }
}
