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
 * @file memory.h
 * @brief Abstraction of memory read and write operations
 *
 * This header file provides an abstraction of reading and
 * writing to memory via function calls. 
 *
 * @author Alex Fosdick
 * @date April 1 2017
 *
 */
#include <stdint.h>
#include <stdlib.h>
#include <stddef.h>

#ifndef __MEMORY_H__
#define __MEMORY_H__

/**
 * @brief Sets a value of a data array 
 *
 * Given a pointer to a char data set, this will set a provided
 * index into that data set to the value provided.
 *
 * @param ptr Pointer to data array
 * @param index Index into pointer array to set value
 * @param value value to write the the locaiton
 *
 * @return void.
 */
void set_value(char * ptr, unsigned int index, char value);

/**
 * @brief Clear a value of a data array 
 *
 * Given a pointer to a char data set, this will clear a provided
 * index into that data set to the value zero.
 *
 * @param ptr Pointer to data array
 * @param index Index into pointer array to set value
 *
 * @return void.
 */
void clear_value(char * ptr, unsigned int index);

/**
 * @brief Returns a value of a data array 
 *
 * Given a pointer to a char data set, this will read the provided
 * index into that data set and return the value.
 *
 * @param ptr Pointer to data array
 * @param index Index into pointer array to set value
 *
 * @return Value to be read.
 */
char get_value(char * ptr, unsigned int index);

/**
 * @brief Sets data array elements to a value
 *
 * Given a pointer to a char data set, this will set a number of elements
 * from a provided data array to the given value. The length is determined
 * by the provided size parameter.
 *
 * @param ptr Pointer to data array
 * @param value value to write the the locaiton
 * @param size Number of elements to set to value
 *
 * @return void.
 */
void set_all(char * ptr, char value, unsigned int size);

/**
 * @brief Clears elements in a data array
 *
 * Given a pointer to a char data set, this will set a clear a number
 * of elements given the size provided. Clear means to set to zero. 
 *
 * @param ptr Pointer to data array
 * @param size Number of elements to set to zero
 *
 * @return void.
 */
void clear_all(char * ptr, unsigned int size);


/**
 * @brief Moves data from source location to destination
 *
 * Given a pointer to a destination memory location, this will function move data
 * to it from source memory location. 
 *
 * @param src Pointer to source memory location
 * @param dst Pointer to destination memory location
 *
 * @return pointer to destination with new data.
 */
uint8_t * my_memmove(uint8_t * src, uint8_t * dst, size_t length);



/**
 * @brief Copies data from source location to destination
 *
 * Given a pointer to a destination memory location, this will function copy data
 * to it from source memory location. 
 *
 * @param src Pointer to source memory location
 * @param dst Pointer to destination memory location
 *
 * @return pointer to destination with new data.
 */
uint8_t * my_memcopy(uint8_t * src, uint8_t * dst, size_t length);


/**
 * @brief Zeros all data at source location 
 *
 * Given a pointer to a source memory location, this will put 
 * all zeros to that location 
 *
 * @param src Pointer to source memory location
 * @param dst Pointer to destination memory location
 *
 * @return pointer to src location with zeros
 */
uint8_t * my_memzero(uint8_t * src, size_t length);



/**
 * @brief Reverses bytes at source location
 *
 * Given a pointer to a source memory location, this function
 * will reverses bytes at that location.
 *
 * @param src Pointer to source memory location
 * @param length number of bytes stored at pointed memory address 
 *
 * @return pointer to src location with reversed bytes
 */

uint8_t * my_reverse(uint8_t * src, size_t length);



/**
 * @brief Reserves bytes at heap 
 *
 * Given a number of bytes, this function reserves bytes at
 * heap memory and return a pointer to that.
 *
 * @param length number of bytes to be allocated at heap 
 *
 * @return pointer to allocated heap memory
 */
int32_t * reserve_words(size_t length);


/**
 * @brief Frees heap memory 
 *
 * Given heap memory address by pointer this function 
 * frees heap memory.
 *
 * @param src heap memory address 
 *
 * @return void
 */
void free_words(int32_t * src);










#endif /* __MEMORY_H__ */
