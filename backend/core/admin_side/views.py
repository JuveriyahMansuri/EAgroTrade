from django.shortcuts import render
from django.shortcuts import redirect
from django.http import HttpResponse
from rest_framework import viewsets,status,permissions
from rest_framework.decorators import api_view,action
from rest_framework.response import Response
from .models import *
from .serializers import *

# Create your views here.
#  Area

class AreaViewSet(viewsets.ModelViewSet):
    queryset=Area.objects.all()
    serializer_class=AreaSerializer
    def post(self, request, format=None):
        areavar = AreaSerializer(data=request.data)
        if areavar.is_valid():
            areavar.save()
            return Response(areavar.data, status=status.HTTP_201_CREATED)
        return Response(areavar.errors, status=status.HTTP_400_BAD_REQUEST)

class User_typeViewSet(viewsets.ModelViewSet):
    queryset=User_type.objects.all()
    serializer_class=User_typeSerializer
    def post(self, request, format=None):
        user_typevar = User_typeSerializer(data=request.data)
        if user_typevar.is_valid():
            user_typevar.save()
            return Response(user_typevar.data, status=status.HTTP_201_CREATED)
        return Response(user_typevar.errors, status=status.HTTP_400_BAD_REQUEST)

class Product_categoryViewSet(viewsets.ModelViewSet):
    queryset=Product_category.objects.all()
    serializer_class=Product_categorySerializer

class UserViewSet(viewsets.ModelViewSet):
    queryset=User.objects.all()
    serializer_class=UserSerializer
    # def post(self, request, format=None):
    #     uservar = UserSerializer(data=request.data)
    #     if uservar.is_valid():
    #         uservar.save()
    #         return Response(uservar.data, status=status.HTTP_201_CREATED)
    #     return Response(uservar.errors, status=status.HTTP_400_BAD_REQUEST)
    
    
class ProductViewSet(viewsets.ModelViewSet):
    queryset=Product.objects.all()
    serializer_class=ProductSerializer
    

class EAuctionViewSet(viewsets.ModelViewSet):
    queryset=EAuction.objects.all()
    serializer_class=EAuctionSerializer

class EAuctionUserDetailViewSet(viewsets.ModelViewSet):
    queryset=EAuctionUserDetail.objects.all()
    serializer_class=EAuctionUserDetailSerializer

class Product_photosViewSet(viewsets.ModelViewSet):
    queryset=Product_photos.objects.all()
    serializer_class=Product_photosSerializer

class PaymentViewSet(viewsets.ModelViewSet):
    queryset=Payment.objects.all()
    serializer_class=PaymentSerializer

class DeliveryViewSet(viewsets.ModelViewSet):
    queryset=Delivery.objects.all()
    serializer_class=DeliverySerializer

# get
# @api_view(['GET'])
# def get_area(request):
#     area_obj=Area.objects.all()
#     serializer=AreaSerializer(area_obj,many=True)
#     return Response({'status':200,'payload':serializer.data})
# # post
# @api_view(['POST'])
# def post_area(request):
    
#     serializer=AreaSerializer(data=request.data)
    
#     if not serializer.is_valid():
#         return Response({'status':403,'errors':serializer.errors,'message':'something went wrong'})
    
#     serializer.save()
#     return Response({'status':200,'payload':serializer.data,'message':'your data is saved'})

# # put
# @api_view(['PUT'])
# def put_area(request,pincode):
#     try:
#         area_obj=Area.objects.get(pincode=pincode)
#         serializer=AreaSerializer(area_obj,data=request.data,partial=True)
#         if not serializer.is_valid():
#             return Response({'status':403,'errors':serializer.errors,'message':'something went wrong'})
        
#         serializer.save()
#         return Response({'status':200,'payload':serializer.data,'message':'your data is saved'})
#     except Exception as e:
#         print(e)
#         return Response({'status':403,'message':'invalid id'})

# # delete
# @api_view(['DELETE'])
# def delete_area(request,pincode):
#     try:
#         # pincode=request.GET.get('pincode')
#         area_obj=Area.objects.get(pincode=pincode)
#         area_obj.delete()
#         return Response({'status':200,'message':'deleted'})

#     except Exception as e:
#         print(e)
#         return Response({'status':403,'message':'invalid id'})

#  User_type
# get
# @api_view(['GET'])
# def get_user_type(request):
#     user_type_obj=User_type.objects.all()
#     serializer=User_typeSerializer(user_type_obj,many=True)
#     return Response({'status':200,'payload':serializer.data})
# # post
# @api_view(['POST'])
# def post_user_type(request):
    
#     serializer=User_typeSerializer(data=request.data)
    
#     if not serializer.is_valid():
#         return Response({'status':403,'errors':serializer.errors,'message':'something went wrong'})
    
#     serializer.save()
#     return Response({'status':200,'payload':serializer.data,'message':'your data is saved'})

