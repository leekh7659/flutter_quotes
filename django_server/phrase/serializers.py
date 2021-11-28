from rest_framework import serializers
from .models import Phrase1,Phrase2,Phrase3

class Phrase1Serializer(serializers.ModelSerializer):
    class Meta:
        model = Phrase1
        fields = '__all__'
        
class Phrase2Serializer(serializers.ModelSerializer):
    class Meta:
        model = Phrase2
        fields = '__all__'
        
class Phrase3Serializer(serializers.ModelSerializer):
    class Meta:
        model = Phrase3
        fields = '__all__'