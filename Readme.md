**Background**

This docker setup was taken almost as it is from https://github.com/shakyShane/laravel-docker/commit/432fefd2a030475aaa972ba45131b79938b21e17 .

This brilliant article explains everything very well : https://medium.com/@shakyShane/laravel-docker-part-1-setup-for-development-e3daaefaf3c

But that setup is using mySql while I needed to have a Postgres DB.

**Postgres Container**

My solution do a couple different things from the original solution :
- Install Postgres 10 as the backend DB.
- Install Postgres modules for PHP-FPM.

**DB_HOST name in Laravel's .env file**

Importantly, DB_Host name will not be an IP address or host name but the docker container name. 

Here's how you can set it :

1- In your working directory, run `docker container ls` command. 

2- Pick the NAME for the postgres container.

3- Set that name as the DB Host.
