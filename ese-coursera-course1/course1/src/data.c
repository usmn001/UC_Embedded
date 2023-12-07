
#include "data.h"
#include <string.h>

uint8_t my_itoa(int32_t data, uint8_t * ptr, uint32_t base)
{
itoa(data,ptr,base);
return ptr;
}



int32_t my_atoi(uint8_t * ptr, uint8_t digits, uint32_t base)
{
digits=atoi(ptr);
return digits;
}