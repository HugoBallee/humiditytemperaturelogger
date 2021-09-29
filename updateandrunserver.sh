#!/bin/bash

cd ~/humiditytemperaturelogger/
echo "**************************"
echo "*      SAVING STASH      *"
echo "**************************"
git stash
echo "**************************"
echo "*        UPDATING        *"
echo "**************************"
git pull -f
echo "**************************"
echo "*    LAUNCHING SERVER    *"
echo "**************************"
python3 ./humiditytemperaturelogger/manage.py runserver 0.0.0.0:8000
