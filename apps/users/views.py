from rest_framework.response import Response
from rest_framework.decorators import api_view, permission_classes
from rest_framework.parsers import JSONParser
from rest_framework.permissions import IsAuthenticated
from . import models as m
from . import serializers as s
from drf_spectacular.utils import extend_schema


@api_view(['GET'])
# @permission_classes([IsAuthenticated])
def get_user_experiments(request, user_id):
    experiments = m.Experiment.objects.filter(user_id=user_id)
    experiments = s.ExperimentsSerializer(experiments, many=True)
    return Response(experiments.data)


@api_view(['GET'])
def get_experiment(request, experiment_id):
    experiment = m.Experiment.objects.get(id=experiment_id)
    experiment = s.ExperimentsSerializer(experiment)
    return Response(experiment.data)


@api_view(['GET'])
def get_experiment_measures(request, experiment_id):
    experiment_data = []
    groups = m.ExperimentGroup.objects.filter(experiment_id=experiment_id
        ).prefetch_related(
            'experimentsample_set'
        ).prefetch_related(
            'experimentsample_set__experimentmeasure_set'
        )
    for group in groups:
        group_s = s.ExperimentGroupsSerializer(group).data
        samples = group.experimentsample_set.all()
        for sample in samples:
            measures = sample.experimentmeasure_set.all()
            measures_s = s.ExperimentMeasuresSerializer(measures, many=True).data
            sample_s = s.ExperimentSamplesSerializer(sample).data
            sample_s['measures'] = measures_s
            group_s['samples'] = sample_s
        experiment_data.append(group_s)
    return Response(experiment_data)


@extend_schema(
    request=s.ExperimentsInputSerializer,
    methods=["POST"]
)
@api_view(['POST'])
def save_experiment(request):
    data = JSONParser().parse(request)
    serializer = s.ExperimentsInputSerializer(data=data)
    if serializer.is_valid():
        serializer.save()
        return Response("OK")
