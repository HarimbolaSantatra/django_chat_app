import os

from channels.auth import AuthMiddlewareStack
from channels.routing import ProtocolTypeRouter, URLRouter
from channels.security.websocket import AllowedHostsOriginValidator
from django.core.asgi import get_asgi_application

import main_app.routing

os.environ.setdefault("DJANGO_SETTINGS_MODULE", "chat_app.settings")
# Initialize Django ASGI application early to ensure the AppRegistry
# is populated before importing code that may import ORM models.
django_asgi_app = get_asgi_application()

application = ProtocolTypeRouter(
    {
        # If type is http, use url pattern django_asgi_app defined above
        "http": django_asgi_app,
        # If type is websocket, use url pattern: main_app.routing.websocket_urlpatterns
        "websocket": AllowedHostsOriginValidator(
            AuthMiddlewareStack(URLRouter(main_app.routing.websocket_urlpatterns))
        ),
    }
)