cd ~/humiditytemperaturelogger/
git pull -f
chmod +x updateandrunserver.sh
python3 ./humiditytemperaturelogger/manage.py runserver 0.0.0.0:8000
