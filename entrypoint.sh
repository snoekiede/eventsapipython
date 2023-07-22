#!/bin/bash
python manage.py migrate
echo "from django.contrib.auth.models import User; User.objects.create_superuser('$DJANGO_SUPERUSER_USERNAME','$DJANGO_SUPER_USER_EMAIL','$DJANGO_SUPERUSER_PASSWORD')" | python manage.py shell 
CMD ["gunicorn","--bind",":8000","--workers","3","--threads","2","--timeout","90","--preload","config.wsgi:application","webevents.wsgi"]

