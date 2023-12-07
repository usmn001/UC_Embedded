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
 * @file <stats.h> 
 * @brief <Add Brief Description Here >
 *
 * <Add Extended Description Here>
 *
 * @author <Muhammad Usman>
 * @date <30-10-2023 >
 *
 */
#ifndef __STATS_H__
#define __STATS_H__

/* Add Your Declarations and Function Comments here */ 

/**
 * @brief Prints statistical information of given array
 *
 * This function takes a array pointer and length of array then prints
 * statistical information of it such as Median,Mean, Maximum, Minimum
 *
 * @param test Pointer to the given array
 * @param SIZ  length of array pointed by above parameter
 * 
 * @return NA 
 */
void print_statistics(uint8_t *test,uint8_t SIZ);


/**
 * @brief Prints given array 
 *
 * This function takes a array pointer and length of array then prints
 * that array.
 *
 * @param test Pointer to the given array
 * @param SIZ  length of array pointed by above parameter
 *
 * @return NA
 */
void print_array(uint8_t *test,uint8_t SIZ);

/**
 * @brief Calculates Median Of Given Array
 *
 * This function takes a array pointer and length of array calculates
 * it´s median and returns it to the calling function
 *
 * @param test Pointer to the given array
 * @param SIZ  length of array pointed by above parameter
 *
 * @return Unsigned Eight Bit Median Value Of Array
 */
uint8_t find_median(uint8_t *test,uint8_t SIZ);



/**
 * @brief Calculates Mean Of Given Array
 *
 * This function takes a array pointer and length of array calculates
 * it´s mean and returns it to the calling function
 *
 * @param test Pointer to the given array
 * @param SIZ  length of array pointed by above parameter
 *
 * @return Unsigned Eight Bit Mean Value Of Array
 */
uint8_t find_mean(uint8_t *test,uint8_t SIZ);

/**
 * @brief Calculates Maximum Value Of Given Array
 *
 * This function takes a array pointer and length of array then find it´s
 * maximum value present in it and returns it to the calling function
 *
 * @param test Pointer to the given array
 * @param SIZ  length of array pointed by above parameter
 *
 * @return Unsigned Eight Bit Maximum Value Of Array
 */
uint8_t find_maximum(uint8_t *test,uint8_t SIZ);

/**
 * @brief Calculates Minimum Value Of Given Array
 *
 * This function takes a array pointer and length of array then find it´s
 * minimum value present in it and returns it to the calling function
 *
 * @param test Pointer to the given array
 * @param SIZ  length of array pointed by above parameter
 *
 * @return Unsigned Eight Bit Minimum Value Of Array
 */
uint8_t find_minimum(uint8_t *test,uint8_t SIZ);


/**
 * @brief Sorts Given Array In Ascending Order
 *
 * This function takes a array pointer and length of array then sort
 * it in ascending order and then returns it´s pointer to the calling function
 *
 * @param test Pointer to the given array
 * @param SIZ  length of array pointed by above parameter
 *
 * @return Unisgned Eight Bit Pointer to the sorted array
 */
uint8_t * sort_array_asc(uint8_t *test,uint8_t SIZ);

/**
 * @brief Sorts Given Array In Descending Order
 *
 * This function takes a array pointer and length of array then sort
 * it in Descending order and then returns it´s pointer to the calling function
 *
 * @param test Pointer to the given array
 * @param SIZ  length of array pointed by above parameter
 *
 * @return Unisgned Eight Bit Pointer to the sorted array
 */
uint8_t * sort_array(uint8_t *test,uint8_t SIZ);

#endif /* __STATS_H__ */
