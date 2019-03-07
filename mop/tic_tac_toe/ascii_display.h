#ifndef ASCII_DISPLAY_H
#define ASCII_DISPLAY_H
#include "gpio.h"

#define B_E 0x40 /* Enable-signal */
#define B_SELECT 4 /* Select ASCII-display */
#define B_RW 2 /* 0=Write, 1=Read */
#define B_RS 1 /* 0=Control, 1=Data */

void ascii_ctrl_bit_set( unsigned char x ) {
    unsigned char c;
    c = GPIO_E.odrLow;
    c |= ( B_SELECT | x );
    GPIO_E.odrLow = c;
}
void ascii_ctrl_bit_clear( unsigned char x ) {
    unsigned char c;
    c = GPIO_E.odrLow;
    c &= ( B_SELECT | ~x );
    GPIO_E.odrLow = c;
}

void ascii_write_controller( unsigned char c ) {
    ascii_ctrl_bit_set( B_E );
    GPIO_E.odrHigh = c;
    ascii_ctrl_bit_clear( B_E );
    delay_250ns();
}
unsigned char ascii_read_controller( void ) {
    unsigned char c;
    ascii_ctrl_bit_set( B_E );
    delay_250ns();
    delay_250ns();
    c = GPIO_E.idrHigh;
    ascii_ctrl_bit_clear( B_E );
    return c;
}
unsigned char ascii_read_status() {
    unsigned char c;
    GPIO_E.moder = 0x00005555;
    ascii_ctrl_bit_set( B_RW );
    ascii_ctrl_bit_clear( B_RS );
    c = ascii_read_controller( );
    GPIO_E.moder = 0x55555555;
    return c;
}

void ascii_write_cmd(unsigned char command) {
    ascii_ctrl_bit_clear(B_RS);
    ascii_ctrl_bit_clear(B_RW);
    ascii_write_controller(command);
}

void ascii_write_data(unsigned char data) {
    ascii_ctrl_bit_set(B_RS);
    ascii_ctrl_bit_clear(B_RW);
    ascii_write_controller(data);
}

void ascii_write_char(unsigned char c) {
    while((ascii_read_status() & 0x80) == 0x80) {}
    delay_micro(8);
    ascii_write_data(c);
    delay_micro(50);
}

void ascii_gotoxy(int row, int column){
	while((ascii_read_status() & 0x80) == 0x80) 
	delay_micro(8);
    unsigned char address = row-1;
    if (column == 2){
        address += 0x40;
    }
    ascii_write_cmd((0x80 | address));
}
void function_set(){
    while((ascii_read_status() & 0x80) == 0x80) {}
    delay_micro(8);
    ascii_write_cmd(0b111000); // 2 rader 2x8 tecken
    delay_micro(50);
}
void display_control(){
    while((ascii_read_status() & 0x80) == 0x80) {}
    delay_micro(8);
    ascii_write_cmd(0b1110);
    delay_micro(50);

}
void entry_mode(){
    while((ascii_read_status() & 0x80) == 0x80) {}
    delay_micro(8);
    ascii_write_cmd(0b110);
    delay_micro(50);
}
void clear_display() {
    while((ascii_read_status() & 0x80) == 0x80) {}
    delay_micro(8);
    ascii_write_cmd(1);
    delay_milli(2);
}
void ascii_init(){
    function_set(); 
    display_control();
    entry_mode();
    clear_display();
}
#endif // ASCII_DISPLAY_H