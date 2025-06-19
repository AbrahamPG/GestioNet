from django.urls import path, include
from rest_framework import routers
from productos import views

router = routers.DefaultRouter()
router.register(r'products', views.ProductsViewSet, basename='products')

urlpatterns = [
    path('',include(router.urls))
]