from django.urls import path
from rest_framework.urlpatterns import format_suffix_patterns
from eventsapi.views import WebEventList, WebEventDetail

urlpatterns=[
    path('events/', WebEventList.as_view()),
    path('events/<int:pk>/', WebEventDetail.as_view()),
]