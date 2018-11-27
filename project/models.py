from django.db import models
from accounts.models import User,Student,Teacher

class Project(models.Model):
	user 			= models.ForeignKey(Student,on_delete=models.CASCADE)
	teacher 		= models.ForeignKey(Teacher,on_delete=models.CASCADE)
	name 			= models.CharField(max_length=255)
	introduction 	= models.TextField()
	objectives	 	= models.TextField()
	db_schema		= models.TextField()
	frontEnd 		= models.TextField()
	backEnd 		= models.TextField()
	requirements 	= models.TextField()
	image_url 		= models.CharField(max_length=1000)

	def __str__(self):
		return self.name






