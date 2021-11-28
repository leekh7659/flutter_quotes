from django.db import router
from django.urls import path,include
from rest_framework import routers, urlpatterns
from . import views

router = routers.DefaultRouter(trailing_slash = False)
router.register('phrase1',views.Phrase1View)
router.register('phrase2',views.Phrase2View)
router.register('phrase3',views.Phrase3View)

urlpatterns = [
    path('',include(router.urls)),
]