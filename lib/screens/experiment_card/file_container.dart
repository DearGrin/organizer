import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:first_approval_app/custom_widgets/custom_no_border_button.dart';
import 'package:first_approval_app/custom_widgets/custom_text_widget.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyFiles extends StatefulWidget {
  const MyFiles(this.fileName, {super.key});

  final String fileName;

  @override
  State<MyFiles> createState() => _MyFilesState();
}

class _MyFilesState extends State<MyFiles> {
  bool mouseInArea = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47,
      child: MouseRegion(
        onEnter: (PointerEvent event) {
          mouseInArea = true;
          setState(() {});
        },
        onExit: (PointerEvent event) {
          mouseInArea = false;
          setState(() {});
        },
        child: Container(
          color: mouseInArea ? const Color(0xffF5F5F5) : Colors.white,
          child: ListTile(
            contentPadding: const EdgeInsets.only(left: 40, right: 40),
            dense: true,
            minLeadingWidth: 16,
            trailing: mouseInArea
                ? CustomNoBordersButton(
                    IconsSvg.trashIcon,
                    onPressed: () =>

                        /// для читаемости лучше вынести функцию отдельно
                        context
                            .read<FileCubit>()
                            .deleteFileName(widget.fileName),
                  )
                : null,
            leading: SvgPicture.asset(IconsSvg.file),
            title: CustomText(
              widget.fileName,
              12,
              textAlign: TextAlign.start,
              textOverflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ),
    );
  }
}
