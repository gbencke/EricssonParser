/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   CRecord.h
 * Author: gbencke
 *
 * Created on November 9, 2019, 3:44 PM
 */

#ifndef CRECORD_H
#define CRECORD_H

#include "CRecordField.h"
#include "constants.h"

class CRecord {
public:
  CRecord();
  virtual ~CRecord();

  int AddField(CRecordField *toAdd);
  void PrintRecord();
  char *GetFieldSignature();

  int GetNumberOfFields();
  CRecordField *GetRecordField(int x);

private:
  int _NumberFields;
  int _MaxFields;

  char *_FieldSignature;

  CRecordField **_Fields;
};

#endif /* CRECORD_H */
