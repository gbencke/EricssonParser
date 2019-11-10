/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   CTableField.cpp
 * Author: gbencke
 *
 * Created on November 9, 2019, 6:00 PM
 */

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>

#include "CTableField.h"

CTableField::CTableField(char *FieldName, char *FieldType) {
  this->_FieldName = new char[strlen(FieldName) + 1];
  strcpy(this->_FieldName, FieldName);

  this->_FieldType = new char[strlen(FieldType) + 1];
  strcpy(this->_FieldType, FieldType);
}

CTableField::~CTableField() {}

char *CTableField::GetFieldName() { return this->_FieldName; }

char *CTableField::GetFieldType() { return this->_FieldType; }