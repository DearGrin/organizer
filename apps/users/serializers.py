from rest_framework.serializers import ModelSerializer
from . import models as m


class UsersSerializer(ModelSerializer):
    class Meta:
        model = m.User
        fields = ['first_name', 'last_name']


class UsersRegistrationSerializer(ModelSerializer):
    class Meta:
        model = m.User
        fields = ['username', 'password']


class ExperimentObjectSerializer(ModelSerializer):
    class Meta:
        model = m.ExperimentObject
        fields = "__all__"
        depth = 0


class ExperimentMethodSerializer(ModelSerializer):
    class Meta:
        model = m.ExperimentMethod
        fields = "__all__"
        depth = 0


class EntitySerializer(ModelSerializer):
    class Meta:
        model = m.Entity
        exclude = ('id',)
        depth = 0


class ExperimentsSerializer(ModelSerializer):
    class Meta:
        model = m.Experiment
        exclude = ('id', 'user_id')
        depth = 0


class ExperimentsInputSerializer(ModelSerializer):
    class Meta:
        model = m.Experiment
        exclude = ('id',)
        depth = 0


class ExperimentMeasuresSerializer(ModelSerializer):
    class Meta:
        model = m.ExperimentMeasure
        exclude = ('id', 'sample_id')
        depth = 1


class ExperimentSamplesSerializer(ModelSerializer):
    class Meta:
        model = m.ExperimentSample
        exclude = ('id', 'group_id')
        depth = 1


class ExperimentGroupsSerializer(ModelSerializer):
    class Meta:
        model = m.ExperimentGroup
        exclude = ('id',)
        depth = 0


class FilesSerializer(ModelSerializer):
    class Meta:
        model = m.File
        fields = ['url', 'hash']


class FilesUploadSerializer(ModelSerializer):
    class Meta:
        model = m.File
        # fields = '__all__'
        exclude = ('hash', )
