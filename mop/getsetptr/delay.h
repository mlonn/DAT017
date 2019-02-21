#ifndef DELAY_H
#define DELAY_H

#define STK_CTRL ((volatile unsigned int *)(0xE000E010))
#define STK_LOAD ((volatile unsigned int *)(0xE000E014))
#define STK_VAL ((volatile unsigned int *)(0xE000E018))

void delay_1micro( void ){
    /* SystemCoreClock = 168000000 */
    *STK_CTRL = 0;
    *STK_LOAD = ( (168) -1 );
    *STK_VAL = 0;
    *STK_CTRL = 7;
    
}

delay(unsigned int count ) {

}
#endif // DELAY_H