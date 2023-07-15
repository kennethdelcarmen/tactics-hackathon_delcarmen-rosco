from django.urls import path
from .views import *

urlpatterns = [
    path('querylist/', QueryList.as_view()),
    path('querydetail/<int:pk>/', QueryDetail.as_view()),
    path('answerlist/', AnswerList.as_view()),
    path('answerdetail/<int:pk>/', AnswerDetail.as_view()),
]