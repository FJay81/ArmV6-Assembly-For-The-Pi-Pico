#include "pico/stdlib.h"
#include "stdio.h"

#define LED 25 //define the led on and off
#define ON 1
#define OFF 0

int main()
{
    stdio_init_all();
    gpio_init(LED);
    gpio_set_dir(LED, GPIO_OUT);
    gpio_put(LED, ON);//turn led on
    loops();//call asm loop
    gpio_put(LED, OFF);//if the loop returns the led will turn off
}