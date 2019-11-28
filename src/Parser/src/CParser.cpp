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
#include <algorithm>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

#include "CParser.h"
#include "CRecord.h"
#include "utils.h"

#include "JsonLexer.h"
#include "JsonParser.h"
#include "antlr4-runtime.h"

class MyParserErrorListener : public antlr4::BaseErrorListener {
  virtual void syntaxError(antlr4::Recognizer *recognizer,
                           antlr4::Token *offendingSymbol, size_t line,
                           size_t charPositionInLine, const std::string &msg,
                           std::exception_ptr e) override {
    std::cout << msg;
  }
};

CParser::CParser(const char *DataFileToParse, const char *OutputFolder,
                 const char *FieldPrefix, const char *TablePrefix,
                 const char *SQLSchema) {

  this->_DataFileToParse = new char[strlen(DataFileToParse) + 1];
  strcpy(_DataFileToParse, DataFileToParse);

  this->_OutputFolder = new char[strlen(OutputFolder) + 1];
  strcpy(this->_OutputFolder, OutputFolder);

  this->_FieldPrefix = new char[strlen(FieldPrefix) + 1];
  strcpy(this->_FieldPrefix, FieldPrefix);

  this->_TablePrefix = new char[strlen(TablePrefix) + 1];
  strcpy(this->_TablePrefix, TablePrefix);

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
    exit(-1);
  }

  if (fstat(this->_DataFileFd, &sb) == -1) {
    printf("Error running fstat");
    exit(-1);
  }

  this->_DataFileSize = sb.st_size;

  this->_addr = (char *)mmap(NULL, this->_DataFileSize, PROT_READ, MAP_PRIVATE,
                             this->_DataFileFd, 0);
  if (this->_addr == MAP_FAILED) {
    printf("Error in mapping");
    exit(-1);
  }

  return (PARSER_SUCCESS);
}
int CParser::ReadParseFile() {
  char line_buffer[0xfffff];
  char *start = this->_addr;
  char *end_of_line;
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
      char Key[strlen(line_buffer) + 10];
      char Value[strlen(line_buffer) + 10];

      strcpy(Key, line_buffer);
      Key[token - line_buffer] = 0;
      strcpy(Value, token + 1);

      CurrentRecord->AddField(new CRecordField(trim(Key), trim(Value)));
    } else {
      if (CurrentRecord) {
        this->_RecordList->AddRecord(CurrentRecord);
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
      this->_TableList->AddTable(
          new CTable(this->_TableList->GetNumberOfTables() + 1, Signature,
                     this->_RecordList->GetRecord(x), this->_TablePrefix,
                     this->_FieldPrefix,
                     this->_RecordList->GetRecord(x)->GetParentTable()));
    }
  }

  return this->_TableList->GetNumberOfTables();
}

int CParser::GetNumberOfTables() {
  return this->_TableList->GetNumberOfTables();
}

int CParser::CheckTableNameAssigned(char *ShortName) {
  return this->_TableList->CheckTableNameAssigned(ShortName);
}

void CParser::PrintTables() { return this->_TableList->PrintTables(); }

void CParser::AssignRecordsToTables() {
  int NumberOfRecords = this->_RecordList->GetRecordCount();

  for (int x = 0; x < NumberOfRecords; x++) {
    CRecord *CurrentRecord = this->_RecordList->GetRecord(x);
    char *Signature = CurrentRecord->GetFieldSignature();

    CTable *TableFound = this->_TableList->FindTable(Signature);
    if (TableFound) {
      TableFound->AddRecord(CurrentRecord);
    }
  }
}

void CParser::GenerateDDL() {
  char *DDLFileName;
  FILE *output;

  DDLFileName = new char[strlen(this->_OutputFolder) + 30];
  sprintf(DDLFileName, "%s/%s", this->_OutputFolder, "000.DDL.CREATE.SQL");

  output = fopen(DDLFileName, "w");
  if (!output) {
    printf("Error in opening DDL file for write...");
    exit(3);
  }

  int NumberOfTables = this->_TableList->GetNumberOfTables();
  for (int x = 0; x < NumberOfTables; x++) {
    CTable *CurrentTable = this->_TableList->GetTable(x);
    fprintf(output, "%s\n", CurrentTable->GetDDLCreateSQL());
  }
  fclose(output);
}

int AllowFork = 0;

