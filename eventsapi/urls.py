from django.urls import path
from eventsapi.views import WebEventList, WebEventDetail

urlpatterns=[
    path('events/', WebEventList.as_view()),
    path('even/<int:pk>/', WebEventDetail.as_view()),
]
