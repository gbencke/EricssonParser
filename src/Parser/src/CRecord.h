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
  CRecord(char *ParentTable);
  virtual ~CRecord();

  int AddField(CRecordField *toAdd);
  int AddStructureField(CRecordField *toAdd);
  void PrintRecord();
  char *GetFieldSignature();
  char *GetParentTable();

  int GetNumberOfFields();
  CRecordField *GetRecordField(int x);
  void SetFieldSignature(char *newSignature);
  void ParseFDNField();

private:
  int _NumberFields;
  int _MaxFields;

  char *_FieldSignature;
  char *_ParentTable;

  CRecordField **_Fields;
  void ResizeFieldTable();
  int IsStruct(CRecordField *toAdd);
  int IsStructArray(CRecordField *toAdd);
  void InitializeRecord();
};

#endif /* CRECORD_H */
