/******************************************************************************
 * Copyright (C) 2017 by Alex Fosdick - University of Colorado
 *
 * Redistribution, modification or use of this software in source or binary
 * forms is permitted as long as the files maintain this copyright. Users are 
 * permitted to modify this and use it to learn about the field of embedded
 * software. Alex Fosdick and the University of Colorado are not liable for any
 * misuse of this material. 
 *
 *****************************************************************************/
/**
 * @file main.c
 * @brief This file is to be used for the c1m3 assessment.
 *
 * This file provides various memory allocations. The learner will need
 * to analyze the code's memory footprint for this assessment.
 *
 * @author Alex Fosdick
 * @date April 2, 2017
 *
 */
#include <stdint.h>
#include <stdlib.h>
#include "misc.h"

static int g1;                 // g1 : DATA, .BSS, R/W, PROGRAM  (2332)
const int g2 = 45;             // g2 : CODE , .rodata, R, Indefinite (1513)       , Assigned value : Code , .cinit/.pinit,R, Indefinite
char g3 = 12;                  // g3 : DATA , .data , R/W, PROGRAM (2432)         , Assigned value : Code , .cinit/.pinit,R, Indefinite
char g4 = 0;                   // g4 : DATA, .BSS, R/W , PROGRAM  (2332)          , Assigned value : Code , .cinit/.pinit,R, Indefinite
extern char g5[N];             // g5 : DATA, .data, R/W, PROGRAM (2432)           , Assigned value : Code , .cinit/.pinit,R, Indefinite

int main()                                          // main : Code, .text , Read,Indefinite (1712)
{
  register int l1;                                  // l1 : register, stack ,R/W, FUNCTION (4131) ,register,none,R/W,function 4631
  int * l2;                                         // l2 : DATA, STACK, R/W, FUNCTION    (2131)      
  volatile int l3 = 12;                             // l3 : DATA, STACK, R/W, FUNCTION  (2131)  ,  Assigned value : Code, .pinit/.cinit, R, Indefinite  (1513)    
  
  l2 = (int *) malloc( N * g2 * sizeof(char) );     // *l2 :  DATA, Heap, R/W, Indefinite(2233)

  if ( ! l2 )                                               
  {
    return -1;
  }
uint_fast8_t  a = 0;
uchar8_t b =1;
  for( l1 = 0; l1 < g2; l3++)
  {
    g1 = func(l2);
  }

  return 0;
}

