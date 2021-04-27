#!/bin/bash
sudo chmod -R 777 wordpress
sudo chown -R www-data:www-data wordpress

# taken from link to try and avoid git pushing permissions
# https://stackoverflow.com/questions/1580596/how-do-i-make-git-ignore-file-mode-chmod-changes
# sudo find . -type d -exec chmod a+rwx {} \;
# sudo find . -type f -exec chmod a+rw {} \;
