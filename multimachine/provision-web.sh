#!/bin/bash

echo "Installing Apache ..."
sudo apt-get --yes update
sudo apt-get --yes install apache2

echo "Installing MariaDB Client"
sudo apt-get --yes install mariadb-client

echo "Creating web folders ..."
rm -rf -- /var/www
sudo ln -fs /vagrant/ /var/www


cat > /vagrant/index.html << EOF
<h1>Hello world</h1>
EOF
