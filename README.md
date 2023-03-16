# Chat Application
## About 
This is a simple chat application made with Django, and using MySQL as database technology..

## Installation
This application requires the following dependencies:
- Django
- Channels & Daphne
- MySQL database

Clone this repository:

	git clone https://github.com/HarimbolaSantatra/django_chat_app.git
	cd django_chat_app

Install all the Python's dependencies if it's not installed yet:

	python -m pip install django
	python -m pip install channels
	python -m pip install daphne

Use the dump.sql_ file to upload the MySQL table inside your MySQL database.

	mysql -u <username> -p < dump.sql

Use the username/password: root/root to login to the application and to Django admin page.

## WebSocket
WebSocket maintain a communication between session during a whole scope, contrary to HTTP Request where one actor wait for a request before sending a response.

## Resources
- [Django Documentation][1]
- A chat tutorial:  https://www.honeybadger.io/blog/django-channels-websockets-chat/

### Channels tutorial
- https://channels.readthedocs.io/en/stable/introduction.html
- https://channels.readthedocs.io/en/stable/tutorial/index.html
- Consumer: https://channels.readthedocs.io/en/stable/topics/consumers.html 

 [1]: docs.djangoproject.com
