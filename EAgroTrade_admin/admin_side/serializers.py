from rest_framework import serializers
from .models import *

class AreaSerializer(serializers.ModelSerializer):
    class Meta:
        model=Area
        field='__all__'