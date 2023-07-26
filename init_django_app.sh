#!/bin/bash
rm -rf ./app

django-admin startproject app
cd app
python3 manage.py startapp myapp
python3 manage.py migrate
python3 manage.py createsuperuser --email care@mgeek.in --username admin --noinput  
cd ..