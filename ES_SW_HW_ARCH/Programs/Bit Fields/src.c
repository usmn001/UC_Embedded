#include <stdio.h>
#include <stdint.h>

typedef  Person{
//uint8_t *name;
uint8_t age : 6;
uint8_t height : 3;
uint8_t waist : 4;
}Person_t;




int main()
{

Person_t P1;
printf("Address Of Struct Instance Variable : %p,\n Size of Struct : %i \n",&P1,sizeof(P1));
P1.age = 35;
P1.height = 6;
printf("Person Age : %i \n Person Height : %i \n ",P1.age,P1.height);


















return 0;

}