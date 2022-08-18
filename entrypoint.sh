#!/bin/sh

set -e

# Wait for database running:
# python manage.py wait_for_db

python manage.py migrate
# python manage.py collectstatic --noinput



gunicorn demoProject.wsgi:application --bind :8000
