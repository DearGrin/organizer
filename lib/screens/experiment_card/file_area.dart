import 'package:first_approval_app/cubit/FileCubit/file_cubit.dart';
import 'package:first_approval_app/custom_widgets/custom_no_border_button.dart';
import 'package:first_approval_app/custom_widgets/custom_text_widget.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/screens/experiment_card/file_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilesCard extends StatelessWidget {
  const FilesCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.only(
        top: 25,
        bottom: 30,
      ),
      height: 410,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CustomText(
                  'Файлы',
                  20,
                  weight: FontWeight.w700,
                ),
                CustomNoBordersButton(
                  IconsSvg.moreHorizontal,

                  /// для читаемости лучше вынести функцию отдельно
                  onPressed: () => context.read<FileCubit>().pickFiles(),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Expanded(
            child: BlocBuilder<FileCubit, FileState>(
              builder: (context, state) {
                if (state.files.isNotEmpty) {
                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.files.length,
                      itemBuilder: (context, index) {
                        return MyFiles(state.files[index]);
                      });
                } else {
                  return const SizedBox.shrink();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
