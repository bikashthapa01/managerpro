from django import forms 
from .models import Project 

class ProjectForm(forms.ModelForm):
	class Meta: 
		model = Project 
		fields = [
			'name',
			'introduction',
			'objectives',
			'db_schema',
			'frontEnd',
			'backEnd',
			'requirements',
			'image_url',
			'teacher'
		]

		widgets = {
            'name': forms.TextInput(attrs={'placeholder':'Project Name'}),
            'image_url': forms.TextInput(attrs={'placeholder':'Project Image'}),
            'introduction': forms.Textarea(attrs={'placeholder':'Project Introduction'}),
            'objectives': forms.Textarea(attrs={'placeholder':'Project Objectives'}),
            'db_schema': forms.Textarea(attrs={'placeholder':'Project Database Schema'}),
            'frontEnd': forms.Textarea(attrs={'placeholder':'Front-End Programming Languages'}),
            'backEnd': forms.Textarea(attrs={'placeholder':'Back-End Programming Languages'}),
            'requirements': forms.Textarea(attrs={'placeholder':'Project Requirements'}),

        }

