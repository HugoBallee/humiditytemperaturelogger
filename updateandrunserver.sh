#!/bin/bash

echo "start"
. "${1}webservervenv/bin/activate"
until $(curl --output /dev/null --silent --head --fail https://github.com); do
    sleep 5
done
git -C "${1}" config user.name "hugoballee"
git -C "${1}" config user.email "hugo.gallee@gmail.com"
git -C "${1}" stash
git -C "${1}" pull
python3 "${1}humiditytemperaturelogger/manage.py" runserver 0.0.0.0:8000 --noreload &
