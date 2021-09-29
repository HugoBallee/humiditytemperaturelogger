#!/bin/bash

sudo echo "**************************"
sudo echo "*      SAVING STASH      *"
sudo echo "**************************"
sudo echo "1" >> /home/pi/run.txt
sudo git -C /home/pi/humiditytemperaturelogger/ stash 2>>/home/pi/err.txt
sudo echo "**************************"
sudo echo "*        UPDATING        *"
sudo echo "**************************"
sudo echo "2" >> /home/pi/run.txt
sudo git -C /home/pi/humiditytemperaturelogger/ pull 2>>/home/pi/err.txt
sudo echo "**************************"
sudo echo "*    LAUNCHING SERVER    *"
sudo echo "**************************"
sudo echo "3" >> /home/pi/run.txt
sudo python3 ./humiditytemperaturelogger/manage.py runserver 0.0.0.0:8000  2>>/home/pi/err.txt &
sudo echo "4" >> /home/pi/run.txt
