from django.shortcuts import render
from django.contrib.auth.decorators import login_required   # For login required decorator
from main_app.models import Room


@login_required(login_url='login')
def index(request):
    rooms = Room.objects.all()
    context = {
        'username': request.session['username'],
        'rooms': rooms
    }
    return render(request, "index.html", context=context)


@login_required(login_url='login')
def room(request, room_name):
    context = {
        'username': request.session['username'],
        "room_name": room_name
    }
    return render(request, "room.html", context)
