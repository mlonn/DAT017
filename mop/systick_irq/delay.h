#ifndef DELAY_H
#define DELAY_H

#ifdef SIMULATOR
#define DELAY_COUNT 100
#else 
#define DELAY_COUNT 1000000
#endif


#define STK_CTRL ((volatile unsigned int *)(0xE000E010))
#define STK_LOAD ((volatile unsigned int *)(0xE000E014))
#define STK_VAL ((volatile unsigned int *)(0xE000E018))

int systick_flag;
int delay_count;

void delay_1micro( void ){
    /* SystemCoreClock = 168000000 */
    systick_flag = 0;
    *STK_CTRL = 0;
    *STK_LOAD = ( (168) -1 );
    *STK_VAL = 0;
    *STK_CTRL = 7;
    
}

delay(unsigned int count ) {
    delay_count = count;
    delay_1micro();
}
#endif // DELAY_H