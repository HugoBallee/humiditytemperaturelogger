#!/bin/bash

echo "1" >> /home/pi/run.txt
cd home/pi/humiditytemperaturelogger/ 2>/home/pi/err.txt
echo "**************************"
echo "*      SAVING STASH      *"
echo "**************************"
echo "2" >> /home/pi/run.txt
git stash 2>>/home/pi/err.txt
echo "**************************"
echo "*        UPDATING        *"
echo "**************************"
echo "3" >> /home/pi/run.txt
git pull -f 2>>/home/pi/err.txt
echo "**************************"
echo "*    LAUNCHING SERVER    *"
echo "**************************"
echo "4" >> /home/pi/run.txt
sudo python3 ./humiditytemperaturelogger/manage.py runserver 0.0.0.0:8000  2>>/home/pi/err.txt &
echo "5" >> /home/pi/run.txt
