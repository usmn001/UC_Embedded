#include <stdio.h>
#include <stdint.h>

/*typedef struct Person{
uint8_t *name;
}Person_t;*/

//typedef struct Person Person_t;
uint8_t add(int a,int b){
return (a+b);
}

uint8_t sub(int a,int b){
return (a-b);
}


int main()
{


// Example 1 : 
uint8_t(*fptr_add)(int,int);  

fptr_add=&add;  // We could have assigned address of add to function pointer at the time of it´s declaration as uint8_t(*fptr_add)(int,int) = &add;

uint8_t sum = fptr_add(1,2);
printf("Sum = %i \n",sum);
printf("Address  Of Add function is : %p \n",&add);
printf("Address  Stored At Function Pointer Memory Location %p = %p \n ",&fptr_add,fptr_add);

// Example 2 :

typedef uint8_t(*fptr_t)(int a, int b);

fptr_t add_ptr = &add;
fptr_t sub_ptr = &sub;


uint8_t sum1 = add_ptr(5,6);  
uint8_t sub = sub_ptr(6,5);

printf("Sum = %i \n",sum1);
printf("Sub = %i \n",sub);

// Example 3 : Function Pointer Arrays

typedef uint8_t(*fptr_t2[2])(int,int);

fptr_t2 arr ={add_ptr,sub_ptr};   // Where "add_ptr" has address of add function assigned at line 36, sub_ptr has address of sub function assigned at line 37 

printf("Sum = %i, Subtraction = %i \n",add_ptr(9,8),sub_ptr(100,99));










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