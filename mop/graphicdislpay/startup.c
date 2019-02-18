/*
 * 	startup.c
 *
 */
#include <stdint.h>
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

typedef struct {
    uint32_t moder;
    uint16_t otyper;        // +0x4
    uint16_t otReserved;    //
    uint32_t ospeedr;       // +0x8
    uint32_t pupdr;         // +0xc (12)
    uint8_t idrLow;         // +0x10
    uint8_t idrHigh;        // +0x11
    uint16_t idrReserved;   //
    uint8_t odrLow;         // +0x14
    uint8_t odrHigh;        // +0x15
    uint16_t odrReserved;
} GPIO;

#define GPIO_E (*((volatile GPIO*) 0x40021000))
#define STK_CTRL ((volatile unsigned int *)(0xE000E010))
#define STK_LOAD ((volatile unsigned int *)(0xE000E014))
#define STK_VAL ((volatile unsigned int *)(0xE000E018))

static void graphic_ctrl_bit_set(uint8_t x) {
    unsigned char c;
    c = GPIO_E.odrLow;
    //c &= ~B_SELECT;
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
void delay_250ns( void ) {
    /* SystemCoreClock = 168000000 */
    *STK_CTRL = 0;
    *STK_LOAD = ( (168/4) -1 );
    *STK_VAL = 0;
    *STK_CTRL = 5;
    while( (*STK_CTRL & 0x10000 )== 0 );
        *STK_CTRL = 0;
}
void delay_500ns( void) {
    delay_250ns();
    delay_250ns();
}
void delay_micro(unsigned int us) {
//#ifdef SIMULATOR
    us = us / 1000;
    us++;
//#endif
    while( us > 0 ) {
        delay_250ns();
        delay_250ns();
        delay_250ns();
        delay_250ns();
        us--;
    }
}
void delay_milli(unsigned int ms){
//#ifdef SIMULATOR
    ms = ms / 1000;
    ms++;
//#endif
    while( ms > 0 ) {
        delay_micro(1000);
        ms--;
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
void init_app() {
    GPIO_E.moder = 0x55555555;
}
void main(void)
{
    init_app();
    graphic_initialize();
//#ifdef SIMULATOR
    graphic_clear_screen();
//#endif
    graphic_write_command(LCD_SET_ADD | 10, B_CS1|B_CS2);
    graphic_write_command(LCD_SET_PAGE | 1, B_CS1|B_CS2);
    graphic_write_data(0xFF, B_CS1|B_CS2);
}

