from django.db import models
from django.contrib.auth.models import (AbstractBaseUser, PermissionsMixin, UserManager)
from django.contrib.auth.validators import UnicodeUsernameValidator
from django.contrib.auth.hashers import make_password
from django.apps import apps


class MyUserManager(UserManager):
    def _create_user(self, username, password, **extra_fields):
        if not username:
            raise ValueError("The given username must be set")
        GlobalUserModel = apps.get_model('users', 'User')
        username = GlobalUserModel.normalize_username(username)
        user = self.model(username=username, **extra_fields)
        user.password = make_password(password)
        user.save(using=self._db)
        return user

    def create_user(self, username, password=None, **extra_fields):
        extra_fields.setdefault("is_superuser", False)
        return self._create_user(username, password, **extra_fields)

    def create_superuser(self, username, password=None, **extra_fields):
        extra_fields.setdefault("is_superuser", True)

        if extra_fields.get("is_superuser") is not True:
            raise ValueError("Superuser must have is_superuser=True.")

        return self._create_user(username, password, **extra_fields)


class User(AbstractBaseUser, PermissionsMixin):
    username_validator = UnicodeUsernameValidator()
    username = models.CharField(
        "username",
        max_length=30,
        unique=True,
        help_text=
            "Required. 30 characters or fewer. Letters, digits and @/./+/-/_ only.",
        validators=[username_validator],
        error_messages={
            "unique": "A user with that username already exists.",
        },
    )
    first_name = models.CharField("first name", max_length=30, blank=True)
    last_name = models.CharField("last name", max_length=30, blank=True)

    objects = MyUserManager()

    EMAIL_FIELD = False
    USERNAME_FIELD = "username"
    REQUIRED_FIELDS = []

    class Meta:
        db_table = 'users'


class ExperimentObject(models.Model):
    name = models.CharField(max_length=100)

    class Meta:
        db_table = 'experiment_objects'


class ExperimentMethod(models.Model):
    name = models.CharField(max_length=100)

    class Meta:
        db_table = 'experiment_methods'


class Experiment(models.Model):
    user_id = models.ForeignKey(
        User, on_delete=models.CASCADE,
        db_column='user_id'
        )
    name = models.TextField()
    description = models.TextField()
    method_id = models.ForeignKey(
        ExperimentMethod, on_delete=models.CASCADE,
        db_column='method_id'
        )
    object_id = models.ForeignKey(
        ExperimentObject, on_delete=models.CASCADE,
        db_column='object_id'
        )
    purpose = models.TextField()
    device = models.TextField()
    soft = models.TextField()
    start_date = models.DateField()
    end_date = models.DateField()

    class Meta:
        db_table = 'experiments'


class Entity(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField(null=True)

    class Meta:
        db_table = 'entities'


class ExperimentFile(models.Model):
    experiment_id = models.ForeignKey(
        Experiment, on_delete=models.CASCADE,
        db_column='experiment_id'
        )
    name = models.CharField(max_length=100)
    url= models.URLField(max_length=200)
    entity_id = models.ForeignKey(
        Entity,
        on_delete=models.CASCADE,
        db_column='entity_id',
        null=True
    )

    class Meta:
        db_table = 'experiment_files'


class ExperimentGroup(models.Model):
    experiment_id = models.ForeignKey(
        Experiment, on_delete=models.CASCADE,
        db_column='experiment_id'
        )
    name = models.CharField(max_length=100)

    class Meta:
        db_table = 'experiment_groups'


class ExperimentSample(models.Model):
    group_id = models.ForeignKey(
        ExperimentGroup, on_delete=models.CASCADE,
        db_column='group_id'
    )
    entity_id = models.ForeignKey(
        Entity,
        on_delete=models.CASCADE,
        db_column='entity_id',
    )

    class Meta:
        db_table = 'experiment_samples'


class ExperimentMeasure(models.Model):
    sample_id = models.ForeignKey(
        ExperimentSample, on_delete=models.CASCADE,
        db_column='sample_id'
    )
    entity_id = models.ForeignKey(
        Entity,
        on_delete=models.CASCADE,
        db_column='entity_id'
    )

    class Meta:
        db_table = 'experiment_measures'


class File(models.Model):
    user_id = models.ForeignKey(
        'User',
        on_delete=models.CASCADE,
        db_column='user_id'
    )
    url = models.FileField()
    hash = models.TextField(null=True)

    class Meta:
        db_table = 'files'
