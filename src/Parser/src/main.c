/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/* 
 * File:   main.c
 * Author: root
 *
 * Created on November 8, 2019, 1:06 PM
 */

#include <stdio.h>
#include <stdlib.h>
#include <sys/mman.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <string.h>

/*
 * 
 */
int main(int argc, char** argv) {
    if(argc < 2){
        printf("Necessary to inform input file...");
        exit(0);
    }
    
    struct stat sb;
    
    int size = sizeof(int) * 10;
    int fd = open(argv[1], O_RDONLY, 0600);
    
    if(fd ==-1){
        printf("Error opening the file...");
        return -1;
    }
    
    if(fstat(fd, &sb) == -1){
        printf("Error running fstat");
        return -1;
    }
    
    printf("Size:%d\n ", sb.st_size);
    
    void *addr=mmap(NULL, sb.st_size, PROT_READ, MAP_PRIVATE, fd, 0);
    if(addr == MAP_FAILED){
        printf("Error in mapping");
        return -1;
    }
    
    char line_buffer[0xfffff];
    char *start = addr;
    char *end_of_line;
    int count = 0;
    while(1){
        end_of_line = strstr(start, "\n");
        if(end_of_line==NULL)
            break;
        if((end_of_line - (char *)addr) > (sb.st_size - 1000))
            break;
        memcpy(line_buffer, start, (end_of_line - (char *)start) + 1);
        line_buffer[(end_of_line - (char *)start) + 1] = 0;
        if(strstr(line_buffer,"FDN") == line_buffer){
            count += 1;
        }
        //printf(line_buffer);
        //fflush(stdout);
        start = end_of_line + 1;
    }
    printf("Number of FDNs:%d \n", count);

    return (EXIT_SUCCESS);
}

