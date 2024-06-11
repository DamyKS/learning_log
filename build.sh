#!/usr/bin/env bash

set -o errexit  # exit on error

pip install -r requirements.txt

python manage.py migrate
python world_champ_2022/manage.py createsuperuser --no-input
