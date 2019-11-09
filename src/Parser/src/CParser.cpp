/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   CParser.cpp
 * Author: gbencke
 *
 * Created on November 9, 2019, 3:08 PM
 */
#include <string.h>

#include "CParser.h"

CParser::CParser(const char *DataFileToParse) {
  this->_DataFileToParse = new char[strlen(DataFileToParse) + 1];
  strcpy(_DataFileToParse, DataFileToParse);
}

CParser::~CParser() {}

int CParser::MMapFile() {
  struct stat sb;

  this->_DataFileSize = sizeof(int) * 10;
  this->_DataFileFd = open(_DataFileToParse, O_RDONLY, 0600);

  if (this->_DataFileFd == -1) {
    printf("Error opening the file...");
    return PARSER_ERROR;
  }

  if (fstat(this->_DataFileFd, &sb) == -1) {
    printf("Error running fstat");
    return PARSER_ERROR;
  }

  this->_DataFileSize = sb.st_size;

  this->_addr = (char *)mmap(NULL, this->_DataFileSize, PROT_READ, MAP_PRIVATE,
                             this->_DataFileFd, 0);
  if (this->_addr == MAP_FAILED) {
    printf("Error in mapping");
    return PARSER_ERROR;
  }

  return (PARSER_SUCCESS);
}
int CParser::ReadParseFile() {
  char line_buffer[0xfffff];
  char *start = this->_addr;
  char *end_of_line;
  int count = 0;
  while (1) {
    end_of_line = strstr(start, "\n");
    if (end_of_line == NULL)
      break;
    if ((end_of_line - this->_addr) > (this->_DataFileSize - 1000))
      break;
    memcpy(line_buffer, start, (end_of_line - (char *)start) + 1);
    line_buffer[(end_of_line - (char *)start) + 1] = 0;
    if (strstr(line_buffer, "FDN") == line_buffer) {
      count += 1;
    }
    // printf(line_buffer);
    // fflush(stdout);
    start = end_of_line + 1;
  }
  printf("Number of FDNs:%d \n", count);

  return PARSER_SUCCESS;
}

int CParser::Parse() {
  if (this->MMapFile()) {
    return PARSER_ERROR;
  }
  if (this->ReadParseFile()) {
    return PARSER_ERROR;
  }
  return PARSER_SUCCESS;
}
