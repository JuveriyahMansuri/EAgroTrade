from django.contrib import admin
from admin_side.models import *

# below is for img
from django.utils.html import format_html
# Register your models here.

# class UserTypeAdmin(admin.ModelAdmin):
    
#     list_display=('user_type_id','user_type_name',)
#     list_editable=('user_type_name',)
#     list_per_page = 5
#     search_fields = ('user_type_id','user_type_name',)
#     list_filter = ('user_type_id','user_type_name',)
# class AreaAdmin(admin.ModelAdmin):
    
#     list_display=('pincode','area_name',)
#     list_editable=('area_name',)
#     list_per_page = 5
#     search_fields = ('pincode','area_name',)
#     list_filter = ('pincode','area_name',)
# class UserAdmin(admin.ModelAdmin):
#     def image_tag(self, obj):
#         return format_html('<img src="{}" style="max-width:200px; max-height:200px"/>'.format(obj.display_picture))
    
#     list_display=('user_id','user_name','email','mobile','image_tag','address','user_type_id','pincode','password','security_question','security_answer')
#     list_editable=('user_name','email','mobile','address','user_type_id','pincode','password','security_question','security_answer')
#     list_per_page = 5
#     search_fields = ('user_id','user_name')
#     list_filter = ('user_id','user_name')
    

    
    



# class PaymentAdmin(admin.ModelAdmin):
#     list_display=('payment_id','payment_mode','amount','payment_date_time','bank_ac_no')
#     list_editable=('payment_mode','amount')
#     list_per_page = 5
#     search_fields = ('payment_id','payment_mode','amount','payment_date_time','bank_ac_no')
#     list_filter = ('payment_id',)
    
# class OrderDetailAdmin(admin.ModelAdmin):
#     list_display=('product_id','order_id','quantity','price')
#     list_editable=('quantity','price')
#     list_per_page = 5
#     search_fields = ('product_id','order_id','quantity','price')
#     list_filter = ('order_id','product_id')
    
    
# class ProductAdmin(admin.ModelAdmin):
#     list_display=('product_id','product_name','description','unit_of_measurement','user_id','sub_product_category_id')
#     list_editable=('product_name','description')
#     list_per_page = 5
#     search_fields =('product_id','product_name','description','unit_of_measurement','user_id','sub_product_category_id')
#     list_filter = ('product_id','user_id','sub_product_category_id')
    

# class ProductCategoryAdmin(admin.ModelAdmin):
#     list_display=('product_category_id','product_category_name','product_category_image')
#     list_editable=('product_category_name','product_category_image')
#     list_per_page = 5
#     search_fields =('product_category_id','product_category_name','product_category_image')
#     list_filter = ('product_category_id','product_category_name')
    

# class SubProductCategoryAdmin(admin.ModelAdmin):
#     list_display=('sub_product_category_id','sub_product_category_name','sub_product_category_image')
#     list_editable=('sub_product_category_name','sub_product_category_image')
#     list_per_page = 5
#     search_fields =('sub_product_category_id','sub_product_category_name','sub_product_category_image')
#     list_filter = ('sub_product_category_id','sub_product_category_name','product_category_id')

# class ProductPhotosAdmin(admin.ModelAdmin):
#     list_display=('product_photos_id','product_photo','product_id')
#     list_editable=('product_photo',)
#     list_per_page = 5
#     search_fields =('product_photos_id','product_photo','product_id')
#     list_filter = ('product_photos_id','product_id',)
    
    
# class ProductDetailsAdmin(admin.ModelAdmin):
#     list_display=('product_detail_id','price','quantity','product_date','product_id')
#     list_editable=('price','quantity','product_date')
#     list_per_page = 5
#     search_fields =('product_detail_id','price','quantity','product_date','product_id')
#     list_filter = ('product_detail_id','product_id')


# admin.site.register(City,CityAdmin)
# admin.site.register(User_type,UserTypeAdmin)
# admin.site.register(Area,AreaAdmin)
# admin.site.register(User,UserAdmin)
# admin.site.register(Order,OrderAdmin)
# admin.site.register(Payment,PaymentAdmin)
# admin.site.register(OrderDetail,OrderDetailAdmin)
# admin.site.register(Product,ProductAdmin)
# admin.site.register(Product_category,ProductCategoryAdmin)
# admin.site.register(Sub_product_category,SubProductCategoryAdmin)
# admin.site.register(Product_photos,ProductPhotosAdmin)
# admin.site.register(ProductDetail,ProductDetailsAdmin)