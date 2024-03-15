from rest_framework.serializers import PrimaryKeyRelatedField
from rest_framework.serializers import *
from rest_framework import serializers
from .models import *


# Area
class AreaSerializer(serializers.ModelSerializer):
    class Meta:
        model=Area
        fields='__all__'
    
    def validate(self,data):
        
        if data['area_name']:
            for n in data['area_name']:
                if n.isdigit():
                    raise serializers.ValidationError({'error':'area name cannot contain numbers'})
        
        return data

# User_type
class User_typeSerializer(serializers.ModelSerializer):
    class Meta:
        model=User_type
        fields='__all__'
    
    def validate(self,data):
        
        if data['user_type_name']:
            for n in data['user_type_name']:
                if n.isdigit():
                    raise serializers.ValidationError({'error':'user type name cannot contain numbers'})
        
        return data

# Product_category
class Product_categorySerializer(serializers.ModelSerializer):
    class Meta:
        model=Product_category
        # fields='__all__'
        exclude=['product_category_image',]
    
    def validate(self,data):
        
        if data['product_category_name']:
            for n in data['product_category_name']:
                if n.isdigit():
                    raise serializers.ValidationError({'error':'product category name cannot contain numbers'})
        
        return data
    
#  User
class UserSerializer(serializers.ModelSerializer):
    # user_type_id=PrimaryKeyRelatedField(many=True,queryset=User_type.objects.all())
    # pincode=PrimaryKeyRelatedField(many=True,queryset=Area.objects.all())
    # user_type_id = serializers.IntegerField(source='User_type.user_type_id')
    # user_type_id=User_typeSerializer()
    # pincode=AreaSerializer()
    class Meta:
        model=User
        fields='__all__'
        # exclude=['display_picture',]
    
    # def create(self, validated_data):
    #     # user_type_data = validated_data.pop('user_type_id')
    #     # user_type_id = User_type.objects.filter(**user_type_data)
    #     # user_type_id = User_type.objects.filter(user_type_id=user_type_id, **validated_data)
    #     # area_data = validated_data.pop('area_name')
    #     # pincode = Area.objects.filter(**area_data)
    #     # pincode = Area.objects.filter(pincode=pincode, **validated_data)
        
    #     # return user_type_id,pincode

#  Product
class ProductSerializer(serializers.ModelSerializer):
    # user_id=UserSerializer()
    # product_category_id=Product_categorySerializer()
    class Meta:
        model=Product
        fields='__all__'
    
    # def create(self, validated_data):
    #     user_data = validated_data.pop('user_id')
    #     user_id = User.objects.filter(**user_data)
    #     user_id = User.objects.filter(user_id=user_id, **validated_data)
    #     product_category_data = validated_data.pop('product_category_name')
    #     product_category_id = Product_category.objects.filter(**product_category_data)
    #     product_category_id = Product_category.objects.filter(product_category_id=product_category_id, **validated_data)
        
    #     return user_id,product_category_id