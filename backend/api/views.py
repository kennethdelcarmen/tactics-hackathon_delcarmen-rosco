from rest_framework import views, response, generics

from .models import *
from .serializers import *

class QueryList(generics.ListCreateAPIView):
    queryset = Query.objects.all()
    serializer_class = QuerySerializer

class QueryDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Query.objects.all()
    serializer_class = QuerySerializer

class QuerySearch(views.APIView):
    def get(self, request, format=None):
        # query = Query.objects.filter(source_location_lat__range = ())
        query = QuerySerializer(Query.objects.all(), many=True)

        return response.Response(query.data)

class AnswerList(generics.ListCreateAPIView):
    queryset = Answer.objects.all()
    serializer_class =  AnswerSerializer

class AnswerDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = Answer.objects.all()
    serializer_class =  AnswerSerializer