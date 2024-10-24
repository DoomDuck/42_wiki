#!/usr/bin/env bash

# Wait for database to wakeup
sleep 5s

echo "Starting installation"

# TODO: Use $DATABASE_NAME
php maintenance/run.php install "42 Community" $ADMIN_USERNAME \
    --pass=$ADMIN_PASSWORD \
    --server=$SERVER_URL \
    --dbserver=database \
    --dbuser=$DATABASE_USER \
    --dbpass=$DATABASE_PASSWORD \
    --with-extensions


# TODO: Find correspoding install script option
sed "s|\$wgScriptPath = '/html';|\$wgScriptPath = '';|" -i LocalSettings.php

# Replace process with apache2
exec apache2-foreground
