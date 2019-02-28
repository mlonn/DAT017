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
#define EXTI_RTSR ((volatile unsigned int*)(EXTI + 0x8))
#define EXTI_PR ((volatile unsigned int*)(EXTI + 0x14))

#define NVIC 0xE000E100
#define NVIC_ISER0 ((volatile unsigned int*)(NVIC))

#define NVIC_EXTI0_IRQ_BPOS (1<<6)
#define NVIC_EXTI1_IRQ_BPOS (1<<7)
#define NVIC_EXTI2_IRQ_BPOS (1<<8)
#define NVIC_EXTI3_IRQ_BPOS (1<<9)

#define EXTI0_IRQ_BPOS 1
#define EXTI1_IRQ_BPOS 2
#define EXTI2_IRQ_BPOS 4
#define EXTI3_IRQ_BPOS 8

#define IRQVEC 0x2001C000
#define EXTI0_IRQVEC ((void (**)(void) ) (IRQVEC + 0x58) )
#define EXTI1_IRQVEC ((void (**)(void) ) (IRQVEC + 0x5C) )
#define EXTI2_IRQVEC ((void (**)(void) ) (IRQVEC + 0x60) )
#define EXTI3_IRQVEC ((void (**)(void) ) (IRQVEC + 0x64) )

int count;
void irq_handler0(void) {
    
    if( (*EXTI_PR & EXTI0_IRQ_BPOS) != 0 ) {
		*EXTI_PR |= EXTI0_IRQ_BPOS;
		
		if(GPIO_E.idrLow & 1){
			
			GPIO_E.odrLow |= 0x10;
			GPIO_E.odrLow &= 0xEF;
			count++;
		
		}
	}
    
}
void irq_handler1(void) {
	if( (*EXTI_PR & EXTI1_IRQ_BPOS) != 0 ) {
		*EXTI_PR |= EXTI1_IRQ_BPOS;
		
		
		if((GPIO_E.idrLow & 2) != 0){
			
			GPIO_E.odrLow |= 0x20;
			GPIO_E.odrLow &= 0xDF;
			count = 0;

		} 
	}
	
	}
void irq_handler2(void) {
	if( (*EXTI_PR & EXTI2_IRQ_BPOS) != 0 ) {
		*EXTI_PR |= EXTI2_IRQ_BPOS;
	
	if((GPIO_E.idrLow & 4) != 0){
			
			GPIO_E.odrLow |= 0x40;
			GPIO_E.odrLow &= 0xBF;
			GPIO_D.odrHigh  = ~GPIO_D.odrHigh;
		}
	}
}


void app_init(void) {
    /*SET OUTPUT FOR HEX DISP*/
    GPIO_D.moder = 0x55555555;
    /*SET INPUT FOR FLIPFLOP*/
    GPIO_E.moder = 0x00005500;
    
    /*Nollställ fält*/
    *SYSCFG_EXTICR1 &= 0xF000;
    /*PE3 -> EXTI3*/
    *SYSCFG_EXTICR1 |= 0x0444;
    
    /*Ac*/
    *EXTI_IMR |= 0x7;
    *EXTI_RTSR |= 0x7;
	
    *EXTI0_IRQVEC  = irq_handler0;
	*EXTI1_IRQVEC  = irq_handler1;
    *EXTI2_IRQVEC  = irq_handler2;
    
    *NVIC_ISER0 |= (NVIC_EXTI0_IRQ_BPOS | NVIC_EXTI1_IRQ_BPOS | NVIC_EXTI2_IRQ_BPOS);
    
    count = 0;
}
void main(void)
{
    app_init();
    while(1){
        GPIO_D.odrLow = count;
    }
}

