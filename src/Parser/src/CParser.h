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

#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>

#include "constants.h"

class CParser {
public:
  CParser(const char *DataFileToParse);
  virtual ~CParser();

  int Parse();

private:
  char *_DataFileToParse;
  int _DataFileSize;
  int _DataFileFd;
  char *_addr;

  int MMapFile();
  int ReadParseFile();
};

#endif /* CPARSER_H */
