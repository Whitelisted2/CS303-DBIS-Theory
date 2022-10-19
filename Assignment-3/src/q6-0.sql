-- creation of new user, and granting of privileges
CREATE USER 'auth123'@'localhost' IDENTIFIED BY 'mepregunto';
CREATE DATABASE logindb;
GRANT ALL PRIVILEGES ON logindb.* TO 'auth123'@'localhost';