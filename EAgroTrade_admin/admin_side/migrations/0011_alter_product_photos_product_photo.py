# Generated by Django 4.2.9 on 2024-03-09 19:16

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('admin_side', '0010_alter_delivery_isdelivered_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product_photos',
            name='product_photo',
            field=models.ImageField(null=True, upload_to='pc_images/'),
        ),
    ]
