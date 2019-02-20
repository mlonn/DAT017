/*
 * 	startup.c
 *
 */
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
void app_init(){
        
#ifdef USBDM
	*((unsigned long *)0x40023830)  = 0x18;
	__asm volatile( " LDR R0,=0x08000209\n BLX R0 \n");
#endif
	GPIO_E.moder = 0x5555;
}
void main(void)
{
    app_init();
    while(1){
        GPIO_E.odrLow = 0x00;
        delay_milli(500);
        GPIO_E.odrLow = 0xFF;
        delay_milli(500);
    }
}

