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
 * @file <Add File Name> 
 * @brief <This module provides statistical information >
 *
 * This module stats.c provides functionality to : 
 * print given array
 * find median of array
 * find mean of array
 * find maximum element of array
 * find minimum element of array
 * sorts an array in descending order 
 *
 * @author <Muhammad Usman>
 * @date <Add date >
 *
 */



#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <string.h>
#include"platform.h"
#include "stats.h"

/* Size of the Data Set */
#define SIZE 40

void main() {

  unsigned char test[SIZE] = { 34, 201, 190, 154,   8, 194,   2,   6,
                              114, 88,   45,  76, 123,  87,  25,  23,
                              200, 122, 150, 90,   92,  87, 177, 244,
                              201,   6,  12,  60,   8,   2,   5,  67,
                                7,  87, 250, 230,  99,   3, 100,  90};

  /* Other Variable Declarations Go Here */
  uint8_t SIZ = SIZE; uint8_t arr[SIZE] = {0};
  /* Statistics and Printing Functions Go Here */
  memcpy(arr,test,SIZ);
  print_statistics(test,SIZ);
  print_array(arr,SIZ);
  find_median(test,SIZ);
  find_mean(test,SIZ);
  find_maximum(test,SIZ);
  find_minimum(test,SIZ);
  sort_array(test,SIZ);

}

/* Add other Implementation File Code Here */
void print_statistics(uint8_t *test,uint8_t SIZ)
{
uint8_t mean=0, max = 0, min =0, med = 0; 
uint8_t *sa=NULL;
sa=sort_array_asc(test,SIZ);
med = find_median(sa,SIZ);
mean = find_mean(sa,SIZ);
max = find_maximum(sa,SIZ);
min = find_minimum(sa,SIZ);

printf("median = %i \n",med);
printf("mean = %i \n ",mean);
printf("max = %i \n ",max);
printf("min = %i \n ",min);

}

void print_array(uint8_t *test,uint8_t SIZ)
{
#ifdef VERBOSE

for(uint8_t index=0;index<SIZ;index++)

{
PRINTF("%i , ",test[index]);
}
#endif

}


uint8_t find_median(uint8_t *test,uint8_t SIZ)
{

uint8_t * array = NULL;
uint8_t median = 0;
uint8_t mid_index=0;
array = sort_array_asc(test,SIZ);
mid_index = (SIZ/2) -1 ;
median = array[mid_index];
return median;
}

uint8_t find_mean(uint8_t *test,uint8_t SIZ)
{
uint16_t mean =0, sum = 0;
uint8_t * array = NULL;
array = sort_array_asc(test,SIZ);

for(uint8_t index =0;index<SIZ;index++)
{
sum += array[index];
}
mean = sum/SIZ;
return mean;
}

uint8_t find_maximum(uint8_t *test,uint8_t SIZ)
{
uint8_t * array = NULL;
uint8_t max = 0;
array = sort_array_asc(test,SIZ);
max = array[SIZ-1];
return max;
}

uint8_t find_minimum(uint8_t *test,uint8_t SIZ)
{
uint8_t * array = NULL;
uint8_t min = 0;
array = sort_array_asc(test,SIZ);
min = array[0];
return min;
}


int compa(const void *a, const void *b)
{
return(*(unsigned char*)a - *(unsigned char*)b);
}


uint8_t * sort_array_asc(uint8_t *test,uint8_t SIZ)
{
qsort(test,SIZ,sizeof(unsigned char),compa);
return test;
}

int compd(const void *a, const void *b)
{
return(*(unsigned char*)b - *(unsigned char*)a);
}

uint8_t * sort_array(uint8_t *test,uint8_t SIZ)
{
qsort(test,SIZ,sizeof(unsigned char),compd);
return test;
}

	









