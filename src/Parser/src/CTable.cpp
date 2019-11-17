/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   CTable.cpp
 * Author: gbencke
 *
 * Created on November 9, 2019, 5:27 PM
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
#include "CRecordField.h"
#include "CTable.h"
#include "globals.h"
#include "utils.h"

CTable::CTable(int TableId, char *Signature, CRecord *Template,
               char *TableNamePrefix, char *FieldNamePrefix) {
  this->_TableId = TableId;

  this->_Signature = new char[strlen(Signature) + 1];
  strcpy(this->_Signature, Signature);

  this->_TableNamePrefix = new char[strlen(TableNamePrefix) + 2];
  strcpy(this->_TableNamePrefix, TableNamePrefix);

  this->_FieldNamePrefix = new char[strlen(FieldNamePrefix) + 2];
  strcpy(this->_FieldNamePrefix, FieldNamePrefix);

  this->_TableName =
      new char[strlen(this->_Signature) + strlen(this->_TableNamePrefix) + 10];
  sprintf(this->_TableName, "%s%s", this->_TableNamePrefix, this->_Signature);

  if (strlen(this->_TableName) > 40) {
    this->_TableName[40] = 0;
  }

  this->_NumberRecords = 0;
  this->_MaxNumberOfRecords = MAX_RECORDS_PER_TABLE;
  this->_Records =
      (CRecord **)malloc(sizeof(CRecord *) * this->_MaxNumberOfRecords);
  memset(this->_Records, 0, sizeof(CRecord *) * this->_MaxNumberOfRecords);

  this->_NumberTableFields = 0;
  this->_MaxTableFields = MAX_TABLE_FIELDS;
  this->_TableFields =
      (CTableField **)malloc(sizeof(CRecord *) * this->_MaxTableFields);
  memset(this->_TableFields, 0, sizeof(CRecord *) * this->_MaxTableFields);

  this->_Template = Template;

  char *defaultFieldType = new char[10];
  strcpy(defaultFieldType, "text");

  for (int x = 0; x < this->_Template->GetNumberOfFields(); x++) {
    CRecordField *FieldToCheck = this->_Template->GetRecordField(x);

    if (!Parser->CheckTableNameAssigned(FieldToCheck->GetKey())) {
      this->_ShortName = FieldToCheck->GetKey();
    }

    this->_TableFields[this->_NumberTableFields] =
        new CTableField(FieldToCheck->GetKey(), defaultFieldType);
    this->_NumberTableFields++;
  }

  this->_DDLCreateSQL = NULL;
}

CTable::~CTable() {}

char *CTable::GetSignature() { return this->_Signature; }
char *CTable::GetShortName() { return this->_ShortName; }
char *CTable::GetTableName() { return this->_TableName; }

void CTable::RecreateInternalTable() {
  this->_MaxNumberOfRecords = this->_MaxNumberOfRecords * 0xF;

  CRecord **newInternalTable =
      (CRecord **)malloc(sizeof(CRecord *) * this->_MaxNumberOfRecords);
  memset(newInternalTable, 0, sizeof(CRecord *) * this->_MaxNumberOfRecords);

  memcpy(newInternalTable, this->_Records,
         this->_NumberRecords * sizeof(CRecord *));

  free(this->_Records);
  this->_Records = newInternalTable;
}

void CTable::AddRecord(CRecord *toAdd) {
  if (this->_NumberRecords > (this->_MaxNumberOfRecords - 10)) {
    RecreateInternalTable();
  }
  this->_Records[this->_NumberRecords] = toAdd;
  this->_NumberRecords++;
}

int CTable::GetRecordNecessarySize(int fieldToUse) {
  int MaxSize = 0;

  for (int x = 0; x < this->_NumberRecords; x++) {
    CRecordField *currentField = this->_Records[x]->GetRecordField(fieldToUse);
    if (!currentField) {
      continue;
    }

    if ((int)strlen(currentField->GetValue()) > MaxSize) {
      MaxSize = strlen(currentField->GetValue());
    }
  }

  return MaxSize;
}

