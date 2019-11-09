/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   CParser.cpp
 * Author: gbencke
 *
 * Created on November 9, 2019, 3:08 PM
 */
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <time.h>

#include "CParser.h"
#include "utils.h"

CParser::CParser(const char *DataFileToParse) {
  this->_DataFileToParse = new char[strlen(DataFileToParse) + 1];
  strcpy(_DataFileToParse, DataFileToParse);

  this->_RecordList = new CRecordList();
  this->_TableList = new CTableList();

  this->_lastParseTime = 0;
}

CParser::~CParser() {}

int CParser::MMapFile() {
  struct stat sb;

  this->_DataFileSize = sizeof(int) * 10;
  this->_DataFileFd = open(_DataFileToParse, O_RDONLY, 0600);

  if (this->_DataFileFd == -1) {
    printf("Error opening the file...");
    return PARSER_ERROR;
  }

  if (fstat(this->_DataFileFd, &sb) == -1) {
    printf("Error running fstat");
    return PARSER_ERROR;
  }

  this->_DataFileSize = sb.st_size;

  this->_addr = (char *)mmap(NULL, this->_DataFileSize, PROT_READ, MAP_PRIVATE,
                             this->_DataFileFd, 0);
  if (this->_addr == MAP_FAILED) {
    printf("Error in mapping");
    return PARSER_ERROR;
  }

  return (PARSER_SUCCESS);
}
int CParser::ReadParseFile() {
  char line_buffer[0xfffff];
  char *start = this->_addr;
  char *end_of_line;
  int count = 0;
  CRecord *CurrentRecord = new CRecord();

  while (1) {
    end_of_line = strstr(start, "\n");
    if (end_of_line == NULL)
      break;
    if ((end_of_line - this->_addr) > (this->_DataFileSize - 1000))
      break;
    memcpy(line_buffer, start, (end_of_line - (char *)start) + 1);
    line_buffer[(end_of_line - (char *)start) + 1] = 0;

    if (char *token = strstr(line_buffer, ":")) {
      if (!CurrentRecord) {
        CurrentRecord = new CRecord();
      }
      char Key[strlen(line_buffer) + 1];
      char Value[strlen(line_buffer) + 1];

      strcpy(Key, line_buffer);
      Key[token - line_buffer] = 0;
      strcpy(Value, token + 1);

      CurrentRecord->AddField(new CRecordField(trim(Key), trim(Value)));
    } else {
      if (CurrentRecord) {
        int numberRecords = this->_RecordList->AddRecord(CurrentRecord);
        // printf("CurrentNumberRecords:%d\n", numberRecords);
        // fflush(stdout);
        CurrentRecord = NULL;
      }
    }

    start = end_of_line + 1;
  }

  return PARSER_SUCCESS;
}

int CParser::Parse() {
  clock_t start, end;

  start = clock();

  if (this->MMapFile()) {
    return PARSER_ERROR;
  }
  if (this->ReadParseFile()) {
    return PARSER_ERROR;
  }
  end = clock();

  this->_lastParseTime = (double)((end - start) / CLOCKS_PER_SEC);
  return PARSER_SUCCESS;
}

double CParser::GetLastParsingTime() { return this->_lastParseTime; }

CRecord *CParser::GetRecord(int index) {
  return this->_RecordList->GetRecord(index);
}

int CParser::CalculateNecessaryTables() {
  int NumberOfRecords = this->_RecordList->GetRecordCount();

  for (int x = 0; x < NumberOfRecords; x++) {
    char *Signature = this->_RecordList->GetRecord(x)->GetFieldSignature();

    CTable *TableFound = this->_TableList->FindTable(Signature);
    if (!TableFound) {
      this->_TableList->AddTable(new CTable(Signature,this->_RecordList->GetRecord(x)));
    }
  }

  return this->_TableList->GetNumberOfTables();
}

int CParser::GetNumberOfTables() {
  return this->_TableList->GetNumberOfTables();
}


int CParser::CheckTableNameAssigned(char *ShortName){
    return this->_TableList->CheckTableNameAssigned(ShortName);
}

void CParser::PrintTables(){
    return this->_TableList->PrintTables();
}