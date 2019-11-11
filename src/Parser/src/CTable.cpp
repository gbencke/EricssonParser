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
  sprintf(this->_TableName, "%04d_%s%s", this->_TableId, this->_TableNamePrefix,
          this->_Signature);

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

char *CTable::GetDDLCreateSQL() {
  if (!_DDLCreateSQL) {
    _DDLCreateSQL = new char[200 * (this->_NumberTableFields + 1)];
    _DDLCreateSQL[0] = 0;

    sprintf(_DDLCreateSQL, "DROP TABLE IF EXISTS %s ; CREATE TABLE %s (",
            this->_TableName, this->_TableName);
    for (int x = 0; x < this->_NumberTableFields; x++) {
      if (x > 50) {
        break;
      }
      char tmpField[1000];
      sprintf(tmpField, "%s%s %s,", this->_FieldNamePrefix,
              this->_TableFields[x]->GetFieldName(),
              this->_TableFields[x]->GetFieldType());
      strcat(_DDLCreateSQL, tmpField);
    }
    _DDLCreateSQL[strlen(_DDLCreateSQL) - 1] = 0;
    strcat(_DDLCreateSQL, ");\n");
  }

  return _DDLCreateSQL;
}

void CTable::GenerateDML(FILE *output) {
  int RecordSize = 100000;

  for (int x = 0; x < this->_NumberRecords; x++) {
    char RecordSQL[RecordSize];
    RecordSQL[0] = 0;
    sprintf(RecordSQL, "INSERT INTO %s VALUES (", this->GetTableName());
    for (int y = 0; y < this->_NumberTableFields; y++) {
	if( y >50){
	    break;
	}
      strcat(RecordSQL, "\'");
      strcat(RecordSQL, this->_Records[x]->GetRecordField(y)->GetValue());
      strcat(RecordSQL, "\',");
    }
    RecordSQL[strlen(RecordSQL) - 1] = 0;
    strcat(RecordSQL, ");\n");
    fprintf(output, "%s", RecordSQL);
  }
}