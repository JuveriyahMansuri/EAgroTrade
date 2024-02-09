from django.db import models
# from viewflow.fields import CompositeKey
from cpkmodel import CPkModel

# Create your models here.
# class City(models.Model):
#     city_id=models.AutoField(primary_key=True)
#     city_name=models.CharField(null=True,max_length=20) 
#     def __str__(self):
#         return self.city_name
       
class Area(models.Model):
    pincode=models.AutoField(primary_key=True)
    area_name=models.CharField(null=True,max_length=50)
    # city_id=models.ForeignKey(City, on_delete=models.CASCADE)
    def __str__(self):
        return self.area_name
        
class User_type(models.Model):
    user_type_id=models.AutoField(primary_key=True)
    user_type_name=models.CharField(null=True,max_length=20)
    def __str__(self):
        return self.user_type_name
class User(models.Model):
    user_id=models.AutoField(primary_key=True)
    first_name=models.CharField(null=True,max_length=30)
    last_name=models.CharField(null=True,max_length=30)
    email=models.CharField(null=True,max_length=28)
    mobile=models.CharField(null=True,max_length=10)
    url="C:/Users/Juveriyah/Desktop/CAPSTONE_PROJECT/EAgroTrade_admin/images/user/"
    # set below display_picture datatype to blob field
    display_picture=models.TextField(null=True)
    # display_picture=str(url+str(display_picture))
    address=models.TextField(null=True)
    shop_no=models.IntegerField(null=True)
    shop_name=models.CharField(null=True,max_length=20)
    street_name=models.CharField(null=True,max_length=30)
    user_type_id=models.ForeignKey(User_type, on_delete=models.CASCADE)
    pincode=models.ForeignKey(Area, on_delete=models.CASCADE)
    # city_id=models.ForeignKey(City, on_delete=models.CASCADE)
    password=models.CharField(null=True,max_length=20)
    security_question=models.TextField(null=True)
    security_answer=models.TextField(null=True)
    language_preference=models.CharField(null=True,max_length=30)
    business_name=models.CharField(null=True,max_length=45)
    establishment_year=models.IntegerField(null=True)
    business_description=models.TextField(null=True)
    gst_no=models.IntegerField(null=True)
    licence_no=models.IntegerField(null=True)
    # here below blob field will come
    licence_image=models.TextField(null=True)
    # here below options would come
    weekly_off=models.TextField(null=True)
    class Meta:
        db_table = 'User'





class Product_category(models.Model):
    product_category_id=models.AutoField(primary_key=True)
    product_category_name=models.CharField(null=True,max_length=20)
#    here below too blob will come as datatype
    product_category_image=models.TextField(null=True)

# class Sub_product_category(models.Model):
#     sub_product_category_id=models.AutoField(primary_key=True)
#     sub_product_category_name=models.CharField(null=True,max_length=20)
#     sub_product_category_image=models.TextField(null=True)
#     product_category_id=models.ForeignKey(Product_category, on_delete=models.CASCADE)

class Product(models.Model):
    product_id=models.AutoField(primary_key=True)
    product_name=models.CharField(null=True,max_length=30)
    description=models.TextField(null=True)
    unit_of_measurement=models.CharField(null=True,max_length=20)
    user_id=models.ForeignKey(User, on_delete=models.CASCADE)
    product_category_id=models.ForeignKey(Product_category, on_delete=models.CASCADE,null=True)

# class Product_history(models.Model):
#     product_history_id=models.AutoField(primary_key=True)
#     price=models.FloatField(null=True)
#     quantity=models.IntegerField(null=True)
#     date=models.DateField(null=True)
#     product_id=models.ForeignKey(Product, on_delete=models.CASCADE)

