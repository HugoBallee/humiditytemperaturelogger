#!/bin/bash

sudo echo "Checking connection to https://github.com ..."
until $(curl --output /dev/null --silent --head --fail https://github.com); do
    echo "."
    sleep 5
done
sudo echo "Connected"
sudo echo "Staching"
sudo git -C /home/pi/humiditytemperaturelogger/ stash
sudo echo "Pulling"
sudo git -C /home/pi/humiditytemperaturelogger/ pull
sudo echo "Launching server."
sudo "python3 /home/pi/humiditytemperaturelogger/humiditytemperaturelogger/manage.py runserver 0.0.0.0:8000"
sudo echo "Done"
