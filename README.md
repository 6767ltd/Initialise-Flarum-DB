# Initialise-Flarum-DB
A docker container for initializing empty MariaDB or MySQL databases for use with Flarum.
## What
This is a dockerfile that:
* Creates a blank Flarum site
* Performs the migration, admin user creation, etc.

This leaves you to:
* Create the config.php file to your needs, for example with SSL enabled on the DB connection.

## Why
There are a number of things you can't pre-configure in Flarum when installing with the CLI, for example, enabling SSL on database connections.

You could also just upload a SQL dump to your DB but this is an easy one command solution that ensures your DB is up to date and fully compatible with the latest version of Flarum.

## How
This dockerfile is basically a script. You run it once, then you're done.
1. Clone this repo
2. Create a MySQL/MariaDB database
3. Ensure SSL is disabled at a DB level. Whilst it can run on it, Flarum cannot initialize a DB with SSL enabled.
4. Modify the FlarumConfig.yaml file with your database details
5. Run the docker build command (run `docker build .`). This is all you need to do, once this is done you can discard the image.
5. Re-enable SSL at a DB level to secure your Flarum forum against MITM attacks.

## Is this a bodge
Yup.

## License
GPLv3. Copyright 6767 Ltd.
