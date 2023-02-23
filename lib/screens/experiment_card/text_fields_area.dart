import 'package:first_approval_app/bloc/experiment_card_bloc/experiment_card_bloc.dart';
import 'package:first_approval_app/screens/experiment_card/text_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextFieldsArea extends StatelessWidget {
  const TextFieldsArea({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<ExperimentCardBloc, ExperimentCardState>(
        builder: (context, state) =>
          state.when(
              initial: () => const SizedBox.shrink(),
              saved: (card) => Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: TextCard(
                              FieldNameType.goal,
                              card?.goal??'',
                            ),
                          ),
                          const SizedBox(width: 30),
                          Expanded(
                            flex: 1,
                            child: TextCard(
                              FieldNameType.date,
                              card?.date??'',
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              children: [
                                TextCard(
                                  FieldNameType.description,
                                  card?.description??'',
                                  lines: 10,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(width: 30),
                          Expanded(
                            child: Column(
                              children: [
                                TextCard(
                                  FieldNameType.method,
                                  card?.method??'',
                                ),
                                const SizedBox(height: 10),
                                TextCard(
                                  FieldNameType.object,
                                  card?.object??'',
                                ),
                                const SizedBox(height: 10),
                                TextCard(
                                  FieldNameType.device,
                                  card?.device??'',
                                ),
                                const SizedBox(height: 10),
                                TextCard(
                                  FieldNameType.soft,
                                  card?.soft??'',
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
          ),
      ),
    );
  }
}