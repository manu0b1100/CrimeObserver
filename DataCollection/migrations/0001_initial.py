# Generated by Django 2.1.5 on 2019-01-30 16:03

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='District',
            fields=[
                ('name', models.CharField(max_length=100)),
                ('id', models.IntegerField(primary_key=True, serialize=False)),
            ],
        ),
        migrations.CreateModel(
            name='Fir',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('act', models.CharField(max_length=100)),
                ('address', models.CharField(max_length=1000)),
                ('date', models.DateTimeField()),
                ('link', models.CharField(max_length=200, unique=True)),
                ('section', models.CharField(max_length=50)),
                ('time', models.TimeField()),
                ('latitude', models.DecimalField(decimal_places=7, max_digits=20)),
                ('longitude', models.DecimalField(decimal_places=7, max_digits=20)),
                ('wrong_address', models.BooleanField()),
                ('all_charge', models.CharField(max_length=200)),
                ('final_charge', models.CharField(max_length=200)),
                ('extracted_on', models.DateTimeField(default=datetime.datetime(2019, 1, 30, 16, 3, 2, 955711))),
            ],
        ),
        migrations.CreateModel(
            name='PoliceStation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('station_id', models.IntegerField()),
                ('last_fir_id', models.IntegerField(default=0)),
                ('district', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='DataCollection.District')),
            ],
        ),
        migrations.AddField(
            model_name='fir',
            name='police_station',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='DataCollection.PoliceStation'),
        ),
    ]