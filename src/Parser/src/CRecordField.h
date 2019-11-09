/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   CRecordField.h
 * Author: gbencke
 *
 * Created on November 9, 2019, 3:46 PM
 */

#ifndef CRECORDFIELD_H
#define CRECORDFIELD_H

#include <string.h>

class CRecordField {
public:
  CRecordField(const char *_Key, const char *Value);

  virtual ~CRecordField();

  char *GetKey();
  char *GetValue();

private:
  char *_Key;
  char *_Value;
};

#endif /* CRECORDFIELD_H */
