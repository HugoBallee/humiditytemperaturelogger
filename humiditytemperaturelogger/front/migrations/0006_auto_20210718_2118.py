# Generated by Django 3.1.5 on 2021-07-18 21:18

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('front', '0005_auto_20210718_2101'),
    ]

    operations = [
        migrations.AlterField(
            model_name='humiditylimits',
            name='id',
            field=models.CharField(max_length=100, primary_key=True, serialize=False),
        ),
        migrations.AlterField(
            model_name='temperaturelimits',
            name='id',
            field=models.CharField(max_length=100, primary_key=True, serialize=False),
        ),
    ]
