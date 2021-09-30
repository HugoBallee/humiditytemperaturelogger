source /home/pi/humiditytemperaturelogger/webservervenv/bin/activate &>>/home/pi/log.txt
until $(curl --output /dev/null --silent --head --fail https://github.com); do
    sleep 5
done
git -C /home/pi/humiditytemperaturelogger/ stash &>>/home/pi/log.txt
git -C /home/pi/humiditytemperaturelogger/ pull &>>/home/pi/log.txt
python3 /home/pi/humiditytemperaturelogger/humiditytemperaturelogger/manage.py runserver 0.0.0.0:8000 &>>/home/pi/log.txt
