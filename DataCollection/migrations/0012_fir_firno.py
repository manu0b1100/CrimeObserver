# Generated by Django 2.1.5 on 2019-02-06 12:42

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('DataCollection', '0011_auto_20190204_2031'),
    ]

    operations = [
        migrations.AddField(
            model_name='fir',
            name='firno',
            field=models.CharField(default='', max_length=20),
        ),
    ]