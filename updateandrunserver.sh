#!/bin/bash

echo "1" >> /home/pi/run.txt
cd ~/humiditytemperaturelogger/
echo "**************************"
echo "*      SAVING STASH      *"
echo "**************************"
echo "2" >> /home/pi/run.txt
git stash
echo "**************************"
echo "*        UPDATING        *"
echo "**************************"
echo "3" >> /home/pi/run.txt
git pull -f
echo "**************************"
echo "*    LAUNCHING SERVER    *"
echo "**************************"
echo "4" >> /home/pi/run.txt
python3 ./humiditytemperaturelogger/manage.py runserver 0.0.0.0:8000 &
echo "5" >> /home/pi/run.txt