# # put
# @api_view(['PUT'])
# def put_user_type(request,user_type_id):
#     try:
#         user_type_obj=User_type.objects.get(user_type_id=user_type_id)
#         serializer=User_typeSerializer(user_type_obj,data=request.data,partial=True)
#         if not serializer.is_valid():
#             return Response({'status':403,'errors':serializer.errors,'message':'something went wrong'})
        
#         serializer.save()
#         return Response({'status':200,'payload':serializer.data,'message':'your data is saved'})
#     except Exception as e:
#         print(e)
#         return Response({'status':403,'message':'invalid id'})

# # delete
# @api_view(['DELETE'])
# def delete_user_type(request,user_type_id):
#     try:
#         # pincode=request.GET.get('pincode')
#         user_type_obj=User_type.objects.get(user_type_id=user_type_id)
#         user_type_obj.delete()
#         return Response({'status':200,'message':'deleted'})

#     except Exception as e:
#         print(e)
#         return Response({'status':403,'message':'invalid id'})

#  Product_category
# get
# @api_view(['GET'])
# def get_product_category(request):
#     product_category_obj=Product_category.objects.all()
#     serializer=Product_categorySerializer(product_category_obj,many=True)
#     return Response({'status':200,'payload':serializer.data})
# # post
# @api_view(['POST'])
# def post_product_category(request):
    
#     serializer=Product_categorySerializer(data=request.data)
    
#     if not serializer.is_valid():
#         return Response({'status':403,'errors':serializer.errors,'message':'something went wrong'})
    
#     serializer.save()
#     return Response({'status':200,'payload':serializer.data,'message':'your data is saved'})

# # put
# @api_view(['PUT'])
# def put_product_category(request,product_category_id):
#     try:
#         product_category_obj=Product_category.objects.get(product_category_id=product_category_id)
#         serializer=Product_categorySerializer(product_category_obj,data=request.data,partial=True)
#         if not serializer.is_valid():
#             return Response({'status':403,'errors':serializer.errors,'message':'something went wrong'})
        
#         serializer.save()
#         return Response({'status':200,'payload':serializer.data,'message':'your data is saved'})
#     except Exception as e:
#         print(e)
#         return Response({'status':403,'message':'invalid id'})

# # delete
# @api_view(['DELETE'])
# def delete_product_category(request,product_category_id):
#     try:
#         # pincode=request.GET.get('pincode')
#         product_category_obj=Product_category.objects.get(product_category_id=product_category_id)
#         product_category_obj.delete()
#         return Response({'status':200,'message':'deleted'})

#     except Exception as e:
#         print(e)
#         return Response({'status':403,'message':'invalid id'})
    
# User
# get
# @api_view(['GET'])
# def get_user(request):
#     user_obj=User.objects.all()
#     serializer=UserSerializer(user_obj,many=True)
#     return Response({'status':200,'payload':serializer.data})
# # below post is not working
# #post
# @api_view(['POST']) 
# def post_user(request):
    
#     serializer=UserSerializer(data=request.data)
    
#     if not serializer.is_valid():
#         return Response({'status':403,'errors':serializer.errors,'message':'something went wrong'})
    
#     serializer.save()
#     return Response({'status':200,'payload':serializer.data,'message':'your data is saved'})
# # below put is not working
# # put
# @api_view(['PUT'])
# def put_user(request,user_id):
#     try:
#         user_obj=User.objects.get(user_id=user_id)
#         serializer=UserSerializer(user_obj,data=request.data,partial=True)
#         if not serializer.is_valid():
#             return Response({'status':403,'errors':serializer.errors,'message':'something went wrong'})
        
#         serializer.save()
#         return Response({'status':200,'payload':serializer.data,'message':'your data is saved'})
#     except Exception as e:
#         print(e)
#         return Response({'status':403,'message':'invalid id'})
# # below delete is not working
# # delete
# @api_view(['DELETE'])
# def delete_user(request,user_id):
#     try:
        
#         user_obj=Product_category.objects.get(user_id=user_id)
#         user_obj.delete()
#         return Response({'status':200,'message':'deleted'})

#     except Exception as e:
#         print(e)
#         return Response({'status':403,'message':'invalid id'})


# Product
# get
# @api_view(['GET'])
# def get_product(request):
#     product_obj=Product.objects.all()
#     serializer=UserSerializer(product_obj,many=True)
#     return Response({'status':200,'payload':serializer.data})
# #post
# @api_view(['POST']) 
# def post_product(request):
    
#     serializer=ProductSerializer(data=request.data)
    
#     if not serializer.is_valid():
#         return Response({'status':403,'errors':serializer.errors,'message':'something went wrong'})
    
#     serializer.save()
#     return Response({'status':200,'payload':serializer.data,'message':'your data is saved'})

