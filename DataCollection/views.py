from rest_framework.views import APIView
from rest_framework.response import Response
from DataCollection.serializer import FirSerializer
from DataCollection.models import Fir


class FirView(APIView):

    def get(self,request):
        fs=FirSerializer(Fir.objects.all(), many=True)
        return Response(fs.data)