#!/usr/bin/env bash
# exit on error
set -o errexit

pip install -r requirements.txt
pip install django

python manage.py collectstatic --no-input
#Falta makemigrations, no lo dejo automatico para que no deje error y examinarlos
python manage.py migrate