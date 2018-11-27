from django.urls import path
from . import views

urlpatterns = [
    path('',views.ProfileView.as_view(),name='profile'),
    path('home/',views.ProfileDetails.as_view(),name='profile-home'),
    path('edit/',views.create_form,name="edit-profile"),
    path('update/',views.update_form,name='profile-update'),
    path('<uid>/all',views.all_project,name='show-all'),

]

