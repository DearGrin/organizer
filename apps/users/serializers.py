from rest_framework.serializers import ModelSerializer
from . import models as m


class UsersSerializer(ModelSerializer):
    class Meta:
        model = m.User
        fields = '__all__'


class ExperimentsSerializer(ModelSerializer):
    class Meta:
        model = m.Experiment
        fields = '__all__'


class ExperimentMeasuresSerializer(ModelSerializer):
    class Meta:
        model = m.ExperimentMeasure
        fields = '__all__'
        depth = 0


class ExperimentSamplesSerializer(ModelSerializer):
    class Meta:
        model = m.ExperimentSample
        fields = '__all__'
        depth = 0


class ExperimentGroupsSerializer(ModelSerializer):
    class Meta:
        model = m.ExperimentGroup
        fields = '__all__'
        depth = 0


class ExperimentsInputSerializer(ExperimentsSerializer):

    def create(self, validated_data):
        return m.Experiment.objects.create(**validated_data)
