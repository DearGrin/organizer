from django.urls import path
from . import views



urlpatterns = [
    # path('experiments/all/', views.get_user_experiments, name='user_experiments'),
    # path('experiments/<int:experiment_id>/', views.get_experiment, name='experiment_info'),
    # path('experiments/<int:experiment_id>/schema/', views.get_experiment_schema, name='experiment_schema'),
    # path('experiments/create/', views.create_experiment, name='create_experiment'),
    # path('experiments/<int:experiment_id>/update/', views.update_experiment, name='update_experiment'),
    # path('methods/', views.get_methods, name='get_methods'),
    # path('methods/create/', views.create_method, name='create_methods'),
    # path('objects/', views.get_objects, name='get_objects'),
    # path('objects/create/', views.create_object, name='create_objects'),
    # path('user/update/', views.update_user_profile, name='update_user_profile'),
    path('user/', views.get_user, name='user_profile'),
    path('experiments/', views.UploadFileViewset.as_view({'get':'list'}), name='get experiments by current user'),
    path('experiments/upload/', views.UploadFileViewset.as_view({'post':'create'}), name='upload experiment'),
]
