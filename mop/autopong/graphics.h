#ifndef GRAPHICS_H
#define GRAPHICS_H
#include "gpio.h"
#define B_E 0x40 // Enable
#define B_RST 0x20 // Reset
#define B_CS2 0x10 // Controller Select 2
#define B_CS1 8 // Controller Select 1
#define B_SELECT 4 // 0 Graphics, 1 ASCII
#define B_RW 2 // 0 Write, 1 Read
#define B_RS 1 // 0 Command, 1 Data

#define LCD_ON 0x3F // Display on
#define LCD_OFF 0x3E // Display off
#define LCD_SET_ADD 0x40 // Set horizontal coordinate
#define LCD_SET_PAGE 0xB8 // Set vertical coordinate
#define LCD_DISP_START 0xC0 // Start address
#define LCD_BUSY 0x80 // Read busy status

static void graphic_ctrl_bit_set(uint8_t x) {
    unsigned char c;
    c = GPIO_E.odrLow;
    c |= (~B_SELECT & x );
    GPIO_E.odrLow = c;
}
static void graphic_ctrl_bit_clear(uint8_t x) {
    unsigned char c;
    c = GPIO_E.odrLow;
    c &= ~B_SELECT;
    c &= ~x;
    GPIO_E.odrLow = c;

}

static void select_controller(uint8_t controller){
    switch(controller){
        case 0:
        graphic_ctrl_bit_clear(B_CS1|B_CS2);
        break;
        case B_CS1 :
        graphic_ctrl_bit_set(B_CS1);
        graphic_ctrl_bit_clear(B_CS2);
        break;
        case B_CS2 :
        graphic_ctrl_bit_set(B_CS2);
        graphic_ctrl_bit_clear(B_CS1);
        break;
        case B_CS1|B_CS2 :
        graphic_ctrl_bit_set(B_CS1|B_CS2);
        break;
    }
}
static void graphic_wait_ready(void) {
    uint8_t c;
    graphic_ctrl_bit_clear(B_E);
    GPIO_E.moder = 0x00005555; // 15-8 inputs, 7-0 outputs
    graphic_ctrl_bit_clear(B_RS);
    graphic_ctrl_bit_set(B_RW);
    delay_500ns();
    while(1) {
        graphic_ctrl_bit_set(B_E);
        delay_500ns();
        c = GPIO_E.idrHigh & LCD_BUSY;
        graphic_ctrl_bit_clear(B_E);
        delay_500ns();
        if( c == 0 ) break;
    }
    GPIO_E.moder = 0x55555555; // 15-0 outputs
}
static uint8_t graphic_read(uint8_t controller) {
    uint8_t c;
    graphic_ctrl_bit_clear(B_E);
    GPIO_E.moder = 0x00005555; // 15-8 inputs, 7-0 outputs
    graphic_ctrl_bit_set(B_RS|B_RW);
    select_controller(controller);
    delay_500ns();
    graphic_ctrl_bit_set(B_E);
    delay_500ns();
    c = GPIO_E.idrHigh;
    graphic_ctrl_bit_clear(B_E);
    GPIO_E.moder = 0x55555555; // 15-0 outputs
    if( controller & B_CS1 ) {
        select_controller(B_CS1);
        graphic_wait_ready();
    }
    if( controller & B_CS2 ) {
        select_controller(B_CS2);
        graphic_wait_ready();
    }
    return c;
}
static uint8_t graphic_read_data(uint8_t controller) {
    graphic_read(controller);
    return graphic_read(controller);
}
static void graphic_write(uint8_t value, uint8_t controller){
    GPIO_E.odrHigh = value;
    select_controller(controller);
    delay_500ns();
    graphic_ctrl_bit_set(B_E);
    delay_500ns();
    graphic_ctrl_bit_clear(B_E);
    
    if (controller && B_CS1) {
            select_controller(B_CS1);
            graphic_wait_ready();
    }
    
    if (controller && B_CS2) {
            select_controller(B_CS2);
            graphic_wait_ready();
    }
    
    GPIO_E.odrHigh = 0;
        graphic_ctrl_bit_set(B_E);
        select_controller(0);
    
 
}
static void graphic_write_command(uint8_t command, uint8_t controller) {
    graphic_ctrl_bit_clear(B_E);
    select_controller(controller);
    graphic_ctrl_bit_clear(B_RS);
    graphic_ctrl_bit_clear(B_RW);
    graphic_write(command, controller);
}
static void graphic_write_data(uint8_t data, uint8_t controller){
    graphic_ctrl_bit_clear(B_E);
    select_controller(controller);
    graphic_ctrl_bit_set(B_RS);
    graphic_ctrl_bit_clear(B_RW);
    graphic_write(data, controller);
}
void graphic_clear_screen(void){
        for(int page = 0; page < 8; page++){
            graphic_write_command(LCD_SET_PAGE | page, B_CS1|B_CS2);
            graphic_write_command(LCD_SET_ADD | 0, B_CS1|B_CS2);
            for (int add = 0; add < 64 ;add++){
                graphic_write_data(0, B_CS1|B_CS2);
            }
        }
}

void graphic_initialize(void) {
    graphic_ctrl_bit_set(B_E);
    delay_micro(10);
    graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
    delay_milli(30);
    graphic_ctrl_bit_set(B_RST);
    delay_milli(100);
    graphic_write_command(LCD_OFF, B_CS1|B_CS2);
    graphic_write_command(LCD_ON, B_CS1|B_CS2);
    graphic_write_command(LCD_DISP_START, B_CS1|B_CS2);
    graphic_write_command(LCD_SET_ADD, B_CS1|B_CS2);
    graphic_write_command(LCD_SET_PAGE, B_CS1|B_CS2);
    select_controller(0);
}
void pixel(int x, int y, int set) {
    uint8_t mask, c, controller;
    int index;
    if (x < 1 || y < 1 || x > 128 || y > 64) return;
    index = (y-1) / 8;
    
    switch ((y-1)%8) {
        case 0: mask = 1; break;
		case 1: mask = 2; break;
		case 2: mask = 4; break;
		case 3: mask = 8; break;
		case 4: mask = 0x10; break;
		case 5: mask = 0x20; break;
		case 6: mask = 0x40; break;
		case 7: mask = 0x80; break;
    }
    if(set == 0) {
        mask = ~mask;
    }
    
    if(x > 64) {
        controller = B_CS2;
        x = x - 65;
    } else {
        controller = B_CS1;
        x = x-1;
    }
    graphic_write_command(LCD_SET_ADD | x, controller );
    graphic_write_command(LCD_SET_PAGE | index, controller );
    c = graphic_read_data(controller);
    graphic_write_command(LCD_SET_ADD | x, controller);
    if(set) {
        mask = mask | c;
    } else {
        mask = mask & c;
    }
    graphic_write_data(mask, controller);
}

#endif //GRAPHICS_H