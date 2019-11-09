/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   CTable.h
 * Author: gbencke
 *
 * Created on November 9, 2019, 5:27 PM
 */

#ifndef CTABLE_H
#define CTABLE_H

#include "CTableField.h"
#include "CRecord.h"

class CTable {
public:
  CTable(char *Signature, CRecord *Template);
  virtual ~CTable();

  char *GetSignature();
  char *GetShortName();

private:
  char *_Signature;
  char *_ShortName;

  int _NumberTableFields;
  int _MaxTableFields;

  CTableField **_TableFields;
  CRecord *_Template;
};

#endif /* CTABLE_H */
