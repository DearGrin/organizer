from rest_framework.response import Response
from rest_framework import status, viewsets, parsers
from rest_framework.decorators import api_view, permission_classes
from rest_framework.parsers import JSONParser
from rest_framework.permissions import IsAuthenticated
from . import models as m
from . import serializers as s
from drf_spectacular.utils import extend_schema, OpenApiParameter, OpenApiResponse
from rest_framework_simplejwt.tokens import RefreshToken


@extend_schema(
    description='Takes username and password, creates user and returns access and refresh tokens',
    request=s.UsersRegistrationSerializer,
    methods=["POST"],
    responses={200: {
        'type': 'object',
        'properties': {
            'access': {'access': 'string'},
            'refresh': {'refresh': 'string'}
        }
    }},
)
@api_view(['POST'])
def sign_up(request):
    data = JSONParser().parse(request)
    username = data['username']
    password = data['password']
    user = m.User.objects.create_user(username=username, password=password)
    refresh = RefreshToken.for_user(user)
    return Response({
        'refresh': str(refresh),
        'access': str(refresh.access_token),
    })


@extend_schema(
    description='Takes user_id and returns user\'s info: first_name and last_name',
    methods=["GET"],
    parameters=[
        OpenApiParameter(
            name='user_id',
            description='user_id',
            required=True,
            type=int),
    ],
    responses={200: s.UsersSerializer},
)
@api_view(['GET'])
def get_user(request):
    user_id = request.GET.get('user_id')
    # username = request.auth.get('username')
    user = m.User.objects.get(id=user_id)
    user = s.UsersSerializer(user)
    return Response(user.data)


@extend_schema(
    description='Takes user_id and first_name and/or last_name and updates user\'s record',
    parameters=[
        OpenApiParameter(
            name='user_id',
            description='user_id',
            required=True,
            type=int),
    ],
    request=s.UsersSerializer,
    methods=["POST"],
    responses={
            201: OpenApiResponse(description='Experiment was successfully created'),
            400: OpenApiResponse(description='Error: Bad request'),
        },
)
@api_view(['POST'])
def update_user_profile(request):
    # username = request.auth.get('username')
    user_id = request.GET.get('user_id')
    user = m.User.objects.get(id=user_id)
    data = JSONParser().parse(request)
    serializer = s.UsersSerializer(user, data=data, partial=True)
    if serializer.is_valid():
        serializer.save()
        return Response("User\'s profile successfully updated", status=status.HTTP_200_OK)
    return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


@extend_schema(
    description='Takes user_id and returns links of all user\'s files',
    methods=["GET"],
    parameters=[
        OpenApiParameter(
            name='user_id',
            description='user_id',
            required=True,
            type=int),
    ],
    responses={200: s.FilesSerializer},
)
@extend_schema(
    description='Takes file and file\'s properties, save file and return file\'s link',
    methods=["POST"],
    request=s.FilesUploadSerializer,
    responses={201: s.FilesSerializer}
)
class UploadFileViewset(viewsets.ModelViewSet):
    queryset = m.File.objects.all()
    serializer_class = s.FilesUploadSerializer
    parser_classes = [parsers.MultiPartParser, parsers.FormParser]
    http_method_names = ['get','post']

    def list(self, request):
        user_id = request.GET.get('user_id')
        files = m.File.objects.filter(user_id = user_id)
        files = s.FilesSerializer(files, many=True)
        return Response(files.data)

    def create(self, request):
        hash_field = hash(request.data['url'])
        serializer = self.get_serializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        file = serializer.save()
        file.hash = hash_field
        file.save()
        headers = self.get_success_headers(serializer.data)
        return Response(serializer.data, status=status.HTTP_201_CREATED, headers=headers)


# @extend_schema(
#     description='Takes user_id and returns list of user\'s experiments',
#     methods=["GET"],
#     parameters=[
#         OpenApiParameter(
#             name='user_id',
#             description='user_id',
#             required=True,
#             type=int),
#     ],
#     responses={200: s.ExperimentsSerializer(many=True)},
# )
# @api_view(['GET'])
# # @permission_classes([IsAuthenticated])
# def get_user_experiments(request):
#     # username = request.auth.get('username')
#     user_id = request.GET.get('user_id')
#     experiments = m.Experiment.objects.filter(user_id=user_id)
#     experiments = s.ExperimentsSerializer(experiments, many=True)
#     return Response(experiments.data)


# @extend_schema(
#     description='Takes experiment_id and returns experiment description',
#     methods=["GET"],
#     responses={200: s.ExperimentsSerializer},
# )
# @api_view(['GET'])
# def get_experiment(request, experiment_id):
#     experiment = m.Experiment.objects.get(id=experiment_id)
#     experiment = s.ExperimentsSerializer(experiment)
#     return Response(experiment.data)


