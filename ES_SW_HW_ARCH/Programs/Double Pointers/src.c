#include <stdio.h>
#include <stdint.h>

/*typedef struct Person{
uint8_t *name;
}Person_t;*/

//typedef struct Person Person_t;

int main()
{
//Person_t p1, *p1_ptr=&p1;
uint8_t a = 0x12;
uint8_t *ptr1 = &a ;
uint8_t **ptr2 = &ptr1;
//uint8_t ***ptr3 = &ptr2;



printf("Address of Variable a = %p \n",&a);

printf("Address Of Pointer Ptr1 = %p \n",&ptr1);
printf("Address  Stored At Pointer Ptr1 Memory Location %p = %p\n",&ptr1,*(&ptr1));

printf("Address Stored In Pointer Ptr1 = %p \n",ptr1);


printf("Double Pointer Ptr2 Address : %p  \n",&ptr2);
printf("Double Pointer Memory Location %p Has Address Stored %p -----> %p -----> Value: %x \n",&ptr2,ptr2,*ptr2,**ptr2);












//p1_ptr->age=1;
//p1.age=2;

/*printf("Address of Struct  Pointer = %p \n",p1_ptr);
printf("Address of Struct Variable = %p \n",&p1);
printf("Size of Struct  Pointer = %li \n",sizeof(*p1_ptr));
printf("Size of Struct = %li \n",sizeof(Person_t));


int *ptr = NULL;
printf("Size of pointer = %li \n",sizeof(ptr)); */ 


return 0;

}