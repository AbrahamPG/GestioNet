from rest_framework.pagination import PageNumberPagination

class CustomPagination(PageNumberPagination):
    page_size_query_param = 'limit'  # Permite cambiar el tamaño de la página con `?limit=valor`
    max_page_size = 100  # Máximo de productos por página permitido
