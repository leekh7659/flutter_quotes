from django.shortcuts import render
from rest_framework import serializers,viewsets
from .models import Phrase1, Phrase2, Phrase3
from .serializers import Phrase1Serializer ,Phrase2Serializer, Phrase3Serializer

# Create your views here.
class Phrase1View(viewsets.ModelViewSet):
    queryset = Phrase1.objects.all()
    serializer_class = Phrase1Serializer
    
class Phrase2View(viewsets.ModelViewSet):
    queryset = Phrase2.objects.all()
    serializer_class = Phrase2Serializer
    
class Phrase3View(viewsets.ModelViewSet):
    queryset = Phrase3.objects.all()
    serializer_class = Phrase3Serializer