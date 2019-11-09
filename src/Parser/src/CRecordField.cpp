/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   CRecordField.cpp
 * Author: gbencke
 *
 * Created on November 9, 2019, 3:46 PM
 */

#include "CRecordField.h"
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>

CRecordField::CRecordField(const char *Key, const char *Value) {
  _Key = new char[strlen(Key) + 1];
  strcpy(_Key, Key);

  _Value = new char[strlen(Value) + 1];
  strcpy(_Value, Value);
}

CRecordField::~CRecordField() {}

char *CRecordField::GetValue() { return this->_Value; }

char *CRecordField::GetKey() { return this->_Key; }