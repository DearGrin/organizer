from django.urls import path
from . import views


urlpatterns = [
    path('<int:user_id>/experiments/', views.get_user_experiments, name='user_experiments'),
    path('experiments/<int:experiment_id>/', views.get_experiment, name='experiment_info'),
    path('experiments/<int:experiment_id>/measures', views.get_experiment_measures, name='experiment_mesures'),
    path('experiments/save', views.save_experiment, name='save_experiment'),

]
