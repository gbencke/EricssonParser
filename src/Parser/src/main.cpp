/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   main.c
 * Author: root
 *
 * Created on November 8, 2019, 1:06 PM
 */

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/wait.h>

#include "CParser.h"
#include "globals.h"
#include "utils.h"

CParser *Parser;
FILE *current_log;

int main(int argc, char **argv) {

  char *_DataFile = getenv("PARSER_DATA_FILE");
  if (!_DataFile) {
    printf("Environment variable for Parser Data File was not found...");
    return 1;
  }

  char *_OutputFolder = getenv("PARSER_OUTPUT_FOLDER");
  if (!_OutputFolder) {
    printf("Output Folder was not set..");
    return 2;
  }

  char *_FieldPrefix = getenv("PARSER_FIELD_PREFIX");
  if (!_FieldPrefix) {
    printf("Output Folder was not set..");
    return 2;
  }

  char *_TablePrefix = getenv("PARSER_TABLE_PREFIX");
  if (!_TablePrefix) {
    printf("Output Folder was not set..");
    return 2;
  }

  char *_SQLSchema = getenv("PARSER_SQL_SCHEMA");

  Parser = new CParser(_DataFile, _OutputFolder, _FieldPrefix, _TablePrefix,
                       _SQLSchema);

  printf("Reading the text file...\n");
  fflush(stdout);

  Parser->Parse();
  printf("Reading time:%.2f\n", Parser->GetLastParsingTime());
  printf("Calculating Tables to be created\n");
  fflush(stdout);

  Parser->CalculateNecessaryTables();
  printf("NumberOfTables:%d\n", Parser->GetNumberOfTables());
  printf("Assigning Records to Tables...\n");
  fflush(stdout);

  Parser->AssignRecordsToTables();
  printf("Generating DDL...\n");
  fflush(stdout);

  Parser->GenerateDDL();
  printf("DDL was generated...\n");
  fflush(stdout);

  printf("Generating DML ...\n");
  fflush(stdout);
  Parser->GenerateDML();

  waitAll();
  printf("DML Generated...\n");
  fflush(stdout);
}
