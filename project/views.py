from django.shortcuts import render,get_object_or_404,redirect
from accounts.models import Student,Teacher
from .models import Project
from .forms import ProjectForm

# Create your views here.

def create_project(request):
	form = ProjectForm(request.POST or None)

	if form.is_valid():
		print(form.cleaned_data)
		print(request.user.id)
		project = form.save(commit=False)
		sdata = Student.objects.get(user_id=request.user.id)
		project.user_id = sdata.id
		project.save()
		return redirect('profile-home')

	else:
		print("not Valid")
	
	return render(request,'project/create.html',{'form':form})

def update_project(request,pid):

	instance = get_object_or_404(Project,id=pid)
	form = ProjectForm(request.POST or None,instance=instance)

	if form.is_valid():
		instance = form.save(commit=False)
		instance.save()
		return redirect('view-project',pid=pid)

	return render(request,'project/update.html',{'form':form})

def project_view(request,pid):

	# project_data = Project.objects.raw('select * from project_project where id=%s',[pid])

	project_data = Project.objects.get(id=pid)
	sdata = Student.objects.get(id=project_data.user_id)
	tdata = Teacher.objects.get(id=project_data.teacher_id)
	return render(request,'project/page.html',{'pdata':project_data, 'sdata':sdata,'tdata':tdata})

def synopsis(request,pid):
	# project_data = Project.objects.raw('select * from project_project where id=%s',[pid])
	project_data = Project.objects.get(id=pid)
	sdata = Student.objects.get(id=project_data.user_id)
	tdata = Teacher.objects.get(id=project_data.teacher_id)
	return render(request,'project/synopsis.html',{'pdata':project_data, 'sdata':sdata,'tdata':tdata})

def delete_project(request,pid):

	# Project.objects.raw('delete from project_project where id=%s',[pid])
	
	Project.objects.filter(id=pid).delete()
	return redirect('profile-home')