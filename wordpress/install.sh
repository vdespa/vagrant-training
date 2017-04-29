#!/bin/bash

cd /var/www/mywordpress.local/web

wp core download --allow-root

wp core config --dbname=mywordpress --dbuser=root --dbpass=123 --force --allow-root

wp core install --url=mywordpress.local --title=MyWordPress --admin_user=admin --admin_password=admin --admin_email=info@example.com --allow-root
