# Generated by Django 4.1.7 on 2023-03-11 12:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("main_app", "0003_chat_room_delete_chatuser_delete_discussiongroup_and_more"),
    ]

    operations = [
        migrations.AlterField(
            model_name="room",
            name="id",
            field=models.BigAutoField(
                auto_created=True, primary_key=True, serialize=False, verbose_name="ID"
            ),
        ),
    ]