# @extend_schema(
#     description='Takes experiment_id and returns experiment schema: groups, samlpes and measures',
#     methods=["GET"],
#     responses=None,
# )
# @api_view(['GET'])
# def get_experiment_schema(request, experiment_id):
#     experiment_data = []
#     groups = m.ExperimentGroup.objects.filter(experiment_id=experiment_id
#     ).prefetch_related(
#         'experimentsample_set'
#     ).prefetch_related(
#         'experimentsample_set__experimentmeasure_set'
#     )
#     for group in groups:
#         group_s = s.ExperimentGroupsSerializer(group).data
#         samples = group.experimentsample_set.all()
#         for sample in samples:
#             measures = sample.experimentmeasure_set.all()
#             measures_s = s.ExperimentMeasuresSerializer(
#                 measures, many=True).data
#             sample_s = s.ExperimentSamplesSerializer(sample).data
#             sample_s['measures'] = measures_s
#             group_s['samples'] = sample_s
#         experiment_data.append(group_s)
#     return Response(experiment_data)


# @extend_schema(
#     description='Takes user_id and experiment properties and creates experiment entity for user',
#     parameters=[
#         OpenApiParameter(
#             name='user_id',
#             description='user_id',
#             required=True,
#             type=int),
#     ],
#     request=s.ExperimentsSerializer,
#     methods=["POST"],
#     responses={
#             201: OpenApiResponse(description='Experiment was successfully created'),
#             400: OpenApiResponse(description='Error: Bad request'),
#         },
# )
# @api_view(['POST'])
# def create_experiment(request):
#     data = JSONParser().parse(request)
#     data['user_id'] = int(request.GET.get('user_id'))
#     serializer= s.ExperimentsInputSerializer(data=data)
#     if serializer.is_valid():
#         serializer.save()
#         return Response("Experiment was successfully created", status=status.HTTP_201_CREATED)
#     return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


# @extend_schema(
#     description='Takes user_id, experiment_id and experiment properties and updates experiment entity',
#     request=s.ExperimentsSerializer,
#     methods=["POST"],
#    responses={
#             201: OpenApiResponse(description='Experiment was successfully updated'),
#             400: OpenApiResponse(description='Error: Bad request'),
#         },
# )
# @api_view(['POST'])
# def update_experiment(request, experiment_id):
#     experiment = m.Experiment.objects.get(id=experiment_id)
#     data = JSONParser().parse(request)
#     serializer = s.ExperimentsInputSerializer(experiment, data=data, partial=True)
#     if serializer.is_valid():
#         serializer.save()
#         return Response("Experiment successfully updated", status=status.HTTP_200_OK)
#     return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


# @extend_schema(
#     description='Takes user_id and returns list of methods used in user\'s experiments',
#     parameters=[
#         OpenApiParameter(
#             name='user_id',
#             description='user_id',
#             required=True,
#             type=int),
#     ],
#     methods=["GET"],
#     responses=s.ExperimentMethodSerializer,
# )
# @api_view(['GET'])
# def get_methods(request):
#     user_id = request.GET.get('user_id')
#     methods = m.ExperimentMethod.objects.filter(experiment__user_id=user_id)
#     methods = s.ExperimentMethodSerializer(methods, many=True)
#     return Response(methods.data)


# @extend_schema(
#     description='Takes method\'s name, creates method entity and returns method id',
#     request=s.ExperimentMethodSerializer,
#     methods=["POST"],
#     responses={
#             201: OpenApiResponse(description='Experiment method was successfully created'),
#             400: OpenApiResponse(description='Error: Bad request'),
#         },
# )
# @api_view(['POST'])
# def create_method(request):
#     data = JSONParser().parse(request)
#     serializer= s.ExperimentMethodSerializer(data=data)
#     if serializer.is_valid():
#         serializer.save()
#         return Response({'id': serializer.data['id']}, status=status.HTTP_201_CREATED)
#     return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


# @extend_schema(
#     description='Takes user_id and returns list of objects used in user\'s experiments',
#     parameters=[
#         OpenApiParameter(
#             name='user_id',
#             description='user_id',
#             required=True,
#             type=int),
#     ],
#     methods=["GET"],
#     responses=s.ExperimentObjectSerializer,
# )
# @api_view(['GET'])
# def get_objects(request):
#     user_id = request.GET.get('user_id')
#     objects = m.ExperimentObject.objects.filter(experiment__user_id=user_id)
#     objects = s.ExperimentObjectSerializer(objects, many=True)
#     return Response(objects.data)


# @extend_schema(
#     description='Takes objects\'s name and creates object entity',
#     request=s.ExperimentObjectSerializer,
#     methods=["POST"],
#     responses={
#             201: OpenApiResponse(description='Experiment object was successfully created'),
#             400: OpenApiResponse(description='Error: Bad request'),
#         },
# )
# @api_view(['POST'])
# def create_object(request):
#     data = JSONParser().parse(request)
#     serializer= s.ExperimentObjectSerializer(data=data)
#     if serializer.is_valid():
#         serializer.save()
#         return Response({'id': serializer.data['id']}, status=status.HTTP_201_CREATED)
#     return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)
