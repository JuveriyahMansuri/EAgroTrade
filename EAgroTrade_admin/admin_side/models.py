from django.db import models

# Create your models here.
class City(models.Model):
    city_id=models.AutoField(primary_key=True)
    city_name=models.CharField(null=True,max_length=20) 
    def __str__(self):
        return self.city_name
       
class Area(models.Model):
    pincode=models.AutoField(primary_key=True)
    area_name=models.CharField(null=True,max_length=30)
    city_id=models.ForeignKey(City, on_delete=models.CASCADE)
    def __str__(self):
        return self.area_name
        
class User_type(models.Model):
    user_type_id=models.AutoField(primary_key=True)
    user_type_name=models.CharField(null=True,max_length=20)
    def __str__(self):
        return self.user_type_name
class User(models.Model):
    user_id=models.AutoField(primary_key=True)
    user_name=models.CharField(null=True,max_length=50)
    email=models.CharField(null=True,max_length=28)
    mobile=models.CharField(null=True,max_length=10)
    url="C:/Users/Juveriyah/Desktop/CAPSTONE_PROJECT/EAgroTrade_admin/images/user/"
    display_picture=models.TextField(null=True)
    # display_picture=str(url+str(display_picture))
    address=models.TextField(null=True)
    user_type_id=models.ForeignKey(User_type, on_delete=models.CASCADE)
    pincode=models.ForeignKey(Area, on_delete=models.CASCADE)
    # city_id=models.ForeignKey(City, on_delete=models.CASCADE)
    password=models.CharField(null=True,max_length=20)
    security_question=models.TextField(null=True)
    security_answer=models.TextField(null=True)

class Payment(models.Model):
    payment_id=models.AutoField(primary_key=True)
    payment_mode=models.CharField(null=True,max_length=45)
    amount=models.FloatField(null=True)
    payment_date_time=models.DateTimeField(null=True)
    bank_ac_no=models.IntegerField(null=True)



class Product_category(models.Model):
    product_category_id=models.AutoField(primary_key=True)
    product_category_name=models.CharField(null=True,max_length=20)
    product_category_image=models.TextField(null=True)

class Sub_product_category(models.Model):
    sub_product_category_id=models.AutoField(primary_key=True)
    sub_product_category_name=models.CharField(null=True,max_length=20)
    sub_product_category_image=models.TextField(null=True)
    product_category_id=models.ForeignKey(Product_category, on_delete=models.CASCADE)

class Product(models.Model):
    product_id=models.AutoField(primary_key=True)
    product_name=models.CharField(null=True,max_length=20)
    description=models.TextField(null=True)
    unit_of_measurement=models.CharField(null=True,max_length=20)
    user_id=models.ForeignKey(User, on_delete=models.CASCADE)
    sub_product_category_id=models.ForeignKey(Sub_product_category, on_delete=models.CASCADE)

class Product_history(models.Model):
    product_history_id=models.AutoField(primary_key=True)
    price=models.FloatField(null=True)
    quantity=models.IntegerField(null=True)
    date=models.DateField(null=True)
    product_id=models.ForeignKey(Product, on_delete=models.CASCADE)

class EAuction(models.Model):
    e_auction_id=models.AutoField(primary_key=True)
    e_auction_date_time=models.DateTimeField(null=True)
    e_auction_duration=models.TimeField(null=True)
    final_price=models.FloatField(null=True)
    total_rounds=models.IntegerField(null=True)
    quantity=models.IntegerField(null=True)
    payment_id=models.ForeignKey(Payment, on_delete=models.CASCADE)
    product_id=models.ForeignKey(Product, on_delete=models.CASCADE)

class EAuctionUserDetail(models.Model):
    e_auction_user_detail_id=models.AutoField(primary_key=True)
    user_id=models.ForeignKey(User, on_delete=models.CASCADE)
    e_auction_id=models.ForeignKey(EAuction, on_delete=models.CASCADE)
    bidPrice=models.FloatField(null=True)
    maxRounds=models.IntegerField(null=True)
    bidDateTime=models.DateTimeField(null=True)

class Order(models.Model):
    # PENDING = "PENDING"
    # INPROCESS = "IN PROCESS"
    # COMPLETED = "COMPLETED"
  
    # get_status = {
    #     PENDING: "PENDING",
    #     INPROCESS: "IN PROCESS",
    #     COMPLETED: "COMPLETED",
       
    # }
    order_id=models.AutoField(primary_key=True)
    order_date=models.DateField(null=True)
    order_status=models.CharField(null=True,max_length=15)
    # order_status=models.CharField(max_length=3, choices=get_status,default=PENDING)
    payment_id=models.ForeignKey(Payment, on_delete=models.CASCADE)
    user_id=models.ForeignKey(User, on_delete=models.CASCADE)

class Product_photos(models.Model):
    product_photos_id=models.AutoField(primary_key=True)
    product_photo=models.TextField(null=True)
    product_id=models.ForeignKey(Product, on_delete=models.CASCADE)

class ProductDetail(models.Model):
    product_detail_id=models.AutoField(primary_key=True)
    price=models.FloatField(null=True)
    quantity=models.IntegerField(null=True)
    product_date=models.DateField(null=True)
    product_id=models.ForeignKey(Product, on_delete=models.CASCADE)

class OrderDetail(models.Model):
    product_id=models.ForeignKey(Product, on_delete=models.CASCADE)
    order_id=models.ForeignKey(Order, on_delete=models.CASCADE)
    quantity=models.IntegerField(null=True)
    price=models.FloatField(null=True)
