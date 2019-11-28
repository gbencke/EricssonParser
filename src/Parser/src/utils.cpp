/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <time.h>
#include <unistd.h>

void waitAll() {
  pid_t wpid;
  int status = 0;

  while ((wpid = wait(&status)) > 0)
    ;
}

char *camelCase(char *source) {
  if (source[0] >= 'A' and source[0] <= 'Z') {
    source[0] += 'a' - 'A';
  }
  return source;
}

char *trim(char *toTrim) {
  char tmp[strlen(toTrim) + 1];
  char *current = toTrim;

  while (1) {
    if ((*current == 32 || *current == '\"') && current > 0) {
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
    if (toCheck == '\"' || toCheck == 10 || toCheck == 32 || toCheck == 13) {
      toTrim[strlen(toTrim) - 1] = 0;
    } else {
      break;
    }
  }

  return toTrim;
}