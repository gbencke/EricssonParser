/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   CRecordList.h
 * Author: gbencke
 *
 * Created on November 9, 2019, 4:15 PM
 */

#ifndef CRECORDLIST_H
#define CRECORDLIST_H

#include "CRecord.h"

class CRecordList {
public:
  CRecordList();
  virtual ~CRecordList();

  int AddRecord(CRecord *toAdd);

private:
  int _NumberRecords;
  int _MaxRecords;

  CRecord **_Records;
};

#endif /* CRECORDLIST_H */
