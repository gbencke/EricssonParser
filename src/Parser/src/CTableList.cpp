/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   CTableList.cpp
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

#include "CTableList.h"
#include "constants.h"

CTableList::CTableList() {

  this->_NumberTables = 0;
  this->_MaxTables = MAX_TABLES;

  this->_Tables = (CTable **)malloc(sizeof(CTable *) * this->_MaxTables);
  memset(this->_Tables, 0, sizeof(CTable *) * this->_MaxTables);
}

CTableList::~CTableList() {}

int CTableList::GetNumberOfTables() { return this->_NumberTables; }

CTable *CTableList::FindTable(char *Signature) {
  for (int x = 0; x < this->_NumberTables; x++) {
    if (strstr(Signature, this->_Tables[x]->GetSignature()) == Signature) {
      return this->_Tables[x];
    }
  }
  return NULL;
}

int CTableList::AddTable(CTable *toAdd) {
  this->_Tables[this->_NumberTables] = toAdd;
  this->_NumberTables++;
  return this->_NumberTables;
}


int CTableList::CheckTableNameAssigned(char *ShortName){
  for (int x = 0; x < this->_NumberTables; x++) {
    if (strcmp(ShortName, this->_Tables[x]->GetShortName())==0){
	return 1;
    }
  }
  return 0;
}

void CTableList::PrintTables(){
  for (int x = 0; x < this->_NumberTables; x++) {
      CTable *table = this->_Tables[x];
      printf("Short:%s (%s)\n", table->GetShortName(), table->GetSignature());
  }
}