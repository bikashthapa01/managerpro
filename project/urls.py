from django.urls import path
from . import views

urlpatterns = [
    path('new/',views.create_project,name='create-project'),
    path('update/<pid>',views.update_project,name='update-project'),
    path('view/<pid>/',views.project_view,name='view-project'),
    path('<pid>/synopsis',views.synopsis,name="view-synopsis"),
    path('delete/<pid>',views.delete_project,name='delete-project'),
]

