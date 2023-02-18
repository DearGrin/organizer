import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class File extends StatelessWidget {
  final String fileName;
  const File({super.key, required this.fileName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          SvgPicture.asset(IconsSvg.file),
          Text(fileName),
        ],
      ),
    );
  }
}
