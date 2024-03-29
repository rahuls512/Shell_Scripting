#!/bin/bash

# Import MySQL GPG key
sudo rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022

# Download MySQL repository RPM
sudo wget http://dev.mysql.com/get/mysql57-community-release-e17-8.noarch.rpm

# Install MySQL repository RPM
sudo yum localinstall -y mysql57-community-release-e17-8.noarch.rpm

# Install MySQL Community Server
sudo yum install -y mysql-community-server

# Start MySQL service
sudo systemctl start mysqld

# Enable MySQL service to start on boot
sudo systemctl enable mysqld

echo "MySQL installation and setup completed."

# Change script permission to make it executable
sudo chmod +x install_mysql.sh


####### Notes #################################################################################
#After that, you can run the script as mentioned before:
#./install_mysql.sh
#Syntax for establishing a MySQL database connection using the mysql command-line tool ans basic commands:
#mysql -h $RDSDB_Endpoint -u $DB_USER -p$DB_PASS -D $DB_NAME -e "CREATE TABLE sample_table (id INT, name VARCHAR(255))"
#show databases;
#use sample_table;
#show tables;
#create database sample;
#create table user();
#insert into user values();
#select*from users;
