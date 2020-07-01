# WordPress Docker setup

WordPress docker setup using docker-compose.

## Setting up environment

1. Install docker <https://docs.docker.com/install/>.
    1. Make sure you have followed the *Post-installation steps for Linux* <https://docs.docker.com/install/linux/linux-postinstall/>
2. Install docker-compose <https://docs.docker.com/compose/install/>.
3. Clone this repository.
4. Execute post-setup.sh script with SUDO
    1. May be needed to execute again later
    2. This script will copi php.ini and fix/set user:group and permissions

## Using the environment

### Start

1. `docker-compose up` OR `docker-compose up -d`
    * `-d` means it will go into detached mode, that is, in the background.
2. Open the web browser on `localhost` and you should see the "Famous 5 min WordPress Install".
3. Finish the WordPress installation.
3. You are good to go :)

### Stop

1. `docker-compose down`

## Possible issues

### Some sort of permission to run docker issue

**Cause:**

Docker daemon runs as root and thus the user needs permission to use the docker socket.

**Solution:**

Check the *Post-installation steps for Linux* <https://docs.docker.com/install/linux/linux-postinstall/>

### Bind for 0.0.0.0:80 failed: port is already allocated

**Cause:**

The port 80 is already allocated.

**Solution:**

Use another port and change the port accordingly when opening the page on the web browser. Remember to setup WordPress' configuration as well.

Or you could close whatever program is running on port 80 and try again.

### Files not being saved after docker-compose down

**Cause:**

This may be due to the fact that docker daemon is not able to write to the directory.

**Solution:**

Make sure the `wordpress` directory has the correct permissions (777).

### phpMyAdmin giving erros while uploading files / any other application on the same situation

`Incorrect format parameter` error.

**Cause:**

Low values for PHP variables

**Solution:**

Add the following to the .htaccess under the WordPress directory to Increase PHP file upload limit:

```
php_value post_max_size 500M
php_value upload_max_filesize 500M
```

###The server requested authentication method unknown to the client

**Cause:**

mySQL 8 needs adds a new password authentication, so need to get back to the old one.

**Solution**

Add the following to the mysql image block of the docker-compose.yml:
https://stackoverflow.com/a/53580056

```
command: --default-authentication-plugin=mysql_native_password
```

Like:

```
    mysql:
        image: mysql:latest
        command: --default-authentication-plugin=mysql_native_password
```

Also remember to clean up stuff

```
docker rm $(docker ps -a -q)
docker volume prune -f
```
