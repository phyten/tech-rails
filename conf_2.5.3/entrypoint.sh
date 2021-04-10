#!/bin/sh
service mysql start
mysql -e "GRANT ALL PRIVILEGES ON *.* TO 'dbuser'@'localhost' IDENTIFIED BY 'dbpass' WITH GRANT OPTION;"
yes | git clone $GIT_URL .
bundle install --without production
# yes | cp /tmp/conf/database_tasklist.yml /myapp/config/database.yml
# echo -e "\n" >> /myapp/Gemfile
# echo "gem 'rspec-rails'" >> /myapp/Gemfile
