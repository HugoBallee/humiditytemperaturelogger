# Generated by Django 3.1.5 on 2021-07-18 21:01

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('front', '0004_auto_20210718_2049'),
    ]

    operations = [
        migrations.DeleteModel(
            name='HumidityLimitsAdmin',
        ),
        migrations.DeleteModel(
            name='TemperatureLimitsAdmin',
        ),
    ]
