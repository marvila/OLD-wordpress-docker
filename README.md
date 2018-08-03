# WordPress Docker setup

WordPress docker setup using docker-compose.

## Setting up environment

1. Install docker <https://docs.docker.com/install/>
2. Install docker-compose <https://docs.docker.com/compose/install/>
3. Clone this repository
4. Make sure the `wordpress` folder is writable (777 permission)
    * `chmod -R 777 wordpress`

## Using the environment

1. `docker-compose up`
2. Open the web browser on `localhost` and you should see the "Famous 5 min WordPress Install"
3. You are good to go :)

## Possible issues

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