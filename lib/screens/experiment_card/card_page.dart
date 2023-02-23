import 'package:first_approval_app/bloc/experiment_card_bloc/experiment_card_bloc.dart';
import 'package:first_approval_app/bloc/experiment_common_files_bloc/experiment_common_files_bloc.dart';
import 'package:first_approval_app/bloc/experimnet_scheme_bloc/experiment_scheme_bloc.dart';
import 'package:first_approval_app/hive/hive_service.dart';
import 'package:first_approval_app/models/attachment.dart';
import 'package:first_approval_app/models/experiment.dart';
import 'package:first_approval_app/models/experiment_card_models/card_text_fields.dart';
import 'package:first_approval_app/models/group.dart';
import 'package:first_approval_app/models/sample.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_info_card.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_name_widget.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sceme/experiment_scheme_bloc_builder.dart';
import 'package:first_approval_app/screens/experiment_card/experiment_sheme.dart';
import 'package:first_approval_app/screens/experiment_card/file_area.dart';
import 'package:first_approval_app/widgets_present_on_multiple_screens/project_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardPage extends StatelessWidget {
  final Experiment? experiment;
  const CardPage(this.experiment, {super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<ExperimentCardBloc>(
            create: (context) => ExperimentCardBloc()..add(ExperimentCardEvent.saveCard(experiment?.info)),
            lazy: false,
          ),
          BlocProvider<ExperimentSchemeBloc>(
            create: (context) => ExperimentSchemeBloc()..add(ExperimentSchemeEvent.init(experiment)),
            lazy: false,
          ),
          BlocProvider<ExperimentCommonFilesBloc>(
              create: (context) => ExperimentCommonFilesBloc()..add(ExperimentCommonFilesEvent.init(experiment?.files)),
              lazy: false,
          ),
        ],
        child: const ExperimentView(),
    );
  }
}
class ExperimentView extends StatefulWidget {
  const ExperimentView({Key? key}) : super(key: key);

  @override
  State<ExperimentView> createState() => _ExperimentViewState();
}

class _ExperimentViewState extends State<ExperimentView> {
  @override
  Widget build(BuildContext context) {
    return ProjectBody(
      body: Container(
        margin: const EdgeInsets.only(
          top: 40,
          right: 33,
          left: 28,
          bottom: 53,
        ),
        child: SingleChildScrollView(
            child:
            Column(
              children: [
                ExperimentNameWidget(onSave: _onSave),
                const SizedBox(height: 30),
                Row(
                  children: const [
                    Flexible(
                      flex: 3,
                      child: ExperimentInfoCard(),
                    ),
                    SizedBox(width: 50),
                    Flexible(child: FilesCard()),
                  ],
                ),
                const SizedBox(height: 20),
                const ExperimentScheme(child: ExperimentSchemeBlocBuilder()),
              ],
            ),
          ),
      ),
    );
  }
  _onSave(){
    print('ON SAVE PRESS!');
    ExperimentCardTextFields experimentInfo = context.read<ExperimentCardBloc>().experimentInfo;
    print(experimentInfo);
    int? id =  context.read<ExperimentSchemeBloc>().experimentId;
    List<Group> experimentGroups = context.read<ExperimentSchemeBloc>().data;
    List<Sample> experimentSamples = context.read<ExperimentSchemeBloc>().ungroupedSamples;
    List<Attachment> commonFiles = context.read<ExperimentCommonFilesBloc>().files;
    Experiment experiment = Experiment(
        id: id?? DateTime.now().millisecondsSinceEpoch,
        info: experimentInfo,
        files: commonFiles,
        groups: experimentGroups,
        ungroupedSamples: experimentSamples,
    );
    if(id==null) {
      HiveService.instance.addData(experiment);
    }
    else{
      HiveService.instance.editData(experiment);
    }
    print(experiment);
  }
}

