#include <stdio.h>
#include <stdint.h>

typedef struct Person{
uint8_t *name;
}Person_t;

typedef struct Person Person_t;

int main(){
Person_t p1, *p1_ptr=&p1;

//p1_ptr->age=1;
//p1.age=2;

printf("Address of Struct  Pointer = %p \n",p1_ptr);
printf("Address of Struct Variable = %p \n",&p1);
printf("Size of Struct  Pointer = %li \n",sizeof(*p1_ptr));
printf("Size of Struct = %li \n",sizeof(Person_t));


int *ptr = NULL;
printf("Size of pointer = %li \n",sizeof(ptr)); 


return 0;

}