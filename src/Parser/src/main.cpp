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

#include "CParser.h"
#include "globals.h"

CParser *Parser;

int main(int argc, char **argv) {

  char *_DataFile = getenv("PARSER_DATA_FILE");
  if (!_DataFile) {
    printf("Environment variable for Parser Data File was not found...");
    return 1;
  }

  Parser = new CParser(_DataFile);
  Parser->Parse();
  printf("Execution time:%.2f\n", Parser->GetLastParsingTime());
  CRecord *testRecord = Parser->GetRecord(1000);

  testRecord->PrintRecord();
  printf("%s\n", testRecord->GetFieldSignature());

  Parser->CalculateNecessaryTables();
  printf("NumberOfTables:%d", Parser->GetNumberOfTables());

  Parser->PrintTables();
      
}
