WD="/home/pi/humiditytemperaturelogger/"

echo "start"
source "${WD}webservervenv/bin/activate"
until $(curl --output /dev/null --silent --head --fail https://github.com); do
    sleep 5
done
git -C "${WD}" stash
git -C "${WD}" pull
python3 "${WD}humiditytemperaturelogger/manage.py" runserver 0.0.0.0:8000 &
