cd ~/humiditytemperaturelogger/
echo "**************************"
echo "*      SAVING STASH      *"
echo "**************************"
git stash
echo "**************************"
echo "*        UPDATING        *"
echo "**************************"
git pull -f
chmod +x updateandrunserver.sh
echo "**************************"
echo "*    LAUNCHING SERVER    *"
echo "**************************"
python3 ./humiditytemperaturelogger/manage.py runserver 0.0.0.0:8000
