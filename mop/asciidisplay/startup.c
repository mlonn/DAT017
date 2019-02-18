/*
 * 	startup.c
 *
 */
#define B_E 0x40 /* Enable-signal */
#define B_SELECT 4 /* Select ASCII-display */
#define B_RW 2 /* 0=Write, 1=Read */
#define B_RS 1 /* 0=Control, 1=Data */
typedef unsigned int uint32;
typedef unsigned short uint16;
typedef unsigned char uint8;
typedef struct {
    uint32 moder;
    uint16 otyper;        // +0x4
    uint16 otReserved;    //
    uint32 ospeedr;       // +0x8
    uint32 pupdr;         // +0xc (12)
    uint8 idrLow;         // +0x10
    uint8 idrHigh;        // +0x11
    uint16 idrReserved;   //
    uint8 odrLow;         // +0x14
    uint8 odrHigh;        // +0x15
    uint16 odrReserved;
} GPIO;

#define GPIO_E (*((volatile GPIO*) 0x40021000))
#define STK_CTRL ((volatile unsigned int *)(0xE000E010))
#define STK_LOAD ((volatile unsigned int *)(0xE000E014))
#define STK_VAL ((volatile unsigned int *)(0xE000E018))
void delay_250ns( void ) {
    /* SystemCoreClock = 168000000 */
    *STK_CTRL = 0;
    *STK_LOAD = ( (168/4) -1 );
    *STK_VAL = 0;
    *STK_CTRL = 5;
    while( (*STK_CTRL & 0x10000 )== 0 );
        *STK_CTRL = 0;
    }
void delay_micro(unsigned int us) {
#ifdef SIMULATOR
    us = us / 1000;
    us++;
#endif
    while( us > 0 ) {
        delay_250ns();
        delay_250ns();
        delay_250ns();
        delay_250ns();
        us--;
    }
}
void delay_milli(unsigned int ms){
#ifdef SIMULATOR
    ms = ms / 1000;
    ms++;
#endif
    while( ms > 0 ) {
        delay_micro(1000);
        ms--;
    }
}
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
void main(void)
{
    char *s;
    char test1[] = "Alfanumerisk";
    char test2[] = "Display - test";
    
    init_app();
    ascii_init();
    ascii_gotoxy(1,1);
    s = test1;
    while(*s) {
       ascii_write_char(*s++);
    }
    ascii_gotoxy(1,2);
    s = test2;
    while(*s) {
       ascii_write_char(*s++);
    }
    return 0;
}

