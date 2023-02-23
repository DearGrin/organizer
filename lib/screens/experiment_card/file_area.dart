import 'package:first_approval_app/bloc/experiment_common_files_bloc/experiment_common_files_bloc.dart';
import 'package:first_approval_app/custom_widgets/custom_no_border_button.dart';
import 'package:first_approval_app/custom_widgets/custom_text_widget.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:first_approval_app/models/attachment.dart';
import 'package:first_approval_app/screens/experiment_card/file_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilesCard extends StatelessWidget {
  const FilesCard({super.key});

  @override
  Widget build(BuildContext context) {
    void onTap(){
      context.read<ExperimentCommonFilesBloc>().add(const ExperimentCommonFilesEvent.addFiles());
    }
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
            padding: const EdgeInsets.symmetric(horizontal: 20),
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
                  onPressed: onTap,
                ),
              ],
            ),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: BlocBuilder<ExperimentCommonFilesBloc, ExperimentCommonFilesState>(
              builder: (context, state) {
                List<Attachment> fileList = [];
                state.whenOrNull(
                    loaded: (files) => fileList.addAll(files),
                );
                  return ListView.builder(
                      shrinkWrap: true,
                      itemCount: fileList.length,
                      itemBuilder: (context, index) {
                        return MyFiles(fileList[index].fileName, index);
                      });
              },
            ),
          ),
        ],
      ),
    );
  }
}
