from django.shortcuts import render
from django.contrib.auth.decorators import login_required   # For login required decorator


@login_required(login_url='login')
def index(request):
    context = {'username': request.session['username']}
    return render(request, "chat/index.html", context=context)


@login_required(login_url='login')
def room(request, room_name):
    context = {
        'username': request.session['username'],
        "room_name": room_name
    }
    return render(request, "chat/room.html", context)
