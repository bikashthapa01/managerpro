from django.shortcuts import render

# Create your views here.

def index(request):
    return render(request,'accounts/index.html',{})

def login(request):
    return render(request,'accounts/login.html',{})

def signup(request):
    return render(request,'accounts/signup.html',{})

def profile(request):
    return render(request,'accounts/profile.html',{})

def page(request):
    return render(request,'accounts/page.html',{})
