#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>

typedef  struct{
uint8_t *Base;
uint8_t *Head;
uint8_t *Tail;
uint8_t Length;
uint16_t count;
}CB_t;

typedef enum {        // STATUS CODES OF LIFO BUFFER STATUSES 
CB_NO_ERROR = 0,
CB_FULL,
CB_NOT_FULL,
CB_EMPTY,
CB_NOT_EMPTY,
CB_NULL,
}CB_Status; 

CB_Status LIFO_Is_Buf_Full(CB_t  cbuf)   // Function Checking Status Of Buffer, We can also create % pass struct CB_t pointer
{
if( ! cbuf.Head || ! cbuf.Tail || ! cbuf.Base ) // Checking to make sure pointers are not NULL
{
return CB_NULL; 
}
if(cbuf.Tail == (cbuf.Head+1) || cbuf.Head == cbuf.Tail + (cbuf.Length-1)    ) // 1st Condition : When Head is at Base/First  Location, Tail is at next location
{                                                                              // 2nd Condition : When Tail is at Base/first location, Head is at Last location 
return CB_FULL;
}

else
return CB_NOT_FULL;
}

CB_Status CB_Add_Item (CB_t  cbuf, uint8_t item)  // We can also create % pass struct CB_t pointer
{
if( ! cbuf.Head || ! cbuf.Tail || ! cbuf.Base ) // Checking to make sure pointers are not NULL
{
return CB_NULL; 
}

if(LIFO_Is_Buf_Full(cbuf)==CB_FULL){
return CB_FULL;
}

*(cbuf.Head)=item;

if(cbuf.Head == cbuf.Base+(cbuf.Length)-1) 
{
cbuf.Head = cbuf.Base ;
}
else {
cbuf.Head ++;
}
return CB_NO_ERROR;
}

uint8_t * create_buffer( uint8_t *ptr,uint8_t length ) { // We can also create % pass struct CB_t pointer
ptr= (uint8_t*)malloc(sizeof(length));   // Here we could have also used arrays instead of heap depending upon requirement.
return ptr;
}

void freeBuffer(uint8_t *ptr)
{
    free(ptr);
}


CB_Status CB_Rem_Item (CB_t  cbuf, uint8_t item)  // We can also create % pass struct CB_t pointer
{

// Here we can remove an item by searching for it in the entire allocated buffer or we just use the memory location address

// Removing an Item From Memory Location

cbuf.Tail++;

return CB_NO_ERROR;

}





int main()
{
CB_t cbuf;
uint8_t item =0;
cbuf.Base = create_buffer(cbuf.Base,7);
cbuf.Head=cbuf.Base;
cbuf.Tail=cbuf.Base;
if(cbuf.Base)
{
    printf("Buffer Create \n");
}
item = 1;
if(CB_Add_Item(cbuf,item)==CB_NO_ERROR ){
    printf("Added Item \n ");
}


freeBuffer(cbuf.Base);



return 0;

}