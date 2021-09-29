cd ~/humiditytemperaturelogger/
echo "**************************"
echo "*      SAVING STASH      *"
echo "**************************"
git stash
echo "**************************"
echo "*        UPDATING        *"
echo "**************************"
git pull -f
cp ./updateandrunserver.sh /etc/rc.local/updateandrunserver.sh
chmod +x /etc/rc.local/updateandrunserver.sh
echo "**************************"
echo "*    LAUNCHING SERVER    *"
echo "**************************"
python3 ./humiditytemperaturelogger/manage.py runserver 0.0.0.0:8000
