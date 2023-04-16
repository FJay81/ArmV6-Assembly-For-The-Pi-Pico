#include "pico/stdlib.h"

void extern funcs; //this just defines the funcs funtion in the c file, it is not 100% needed from my testing as you can see however it can make your code more understandable

int main()
{
    funcs(); //this can only call what ever its defined as as .global name
}
