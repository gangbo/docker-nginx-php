#!/bin/bash

# This script is run within the php containers on start
# docker-run.sh is available for legacy setups

# Fail on any error
set -o errexit

touch /var/log/app_cron.log
crontab /etc/cron.d/app.cron && cron && crontab -l

#if [ -x "usermod" ] ; then
#    usermod -u ${PHP_USER_ID} www
#fi



nginx
# Run the command sent as command line arguments
php-fpm
