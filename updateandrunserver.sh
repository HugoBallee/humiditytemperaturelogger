WD="${WD}"

echo "start" >"${WD}log.txt"
source "${WD}webservervenv/bin/activate" &>>"${WD}log.txt"
until $(curl --output /dev/null --silent --head --fail https://github.com); do
    sleep 5
done
git -C "${WD}"" stash &>>"${WD}log.txt
git -C "${WD}"" pull &>>"${WD}log.txt
python3 "${WD}humiditytemperaturelogger/manage.py" runserver 0.0.0.0:8000 &>>"${WD}log.txt"
