
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

typedef enum {        // STATUS CODES OF LIFO BUFFER STATUSES 
LB_NO_ERROR = 0,
LB_FULL,
LB_NOT_FULL,
LB_EMPTY,
LB_NOT_EMPTY,
LB_NULL,
}LB_Status;

typedef struct {
uint8_t length;         // Size of the LIFO Buffer
uint8_t *base;          // Pointer Pointing to the starting memory location address
uint8_t *head;          // Pointer Pointing to next memory location address
}LIFO_BUF_t;





uint8_t * create_buff(LIFO_BUF_t lbuf,size_t length){
lbuf.base = (uint8_t*)malloc(length);
return lbuf.base;
}

LB_Status LIFO_Is_Buf_Full(LIFO_BUF_t  lbuf)
{

if( !lbuf.head || !lbuf.base ) 
{
return LB_NULL; 
}

if(lbuf.head == (lbuf.base+lbuf.length))
{

return LB_FULL;
}
else
return LB_NOT_FULL;

}

LB_Status LIFO_Add_Item (LIFO_BUF_t lbuf,uint8_t item) // This iteam can also be a struct or union, for that we will need to cast
                                                         // malloc pointer accordingly
{

if( LIFO_Is_Buf_Full(lbuf)!=LB_FULL)
{
*(lbuf.head) = item;
lbuf.head++;
return LB_NO_ERROR;
}

}


int main()
{

LIFO_BUF_t lbuf;
lbuf.length = 8;

lbuf.base = create_buff(lbuf,lbuf.length);
if(lbuf.base)
{
    printf("Buffer Created ");
}
lbuf.head=lbuf.base;
LIFO_Add_Item(lbuf,1);


free(lbuf.base);

return 0;
}