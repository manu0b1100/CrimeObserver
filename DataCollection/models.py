from django.db import models
import datetime




class PoliceStation(models.Model):
    name=models.CharField(max_length=100, unique=True)
    district=models.CharField(max_length=100)
    last_fir_id=models.CharField(null=False, default='', max_length=13)
    def __str__(self):
        return self.name


class Fir(models.Model):
    firno=models.CharField(max_length=20, default='')
    act=models.CharField(max_length=100, default='')
    address=models.CharField(max_length=1000, default='')
    date=models.DateField(null=True)
    link=models.CharField(max_length=200, unique=True, null=False)
    section= models.CharField(max_length=50, default='')
    time=models.TimeField(null=True)
    latitude=models.DecimalField(decimal_places=7,max_digits=20, default=0.0)
    longitude=models.DecimalField(decimal_places=7,max_digits=20, default=0.0)
    police_station=models.ForeignKey(PoliceStation, on_delete=models.CASCADE)
    wrong_address= models.BooleanField(null=True)
    all_charge=models.CharField(max_length=500, default='')
    final_charge=models.CharField(max_length=200, default='')
    extracted_on=models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.firno



