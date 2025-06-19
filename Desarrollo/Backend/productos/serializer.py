from rest_framework import serializers
from .models import Products

class ProductosSerializer(serializers.ModelSerializer):
    class Meta:
        model = Products
        #fields = ('nombre','precio')
        fields = '__all__'