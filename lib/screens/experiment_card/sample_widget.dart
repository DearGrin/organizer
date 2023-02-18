import 'package:first_approval_app/bloc/experimnet_scheme_bloc/experiment_scheme_bloc.dart';
import 'package:first_approval_app/custom_widgets/custom_no_border_button.dart';
import 'package:first_approval_app/icons/icons_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewSample extends StatefulWidget {
  const NewSample({super.key});

  @override
  State<NewSample> createState() => _NewSampleState();
}

class _NewSampleState extends State<NewSample> {
  late TextEditingController title;
  late TextEditingController descriptionText;

  @override
  void initState() {
    title = TextEditingController();
    descriptionText = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: ExpansionTile(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              controller: title,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                CustomNoBordersButton(IconsSvg.edit),
                CustomNoBordersButton(IconsSvg.schemeCompass),
                CustomNoBordersButton(IconsSvg.attachedFiles),
              ],
            ),
          ],
        ),
        children: [
          ElevatedButton(
            onPressed: () {
              ///для читаемости вынести отдельно
              context.read<ExperimentSchemeBloc>().add(
                    ExperimentSchemeEvent.addNewSample(
                      text: descriptionText.text,
                      title: title.text,
                    ),
                  );

              descriptionText.clear();
              title.clear();
            },
            child: const Text('Добавить образец'),
          )
        ],
      ),
    );
  }
}
