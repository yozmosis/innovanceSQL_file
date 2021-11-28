CREATE USER 'innovance'@'localhost' IDENTIFIED BY 'innovance';

GRANT ALL PRIVILEGES ON * . * TO 'innovance'@'localhost';

ALTER USER 'innovance'@'localhost' IDENTIFIED WITH mysql_native_password BY 'innovance';