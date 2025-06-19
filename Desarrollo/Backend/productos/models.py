from django.db import models


# Create your models here.
class Products(models.Model):
    nombre = models.CharField(max_length=20)
    category = models.CharField(max_length=12)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    stock = models.PositiveIntegerField(default=0)
    image = models.URLField(max_length=500, blank=True, null=True)
