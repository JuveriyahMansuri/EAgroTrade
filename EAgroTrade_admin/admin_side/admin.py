from django.contrib import admin
from admin_side.models import *
# below is for img
from django.utils.html import format_html
# Register your models here.
class CityAdmin(admin.ModelAdmin):
    
    list_display=('city_id','city_name',)
    list_editable=('city_name',)
    list_per_page = 5
    search_fields = ('city_id','city_name',)
    list_filter = ('city_id','city_name',)
class UserTypeAdmin(admin.ModelAdmin):
    
    list_display=('user_type_id','user_type_name',)
    list_editable=('user_type_name',)
    list_per_page = 5
    search_fields = ('user_type_id','user_type_name',)
    list_filter = ('user_type_id','user_type_name',)
class AreaAdmin(admin.ModelAdmin):
    
    list_display=('pincode','area_name','city_id',)
    list_editable=('area_name','city_id',)
    list_per_page = 5
    search_fields = ('pincode','area_name','city_id',)
    list_filter = ('pincode','area_name','city_id',)
class UserAdmin(admin.ModelAdmin):
    def image_tag(self, obj):
        return format_html('<img src="{}" style="max-width:200px; max-height:200px"/>'.format(obj.display_picture))
    
    list_display=('user_id','user_name','email','mobile','image_tag','address','user_type_id','pincode','password','security_question','security_answer')
    list_editable=('user_name','email','mobile','address','user_type_id','pincode','password','security_question','security_answer')
    list_per_page = 5
    search_fields = ('user_id','user_name')
    list_filter = ('user_id','user_name')
admin.site.register(City,CityAdmin)
admin.site.register(User_type,UserTypeAdmin)
admin.site.register(Area,AreaAdmin)
admin.site.register(User,UserAdmin)