class EAuction(models.Model):
    e_auction_id=models.AutoField(primary_key=True)
    e_auction_date_time=models.DateTimeField(null=True)
    opening_price=models.FloatField(null=True)
    quantity=models.IntegerField(null=True)
    e_auction_cancel=models.BooleanField(null=True)
    isCompleted=models.BooleanField(null=True)
    e_auction_duration=models.TimeField(null=True)
    # final_price=models.FloatField(null=True)
    # total_rounds=models.IntegerField(null=True)
    e_auction_description=models.TextField(null=True)
    product_id=models.ForeignKey(Product, on_delete=models.CASCADE)
    class Meta:
        db_table = 'EAuction'

class EAuctionUserDetail(models.Model):
    # e_auction_user_detail_id=models.AutoField(primary_key=True)
    user_id=models.ForeignKey(User,primary_key=True, on_delete=models.CASCADE)
    e_auction_id=models.ForeignKey(EAuction, primary_key=True,on_delete=models.CASCADE)
    bidPrice=models.FloatField(null=True)
    # round=models.IntegerField(null=True)
    bidDateTime=models.DateTimeField(null=True)
    isCancel=models.BooleanField(null=True)
    class Meta:
        managed = False  # for CompositePK *1
        db_table = 'EAuctionUserDetail'
        unique_together = (('user_id', 'e_auction_id'),)  # for CompositePK

# class Order(models.Model):
#     # PENDING = "PENDING"
#     # INPROCESS = "IN PROCESS"
#     # COMPLETED = "COMPLETED"
  
#     # get_status = {
#     #     PENDING: "PENDING",
#     #     INPROCESS: "IN PROCESS",
#     #     COMPLETED: "COMPLETED",
       
#     # }
#     order_id=models.AutoField(primary_key=True)
#     order_date=models.DateField(null=True)
#     order_status=models.CharField(null=True,max_length=15)
#     # order_status=models.CharField(max_length=3, choices=get_status,default=PENDING)
#     payment_id=models.ForeignKey(Payment, on_delete=models.CASCADE)
#     user_id=models.ForeignKey(User, on_delete=models.CASCADE)

class Product_photos(models.Model):
    product_photos_id=models.AutoField(primary_key=True)
    product_photo=models.TextField(null=True)
    product_id=models.ForeignKey(Product, on_delete=models.CASCADE)

class Payment(models.Model):
    payment_id=models.AutoField(primary_key=True)
    payment_method=models.CharField(null=True,max_length=45)
    amount=models.FloatField(null=True)
    payment_date_time=models.DateTimeField(null=True)
    transaction_id=models.IntegerField(null=True)
    e_auction_id=models.ForeignKey(EAuction, on_delete=models.CASCADE,null=True)
   
class delivery(models.Model):
    delivery_id=models.AutoField(primary_key=True)
    address=models.TextField(null=True)
    shop_no=models.IntegerField(null=True)
    shop_name=models.CharField(null=True,max_length=20)
    street_name=models.CharField(null=True,max_length=30)
    pincode=models.ForeignKey(Area, on_delete=models.CASCADE)
    #  here below put options
    delivery_status=models.CharField(null=True,max_length=45)
    status_date_time=models.DateTimeField(null=True)
    estimated_delivery=models.DateTimeField(null=True)
    delivery_charges=models.FloatField(null=True)
    isDelivered=models.BooleanField(null=True)
    eAuction_id=models.ForeignKey(EAuction, on_delete=models.CASCADE)

# class ProductDetail(models.Model):
#     product_detail_id=models.AutoField(primary_key=True)
#     price=models.FloatField(null=True)
#     quantity=models.IntegerField(null=True)
#     product_date=models.DateField(null=True)
#     product_id=models.ForeignKey(Product, on_delete=models.CASCADE)

# class OrderDetail(models.Model):
#     product_id=models.ForeignKey(Product, on_delete=models.CASCADE)
#     order_id=models.ForeignKey(Order, on_delete=models.CASCADE)
#     quantity=models.IntegerField(null=True)
#     price=models.FloatField(null=True)
