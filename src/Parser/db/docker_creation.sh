#!/bin/bash

#Start Docker
sudo systemctl start docker 
#Create Docker
sudo docker run --name MYSQL_PARSER -e MYSQL_ROOT_PASSWORD=PARSER1234 -e MYSQL_DATABASE=PARSER -e MYSQL_USER=PARSER -e MYSQL_PASSWORD=PARSER -d mysql:latest
sudo docker run --name MYSQL_PARSER_ORIG -e MYSQL_ROOT_PASSWORD=PARSER1234 -e MYSQL_DATABASE=PARSER -e MYSQL_USER=PARSER -e MYSQL_PASSWORD=PARSER -d mysql:latest

sudo docker start MYSQL_PARSER
sudo docker start MYSQL_PARSER_ORIG

sudo docker cp ../data/ericssonEdff.sql.noinserts.txt  MYSQL_PARSER_ORIG:/

sudo docker exec MYSQL_PARSER_ORIG /bin/sh -c "mysql -uPARSER -pPARSER PARSER < /ericssonEdff.sql.noinserts.txt"

#Test table creating and mysql shell opening
#sudo docker exec -i MYSQL_PARSER mysql -uPARSER -pPARSER PARSER <<< 'CREATE TABLE TEST ( NAME VARCHAR(10));'
#sudo docker exec -it MYSQL_PARSER mysql -uPARSER -pPARSER PARSER 
