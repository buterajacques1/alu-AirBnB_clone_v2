-- Prepares a MySQL server for the project, creating a Database and user

-- Create a database with the name 'hbnb_dev_db', but only if it doesn't already exist.
CREATE DATABASE IF NOT EXISTS hbnb_dev_db;

-- Create a user with the name 'hbnb_dev' and host 'localhost', if it doesn't already exist.
-- Set the password for the user to 'hbnb_dev_pwd'.
CREATE USER IF NOT EXISTS 'hbnb_dev'@'localhost' IDENTIFIED BY 'hbnb_dev_pwd';

-- Grant all privileges on the 'hbnb_dev_db' database to the 'hbnb_dev' user, but only for connections from 'localhost'.
-- This means that the 'hbnb_dev' user can read and write data to this database, but only if they are connecting from the same machine that the MySQL server is running on.
GRANT ALL PRIVILEGES ON hbnb_dev_db.* TO 'hbnb_dev'@'localhost';

-- Grant SELECT privilege on the 'performance_schema' database to the 'hbnb_dev' user, but only for connections from 'localhost'.
-- This means that the 'hbnb_dev' user can only read data from this database, but only if they are connecting from the same machine that the MySQL server is running on.
GRANT SELECT ON performance_schema.* TO 'hbnb_dev'@'localhost';
