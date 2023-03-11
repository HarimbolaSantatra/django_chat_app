from django.shortcuts import render
from django.contrib.auth.decorators import login_required   # For login required decorator
from django.contrib.auth.models import User
from main_app.models import Room, Chat


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
    username = request.session['username']
    current_room = Room.objects.get(name=room_name)
    chats = Chat.objects.filter(room=current_room)
    chat_message = ""
    for chat in chats:
        chat_message += chat.user.username + " : " + chat.message + "\n"
    context = {
        'username': username,
        'room_name': room_name,
        'chat_message': chat_message
    }
    return render(request, "room.html", context)
