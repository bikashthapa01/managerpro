from django import forms
from accounts.models import Student,Teacher

class StudentForm(forms.ModelForm):
	class Meta:
		model = Student
		fields = [
			'fname',
			'lname',
			'usn',
			'section',
			'department',
			'college',
			'gender',
			'bio',
			'image_url',
			'semester',
			
		]


class TeacherForm(forms.ModelForm):
	class Meta:
		model = Teacher
		fields = ['fullName','gender','college','department','designation','bio','experiences','image_url','educations']


