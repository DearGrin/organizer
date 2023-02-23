import 'package:first_approval_app/bloc/experimnet_scheme_bloc/experiment_scheme_bloc.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sceme/experiment_scheme_with_samples.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExperimentSchemeBlocBuilder extends StatelessWidget {
  const ExperimentSchemeBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {

    void addSample() {
      context
          .read<ExperimentSchemeBloc>()
          .add(const ExperimentSchemeEvent.addNewSample(
          text: "Введите описание", title: "Образец"));
    }

    return BlocBuilder<ExperimentSchemeBloc, ExperimentSchemeState>(
      builder: (context, state) => state.map(
        emptyState: (state) => ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 250, maxHeight: 250),
          child: DottedAreaWidget(
            onTap: () => addSample(),
          ),
        ),
        loadedState: (state) {
          return ExperimentSchemeWithSamples(
                groups: state.data,
                samples: state.ungroupedSamples,
              );
        },
        errorState: (state) => Container(),
        loading: (state) => Container(),
      ),
    );
  }
}