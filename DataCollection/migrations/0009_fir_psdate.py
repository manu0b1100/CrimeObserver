# Generated by Django 2.1.5 on 2019-01-31 18:33

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('DataCollection', '0008_auto_20190130_1918'),
    ]

    operations = [
        migrations.AddField(
            model_name='fir',
            name='psdate',
            field=models.DateTimeField(default=django.utils.timezone.now),
            preserve_default=False,
        ),
    ]
