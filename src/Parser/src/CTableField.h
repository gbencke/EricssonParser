/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/*
 * File:   CTableField.h
 * Author: gbencke
 *
 * Created on November 9, 2019, 6:00 PM
 */

#ifndef CTABLEFIELD_H
#define CTABLEFIELD_H

class CTableField {
public:
  CTableField(char *FieldName, char *FieldType);
  virtual ~CTableField();

  char *GetFieldName();
  char *GetFieldType();

private:
  char *_FieldName;
  char *_FieldType;
};

#endif /* CTABLEFIELD_H */
