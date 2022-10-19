-- After logging in to new user, create table
SHOW DATABASES;
USE logindb;
CREATE TABLE userlist(
    userID VARCHAR(30) PRIMARY KEY,
    pass VARCHAR(64) NOT NULL
);
DESCRIBE userlist;
