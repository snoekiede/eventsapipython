FROM python:3.11.4-slim-buster

WORKDIR /usr/src/app

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV DJANGO_SUPERUSER_USERNAME admin
ENV DJANGO_SUPER_USER_EMAIL info@esoxsolutions.nl
ENV DJANGO_SUPERUSER_PASSWORD secret123



RUN pip install --upgrade pip
COPY ./requirements.txt /usr/src/app
RUN apt-get update \
    && apt-get -y install libpq-dev gcc 

RUN pip install -r requirements.txt

COPY . /usr/src/app

EXPOSE 8000
#RUN python manage.py migrate
#CMD ["python","manage.py","runserver","0.0.0.0:8000"]
CMD ["./entrypoint.sh"]