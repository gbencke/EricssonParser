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
#include "CTable.h"
#include "CRecordField.h"
#include "globals.h"

CTable::CTable(char *Signature, CRecord *Template) {
  this->_Signature = new char[strlen(Signature) + 1];
  strcpy(this->_Signature, Signature);

  this->_NumberTableFields = 0;
  this->_MaxTableFields = MAX_TABLE_FIELDS;

  this->_TableFields = (CTableField **)malloc(sizeof(CRecord *) * this->_MaxTableFields);
  memset(this->_TableFields, 0, sizeof(CRecord *) * this->_MaxTableFields);

  this->_Template = Template;

  for(int x;x<this->_Template->GetNumberOfFields();x++){
      CRecordField *FieldToCheck = this->_Template->GetRecordField(x);
      
      if(!Parser->CheckTableNameAssigned(FieldToCheck->GetKey())){
	  this->_ShortName = FieldToCheck->GetKey();
      }
  }
}

CTable::~CTable() {}

char *CTable::GetSignature() { return this->_Signature; }
char *CTable::GetShortName() { return this->_ShortName; }
