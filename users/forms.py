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



		widgets = {
            'fname': forms.TextInput(attrs={'placeholder':'First Name'}),
            'image_url': forms.TextInput(attrs={'placeholder':'Profile Image'}),
            'usn': forms.Textarea(attrs={'placeholder':'Enter USN'}),
            'college': forms.Textarea(attrs={'placeholder':'College Name'}),
            'bio': forms.Textarea(attrs={'placeholder':'Enter About You'}),

        }



class TeacherForm(forms.ModelForm):
	class Meta:
		model = Teacher
		fields = ['fullName','gender','college','department','designation','bio','experiences','image_url','educations']


