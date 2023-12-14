#include <stdio.h>
#include <stdint.h>

typedef enum Error{
NO_ERROR = 0x00,
BUS_ERROR = 0x01
}Error_e;




int main()
{

Error_e E1;
E1 = BUS_ERROR;
if(E1==NO_ERROR) {
printf("NO_ERROR \n");
}
else
printf("ERROR \n");


















return 0;

}