# Generated by Django 3.1.5 on 2021-07-18 21:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('front', '0009_auto_20210718_2127'),
    ]

    operations = [
        migrations.AlterField(
            model_name='humiditylimits',
            name='id',
            field=models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
        migrations.AlterField(
            model_name='temperaturelimits',
            name='id',
            field=models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
    ]
