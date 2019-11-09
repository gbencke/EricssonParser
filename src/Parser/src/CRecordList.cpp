/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   CRecordList.cpp
 * Author: gbencke
 *
 * Created on November 9, 2019, 4:15 PM
 */

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>

#include "CRecordList.h"

CRecordList::CRecordList() {

  this->_NumberRecords = 0;
  this->_MaxRecords = MAX_RECORDS;

  this->_Records = (CRecord **)malloc(sizeof(CRecord *) * this->_MaxRecords);
  memset(this->_Records, 0, sizeof(CRecord *) * this->_MaxRecords);
}

CRecordList::~CRecordList() {}

int CRecordList::AddRecord(CRecord *toAdd) {
  this->_Records[this->_NumberRecords] = toAdd;
  this->_NumberRecords++;

  return this->_NumberRecords;
}