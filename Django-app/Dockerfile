FROM python:3.9.0-alpine
LABEL maintainer "luis"

COPY . /var/www
WORKDIR /var/www

RUN apk update && pip install -r requirements.txt && django-admin startproject app . && python manage.py migrate

ENTRYPOINT python manage.py runserver 0.0.0.0:8000
EXPOSE 8000