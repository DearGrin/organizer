import 'package:first_approval_app/bloc/experiment_card_bloc/experiment_card_bloc.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_page_buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExperimentNameWidget extends StatelessWidget {
  final VoidCallback onSave;
  const ExperimentNameWidget({required this.onSave, super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Flexible(
            flex: 3,
            child: BlocBuilder<ExperimentCardBloc, ExperimentCardState>(
              builder: (context, state) =>
                state.when(
                    initial: () => const SizedBox.shrink(),
                    saved: (card) => ExperimentName(card?.name??''),
                )
),
          ),
          Flexible(
            child: ExperimentPageButtons(onSave: onSave),
          ),
        ],
      ),
    );
  }
}

class ExperimentName extends StatefulWidget {
  final String initValue;
  const ExperimentName(this.initValue, {super.key});

  @override
  State<ExperimentName> createState() => _ExperimentNameState();
}

class _ExperimentNameState extends State<ExperimentName> {
  final TextEditingController myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) =>
      SizedBox(
        width: constraints.maxWidth>600? 600 : constraints.maxWidth,
        child: TextField(
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          controller: myController,
          onChanged: _onChanged,
          decoration: const InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    myController.text = widget.initValue;
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void _onChanged(String value){
    context.read<ExperimentCardBloc>().add(ExperimentCardEvent.fieldFilled(FieldNameType.name, value));
  }
}
