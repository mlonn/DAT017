/*
 * 	startup.c
 *
 */
 #include "delay.h"
 #include "gpio.h"
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

#ifdef SIMULATOR
#define DELAY_COUNT = 100
#else 
#define DELAY_COUNT = 1000000
#endif
int systick_flag;

void init_app( void ) {
    GPIO_D.moder = 0x00005555;
    *((void (**)(void) ) 0x2001C03C ) =
}

void systick_irq_handler( void ){
    
}

void main(void)
{
    init_app();
    GPIO_D.odrLow = 0;
    delay(DELAY_COUNT);
    GPIO_D.odrLow = 0xFF;
    while(1) {
        if (systick_flag) {
            break;
        }
    }
    GPIO_D.odrLow = 0;
}

