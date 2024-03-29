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

#include "CRecord.h"
#include "CTableField.h"

class CTable {
public:
  CTable(int TableId, char *Signature, CRecord *Template, char *TableNamePrefix,
         char *FieldNamePrefix, char *ParentTable);
  virtual ~CTable();

  char *GetSignature();
  char *GetShortName();
  char *GetTableName();
  void AddRecord(CRecord *toAdd);
  char *GetDDLCreateSQL();
  void GenerateDML(char *outputFolder, char *fileName);

private:
  char *_TableNamePrefix;
  char *_FieldNamePrefix;
  char *_TableName;
  char *_Signature;
  char *_ShortName;

  int _NumberTableFields;
  int _MaxTableFields;

  CTableField **_TableFields;
  CRecord *_Template;

  int _NumberRecords;
  int _MaxNumberOfRecords;
  CRecord **_Records;

  int _TableId;

  char *_DDLCreateSQL;

  int _HasParentTable;

  void RecreateInternalTable();
  int GetRecordNecessarySize(char *fieldToUse);
  void AddIndex(char *Record);
};

#endif /* CTABLE_H */
