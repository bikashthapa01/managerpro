from django.db import models
# from django.contrib.admin.models import AbstractBaseUser

# Create your models here.

class Mentor(models.Model):
    fname = models.CharField(max_length=100)
    lname = models.CharField(max_length=100)
    username = models.CharField(max_length=20,unique=True)
    password = models.CharField(max_length=15)
    institute = models.CharField(max_length=100)
    email = models.CharField(max_length=100)
    phone = models.CharField(max_length=10)
    designation = models.CharField(max_length=50)


    def __str__(self):
        return fname+" "+ lname


# class User(AbstractBaseUser):
#     pass 




