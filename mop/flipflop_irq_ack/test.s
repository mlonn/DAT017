   1              		.arch armv6-m
   2              		.eabi_attribute 20, 1
   3              		.eabi_attribute 21, 1
   4              		.eabi_attribute 23, 3
   5              		.eabi_attribute 24, 1
   6              		.eabi_attribute 25, 1
   7              		.eabi_attribute 26, 1
   8              		.eabi_attribute 30, 6
   9              		.eabi_attribute 34, 0
  10              		.eabi_attribute 18, 4
  11              		.file	"startup.c"
  12              		.text
  13              	.Ltext0:
  14              		.cfi_sections	.debug_frame
  15              		.section	.start_section,"ax",%progbits
  16              		.align	1
  17              		.global	startup
  18              		.syntax unified
  19              		.code	16
  20              		.thumb_func
  21              		.fpu softvfp
  23              	startup:
  24              	.LFB0:
  25              		.file 1 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack/startup.c"
   1:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** /*
   2:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****  * 	startup.c
   3:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****  *
   4:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****  */
   5:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****  #include "gpio.h"
   6:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   7:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 
   8:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** void startup ( void )
   9:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** {
  26              		.loc 1 9 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  10:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** __asm volatile(
  31              		.loc 1 10 0
  32              		.syntax divided
  33              	@ 10 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	.L1: B .L1
  38              	
  39              	@ 0 "" 2
  11:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  12:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 	" MOV SP,R0\n"
  13:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 	" BL main\n"				/* call main */
  14:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 	".L1: B .L1\n"				/* never return */
  15:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 	) ;
  16:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** }
  40              		.loc 1 16 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.comm	count,4,4
  48              		.text
  49              		.align	1
  50              		.global	irq_handler
  51              		.syntax unified
  52              		.code	16
  53              		.thumb_func
  54              		.fpu softvfp
  56              	irq_handler:
  57              	.LFB1:
  17:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define SYSCFG 0x40013800
  18:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define SYSCFG_EXTICR1 ((volatile unsigned int*)(SYSCFG + 0x8))
  19:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 
  20:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define EXTI 0x40013C00
  21:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define EXTI_IMR ((volatile unsigned int*)(EXTI))
  22:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define EXTI_RTSR ((volatile unsigned int*)(EXTI + 0x8))
  23:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define EXTI_PR ((volatile unsigned int*)(EXTI + 0x14))
  24:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define NVIC 0xE000E100
  26:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define NVIC_ISER0 ((volatile unsigned int*)(NVIC))
  27:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 
  28:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define NVIC_EXTI0_IRQ_BPOS (1<<6)
  29:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define NVIC_EXTI1_IRQ_BPOS (1<<7)
  30:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define NVIC_EXTI2_IRQ_BPOS (1<<8)
  31:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define NVIC_EXTI3_IRQ_BPOS (1<<9)
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 
  33:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define EXTI0_IRQ_BPOS 1
  34:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define EXTI1_IRQ_BPOS 2
  35:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define EXTI2_IRQ_BPOS 4
  36:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define EXTI3_IRQ_BPOS 8
  37:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define IRQVEC 0x2001C000
  39:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define EXTI0_IRQVEC ((void (**)(void) ) (IRQVEC + 0x58) )
  40:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define EXTI1_IRQVEC ((void (**)(void) ) (IRQVEC + 0x5C) )
  41:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define EXTI2_IRQVEC ((void (**)(void) ) (IRQVEC + 0x60) )
  42:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** #define EXTI3_IRQVEC ((void (**)(void) ) (IRQVEC + 0x64) )
  43:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 
  44:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** int count;
  45:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** void irq_handler(void) {
  58              		.loc 1 45 0
  59              		.cfi_startproc
  60              		@ args = 0, pretend = 0, frame = 0
  61              		@ frame_needed = 1, uses_anonymous_args = 0
  62 0000 80B5     		push	{r7, lr}
  63              		.cfi_def_cfa_offset 8
  64              		.cfi_offset 7, -8
  65              		.cfi_offset 14, -4
  66 0002 00AF     		add	r7, sp, #0
  67              		.cfi_def_cfa_register 7
  46:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     
  47:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     if( (*EXTI_PR & EXTI3_IRQ_BPOS) != 0 ) {
  68              		.loc 1 47 0
  69 0004 314B     		ldr	r3, .L7
  70 0006 1B68     		ldr	r3, [r3]
  71 0008 0822     		movs	r2, #8
  72 000a 1340     		ands	r3, r2
  73 000c 5BD0     		beq	.L6
  48:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 		*EXTI_PR |= EXTI3_IRQ_BPOS;
  74              		.loc 1 48 0
  75 000e 2F4B     		ldr	r3, .L7
  76 0010 1A68     		ldr	r2, [r3]
  77 0012 2E4B     		ldr	r3, .L7
  78 0014 0821     		movs	r1, #8
  79 0016 0A43     		orrs	r2, r1
  80 0018 1A60     		str	r2, [r3]
  49:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 		
  50:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 		if(GPIO_E.idrLow & 1){
  81              		.loc 1 50 0
  82 001a 2D4B     		ldr	r3, .L7+4
  83 001c 1B7C     		ldrb	r3, [r3, #16]
  84 001e DBB2     		uxtb	r3, r3
  85 0020 1A00     		movs	r2, r3
  86 0022 0123     		movs	r3, #1
  87 0024 1340     		ands	r3, r2
  88 0026 15D0     		beq	.L4
  51:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 			
  52:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 			GPIO_E.odrLow |= 0x10;
  89              		.loc 1 52 0
  90 0028 294B     		ldr	r3, .L7+4
  91 002a 1B7D     		ldrb	r3, [r3, #20]
  92 002c DBB2     		uxtb	r3, r3
  93 002e 284A     		ldr	r2, .L7+4
  94 0030 1021     		movs	r1, #16
  95 0032 0B43     		orrs	r3, r1
  96 0034 DBB2     		uxtb	r3, r3
  97 0036 1375     		strb	r3, [r2, #20]
  53:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 			GPIO_E.odrLow &= 0xEF;
  98              		.loc 1 53 0
  99 0038 254B     		ldr	r3, .L7+4
 100 003a 1B7D     		ldrb	r3, [r3, #20]
 101 003c DBB2     		uxtb	r3, r3
 102 003e 244A     		ldr	r2, .L7+4
 103 0040 1021     		movs	r1, #16
 104 0042 8B43     		bics	r3, r1
 105 0044 DBB2     		uxtb	r3, r3
 106 0046 1375     		strb	r3, [r2, #20]
  54:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 			count++;
 107              		.loc 1 54 0
 108 0048 224B     		ldr	r3, .L7+8
 109 004a 1B68     		ldr	r3, [r3]
 110 004c 5A1C     		adds	r2, r3, #1
 111 004e 214B     		ldr	r3, .L7+8
 112 0050 1A60     		str	r2, [r3]
  55:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 		
  56:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 		} else if((GPIO_E.idrLow & 2) != 0){
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 			
  58:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 			GPIO_E.odrLow |= 0x20;
  59:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 			GPIO_E.odrLow &= 0xDF;
  60:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 			count = 0;
  61:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 
  62:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 		} else if((GPIO_E.idrLow & 4) != 0){
  63:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 			
  64:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 			GPIO_E.odrLow |= 0x40;
  65:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 			GPIO_E.odrLow &= 0xBF;
  66:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 			GPIO_D.odrHigh  = ~GPIO_D.odrHigh;
  67:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 		}
  68:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 	}
  69:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     
  70:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** }
 113              		.loc 1 70 0
 114 0052 38E0     		b	.L6
 115              	.L4:
  56:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 			
 116              		.loc 1 56 0
 117 0054 1E4B     		ldr	r3, .L7+4
 118 0056 1B7C     		ldrb	r3, [r3, #16]
 119 0058 DBB2     		uxtb	r3, r3
 120 005a 1A00     		movs	r2, r3
 121 005c 0223     		movs	r3, #2
 122 005e 1340     		ands	r3, r2
 123 0060 13D0     		beq	.L5
  58:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 			GPIO_E.odrLow &= 0xDF;
 124              		.loc 1 58 0
 125 0062 1B4B     		ldr	r3, .L7+4
 126 0064 1B7D     		ldrb	r3, [r3, #20]
 127 0066 DBB2     		uxtb	r3, r3
 128 0068 194A     		ldr	r2, .L7+4
 129 006a 2021     		movs	r1, #32
 130 006c 0B43     		orrs	r3, r1
 131 006e DBB2     		uxtb	r3, r3
 132 0070 1375     		strb	r3, [r2, #20]
  59:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 			count = 0;
 133              		.loc 1 59 0
 134 0072 174B     		ldr	r3, .L7+4
 135 0074 1B7D     		ldrb	r3, [r3, #20]
 136 0076 DBB2     		uxtb	r3, r3
 137 0078 154A     		ldr	r2, .L7+4
 138 007a 2021     		movs	r1, #32
 139 007c 8B43     		bics	r3, r1
 140 007e DBB2     		uxtb	r3, r3
 141 0080 1375     		strb	r3, [r2, #20]
  60:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 
 142              		.loc 1 60 0
 143 0082 144B     		ldr	r3, .L7+8
 144 0084 0022     		movs	r2, #0
 145 0086 1A60     		str	r2, [r3]
 146              		.loc 1 70 0
 147 0088 1DE0     		b	.L6
 148              	.L5:
  62:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 			
 149              		.loc 1 62 0
 150 008a 114B     		ldr	r3, .L7+4
 151 008c 1B7C     		ldrb	r3, [r3, #16]
 152 008e DBB2     		uxtb	r3, r3
 153 0090 1A00     		movs	r2, r3
 154 0092 0423     		movs	r3, #4
 155 0094 1340     		ands	r3, r2
 156 0096 16D0     		beq	.L6
  64:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 			GPIO_E.odrLow &= 0xBF;
 157              		.loc 1 64 0
 158 0098 0D4B     		ldr	r3, .L7+4
 159 009a 1B7D     		ldrb	r3, [r3, #20]
 160 009c DBB2     		uxtb	r3, r3
 161 009e 0C4A     		ldr	r2, .L7+4
 162 00a0 4021     		movs	r1, #64
 163 00a2 0B43     		orrs	r3, r1
 164 00a4 DBB2     		uxtb	r3, r3
 165 00a6 1375     		strb	r3, [r2, #20]
  65:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 			GPIO_D.odrHigh  = ~GPIO_D.odrHigh;
 166              		.loc 1 65 0
 167 00a8 094B     		ldr	r3, .L7+4
 168 00aa 1B7D     		ldrb	r3, [r3, #20]
 169 00ac DBB2     		uxtb	r3, r3
 170 00ae 084A     		ldr	r2, .L7+4
 171 00b0 4021     		movs	r1, #64
 172 00b2 8B43     		bics	r3, r1
 173 00b4 DBB2     		uxtb	r3, r3
 174 00b6 1375     		strb	r3, [r2, #20]
  66:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 		}
 175              		.loc 1 66 0
 176 00b8 074B     		ldr	r3, .L7+12
 177 00ba 5B7D     		ldrb	r3, [r3, #21]
 178 00bc DBB2     		uxtb	r3, r3
 179 00be 064A     		ldr	r2, .L7+12
 180 00c0 DB43     		mvns	r3, r3
 181 00c2 DBB2     		uxtb	r3, r3
 182 00c4 5375     		strb	r3, [r2, #21]
 183              	.L6:
 184              		.loc 1 70 0
 185 00c6 C046     		nop
 186 00c8 BD46     		mov	sp, r7
 187              		@ sp needed
 188 00ca 80BD     		pop	{r7, pc}
 189              	.L8:
 190              		.align	2
 191              	.L7:
 192 00cc 143C0140 		.word	1073822740
 193 00d0 00100240 		.word	1073876992
 194 00d4 00000000 		.word	count
 195 00d8 000C0240 		.word	1073875968
 196              		.cfi_endproc
 197              	.LFE1:
 199              		.align	1
 200              		.global	app_init
 201              		.syntax unified
 202              		.code	16
 203              		.thumb_func
 204              		.fpu softvfp
 206              	app_init:
 207              	.LFB2:
  71:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 
  72:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** void app_init(void) {
 208              		.loc 1 72 0
 209              		.cfi_startproc
 210              		@ args = 0, pretend = 0, frame = 0
 211              		@ frame_needed = 1, uses_anonymous_args = 0
 212 00dc 80B5     		push	{r7, lr}
 213              		.cfi_def_cfa_offset 8
 214              		.cfi_offset 7, -8
 215              		.cfi_offset 14, -4
 216 00de 00AF     		add	r7, sp, #0
 217              		.cfi_def_cfa_register 7
  73:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     /*SET OUTPUT FOR HEX DISP*/
  74:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     GPIO_D.moder = 0x55555555;
 218              		.loc 1 74 0
 219 00e0 174B     		ldr	r3, .L10
 220 00e2 184A     		ldr	r2, .L10+4
 221 00e4 1A60     		str	r2, [r3]
  75:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     /*SET INPUT FOR FLIPFLOP*/
  76:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     GPIO_E.moder = 0x00005500;
 222              		.loc 1 76 0
 223 00e6 184B     		ldr	r3, .L10+8
 224 00e8 AA22     		movs	r2, #170
 225 00ea D201     		lsls	r2, r2, #7
 226 00ec 1A60     		str	r2, [r3]
  77:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     
  78:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     /*Nollställ fält*/
  79:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     *SYSCFG_EXTICR1 &= 0x0FFF;
 227              		.loc 1 79 0
 228 00ee 174B     		ldr	r3, .L10+12
 229 00f0 1A68     		ldr	r2, [r3]
 230 00f2 164B     		ldr	r3, .L10+12
 231 00f4 1205     		lsls	r2, r2, #20
 232 00f6 120D     		lsrs	r2, r2, #20
 233 00f8 1A60     		str	r2, [r3]
  80:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     /*PE3 -> EXTI3*/
  81:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     *SYSCFG_EXTICR1 |= 0x4000;
 234              		.loc 1 81 0
 235 00fa 144B     		ldr	r3, .L10+12
 236 00fc 1A68     		ldr	r2, [r3]
 237 00fe 134B     		ldr	r3, .L10+12
 238 0100 8021     		movs	r1, #128
 239 0102 C901     		lsls	r1, r1, #7
 240 0104 0A43     		orrs	r2, r1
 241 0106 1A60     		str	r2, [r3]
  82:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     
  83:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     /*Ac*/
  84:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     *EXTI_IMR |= 0xF;
 242              		.loc 1 84 0
 243 0108 114B     		ldr	r3, .L10+16
 244 010a 1A68     		ldr	r2, [r3]
 245 010c 104B     		ldr	r3, .L10+16
 246 010e 0F21     		movs	r1, #15
 247 0110 0A43     		orrs	r2, r1
 248 0112 1A60     		str	r2, [r3]
  85:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     *EXTI_RTSR |= 0xF;
 249              		.loc 1 85 0
 250 0114 0F4B     		ldr	r3, .L10+20
 251 0116 1A68     		ldr	r2, [r3]
 252 0118 0E4B     		ldr	r3, .L10+20
 253 011a 0F21     		movs	r1, #15
 254 011c 0A43     		orrs	r2, r1
 255 011e 1A60     		str	r2, [r3]
  86:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** 	
  87:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     
  88:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     *EXTI3_IRQVEC  = irq_handler;
 256              		.loc 1 88 0
 257 0120 0D4B     		ldr	r3, .L10+24
 258 0122 0E4A     		ldr	r2, .L10+28
 259 0124 1A60     		str	r2, [r3]
  89:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     
  90:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     *NVIC_ISER0 |= NVIC_EXTI3_IRQ_BPOS;
 260              		.loc 1 90 0
 261 0126 0E4B     		ldr	r3, .L10+32
 262 0128 1A68     		ldr	r2, [r3]
 263 012a 0D4B     		ldr	r3, .L10+32
 264 012c 8021     		movs	r1, #128
 265 012e 8900     		lsls	r1, r1, #2
 266 0130 0A43     		orrs	r2, r1
 267 0132 1A60     		str	r2, [r3]
  91:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     
  92:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     count = 0;
 268              		.loc 1 92 0
 269 0134 0B4B     		ldr	r3, .L10+36
 270 0136 0022     		movs	r2, #0
 271 0138 1A60     		str	r2, [r3]
  93:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** }
 272              		.loc 1 93 0
 273 013a C046     		nop
 274 013c BD46     		mov	sp, r7
 275              		@ sp needed
 276 013e 80BD     		pop	{r7, pc}
 277              	.L11:
 278              		.align	2
 279              	.L10:
 280 0140 000C0240 		.word	1073875968
 281 0144 55555555 		.word	1431655765
 282 0148 00100240 		.word	1073876992
 283 014c 08380140 		.word	1073821704
 284 0150 003C0140 		.word	1073822720
 285 0154 083C0140 		.word	1073822728
 286 0158 64C00120 		.word	536985700
 287 015c 00000000 		.word	irq_handler
 288 0160 00E100E0 		.word	-536813312
 289 0164 00000000 		.word	count
 290              		.cfi_endproc
 291              	.LFE2:
 293              		.align	1
 294              		.global	main
 295              		.syntax unified
 296              		.code	16
 297              		.thumb_func
 298              		.fpu softvfp
 300              	main:
 301              	.LFB3:
  94:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** void main(void)
  95:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c **** {
 302              		.loc 1 95 0
 303              		.cfi_startproc
 304              		@ args = 0, pretend = 0, frame = 0
 305              		@ frame_needed = 1, uses_anonymous_args = 0
 306 0168 80B5     		push	{r7, lr}
 307              		.cfi_def_cfa_offset 8
 308              		.cfi_offset 7, -8
 309              		.cfi_offset 14, -4
 310 016a 00AF     		add	r7, sp, #0
 311              		.cfi_def_cfa_register 7
  96:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     app_init();
 312              		.loc 1 96 0
 313 016c FFF7FEFF 		bl	app_init
 314              	.L13:
  97:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****     while(1){
  98:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack\startup.c ****         GPIO_D.odrLow = count;
 315              		.loc 1 98 0 discriminator 1
 316 0170 024B     		ldr	r3, .L14
 317 0172 1A68     		ldr	r2, [r3]
 318 0174 024B     		ldr	r3, .L14+4
 319 0176 D2B2     		uxtb	r2, r2
 320 0178 1A75     		strb	r2, [r3, #20]
 321 017a F9E7     		b	.L13
 322              	.L15:
 323              		.align	2
 324              	.L14:
 325 017c 00000000 		.word	count
 326 0180 000C0240 		.word	1073875968
 327              		.cfi_endproc
 328              	.LFE3:
 330              	.Letext0:
 331              		.file 2 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\machine\\_default_types.h"
 332              		.file 3 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\sys\\_stdint.h"
 333              		.file 4 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_ack/gpio.h"
