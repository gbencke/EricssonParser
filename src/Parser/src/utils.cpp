/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
#include <string.h>

char *trim(char *toTrim) {
  char tmp[strlen(toTrim) + 1];
  char *current = toTrim;

  while (1) {
    if (*current == 32 && current > 0) {
      current++;
    } else {
      break;
    }
  }

  strcpy(tmp, current);
  strcpy(toTrim, tmp);

  // return toTrim;

  while (1) {
    char toCheck = toTrim[strlen(toTrim) - 1];
    if (toCheck == 10 || toCheck == 32 || toCheck == 13) {
      toTrim[strlen(toTrim) - 1] = 0;
    } else {
      break;
    }
  }

  return toTrim;
}