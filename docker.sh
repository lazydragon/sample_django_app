#!/bin/bash

docker-compose build
docker-compose up -d
docker-compose run web python manage.py migrate
docker-compose run web python manage.py createsuperuser --username=admin --email='' 
