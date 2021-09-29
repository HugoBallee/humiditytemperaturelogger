#!/bin/bash

sudo echo "Checking connection to https://github.com ..." >> /home/pi/run.txt
until $(curl --output /dev/null --silent --head --fail https://github.com); do
    echo "." >> /home/pi/run.txt
    sleep 5
done
sudo echo "Connected" >> /home/pi/run.txt
sudo echo "Staching" >> /home/pi/run.txt
sudo git -C /home/pi/humiditytemperaturelogger/ stash 2>>/home/pi/err.txt
sudo echo "Pulling" >> /home/pi/run.txt
sudo git -C /home/pi/humiditytemperaturelogger/ pull 2>>/home/pi/err.txt
sudo echo "Launching server." >> /home/pi/run.txt
sudo python3 /home/pi/humiditytemperaturelogger/humiditytemperaturelogger/manage.py runserver 0.0.0.0:8000  2>>/home/pi/err.txt &
sudo echo "Done" >> /home/pi/run.txt
