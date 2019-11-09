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

  this->_Fields = (CRecordField **)malloc(sizeof(CRecord *) * this->_MaxFields);
  memset(this->_Fields, 0, sizeof(CRecord *) * this->_MaxFields);
}

CRecord::~CRecord() {}

int CRecord::AddField(CRecordField *toAdd) {
  this->_Fields[this->_NumberFields] = toAdd;
  this->_NumberFields++;
  return this->_NumberFields;
}
