#!/bin/bash

echo "Installing MariaDB ..."
sudo apt-get --yes update
sudo apt-get --yes install mariadb-server


echo "Set proper permissions ..."
sed -i -e 's/127.0.0.1/0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf
sudo service mysql restart
sudo mysql -uroot <<< "GRANT ALL ON *.* TO 'root'@'%'; FLUSH PRIVILEGES;"
