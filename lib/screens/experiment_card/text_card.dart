import 'package:first_approval_app/bloc/experiment_card_bloc/experiment_card_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextCard extends StatefulWidget {
  final FieldNameType fieldType;
  final String initText;
  final int lines;
  const TextCard(this.fieldType, this.initText, {Key? key, this.lines = 1}) : super(key: key);

  @override
  State<TextCard> createState() => _TextCardState();
}

class _TextCardState extends State<TextCard> {
  final TextEditingController myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    myController.text = widget.initText;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: myController,
      onSubmitted: (value) => _onSubmitted(value),
      onChanged: (value) => _onChanged(value),
      maxLines: widget.lines,
      decoration: InputDecoration(
        filled: true,
        ///цвета в стили
        hoverColor: const Color(0x00eaeaea),
        border: const OutlineInputBorder(),
        labelText: widget.fieldType.value,
      ),
    );
  }

  _onSubmitted(String value){
    context.read<ExperimentCardBloc>().add(
      ExperimentCardEvent.fieldFilled(
        widget.fieldType,
        myController.text,
      ),
    );
  }

  _onChanged(String value){
    context.read<ExperimentCardBloc>().add(
      ExperimentCardEvent.fieldFilled(
        widget.fieldType,
        myController.text,
      ),
    );
  }
}
