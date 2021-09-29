#!/bin/bash

sudo echo "1" >> /home/pi/run.txt
sudo cd home/pi/humiditytemperaturelogger/ 2>/home/pi/err.txt
sudo echo "**************************"
sudo echo "*      SAVING STASH      *"
sudo echo "**************************"
sudo echo "2" >> /home/pi/run.txt
sudo git stash 2>>/home/pi/err.txt
sudo echo "**************************"
sudo echo "*        UPDATING        *"
sudo echo "**************************"
sudo echo "3" >> /home/pi/run.txt
sudo git pull -f 2>>/home/pi/err.txt
sudo echo "**************************"
sudo echo "*    LAUNCHING SERVER    *"
sudo echo "**************************"
sudo echo "4" >> /home/pi/run.txt
sudo python3 ./humiditytemperaturelogger/manage.py runserver 0.0.0.0:8000  2>>/home/pi/err.txt &
sudo echo "5" >> /home/pi/run.txt
