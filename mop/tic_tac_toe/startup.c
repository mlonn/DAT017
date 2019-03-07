/*
 * 	startup.c
 *
 */
#include "ascii_display.h"
#include "geometry.h"
#include "delay.h"
#include "gpio.h"
#include "graphics.h"
#include "keypad.h"
char grid[9];
char gameState;
static OBJECT ball = {
    &ball_geometry,  // geometry for a ball
    0, 0,            // move direction (x,y)
    10, 10,          // position (x,y)
    draw_object,     // draw method
    move_object,     // move method
    set_object_speed // set-speed method
};

void drawgrid(void)
{
    unsigned i;
    for(i = 0; i < 64; i++) {
        pixel(i, 21);
    }
    for(i = 0; i < 64; i++) {
        pixel(21, i);
    }
    for(i = 0; i < 64; i++) {
        pixel(i, 43);
    }
    for(i = 0; i < 64; i++) {
        pixel(43, i);
    }
}

void startup(void) __attribute__((naked)) __attribute__((section(".start_section")));

void startup(void)
{
    __asm volatile(" LDR R0,=0x2001C000\n" /* set stack */
                   " MOV SP,R0\n"
                   " BL main\n"   /* call main */
                   ".L1: B .L1\n" /* never return */
        );
}

void init_app()
{
#ifdef USBDM
    *((unsigned long*)0x40023830) = 0x18;
    __asm volatile(" LDR R0,=0x08000209\n BLX R0 \n");
#endif
    GPIO_E.moder = 0x55555555;
    gameState = 1;
}

void ascii_write_string(char text[], char point, char row)
{
    char* s;
    s = text;
    ascii_gotoxy(1, row);
    while(*s) {
        ascii_write_char(*s++);
    }
    ascii_write_char(point);
}
void write_symbol(char c)
{
    char current = grid[c];
    if(current == 0) {
        grid[c-1] = gameState;
    }
}
char checkWin()
{
    //cols
    
    //rows
    grid[0]
    //diags
}
void main(void)
{
    unsigned i;
    char c;

    init_app();
    graphic_initialize();
#ifndef SIMULATOR
    graphic_clear_screen();
#endif

    char xPoints = 0;
    char oPoints = 0;
    char O[] = "O: ";
    char X[] = "X: ";
    ascii_init();
    ascii_write_string(X, xPoints, 1);
    ascii_write_string(O, oPoints, 2);

    drawgrid();
    while(1) {
        clear_backBuffer();
        drawgrid();
        c = keyb();
        if(c >= 0 && c <= 9) {
            write_symbol(c);
            if(gameState == 1) {
                gameState = 2;
            } else {
                gameState = 1;
            }
        }
        checkWin();

        graphic_draw_screen();
    }
}
