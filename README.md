# Erisson Format Parser

This is a parser for the ericsson format text file, it reads, organizes and store the information in a MySQL Database 

## PreRequisites 

In a Ubuntu 18 Server VM, please install the following requisites

    sudo apt-get update
    sudo apt-get install build-essential gcc g++ make docker.io

## Installation

Please clone the repository:

    git clone https://github.com/gbencke/188.parse.text.file.to.mysql.db.in.parallel.using.multiple.cores.git
    cd 188.parse.text.file.to.mysql.db.in.parallel.using.multiple.cores/src/Parser
 

Build the project, just typing:
 
    make

For tests we are using a mysql docker container, please create the container with this command:

    sudo docker run --name MYSQL_PARSER -e MYSQL_ROOT_PASSWORD=PARSER1234 -e MYSQL_DATABASE=PARSER -e MYSQL_USER=PARSER -e MYSQL_PASSWORD=PARSER -d mysql:latest

This will create and run the docker container that we will use for testing...

## Modes of operation

The project has 2 modes of operation:

### Read the edff.txt and create DDL + DML Scripts

In this mode, the parser will scan the edff.txt, will discover the necessary tables, create the scripts to create the database: DDL (Data Definition Language) and will do the insertions necessary: DML scripts.

**This has been implemented and tested**

### Read a SQL Dump and only Truncate / insert the edff.txt data

In this mode, the parser will read a SQL Schema and then populate it using the edff.txt data.

**This has NOT been implemented**

## Execution of the parser

Execution is simple, from the source root folder: $(REPOSITORY)/src/Parser: just set the environment variables:

    export PARSER_DATA_FILE=./data/edff.txt
    export PARSER_TABLE_PREFIX=t_
    export PARSER_FIELD_PREFIX=f_
    export PARSER_OUTPUT_FOLDER=./output

Clean the output folder:

    rm -f $PARSER_OUTPUT_FOLDER/*

And run the parser:

    ./bin/parser

In the mode about, it will create the DDL and DML scripts to create the entire database.

## Execution of the Generated Scripts

First, we need to copy the generated scripts into the docker container:

    cd $PARSER_OUTPUT_FOLDER
    ls -1 *.SQL | xargs -n1 -P 64 -I {} sudo docker cp {}  MYSQL_PARSER:/ &


Then we need to run the DDL into the container to create the tables:

    sudo docker exec MYSQL_PARSER /bin/sh -c "mysql -uPARSER -pPARSER PARSER < /000.DDL.CREATE.SQL"

And then we can use XARGS to massively parallel its execution:

    ls -1 *.DML.SQL | xargs -n1 -P 96 -I {} sudo docker exec MYSQL_PARSER /bin/sh -c "mysql -uPARSER -pPARSER PARSER < /{}"

And then the data will be populated in the container

## Results

Please notice that this project is not finished and there are still many bugs / adjustments.  