#!/usr/bin/dumb-init /bin/bash

touch /var/log/ptndown.log

echo "PIA_USER=$PIA_USER" >>/etc/environment
echo "PIA_PASS=$PIA_PASS" >>/etc/environment
echo "SP_USERAGENT=$SP_USERAGENT" >>/etc/environment

cat /config/hosts >> /etc/hosts

service cron start

bash /run.sh &>>/var/log/ptndown.log

tail -f /var/log/ptndown.log
