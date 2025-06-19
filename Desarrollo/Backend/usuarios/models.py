from django.db import models

# Create your models here.
class User(models.Model):
    first_name = models.CharField(max_length=50)
    last_name = models.CharField(max_length=50)
    nickname = models.CharField(max_length=12)
    password = models.CharField(max_length=12)
    age = models.PositiveSmallIntegerField()
    is_active = models.BooleanField(default=True)