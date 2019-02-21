/*
 * 	startup.c
 *
 */
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
#define SYSCFG 0x40013800
#define SYSCFG_EXTICR1 ((volatile unsigned int*)(SYSCFG + 0x8))

#define EXTI 0x40013C00
#define EXTI_IMR ((volatile unsigned int*)(EXTI))
#define EXTI_RTSR ((volatile unsigned int*)(EXTI) + 0x8)
#define EXTI_PR ((volatile unsigned int*)(EXTI) + 0x14)

#define NVIC 0xE000E100
#define NVIC_ISER0 ((volatile unsigned int*)(NVIC))
#define NVIC_EXTI3_IRQ_BPOS (1<<9)
int count;
void irq_handler(void) {
    count++;
    if( (*EXTI_PR & NVIC_EXTI3_IRQ_BPOS) != 0 ) {
        *EXTI_PR |= NVIC_EXTI3_IRQ_BPOS;
    }
}

void app_init(void) {
    /*SET OUTPUT FOR HEX DISP*/
    GPIO_D.moder = 0x00005555;
    /*SET INPUT FOR FLIPFLOP*/
    GPIO_E.moder = 0x0;
    
    /*Nollställ fält*/
    *SYSCFG_EXTICR1 &= 0x0FFF;
    /*PE3 -> EXTI3*/
    *SYSCFG_EXTICR1 |= 0x4000;
    
    *EXTI_IMR |= 4;
    *EXTI_RTSR |= 4;
    
    *((void (**)(void) ) 0x2001C064 )  = irq_handler;
    
    *NVIC_ISER0 |= NVIC_EXTI3_IRQ_BPOS;
    
    count = 0;
}
void main(void)
{
    app_init();
    while(1){
        GPIO_D.odrLow = count;
        GPIO_D.odrLow = count;
        GPIO_D.odrLow = count;
    }
}

