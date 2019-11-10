/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   CTableList.h
 * Author: gbencke
 *
 * Created on November 9, 2019, 5:27 PM
 */

#ifndef CTABLELIST_H
#define CTABLELIST_H

#include "CTable.h"

class CTableList {
public:
  CTableList();
  virtual ~CTableList();

  CTable *FindTable(char *Signature);
  CTable *GetTable(int index);

  int AddTable(CTable *toAdd);
  int GetNumberOfTables();
  int CheckTableNameAssigned(char *);

  void PrintTables();

private:
  int _NumberTables;
  int _MaxTables;

  CTable **_Tables;
};

#endif /* CTABLELIST_H */
