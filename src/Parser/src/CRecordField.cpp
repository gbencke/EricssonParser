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

CRecordField::CRecordField(const char *Key, const char *Value) {
  _Key = new char[strlen(Key) + 1];
  strcpy(_Key, Key);

  _Value = new char[strlen(Value) + 1];
  strcpy(_Value, Value);
}

CRecordField::~CRecordField() {}
