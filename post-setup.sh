#!/bin/bash -x
#chown -R www-data:www-data wordpress
#chmod -R 777 wordpress
cp php.ini wordpress


wget -O phpmyadmin.tar.gz https://www.phpmyadmin.net/downloads/phpMyAdmin-latest-english.tar.gz
tar xzvf phpmyadmin.tar.gz
mv phpMyAdmin* wordpress/pma
rm phpmyadmin.tar.gz
cp config.inc.php wordpress/pma/
mkdir -P wordpress/pma/uploads

chown -R www-data:www-data wordpress
chmod -R 777 wordpress
chmod 660 wordpress/pma/config.inc.php
