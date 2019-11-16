#!/bin/bash

#Start Docker
sudo systemctl start docker 

#Create Docker
sudo docker run --name MYSQL_PARSER -e MYSQL_ROOT_PASSWORD=PARSER1234 -e MYSQL_DATABASE=PARSER -e MYSQL_USER=PARSER -e MYSQL_PASSWORD=PARSER -d mysql:latest
sudo docker run --name MYSQL_PARSER_ORIG -e MYSQL_ROOT_PASSWORD=PARSER1234 -e MYSQL_DATABASE=PARSER -e MYSQL_USER=PARSER -e MYSQL_PASSWORD=PARSER -d mysql:latest

sudo docker exec MYSQL_PARSER mysqldump -uPARSER -pPARSER PARSER  > GENERATED.SQL
sudo docker exec MYSQL_PARSER_ORIG mysqldump -uPARSER -pPARSER PARSER  > ORIG.SQL

