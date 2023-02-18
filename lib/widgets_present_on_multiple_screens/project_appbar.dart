import 'package:first_approval_app/screens_measures/measures.dart';
import 'package:first_approval_app/custom_widgets/utils.dart';
import 'package:flutter/material.dart';

class ProjectAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget icon;
  final VoidCallback? onTap;

  const ProjectAppBar({
    Key? key,
    this.onTap,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //выровнять по середине
    return AppBar(
      ///цвета в стили
      backgroundColor: const Color(0xffd9d9d9),
      elevation: 0,
      title: const HeaderText('First Approval'),
      // InkWell
      actions: [
        Align(
          child: Padding(
            padding: EdgeInsets.only(right: context.pagePadding),
            child: InkWell(
              onTap: onTap,
              child: icon,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
