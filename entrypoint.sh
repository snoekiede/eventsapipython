#!/bin/bash
python manage.py migrate
echo "from django.contrib.auth.models import User; User.objects.create_superuser('admin','info@esoxsolutions','secret1234')" | python manage.py shell 
python manage.py runserver 0.0.0.0:8000
