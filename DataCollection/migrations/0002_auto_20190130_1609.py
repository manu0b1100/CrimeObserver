# Generated by Django 2.1.5 on 2019-01-30 16:09

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('DataCollection', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='fir',
            name='extracted_on',
            field=models.DateTimeField(default=datetime.datetime(2019, 1, 30, 16, 9, 0, 85635)),
        ),
        migrations.AlterField(
            model_name='policestation',
            name='name',
            field=models.CharField(max_length=100, unique=True),
        ),
    ]
