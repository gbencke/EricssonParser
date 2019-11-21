/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   CRecord.cpp
 * Author: gbencke
 *
 * Created on November 9, 2019, 3:44 PM
 */

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>

#include "CRecord.h"

CRecord::CRecord() {

  this->_NumberFields = 0;
  this->_MaxFields = MAX_FIELDS;
  this->_FieldSignature = NULL;

  this->_Fields =
      (CRecordField **)malloc(sizeof(CRecordField *) * this->_MaxFields);
  memset(this->_Fields, 0, sizeof(CRecordField *) * this->_MaxFields);
}

void CRecord::ResizeFieldTable() {
  this->_MaxFields = this->_MaxFields * 0x2;

  CRecordField **newInternalTable =
      (CRecordField **)malloc(sizeof(CRecordField *) * this->_MaxFields);
  memset(newInternalTable, 0, sizeof(CRecordField *) * this->_MaxFields);

  memcpy(newInternalTable, this->_Fields,
         this->_NumberFields * sizeof(CRecordField *));

  free(this->_Fields);
  this->_Fields = newInternalTable;
}

CRecord::~CRecord() {}

int CRecord::AddField(CRecordField *toAdd) {
  if (this->_NumberFields > (this->_MaxFields - 10)) {
    this->ResizeFieldTable();
  }
  this->_Fields[this->_NumberFields] = toAdd;
  this->_NumberFields++;
  if (this->_NumberFields == 1) {
    ParseFDNField();
  }
  return this->_NumberFields;
}

void CRecord::PrintRecord() {
  for (int x = 0; x < this->_NumberFields; x++) {
    printf("Key:|%s| Value:|%s|\n", this->_Fields[x]->GetKey(),
           this->_Fields[x]->GetValue());
  }
}

void CRecord::ParseFDNField() {
  char *currentFDNPointer = this->_Fields[0]->GetValue();

  if (strstr(currentFDNPointer, ",")) {
    while (1) {
      char buffer[strlen(currentFDNPointer) + 10];
      char fieldName[strlen(currentFDNPointer) + 10];
      char fieldValue[strlen(currentFDNPointer) + 10];

      if (strstr(currentFDNPointer, ",")) {
        strcpy(buffer, currentFDNPointer);
        *strstr(buffer, ",") = 0;

        strcpy(fieldName, buffer);
        strcpy(fieldValue, strstr(fieldName, "=") + 1);

        *strstr(fieldName, "=") = 0;
        strcat(fieldName, "Id");

        this->AddField(new CRecordField(fieldName, fieldValue));
        currentFDNPointer = strstr(currentFDNPointer, ",") + 1;
      } else {
        break;
      }
    }

  } else {

    char buffer[strlen(currentFDNPointer) + 10];
    char fieldName[strlen(currentFDNPointer) + 10];
    char fieldValue[strlen(currentFDNPointer) + 10];

    strcpy(buffer, currentFDNPointer);

    strcpy(fieldName, buffer);
    strcpy(fieldValue, strstr(fieldName, "=") + 1);

    *strstr(fieldName, "=") = 0;
    strcat(fieldName, "Id");

    this->AddField(new CRecordField(fieldName, fieldValue));
  }
}

char *CRecord::GetFieldSignature() {
  if (!this->_FieldSignature) {
    char *FieldValue = this->_Fields[0]->GetValue();
    char *FieldValuePointer = &FieldValue[strlen(FieldValue) - 1];
    if (strstr(FieldValue, ",")) {
      while (*FieldValuePointer != ',' && FieldValuePointer > FieldValue) {
        FieldValuePointer--;
      }
      FieldValuePointer++;
    } else {
      FieldValuePointer = FieldValue;
    }

    this->_FieldSignature = new char[strlen(FieldValuePointer) + 10];
    strcpy(this->_FieldSignature, FieldValuePointer);
    *strstr(this->_FieldSignature, "=") = 0;
  }

  return this->_FieldSignature;
}

int CRecord::GetNumberOfFields() { return this->_NumberFields; }

CRecordField *CRecord::GetRecordField(int x) { return this->_Fields[x]; }