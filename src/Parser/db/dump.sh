#!/bin/bash

sudo docker exec MYSQL_PARSER mysqldump -uPARSER -pPARSER PARSER  > GENERATED.SQL
sudo docker exec MYSQL_PARSER_ORIG mysqldump -uPARSER -pPARSER PARSER  > ORIG.SQL

