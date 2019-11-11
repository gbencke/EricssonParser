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

rm -f $PARSER_OUTPUT_FOLDER/*

./bin/parser

sudo docker start MYSQL_PARSER

cd $PARSER_OUTPUT_FOLDER

for FILE_TO_COPY in *.SQL
do
    echo $FILE_TO_COPY
    sudo docker cp $FILE_TO_COPY MYSQL_PARSER:/
done
wait

sudo docker exec MYSQL_PARSER /bin/sh -c "mysql -uPARSER -pPARSER PARSER < /000.DDL.CREATE.SQL" &

ls -1 *.DML.SQL | xargs -n1 -P 8 -I {} sudo docker exec MYSQL_PARSER /bin/sh -c "mysql -uPARSER -pPARSER PARSER < /{}" 



