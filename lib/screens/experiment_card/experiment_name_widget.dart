import 'package:first_approval_app/screens/experiment_card/experiment_page_buttons.dart';
import 'package:flutter/material.dart';

class ExperimentNameWidget extends StatelessWidget {
  const ExperimentNameWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                SizedBox(
                  width: 600,
                  child: ExperimentName(),
                ),
              ],
            ),
          ),
          const Flexible(
            child: ExperimentPageButtons(),
          ),
        ],
      ),
    );
  }
}

class ExperimentName extends StatefulWidget {
  const ExperimentName({super.key});

  @override
  State<ExperimentName> createState() => _ExperimentNameState();
}

class _ExperimentNameState extends State<ExperimentName> {
  var myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
      controller: myController,
      onChanged: (value) => myController.text,
      decoration: const InputDecoration(border: InputBorder.none),
    );
  }

  @override
  void initState() {
    super.initState();
    myController.text = 'Название эксперимента';
  }

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }
}
