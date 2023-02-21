-- Creates a database named hbnb_dev_db if it doesn't already exist
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

-- Creates a user named hbnb_dev if it doesn't already exist, with the password hbnb_dev_pwd
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';

-- Grants all privileges on the hbnb_dev_db database to the hbnb_dev user, only when the database and user already exist
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';

-- Grants SELECT privilege on the performance_schema database to the hbnb_dev user, only when the database and user already exist
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';
