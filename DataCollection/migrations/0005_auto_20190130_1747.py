# Generated by Django 2.1.5 on 2019-01-30 17:47

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('DataCollection', '0004_auto_20190130_1745'),
    ]

    operations = [
        migrations.AlterField(
            model_name='district',
            name='district_id',
            field=models.IntegerField(),
        ),
        migrations.AlterField(
            model_name='district',
            name='name',
            field=models.CharField(max_length=100, unique=True),
        ),
    ]