/*
 * 	startup.c
 *
 */
#include "geometry.h"
#include "delay.h"
#include "gpio.h"
#include "graphics.h"
#include "keypad.h"

static OBJECT ball = {
    &ball_geometry, // geometry for a ball
    0,0, // move direction (x,y)
    10,10, // position (x,y)
    draw_object, // draw method
    move_object, // move method
    set_object_speed // set-speed method
};

void drawgrid(void) {
	unsigned i;
	for(i = 0; i < 64; i++ ){
		pixel(i, 21);
	}
	for(i = 0; i < 64; i++){
		pixel(21, i);
	}
	for(i = 0; i < 64; i++ ){
		pixel(i, 43);
	}
	for(i = 0; i < 64; i++){
		pixel(43, i);
	}
}

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
#ifdef USBDM
	 *( (unsigned long *) 0x40023830) = 0x18;
	 __asm volatile( " LDR R0,=0x08000209\n BLX R0 \n");
#endif
    GPIO_E.moder = 0x55555555;
}
void main(void) {
    unsigned i;
    init_app();
    graphic_initialize();
#ifndef SIMULATOR
    graphic_clear_screen();
#endif
    drawgrid();
    while(1){
		clear_backBuffer();
		drawgrid();
		graphic_draw_screen();
		
	}
    
}

