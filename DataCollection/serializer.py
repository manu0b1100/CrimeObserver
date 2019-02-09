from rest_framework import serializers
from .models import Fir



class FirSerializer(serializers.ModelSerializer):

    date=serializers.SerializerMethodField()
    district=serializers.SerializerMethodField()
    police_station=serializers.SerializerMethodField()
    hour=serializers.SerializerMethodField()
    def get_time(self,fir):
        return fir.time.strftime('%hh:%mm')

    def get_date(self,fir):
        return fir.date.strftime('%Y-%m-%d')

    def get_district(self,fir):
        return fir.police_station.district

    def get_police_station(self,fir):
        return fir.police_station.name

    def get_hour(self,fir):
        return 1


    class Meta:
        model=Fir
        fields=('date','final_charge','district','police_station','hour','latitude','longitude','time','link')





