from apps import AdminSideConfig
from . import views
from django.contrib import admin
from django.urls import path,include
from .views import *
from rest_framework import routers

urlpatterns = [
    path('',AdminSideConfig)
]
