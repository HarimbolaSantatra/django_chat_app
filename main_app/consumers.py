# chat/consumers.py
import json

from asgiref.sync import async_to_sync
from channels.generic.websocket import WebsocketConsumer
from main_app.models import Room, Chat
from django.contrib.auth.models import User


class ChatConsumer(WebsocketConsumer):
    def connect(self):
        self.room_name = self.scope["url_route"]["kwargs"]["room_name"]
        self.room_group_name = "chat_%s" % self.room_name

        # Join room group
        async_to_sync(self.channel_layer.group_add)(
            self.room_group_name, self.channel_name
        )

        self.accept()

    def disconnect(self, close_code):
        # Leave room group
        async_to_sync(self.channel_layer.group_discard)(
            self.room_group_name, self.channel_name
        )

    # Receive message from WebSocket
    def receive(self, text_data):
        text_data_json = json.loads(text_data)
        username = text_data_json["username"]
        message = text_data_json["message"]

        # Send an event to a group
        async_to_sync(self.channel_layer.group_send)(
            self.room_group_name,
            {
                "type": "chat_message",
                "username": username,
                "message": message
            }
        )

        # Save message to database
        username = text_data_json["username"]
        user = User.objects.get(username=username)
        room_name = text_data_json["room_name"]
        room = Room.objects.get(name=room_name)
        new_message = Chat(message=message, user=user, room=room)
        new_message.save()

    # Receive message from room group
    def chat_message(self, event):
        message = event["message"]
        username = event["username"]

        # Send message to WebSocket
        self.send(text_data=json.dumps({
            "message": message,
            "username": username
        }))
