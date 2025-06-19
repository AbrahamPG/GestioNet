from rest_framework import viewsets
from rest_framework.pagination import PageNumberPagination
from rest_framework.request import Request
from rest_framework.reverse import reverse
from django.http import HttpResponseRedirect
from .serializer import ProductosSerializer
from .models import Products

# Create your views here.
# Configuración de paginación
class CustomPagination(PageNumberPagination):
    page_size = 8  # Número de productos por página
    page_size_query_param = 'limit'  # Permite cambiar el tamaño con ?limit=valor
    max_page_size = 50  # Máximo de productos permitidos por página


class ProductsViewSet(viewsets.ModelViewSet):
    queryset = Products.objects.all()
    serializer_class = ProductosSerializer
    pagination_class = CustomPagination #Se aplica la paginacion

    def list(self, request: Request, *args, **kwargs):
        # Si no hay parámetro 'page', redirigir a '?page=1'
        if 'page' not in request.query_params:
            return HttpResponseRedirect(reverse('products-list') + '?page=1')

        return super().list(request, *args, **kwargs)