char *CTable::GetDDLCreateSQL() {
  if (!_DDLCreateSQL) {
    _DDLCreateSQL = new char[200 * (this->_NumberTableFields + 1)];
    _DDLCreateSQL[0] = 0;

    sprintf(_DDLCreateSQL, "DROP TABLE IF EXISTS %s;\n\nCREATE TABLE %s (",
            this->_TableName, this->_TableName);
    strcat(_DDLCreateSQL,
           "\n  `id` bigint(20) NOT NULL AUTO_INCREMENT PRIMARY KEY,");
    for (int x = 1; x < this->_NumberTableFields; x++) {
      char tmpField[1000];
      char tmpFieldType[100];

      int RecordSize = this->GetRecordNecessarySize(x);
      if (RecordSize < 100) {
        RecordSize = 100;
      } else if (RecordSize > 100 && RecordSize < 255) {
        RecordSize = 255;
      } else if (RecordSize > 255) {
        RecordSize = 0;
      }
      if (RecordSize) {
        sprintf(tmpFieldType, " varchar(%d) DEFAULT NULL ", RecordSize);
      } else {
        strcpy(tmpFieldType, " text DEFAULT NULL ");
      }

      sprintf(tmpField, "\n    %s%s %s,", this->_FieldNamePrefix,
              camelCase(this->_TableFields[x]->GetFieldName()), tmpFieldType);

      strcat(_DDLCreateSQL, tmpField);
    }
    _DDLCreateSQL[strlen(_DDLCreateSQL) - 1] = 0;
    strcat(_DDLCreateSQL,
           "\n) ENGINE=MyISAM AUTO_INCREMENT=85434 CHARSET=latin1;\n");
    this->AddIndex(_DDLCreateSQL);
  }

  return _DDLCreateSQL;
}

void CTable::AddIndex(char *Record) {
  int fieldsInIndex = 0;
  strcat(Record, "CREATE INDEX idx_");
  for (int x = 0; x < this->_NumberTableFields; x++) {
    char *TableFieldName =
        new char[strlen(this->_TableFields[x]->GetFieldName()) + 3];
    strcpy(TableFieldName, this->_TableFields[x]->GetFieldName());
    int sizeTableFieldName = strlen(TableFieldName);

    if (fieldsInIndex < 7 &&
        strcmp("Id", &TableFieldName[sizeTableFieldName - 2]) == 0) {
      TableFieldName[2] = 0;
      strcat(Record, TableFieldName);
      strcat(Record, "_");
      fieldsInIndex++;
    }
  }

  Record[strlen(Record) - 1] = 0;

  strcat(Record, " ON ");
  strcat(Record, this->_TableName);
  strcat(Record, " ( ");

  fieldsInIndex = 0;
  for (int x = 0; x < this->_NumberTableFields; x++) {
    char *TableFieldName =
        new char[strlen(this->_TableFields[x]->GetFieldName()) + 3];
    strcpy(TableFieldName, this->_TableFields[x]->GetFieldName());
    int sizeTableFieldName = strlen(TableFieldName);

    if (fieldsInIndex < 7 &&
        strcmp("Id", &TableFieldName[sizeTableFieldName - 2]) == 0) {
      strcat(Record, this->_FieldNamePrefix);
      strcat(Record, TableFieldName);
      strcat(Record, ",");
      fieldsInIndex++;
    }
  }
  Record[strlen(Record) - 1] = 0;
  strcat(Record, ");");
}

void CTable::GenerateDML(char *outputFolder, char *fileName) {
  int RecordSize = 1000000;
  char currentFileName[1000];

  sprintf(currentFileName, "%s/%s", outputFolder, fileName);
  FILE *output = fopen(currentFileName, "w");
  if (!output) {
    printf("Error in opening:%s", currentFileName);
    return;
  }

  for (int x = 0; x < this->_NumberRecords; x++) {
    char *RecordSQL = new char[RecordSize];
    RecordSQL[0] = 0;
    sprintf(RecordSQL, "INSERT INTO %s (", this->GetTableName());
    for (int y = 1; y < this->_NumberTableFields; y++) {
      CTableField *currentField = this->_TableFields[y];

      strcat(RecordSQL, this->_FieldNamePrefix);
      strcat(RecordSQL, currentField->GetFieldName());
      strcat(RecordSQL, ",");
    }
    RecordSQL[strlen(RecordSQL) - 1] = 0;
    strcat(RecordSQL, ") VALUES (");
    for (int y = 1; y < this->_NumberTableFields; y++) {
      CRecord *currentRecord = this->_Records[x];
      CRecordField *currentField = currentRecord->GetRecordField(y);
      if (!currentField) {
        strcat(RecordSQL, "\'");
        strcat(RecordSQL, "");
        strcat(RecordSQL, "\',");
        continue;
      }
      char *currentFieldValue = currentField->GetValue();

      strcat(RecordSQL, "\'");
      strcat(RecordSQL, currentFieldValue);
      strcat(RecordSQL, "\',");

      if ((int)strlen(RecordSQL) > (RecordSize - 1000)) {
        char *newRecord;

        RecordSize *= 2;
        newRecord = new char[RecordSize];
        strcpy(newRecord, RecordSQL);
        free(RecordSQL);
        RecordSQL = newRecord;
      }
    }
    RecordSQL[strlen(RecordSQL) - 1] = 0;
    strcat(RecordSQL, ");\n");

    fprintf(output, "%s", RecordSQL);
    free(RecordSQL);
  }
}