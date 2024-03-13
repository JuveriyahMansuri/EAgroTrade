# Generated by Django 4.2.9 on 2024-03-10 10:54

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='EAuctionUserDetail',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('bidPrice', models.FloatField(null=True)),
                ('bidDateTime', models.DateTimeField(null=True)),
                ('isCancel', models.BooleanField(default=False, null=True)),
            ],
            options={
                'db_table': 'EAuctionUserDetail',
                'managed': False,
            },
        ),
        migrations.CreateModel(
            name='Area',
            fields=[
                ('pincode', models.IntegerField(primary_key=True, serialize=False)),
                ('area_name', models.CharField(max_length=50, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='EAuction',
            fields=[
                ('e_auction_id', models.AutoField(primary_key=True, serialize=False)),
                ('e_auction_start_date_time', models.DateTimeField(null=True)),
                ('e_auction_end_date_time', models.DateTimeField(null=True)),
                ('opening_price', models.FloatField(null=True)),
                ('quantity', models.IntegerField(null=True)),
                ('e_auction_cancel', models.BooleanField(default=False, null=True)),
                ('isCompleted', models.BooleanField(default=False, null=True)),
                ('e_auction_description', models.TextField(null=True)),
            ],
            options={
                'db_table': 'EAuction',
            },
        ),
        migrations.CreateModel(
            name='Product',
            fields=[
                ('product_id', models.AutoField(primary_key=True, serialize=False)),
                ('product_name', models.CharField(max_length=30, null=True)),
                ('description', models.TextField(null=True)),
                ('unit_of_measurement', models.CharField(max_length=20, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Product_category',
            fields=[
                ('product_category_id', models.AutoField(primary_key=True, serialize=False)),
                ('product_category_name', models.CharField(max_length=20, null=True)),
                ('product_category_image', models.ImageField(null=True, upload_to='pc_images/')),
            ],
        ),
        migrations.CreateModel(
            name='User_type',
            fields=[
                ('user_type_id', models.AutoField(primary_key=True, serialize=False)),
                ('user_type_name', models.CharField(max_length=20, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='User',
            fields=[
                ('user_id', models.AutoField(primary_key=True, serialize=False)),
                ('first_name', models.CharField(max_length=30, null=True)),
                ('last_name', models.CharField(max_length=30, null=True)),
                ('email', models.CharField(max_length=28, null=True)),
                ('mobile', models.CharField(max_length=10, null=True)),
                ('display_picture', models.ImageField(null=True, upload_to='images/')),
                ('address', models.TextField(null=True)),
                ('shop_no', models.IntegerField(null=True)),
                ('shop_name', models.CharField(max_length=20, null=True)),
                ('street_name', models.CharField(max_length=30, null=True)),
                ('password', models.CharField(max_length=20, null=True)),
                ('security_question', models.TextField(null=True)),
                ('security_answer', models.TextField(null=True)),
                ('language_preference', models.CharField(max_length=30, null=True)),
                ('business_name', models.CharField(max_length=45, null=True)),
                ('establishment_year', models.IntegerField(null=True)),
                ('business_description', models.TextField(null=True)),
                ('gst_no', models.IntegerField(null=True)),
                ('licence_no', models.IntegerField(null=True)),
                ('licence_image', models.ImageField(null=True, upload_to='images/')),
                ('weekly_off', models.TextField(null=True)),
                ('pincode', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='admin_side.area')),
                ('user_type_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='admin_side.user_type')),
            ],
            options={
                'db_table': 'User',
            },
        ),
        migrations.CreateModel(
            name='Product_photos',
            fields=[
                ('product_photos_id', models.AutoField(primary_key=True, serialize=False)),
                ('product_photo', models.ImageField(null=True, upload_to='pc_images/')),
                ('product_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='admin_side.product')),
            ],
        ),
        migrations.AddField(
            model_name='product',
            name='product_category_id',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='admin_side.product_category'),
        ),
        migrations.AddField(
            model_name='product',
            name='user_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='admin_side.user'),
        ),
        migrations.CreateModel(
            name='Payment',
            fields=[
                ('payment_id', models.AutoField(primary_key=True, serialize=False)),
                ('payment_method', models.CharField(max_length=45, null=True)),
                ('amount', models.FloatField(null=True)),
                ('payment_date_time', models.DateTimeField(null=True)),
                ('transaction_id', models.IntegerField(null=True)),
                ('e_auction_id', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='admin_side.eauction')),
            ],
        ),
        migrations.AddField(
            model_name='eauction',
            name='product_id',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='admin_side.product'),
        ),
        migrations.CreateModel(
            name='Delivery',
            fields=[
                ('delivery_id', models.AutoField(primary_key=True, serialize=False)),
                ('is_delivery_charges_paid', models.BooleanField(default=False, null=True)),
                ('address', models.TextField(null=True)),
                ('shop_no', models.IntegerField(null=True)),
                ('shop_name', models.CharField(max_length=20, null=True)),
                ('street_name', models.CharField(max_length=30, null=True)),
                ('delivery_status', models.CharField(max_length=45, null=True)),
                ('status_date_time', models.DateTimeField(null=True)),
                ('estimated_delivery_date_time', models.DateTimeField(null=True)),
                ('delivery_charges', models.FloatField(null=True)),
                ('isDelivered', models.BooleanField(default=False, null=True)),
                ('eAuction_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='admin_side.eauction')),
                ('pincode', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='admin_side.area')),
            ],
        ),
    ]