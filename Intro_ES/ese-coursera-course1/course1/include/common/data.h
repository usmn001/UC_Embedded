#include <stdint.h>

/**
 * @brief convert data from a standard integer type into an ASCII string
 *
 * Given a integer value this function will convert it into it´s ASCII
 * equivalent string and return a pointer poiting to it.
 *
 * @param data integer value to be converted to ASCII
 * @param ptr pointer pointing to the converted ASCII string
 * @param base base system from 2 to 16 (binary,decimal,octal,hexadecimal)
 * 
 * @return length of ASCII string
 */
uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base);



/**
 * @brief Converts ASCII data into integer
 *
 * Given a ASCII data through pointer this function converts that pointed
 * data into it´s equivalent integer value
 *
 * @param ptr pointer pointing to ASCII value to be converted 
 * @param digits ASCII equivalent integer value
 * @param base base system from 2 to 16 (binary,decimal,octal,hexadecimal)
 * 
 * @return pointer to allocated heap memory
 */
int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base);
