from django.db import models
from django.conf import settings
from django.contrib.auth.models import AbstractUser


class User(AbstractUser):
	is_student 		= models.BooleanField(default=False)
	is_mentor 		= models.BooleanField(default=False)
	is_completed	= models.BooleanField(default=False)

	def __str__(self):
		return self.username


class Student(models.Model):
	a = "A"
	b = "B"
	c = "C"

	sec = ((a,"A"),(b,"B"),(c,"C"))
	dept = (("CSE","Computer Science"),("ISE","Information Science"))
	sem = (("3","3"),("4","4"),("5","5"),("6","6"))
	gen = (("M","Male"),("F","Female"))

	user 			= models.ForeignKey(User,on_delete=models.CASCADE)
	fname 			= models.CharField(max_length=100)
	lname 			= models.CharField(max_length=100)
	usn 			= models.CharField(max_length=10)
	section 		= models.CharField(max_length=2,choices=sec)
	department		= models.CharField(max_length=10,choices=dept) 
	college 		= models.CharField(max_length=255)
	gender 			= models.CharField(max_length=2,choices=gen)
	bio 			= models.TextField()
	image_url 		= models.CharField(max_length=1000)
	semester 		= models.CharField(max_length=5,choices=sem)
	is_complete 	= models.BooleanField(default=0)

	def __str__(self):
		return self.fname + " " + self.lname



# create table Teacher(user references user(user_id) on delete cascade, fullName varchar(255) ....);

class Teacher(models.Model):
	dept 	= (("CSE","Computer Science"),("ISE","Information Science"))
	gen 	= (("M","Male"),("F","Female"))
	desi 	= (("Assistant Professer","Assistant Professer"),("Head Of Department","HOD"))

	user 			= models.ForeignKey(User,on_delete = models.CASCADE)
	fullName 		= models.CharField(max_length=255);
	department		= models.CharField(max_length=10,choices=dept) 
	college 		= models.CharField(max_length=255)
	gender 			= models.CharField(max_length=2,choices=gen)
	designation 	= models.CharField(max_length=100,choices=desi)
	experiences 	= models.TextField()
	bio 			= models.TextField()
	educations		= models.TextField()
	image_url 		= models.CharField(max_length=1000)
	is_complete 	= models.BooleanField(default=0)


	def __str__(self):
		return self.fullName


























































 
# class UserManager(BaseUserManager):
#     def create_user(self,email,password=None,is_active=True,is_student=False,is_mentor=False,is_admin=False,is_staff=False):
#         if not email:
#             raise ValueError("User Must have an email address")

#         if not password:
#             raise ValueError("User Must Have A password")

#         user_obj = self.model(
#                 email = self.normalize_email(email)
#             )
#         user_obj.active = is_active
#         user_obj.admin = is_admin
#         user_obj.admin = is_staff
#         user_obj.student = is_student
#         user_obj.mentor = is_mentor
#         user_obj.set_password(password)
#         user_obj.save(using=self._db)
#         return user_obj

#     def create_staff(self,email,password=None):
#         user = self.create_user(email,password=password,is_active=True,is_staff=True)

#     def create_student(self,email,password=None):
#         user = self.create_user(email,password=password,is_student=True,is_active=True,is_staff=True)
#         return user

#     def create_mentor(self,email,password=None):
#         user  = self.create_user(email,password=password,is_mentor=True,is_active=True,is_staff=True)
#         return user

#     def create_superuser(self,email,password=None):
#         user = self.create_user(email,password=password,is_admin=True,is_active=True,is_staff=True)





# class User(AbstractBaseUser):
#     email = models.EmailField(max_length=255,unique=True)
#     active = models.BooleanField(default=True)
#     student = models.BooleanField(default=True)
#     mentor = models.BooleanField(default=False)
#     admin = models.BooleanField(default=False)
#     staff = models.BooleanField(default=False)

#     USERNAME_FIELD = 'email' # email as username

#     REQUIREMENT_FIELDS = []

#     objects = UserManager()

#     def get_username(self):
#         return self.email

#     def __str__(self):
#         return self.email

#     @property
#     def is_student(self):
#         return self.student
    
#     @property
#     def is_mentor(self):
#         return self.mentor


#     @property
#     def is_admin(self):
#         return self.admin

#     @property
#     def is_active(self):
#         return self.active

#     @property
#     def is_staff(self):
#         return self.staff
    


    


        






