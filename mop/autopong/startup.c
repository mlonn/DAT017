/*
 * 	startup.c
 *
 */
#include <stdint.h>
#include "geometry.h"
#include "delay.h"
#include "gpio.h"
#include "graphics.h"

static OBJECT ball = {
    &ball_geometry, // geometry for a ball
    0,0, // move direction (x,y)
    1,1, // position (x,y)
    draw_object, // draw method
    move_object, // move method
    set_object_speed // set-speed method
};

void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );

void startup ( void )
{
__asm volatile(
	" LDR R0,=0x2001C000\n"		/* set stack */
	" MOV SP,R0\n"
	" BL main\n"				/* call main */
	".L1: B .L1\n"				/* never return */
	) ;
}

void init_app() {
    GPIO_E.moder = 0x55555555;
}
void main(void) {
    unsigned i;
    init_app();
    graphic_initialize();
#ifndef SIMULATOR
    graphic_clear_screen();
#endif
    for(i = 0; i < 128; i++ ){
		pixel(i, 10, 1);
	}
	for(i = 0; i < 64; i++){
		pixel(10, i, 1);
	}
	delay_milli(500);
	for(i = 0; i < 128; i++){
		pixel(i, 10, 0);
	}
	for(i = 0; i < 64; i++){
		pixel(10, i, 0);
	}
}

