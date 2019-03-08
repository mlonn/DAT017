/*
 * 	startup.c
 *
 */
#include "ascii_display.h"
#include "big_circle.xbm"
#include "big_cross.xbm"
#include "circle.xbm"
#include "cross.xbm"
#include "delay.h"
#include "draw.xbm"
#include "geometry.h"
#include "gpio.h"
#include "graphics.h"
#include "keypad.h"
#include "victory.xbm"

char grid[9];
char gameState;
char turn;
char gameOver;
char* winner;
sprite circle = { circle_width, circle_height, circle_bits };
sprite cross = { cross_width, cross_height, cross_bits };

sprite big_circle = { big_circle_width, big_circle_height, big_circle_bits };
sprite big_cross = { big_cross_width, big_cross_height, big_cross_bits };

sprite victory = { victory_width, victory_height, victory_bits };
sprite draw = { draw_width, draw_height, draw_bits };

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

    for(char i = 0; i < 9; i++) {
	if(grid[i] == 1) {
	    draw_in_grid(1, i);
	} else if(grid[i] == 2) {
	    draw_in_grid(2, i);
	}
    }
}
void draw_in_grid(char player, char i)
{
    char* s;
    if(player == 1) {
	s = &cross;
    } else {
	s = &circle;
    }
    switch(i) {
    case 0:
	draw_sprite(s, 1, 1);
	break;
    case 1:
	draw_sprite(s, 22, 1);
	break;
    case 2:
	draw_sprite(s, 44, 1);
	break;
    case 3:
	draw_sprite(s, 1, 22);
	break;
    case 4:
	draw_sprite(s, 22, 22);
	break;
    case 5:
	draw_sprite(s, 44, 22);
	break;
    case 6:
	draw_sprite(s, 1, 44);
	break;
    case 7:
	draw_sprite(s, 22, 44);
	break;
    case 8:
	draw_sprite(s, 44, 44);
	break;
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
    GPIO_D.moder = 0x55000000;
    // gameState = 1;
}

void ascii_write_string(char text[], char point, char row)
{
    char* s;
    s = text;
    ascii_gotoxy(1, row);
    while(*s) {
	ascii_write_char(*s++);
    }
    ascii_write_char('0' + point);
}
void write_symbol(char c)
{
    char current = grid[c - 1];
    if(current == 0) {
	grid[c - 1] = gameState;
	turn = 1;
    }
}
char checkWin(char player)
{
    // cols
	char win = 0;
    for(char i = 0; i < 3; i++) {
	win = win || (grid[i] == player && grid[3 + i] == player && grid[6 + i] == player);
	if(win) {
	    return win;
	}
    }
    // rows
    for(char i = 0; i < 3; i++) {
	win = win || (grid[3 * i] == player && grid[3 * i + 1] == player && grid[3 * i + 2] == player);
	if(win) {
	    return win;
	}
    }
    // diags
    win = (grid[0] == player && grid[4] == player && grid[8] == player) ||
        (grid[2] == player && grid[4] == player && grid[6] == player);
    return win;
}

void main(void)
{

    char c;
    gameState = 2;
	gameOver = 0;
    //char g[9] = { 1, 2, 1, 1, 2, 1, 2, 1, 2 };
	char g[9] = {2 ,2 ,0 ,0 ,0 ,0 ,0, 0, 0};
    for(char i = 0; i < 9; i++) {
	grid[i] = g[i];
    }
    init_app();
    graphic_initialize();
#ifndef SIMULATOR
    graphic_clear_screen();
#endif

    int xPoints = 0;
    int oPoints = 0;
    char O[] = "O: ";
    char X[] = "X: ";
    ascii_init();

    // drawgrid();
    while(1) {
	turn = 0;
	clear_backBuffer();
	// draw_sprite(&draw,)
	c = keyb();
	if (!gameOver){
	if(c >= 0 && c <= 9) {
		write_symbol(c);
	    }
	}
	
	char xWin = checkWin(1);
	char oWin = checkWin(2);
	char win = xWin || oWin;
	if(!win) {
	    if(turn) {
		if(gameState == 1) {
		    gameState = 2;
		} else {
		    gameState = 1;
		}
	    }
	    char isFull;
	    for(int i = 0; i < 9; ++i) {
		isFull = isFull && !(grid[i] == 0);
	    }
	    if(isFull && !win) {
		draw_sprite(&draw, 64, 1);
	    } else {
		if(gameState == 1) {
		    draw_sprite(&big_cross, 64, 1);
		} else {
		    draw_sprite(&big_circle, 64, 1);
		}
	    }

	} else if (!gameOver) {
	    
	    if(xWin) {
		winner = &cross;
		xPoints = xPoints + 1;
	    } else {
		winner = &circle;
		oPoints = oPoints + 1;
	    }
	    draw_sprite(winner, 86, 8);
	    draw_sprite(&victory, 64, 32);
		gameOver = 1;
	} else {
		draw_sprite(winner, 86, 8);
	    draw_sprite(&victory, 64, 32);
	}
	drawgrid();
	if(c == 10) {
	    win = 0;
	    for(int i = 0; i < 9; i++) {
		grid[i] = 0;
	    }
		gameOver = 0;
	}

	if(c == 11) {
	    win = 0;
	    xPoints = 0;
	    oPoints = 0;
	    for(int i = 0; i < 9; i++) {
		grid[i] = 0;
	    }
		gameOver = 0;
	}
	ascii_write_string(X, xPoints, 1);
	ascii_write_string(O, oPoints, 2);
	delay_milli(40);
	graphic_draw_screen();
    }
}
