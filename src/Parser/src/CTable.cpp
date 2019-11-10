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

CTable::CTable(int TableId, char *Signature, CRecord *Template) {
  this->_TableId = TableId;
  this->_Signature = new char[strlen(Signature) + 1];
  strcpy(this->_Signature, Signature);

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

  for (int x; x < this->_Template->GetNumberOfFields(); x++) {
    CRecordField *FieldToCheck = this->_Template->GetRecordField(x);

    if (!Parser->CheckTableNameAssigned(FieldToCheck->GetKey())) {
      this->_ShortName = FieldToCheck->GetKey();
    }

    this->_TableFields[this->_NumberTableFields] =
        new CTableField(FieldToCheck->GetKey(), defaultFieldType);
    this->_NumberTableFields++;
  }
}

CTable::~CTable() {}

char *CTable::GetSignature() { return this->_Signature; }
char *CTable::GetShortName() { return this->_ShortName; }

void CTable::RecreateInternalTable() {
  this->_MaxNumberOfRecords = this->_MaxNumberOfRecords * 0xF;

  CRecord **newInternalTable =
      (CRecord **)malloc(sizeof(CRecord *) * this->_MaxNumberOfRecords);
  memset(newInternalTable, 0, sizeof(CRecord *) * this->_MaxNumberOfRecords);

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
