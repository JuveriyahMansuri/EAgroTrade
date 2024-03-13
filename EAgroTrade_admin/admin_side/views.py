from django.shortcuts import render
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .models import *
from .serializers import *

# Create your views here.

@api_view(['GET'])
def getArea(request):
    # area_obj=Area.objects.all()
    # serializer=AreaSerializer(area_obj,many=True)
    return Response({'status':200,'message':"hello world"})