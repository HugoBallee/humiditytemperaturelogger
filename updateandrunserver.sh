sudo source /home/pi/humiditytemperaturelogger/webservervenv/bin/activate &>>/home/pi/log.txt
sudo echo "Checking connection to https://github.com ..." >>/home/pi/log.txt
until $(curl --output /dev/null --silent --head --fail https://github.com); do
    echo "." >>/home/pi/log.txt
    sleep 5
done
sudo echo "Connected" >>/home/pi/log.txt
sudo echo "Staching" >>/home/pi/log.txt
sudo git -C /home/pi/humiditytemperaturelogger/ stash &>>/home/pi/log.txt
sudo echo "Pulling" >>/home/pi/log.txt
sudo git -C /home/pi/humiditytemperaturelogger/ pull &>>/home/pi/log.txt
sudo echo "Launching server." >>/home/pi/log.txt
python3 /home/pi/humiditytemperaturelogger/humiditytemperaturelogger/manage.py runserver 0.0.0.0:8000 &>>/home/pi/log.txt
sudo echo "Done" >>/home/pi/log.txt