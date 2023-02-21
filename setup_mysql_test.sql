-- Create the database hbnb_test_db, but only if it does not already exist
CREATE DATABASE IF NOT EXISTS hbnb_test_db;

-- Create the user hbnb_test on localhost, but only if it does not already exist
CREATE USER IF NOT EXISTS 'hbnb_test'@'localhost' IDENTIFIED BY 'hbnb_test_pwd';

-- Grant all privileges on the hbnb_test_db database to the hbnb_test user, but only if it exists
GRANT ALL PRIVILEGES ON hbnb_test_db.* TO 'hbnb_test'@'localhost';

-- Grant the SELECT privilege on the performance_schema database to the hbnb_test user, but only if it exists
GRANT SELECT ON performance_schema.* TO 'hbnb_test'@'localhost';
