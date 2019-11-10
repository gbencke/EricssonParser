#!/bin/sh
# 
# File:   run.sh
# Author: gbencke
#
# Created on Nov 10, 2019, 7:16:33 PM
#

export PARSER_DATA_FILE=./data/edff.txt
export PARSER_TABLE_PREFIX=t_
export PARSER_FIELD_PREFIX=f_
export PARSER_OUTPUT_FOLDER=./output

sudo docker start MYSQL_PARSER
sudo docker cp $PARSER_OUTPUT_FOLDER/000.DDL.CREATE.SQL MYSQL_PARSER:/
sudo docker exec MYSQL_PARSER /bin/sh -c "mysql -uPARSER -pPARSER PARSER < /000.DDL.CREATE.SQL" 

