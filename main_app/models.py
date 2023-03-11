from django.db import models

# main_app models


class DiscussionGroup(models.Model):
    id = models.IntegerField(primary_key=True)
    name = models.CharField


class ChatUser(models.Model):
    id = models.IntegerField(primary_key=True)
    username = models.CharField
    password = models.CharField
    email = models.EmailField
    discussion_group = models.ManyToManyField(DiscussionGroup)
