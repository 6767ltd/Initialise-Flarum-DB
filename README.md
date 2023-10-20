# Initialise-Flarum-DB
A docker container for initializing empty MariaDB or MySQL databases for use with Flarum.
## What
This is a dockerfile that:
* Creates a blank Flarum site
* Performs the migration, admin user creation, etc.
* Returns a config.php file complete with all your database configuration.

## Why
There are a number of things you can't pre-configure in Flarum when installing with the CLI, for example, enabling SSL on database connections.

You could also just upload a SQL dump to your DB but this is an easy one command solution that ensures your DB is up to date and fully compatible with the latest version of Flarum.

## How
to complete
1. Create a MySQL/MariaDB database
2. Ensure SSL is disabled at a DB level
3. Set up the FlarumConfig.yaml file
4. Run the docker command
5. Take the config.php file - use 6767ltd/SecureFlarum for a docker compose file that can run Flarum with your config.php file with no need for manual installation
6. Re-enable SSL at a DB level to secure your Flarum forum against MITM attacks.

## Is this a bodge
Yup, but it works.

## License
GPLv3. Copyright 6767 Ltd.
