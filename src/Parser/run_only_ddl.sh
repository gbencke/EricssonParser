#!/bin/sh
# 
# File:   run.sh
# Author: gbencke
#
# Created on Nov 10, 2019, 7:16:33 PM
#

export PARSER_DATA_FILE=./data/2711edff11.txt
export PARSER_TABLE_PREFIX=t_
export PARSER_FIELD_PREFIX=f_
export PARSER_OUTPUT_FOLDER=./output

rm -f $PARSER_OUTPUT_FOLDER/*

./bin/parser

sudo docker start MYSQL_PARSER

cd $PARSER_OUTPUT_FOLDER

ls -1 000.*.SQL | xargs -n1 -P 64 -I {} sudo docker cp {}  MYSQL_PARSER:/

sudo docker exec MYSQL_PARSER /bin/sh -c "mysql -uPARSER -pPARSER PARSER < /000.DDL.CREATE.SQL" 

