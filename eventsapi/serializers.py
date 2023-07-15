from rest_framework import serializers
from eventsapi.models import WebEvent

class WebEventSerializer(serializers.ModelSerializer):
    class Meta:
        model = WebEvent
        fields = ['id', 'name', 'location', 'date', 'time', 'description']