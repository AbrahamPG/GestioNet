"""
WSGI config for VerduleriaAda project.

It exposes the WSGI callable as a module-level variable named ``application``.

For more information on this file, see
https://docs.djangoproject.com/en/3.2/howto/deployment/wsgi/
"""

import os

from django.core.wsgi import get_wsgi_application

os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'VerduleriaAda.settings')

application = get_wsgi_application()


"""gunicorn VerduleriaAda.wsgi:application"""   """ESTABA EN STARTCOMMAND EN RENDER, SI ES QUE FALLA LA CONEXION A ANGULAR WEB"""

