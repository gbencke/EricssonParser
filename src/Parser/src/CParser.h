/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   CParser.h
 * Author: gbencke
 *
 * Created on November 9, 2019, 3:08 PM
 */

#ifndef CPARSER_H
#define CPARSER_H

#include "CRecord.h"
#include "CRecordField.h"
#include "CRecordList.h"
#include "CTableList.h"
#include "constants.h"

class CParser {
public:
  CParser(const char *DataFileToParse, const char *OutputFolder,
          const char *FieldPrefix, const char *TablePrefix,
          const char *_SQLSchema);
  virtual ~CParser();

  int Parse();
  double GetLastParsingTime();

  CRecord *GetRecord(int index);
  int GetNumberOfRecords();

  int CalculateNecessaryTables();
  int GetNumberOfTables();
  int CheckTableNameAssigned(char *);

  void PrintTables();

  void AssignRecordsToTables();
  void GenerateDDL();
  void GenerateDML();

private:
  char *_DataFileToParse;
  char *_OutputFolder;
  char *_FieldPrefix;
  char *_TablePrefix;
  char *_SQLSchema;

  int _DataFileSize;
  int _DataFileFd;
  char *_addr;

  CRecordList *_RecordList;
  CTableList *_TableList;

  int MMapFile();
  int ReadParseFile();

  double _lastParseTime;
};

#endif /* CPARSER_H */
