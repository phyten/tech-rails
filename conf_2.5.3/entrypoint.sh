#!/bin/sh
service mysql start
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'dbuser'@'localhost' IDENTIFIED BY 'dbpass' WITH GRANT OPTION;"
yes | git clone $GIT_URL .
bundle install --without production

exec "$@"
