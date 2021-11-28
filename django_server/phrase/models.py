from django.db import models

# Create your models here.
class Phrase1(models.Model):
    description = models.CharField(max_length=400)
    name = models.CharField(max_length=150)
    
class Phrase2(models.Model):
    description = models.CharField(max_length=400)
    name = models.CharField(max_length=150)
    
class Phrase3(models.Model):
    description = models.CharField(max_length=400)
    name = models.CharField(max_length=150)
    