#!/bin/bash
while ! ping -c 1 -W 1 1.2.3.4; do
    sudo echo "Waiting for 1.2.3.4 - network interface might be down..." >> /home/pi/run.txt
    sleep 1
done


sudo echo "**************************"
sudo echo "*      SAVING STASH      *"
sudo echo "**************************"
sudo echo "stash" >> /home/pi/run.txt
sudo git -C /home/pi/humiditytemperaturelogger/ stash 2>/home/pi/err.txt
sudo echo "**************************"
sudo echo "*        UPDATING        *"
sudo echo "**************************"
sudo echo "pull" >> /home/pi/run.txt
sudo git -C /home/pi/humiditytemperaturelogger/ pull 2>>/home/pi/err.txt
sudo echo "**************************"
sudo echo "*    LAUNCHING SERVER    *"
sudo echo "**************************"
sudo echo "run server" >> /home/pi/run.txt
sudo python3 /home/pi/humiditytemperaturelogger/humiditytemperaturelogger/manage.py runserver 0.0.0.0:8000  2>>/home/pi/err.txt &
sudo echo "done" >> /home/pi/run.txt
