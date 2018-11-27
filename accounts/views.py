from django.shortcuts import render,redirect
from project.models import Project
from django.contrib import auth
from django.db import IntegrityError
from .models import User,Student,Teacher

# Create your views here.

def index(request):
		return render(request,'accounts/index.html',{'project':Project.objects.all()})

def logout(request):
	auth.logout(request)
	return redirect('/accounts/login')

def login(request):
	if request.method == "POST":
		user 	= request.POST['username']
		key 	= request.POST['password']

		user 	= auth.authenticate(username=user,password=key)

		if user is not None and user.is_active:
			auth.login(request,user)

			query1 = Student.objects.filter(user_id=request.user);
			query2 = Teacher.objects.filter(user_id = request.user)

			if request.user.is_student:
				if not query1:
					return redirect('/profile/edit')
				else:
					return redirect('/profile/home')
			if request.user.is_mentor:
				if not query2:
					return redirect('/profile/edit')
				else:
					return redirect('/profile/home')
		else:
			return render(request,'accounts/login.html',{'msg':"Login Error"})

	return render(request,'accounts/login.html',{})

		


def signup(request):
	if request.method == "POST":
		is_student = int(request.POST['is_student']);
		is_mentor = int(request.POST['is_mentor']);

		if is_student:
			name = request.POST['usn']
			email = request.POST['email']
			userpass = request.POST['password']
			isStudent = request.POST['is_student']
			try:
				new_user = User.objects.create_user(username=name,email=email,password=userpass,is_student=isStudent)
			except IntegrityError as e:
				return render(request,'accounts/signup.html',{'err':"Sorry, Student With "+name+" Already Exists."})


			new_user.save()

			return redirect('/profile/home')

		elif is_mentor :
			name = request.POST['username']
			email = request.POST['email']
			userpass = request.POST['password']
			isMentor = request.POST['is_mentor']
			new_user = User.objects.create_user(username=name,email=email,password=userpass,is_mentor=isMentor)
			new_user.save()

			return redirect('/profile/home')

	return render(request,'accounts/signup.html',{})

def profile(request):
    return render(request,'accounts/profile.html',{})

def page(request):
    return render(request,'accounts/page.html',{})
