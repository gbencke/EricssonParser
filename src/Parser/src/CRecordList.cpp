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

void CRecordList::RecreateDataTable() {
  CRecord **newRecords =
      (CRecord **)malloc(sizeof(CRecord *) * this->_MaxRecords * 2);
  memcpy(newRecords, this->_Records, sizeof(CRecord *) * this->_MaxRecords);

  this->_MaxRecords *= 2;
  free(this->_Records);
  this->_Records = (CRecord **)newRecords;
}

int CRecordList::AddRecord(CRecord *toAdd) {
  if (this->_NumberRecords == this->_MaxRecords) {
    this->RecreateDataTable();
  }
  this->_Records[this->_NumberRecords] = toAdd;
  this->_NumberRecords++;

  return this->_NumberRecords;
}

CRecord *CRecordList::GetRecord(int index) { return this->_Records[index]; }

int CRecordList::GetRecordCount() { return this->_NumberRecords; }
