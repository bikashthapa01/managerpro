from django.shortcuts import render,redirect,get_object_or_404
from django.contrib.auth.decorators import login_required
from django.utils.decorators import method_decorator
from django.views.generic import TemplateView,ListView,UpdateView
from accounts.models import Student,User,Teacher
from project.models import Project
from .forms import StudentForm,TeacherForm

class ProfileView(TemplateView):

	def get(self,request):
		return redirect('profile-home')


@login_required
def profile_home(request):
	return render(request,'users/profile.html',{'data':Student.objects.filter(user_id=request.user)})

class ProfileDetails(TemplateView):
	template_name = 'users/profile.html'
	@method_decorator(login_required)
	def get(self,request):

		if not request.user.is_completed:
			return redirect('edit-profile')

		if request.user.is_student:
			sdata = Student.objects.get(user_id = request.user)
			return render(request,self.template_name,{'data':Student.objects.filter(user_id = request.user),
				'project':Project.objects.filter(user_id=sdata.id)})
		elif request.user.is_mentor:
			tdata = Teacher.objects.get(user_id = request.user)
			return render(request,self.template_name,{'data':Teacher.objects.filter(user_id = request.user),
				'project':Project.objects.filter(teacher_id=tdata.id)})


def create_form(request):

	if request.user.is_completed:
		return redirect('profile-update')

	if request.user.is_student:
		form = StudentForm(request.POST or None)
		if form.is_valid():
			# print(form.cleaned_data)
			# print(request.user.id)
			student = form.save(commit=False)
			student.user = request.user
			student.is_complete = True
			student.save()
			User.objects.filter(id=request.user.id).update(is_completed=True)
			return redirect('profile-home')
	else: 
		form = TeacherForm(request.POST or None)
		if form.is_valid():
			print(form.cleaned_data)
			print(request.user.id)
			teacher = form.save(commit=False)
			teacher.user = request.user
			teacher.is_complete = True
			teacher.save()
			User.objects.filter(id=request.user.id).update(is_completed=True)
			return redirect('profile-home')

	return render(request,'users/edit.html',{'form':form})


def update_form(request):
	if request.user.is_student:
		instance = get_object_or_404(Student,user_id=request.user.id)
		form = StudentForm(request.POST or None,instance=instance)

		if form.is_valid():
			instance = form.save(commit=False)
			instance.save()
			return redirect('profile-home')
	elif request.user.is_mentor:
		instance = get_object_or_404(Teacher,user_id=request.user.id)
		form = TeacherForm(request.POST or None, instance=instance)

		if form.is_valid():
			instance = form.save(commit=False)
			instance.save()
			return redirect('profile-home')
	return render(request,"users/update.html",{'form':form})



def all_project(request,uid):
	print(uid)
	return render(request,'users/profile.html',{'display_all':True,'pdata':Project.objects.filter(teacher_id=uid)})