void CParser::GenerateDML() {
  int NumberProcesses = 0;
  int NumberOfTables = this->_TableList->GetNumberOfTables();
  for (int x = 0; x < NumberOfTables; x++) {
    CTable *CurrentTable = this->_TableList->GetTable(x);
    char *DMLFileName;

    DMLFileName = new char[strlen(this->_OutputFolder) +
                           strlen(CurrentTable->GetTableName()) + 30];
    sprintf(DMLFileName, "%s.DML.SQL", CurrentTable->GetTableName());

    if (AllowFork) {
      if (fork()) {

      } else {
        CurrentTable->GenerateDML(this->_OutputFolder, DMLFileName);
        exit(0);
      }
    } else {
      CurrentTable->GenerateDML(this->_OutputFolder, DMLFileName);
    }
  }
}
void CParser::AddStructRecord(JsonParser::ObjContext *obj, char *RecordToParse,
                              char *ParentTable, CRecord *ParentRecord,
                              char *StructName) {

  CRecord *CurrentRecord = new CRecord(ParentTable);

  char NewSignature[strlen(ParentTable) + strlen(StructName) + 10];
  sprintf(NewSignature, "%s_%s", ParentTable, StructName);

  CurrentRecord->SetFieldSignature(NewSignature);

  if (CurrentRecord->GetNumberOfFields() == 0) {
    CurrentRecord->AddField(ParentRecord->GetRecordField(0));
  }

  std::vector<JsonParser::PairContext *> pairs = obj->pair();
  for (auto x : pairs) {
    auto identifiers = x->IDENTIFIER();
    char FieldName[strlen(RecordToParse) + 10];
    char FieldValue[strlen(RecordToParse) + 10];

    FieldName[0] = 0;
    FieldValue[0] = 0;

    if (identifiers.size() == 1) {
      strcpy(FieldName, identifiers[0]->getSymbol()->getText().c_str());
      if (x->value()) {
        if (x->value()->NUMBER()) {
          strcpy(FieldValue,
                 x->value()->NUMBER()->getSymbol()->getText().c_str());
        } else if (x->value()->STRING()) {
          strcpy(FieldValue,
                 x->value()->STRING()->getSymbol()->getText().c_str());
        } else if (x->value()->obj()) {
          strcpy(FieldValue, x->value()->obj()->getText().c_str());
        } else if (x->value()->array()) {
          strcpy(FieldValue, x->value()->array()->getText().c_str());
        } else {
          strcpy(FieldValue, x->value()->getText().c_str());
        }
      } else {
        printf("No value in pair:%s", x->getText().c_str());
        fflush(stdout);
      }
    } else {
      strcpy(FieldName, identifiers[0]->getSymbol()->getText().c_str());
      strcpy(FieldValue, identifiers[1]->getSymbol()->getText().c_str());
    }

    CurrentRecord->AddStructureField(new CRecordField(FieldName, FieldValue));
  }
  this->_RecordList->AddRecord(CurrentRecord);
}

void findAndReplaceAll(std::string &data, std::string toSearch,
                       std::string replaceStr) {
  // Get the first occurrence
  size_t pos = data.find(toSearch);

  // Repeat till end is reached
  while (pos != std::string::npos) {
    // Replace this occurrence of Sub String
    data.replace(pos, toSearch.size(), replaceStr);
    // Get the next occurrence from the current position
    pos = data.find(toSearch, pos + replaceStr.size());
  }
}

void CParser::AddStructRecord(char *RecordToParse, char *ParentTable,
                              CRecord *ParentRecord, char *StructName) {

  std::string toParse(RecordToParse);

  findAndReplaceAll(toParse, "\\\'", "  ");

  antlr4::ANTLRInputStream input(toParse);
  JsonLexer lexer(&input);
  antlr4::CommonTokenStream tokens(&lexer);

  JsonParser parser(&tokens);

  JsonParser::JsonContext *json = parser.json();

  if (json) {
    JsonParser::ValueContext *value = json->value();
    if (value) {
      JsonParser::ObjContext *obj = value->obj();
      if (obj) {
        AddStructRecord(obj, RecordToParse, ParentTable, ParentRecord,
                        StructName);
      } else {
        JsonParser::ArrayContext *array = value->array();
        if (array) {
          std::vector<JsonParser::ValueContext *> values = array->value();
          for (auto x : values) {
            JsonParser::ObjContext *obj_from_array = x->obj();
            if (obj_from_array) {
              AddStructRecord(obj_from_array, RecordToParse, ParentTable,
                              ParentRecord, StructName);
            }
          }
        }
      }
    }
  } else {
    printf("Error in parsing JSON...");
  }
}