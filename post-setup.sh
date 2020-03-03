#!/bin/bash -x
chown -R www-data:www-data wordpress
chmod -R 777 wordpress
cp php.ini wordpress