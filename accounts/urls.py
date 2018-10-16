from django.urls import path
from . import views

urlpatterns = [
    path('',views.index,name='home'),
    path('login/',views.login,name='login'),
    path('register/',views.signup,name='register'),
    path('profile/',views.profile,name='profile'),
    path('page/',views.page,name='page'),
]