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
  memset(this->_Fields, 0, sizeof(CRecord *) * this->_MaxFields);
}

CRecord::~CRecord() {}

int CRecord::AddField(CRecordField *toAdd) {
  this->_Fields[this->_NumberFields] = toAdd;
  this->_NumberFields++;
  return this->_NumberFields;
}

void CRecord::PrintRecord() {
  for (int x = 0; x < this->_NumberFields; x++) {
    printf("Key:|%s| Value:|%s|\n", this->_Fields[x]->GetKey(),
           this->_Fields[x]->GetValue());
  }
}

char *CRecord::GetFieldSignature() {
  if (!this->_FieldSignature) {
    int totalSignatureSize = 0;
    for (int x = 0; x < this->_NumberFields; x++) {
      totalSignatureSize += strlen(this->_Fields[x]->GetKey());
    }
    this->_FieldSignature = new char[this->_NumberFields * 2 + totalSignatureSize + 2];
    for (int x = 0; x < this->_NumberFields; x++) {
      strcat(this->_FieldSignature, this->_Fields[x]->GetKey());
      strcat(this->_FieldSignature, ".");
    }
  }

  return this->_FieldSignature;
}

int CRecord::GetNumberOfFields(){
    return this->_NumberFields;
}

CRecordField *CRecord::GetRecordField(int x){
    return this->_Fields[x];
}