# Generated by Django 4.1.7 on 2023-03-11 12:53

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ("main_app", "0004_alter_room_id"),
    ]

    operations = [
        migrations.RemoveField(model_name="room", name="users",),
    ]