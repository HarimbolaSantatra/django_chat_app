# Generated by Django 4.1.7 on 2023-03-10 11:52

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = []

    operations = [
        migrations.CreateModel(
            name="Group",
            fields=[("id", models.IntegerField(primary_key=True, serialize=False)),],
        ),
        migrations.CreateModel(
            name="User",
            fields=[("id", models.IntegerField(primary_key=True, serialize=False)),],
        ),
    ]
