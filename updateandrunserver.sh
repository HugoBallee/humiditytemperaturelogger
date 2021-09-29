cd ~/humiditytemperaturelogger/
git stash
git pull -f
chmod +x updateandrunserver.sh
echo "Hello"
python3 ./humiditytemperaturelogger/manage.py runserver 0.0.0.0:8000
