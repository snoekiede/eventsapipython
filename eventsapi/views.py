from django.shortcuts import render
from rest_framework import generics
from eventsapi.models import WebEvent
from eventsapi.serializers import WebEventSerializer

# Create your views here.
class WebEventList(generics.ListCreateAPIView):
    queryset = WebEvent.objects.all()
    serializer_class = WebEventSerializer

class WebEventDetail(generics.RetrieveUpdateDestroyAPIView):
    queryset = WebEvent.objects.all()
    serializer_class = WebEventSerializer