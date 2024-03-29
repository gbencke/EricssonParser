#!/bin/sh
# 
# File:   run.sh
# Author: gbencke
#
# Created on Nov 10, 2019, 7:16:33 PM
#

export PARSER_DATA_FILE=./data/edff.sample.txt
export PARSER_TABLE_PREFIX=t_
export PARSER_FIELD_PREFIX=f_
export PARSER_OUTPUT_FOLDER=./output

rm -f $PARSER_OUTPUT_FOLDER/*
rm ./massif*

valgrind  ./bin/parser
