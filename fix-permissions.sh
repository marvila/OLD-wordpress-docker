#!/bin/bash
sudo chmod -R 777 wordpress
sudo chown -R www-data:www-data wordpress

# taken from link to try and avoid git pushing permissions
# https://stackoverflow.com/questions/1580596/how-do-i-make-git-ignore-file-mode-chmod-changes
# You can ignore any errors about "chmod: missing operand after `+x'"
#
# !! EXECUTAR NO DIRETORIO DO GIT !!
#sudo git diff --summary | grep --color 'mode change 100755 => 100644' | cut -d' ' -f7- | xargs -d'\n' chmod +x 
#sudo git diff --summary | grep --color 'mode change 100644 => 100755' | cut -d' ' -f7- | xargs -d'\n' chmod -x 

# Outro comando
# sudo find . -type d -exec chmod a+rwx {} \;
# sudo find . -type f -exec chmod a+rw {} \;
