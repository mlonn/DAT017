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
  25              		.file 1 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored/startup.c"
   1:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** /*
   2:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****  * 	startup.c
   3:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****  *
   4:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****  */
   5:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****  #include "gpio.h"
   6:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
   7:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 
   8:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** void startup ( void )
   9:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** {
  26              		.loc 1 9 0
  27              		.cfi_startproc
  28              		@ Naked Function: prologue and epilogue provided by programmer.
  29              		@ args = 0, pretend = 0, frame = 0
  30              		@ frame_needed = 1, uses_anonymous_args = 0
  10:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** __asm volatile(
  31              		.loc 1 10 0
  32              		.syntax divided
  33              	@ 10 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored/startup.c" 1
  34 0000 0248     		 LDR R0,=0x2001C000
  35 0002 8546     	 MOV SP,R0
  36 0004 FFF7FEFF 	 BL main
  37 0008 FEE7     	.L1: B .L1
  38              	
  39              	@ 0 "" 2
  11:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  12:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 	" MOV SP,R0\n"
  13:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 	" BL main\n"				/* call main */
  14:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 	".L1: B .L1\n"				/* never return */
  15:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 	) ;
  16:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** }
  40              		.loc 1 16 0
  41              		.thumb
  42              		.syntax unified
  43 000a C046     		nop
  44              		.cfi_endproc
  45              	.LFE0:
  47              		.comm	count,4,4
  48              		.text
  49              		.align	1
  50              		.global	irq_handler0
  51              		.syntax unified
  52              		.code	16
  53              		.thumb_func
  54              		.fpu softvfp
  56              	irq_handler0:
  57              	.LFB1:
  17:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define SYSCFG 0x40013800
  18:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define SYSCFG_EXTICR1 ((volatile unsigned int*)(SYSCFG + 0x8))
  19:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 
  20:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define EXTI 0x40013C00
  21:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define EXTI_IMR ((volatile unsigned int*)(EXTI))
  22:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define EXTI_RTSR ((volatile unsigned int*)(EXTI + 0x8))
  23:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define EXTI_PR ((volatile unsigned int*)(EXTI + 0x14))
  24:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define NVIC 0xE000E100
  26:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define NVIC_ISER0 ((volatile unsigned int*)(NVIC))
  27:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 
  28:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define NVIC_EXTI0_IRQ_BPOS (1<<6)
  29:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define NVIC_EXTI1_IRQ_BPOS (1<<7)
  30:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define NVIC_EXTI2_IRQ_BPOS (1<<8)
  31:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define NVIC_EXTI3_IRQ_BPOS (1<<9)
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 
  33:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define EXTI0_IRQ_BPOS 1
  34:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define EXTI1_IRQ_BPOS 2
  35:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define EXTI2_IRQ_BPOS 4
  36:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define EXTI3_IRQ_BPOS 8
  37:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define IRQVEC 0x2001C000
  39:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define EXTI0_IRQVEC ((void (**)(void) ) (IRQVEC + 0x58) )
  40:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define EXTI1_IRQVEC ((void (**)(void) ) (IRQVEC + 0x5C) )
  41:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define EXTI2_IRQVEC ((void (**)(void) ) (IRQVEC + 0x60) )
  42:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** #define EXTI3_IRQVEC ((void (**)(void) ) (IRQVEC + 0x64) )
  43:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 
  44:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** int count;
  45:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** void irq_handler0(void) {
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
  46:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     
  47:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     if( (*EXTI_PR & EXTI0_IRQ_BPOS) != 0 ) {
  68              		.loc 1 47 0
  69 0004 144B     		ldr	r3, .L5
  70 0006 1B68     		ldr	r3, [r3]
  71 0008 0122     		movs	r2, #1
  72 000a 1340     		ands	r3, r2
  73 000c 21D0     		beq	.L4
  48:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 		*EXTI_PR |= EXTI0_IRQ_BPOS;
  74              		.loc 1 48 0
  75 000e 124B     		ldr	r3, .L5
  76 0010 1A68     		ldr	r2, [r3]
  77 0012 114B     		ldr	r3, .L5
  78 0014 0121     		movs	r1, #1
  79 0016 0A43     		orrs	r2, r1
  80 0018 1A60     		str	r2, [r3]
  49:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 		
  50:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 		if(GPIO_E.idrLow & 1){
  81              		.loc 1 50 0
  82 001a 104B     		ldr	r3, .L5+4
  83 001c 1B7C     		ldrb	r3, [r3, #16]
  84 001e DBB2     		uxtb	r3, r3
  85 0020 1A00     		movs	r2, r3
  86 0022 0123     		movs	r3, #1
  87 0024 1340     		ands	r3, r2
  88 0026 14D0     		beq	.L4
  51:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 			
  52:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 			GPIO_E.odrLow |= 0x10;
  89              		.loc 1 52 0
  90 0028 0C4B     		ldr	r3, .L5+4
  91 002a 1B7D     		ldrb	r3, [r3, #20]
  92 002c DBB2     		uxtb	r3, r3
  93 002e 0B4A     		ldr	r2, .L5+4
  94 0030 1021     		movs	r1, #16
  95 0032 0B43     		orrs	r3, r1
  96 0034 DBB2     		uxtb	r3, r3
  97 0036 1375     		strb	r3, [r2, #20]
  53:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 			GPIO_E.odrLow &= 0xEF;
  98              		.loc 1 53 0
  99 0038 084B     		ldr	r3, .L5+4
 100 003a 1B7D     		ldrb	r3, [r3, #20]
 101 003c DBB2     		uxtb	r3, r3
 102 003e 074A     		ldr	r2, .L5+4
 103 0040 1021     		movs	r1, #16
 104 0042 8B43     		bics	r3, r1
 105 0044 DBB2     		uxtb	r3, r3
 106 0046 1375     		strb	r3, [r2, #20]
  54:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 			count++;
 107              		.loc 1 54 0
 108 0048 054B     		ldr	r3, .L5+8
 109 004a 1B68     		ldr	r3, [r3]
 110 004c 5A1C     		adds	r2, r3, #1
 111 004e 044B     		ldr	r3, .L5+8
 112 0050 1A60     		str	r2, [r3]
 113              	.L4:
  55:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 		
  56:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 		}
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 	}
  58:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     
  59:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** }
 114              		.loc 1 59 0
 115 0052 C046     		nop
 116 0054 BD46     		mov	sp, r7
 117              		@ sp needed
 118 0056 80BD     		pop	{r7, pc}
 119              	.L6:
 120              		.align	2
 121              	.L5:
 122 0058 143C0140 		.word	1073822740
 123 005c 00100240 		.word	1073876992
 124 0060 00000000 		.word	count
 125              		.cfi_endproc
 126              	.LFE1:
 128              		.align	1
 129              		.global	irq_handler1
 130              		.syntax unified
 131              		.code	16
 132              		.thumb_func
 133              		.fpu softvfp
 135              	irq_handler1:
 136              	.LFB2:
  60:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** void irq_handler1(void) {
 137              		.loc 1 60 0
 138              		.cfi_startproc
 139              		@ args = 0, pretend = 0, frame = 0
 140              		@ frame_needed = 1, uses_anonymous_args = 0
 141 0064 80B5     		push	{r7, lr}
 142              		.cfi_def_cfa_offset 8
 143              		.cfi_offset 7, -8
 144              		.cfi_offset 14, -4
 145 0066 00AF     		add	r7, sp, #0
 146              		.cfi_def_cfa_register 7
  61:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 	if( (*EXTI_PR & EXTI1_IRQ_BPOS) != 0 ) {
 147              		.loc 1 61 0
 148 0068 134B     		ldr	r3, .L10
 149 006a 1B68     		ldr	r3, [r3]
 150 006c 0222     		movs	r2, #2
 151 006e 1340     		ands	r3, r2
 152 0070 1FD0     		beq	.L9
  62:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 		*EXTI_PR |= EXTI1_IRQ_BPOS;
 153              		.loc 1 62 0
 154 0072 114B     		ldr	r3, .L10
 155 0074 1A68     		ldr	r2, [r3]
 156 0076 104B     		ldr	r3, .L10
 157 0078 0221     		movs	r1, #2
 158 007a 0A43     		orrs	r2, r1
 159 007c 1A60     		str	r2, [r3]
  63:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 		
  64:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 		
  65:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 		if((GPIO_E.idrLow & 2) != 0){
 160              		.loc 1 65 0
 161 007e 0F4B     		ldr	r3, .L10+4
 162 0080 1B7C     		ldrb	r3, [r3, #16]
 163 0082 DBB2     		uxtb	r3, r3
 164 0084 1A00     		movs	r2, r3
 165 0086 0223     		movs	r3, #2
 166 0088 1340     		ands	r3, r2
 167 008a 12D0     		beq	.L9
  66:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 			
  67:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 			GPIO_E.odrLow |= 0x20;
 168              		.loc 1 67 0
 169 008c 0B4B     		ldr	r3, .L10+4
 170 008e 1B7D     		ldrb	r3, [r3, #20]
 171 0090 DBB2     		uxtb	r3, r3
 172 0092 0A4A     		ldr	r2, .L10+4
 173 0094 2021     		movs	r1, #32
 174 0096 0B43     		orrs	r3, r1
 175 0098 DBB2     		uxtb	r3, r3
 176 009a 1375     		strb	r3, [r2, #20]
  68:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 			GPIO_E.odrLow &= 0xDF;
 177              		.loc 1 68 0
 178 009c 074B     		ldr	r3, .L10+4
 179 009e 1B7D     		ldrb	r3, [r3, #20]
 180 00a0 DBB2     		uxtb	r3, r3
 181 00a2 064A     		ldr	r2, .L10+4
 182 00a4 2021     		movs	r1, #32
 183 00a6 8B43     		bics	r3, r1
 184 00a8 DBB2     		uxtb	r3, r3
 185 00aa 1375     		strb	r3, [r2, #20]
  69:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 			count = 0;
 186              		.loc 1 69 0
 187 00ac 044B     		ldr	r3, .L10+8
 188 00ae 0022     		movs	r2, #0
 189 00b0 1A60     		str	r2, [r3]
 190              	.L9:
  70:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 
  71:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 		} 
  72:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 	}
  73:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 	
  74:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 	}
 191              		.loc 1 74 0
 192 00b2 C046     		nop
 193 00b4 BD46     		mov	sp, r7
 194              		@ sp needed
 195 00b6 80BD     		pop	{r7, pc}
 196              	.L11:
 197              		.align	2
 198              	.L10:
 199 00b8 143C0140 		.word	1073822740
 200 00bc 00100240 		.word	1073876992
 201 00c0 00000000 		.word	count
 202              		.cfi_endproc
 203              	.LFE2:
 205              		.align	1
 206              		.global	irq_handler2
 207              		.syntax unified
 208              		.code	16
 209              		.thumb_func
 210              		.fpu softvfp
 212              	irq_handler2:
 213              	.LFB3:
  75:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** void irq_handler2(void) {
 214              		.loc 1 75 0
 215              		.cfi_startproc
 216              		@ args = 0, pretend = 0, frame = 0
 217              		@ frame_needed = 1, uses_anonymous_args = 0
 218 00c4 80B5     		push	{r7, lr}
 219              		.cfi_def_cfa_offset 8
 220              		.cfi_offset 7, -8
 221              		.cfi_offset 14, -4
 222 00c6 00AF     		add	r7, sp, #0
 223              		.cfi_def_cfa_register 7
  76:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 	if( (*EXTI_PR & EXTI2_IRQ_BPOS) != 0 ) {
 224              		.loc 1 76 0
 225 00c8 154B     		ldr	r3, .L15
 226 00ca 1B68     		ldr	r3, [r3]
 227 00cc 0422     		movs	r2, #4
 228 00ce 1340     		ands	r3, r2
 229 00d0 23D0     		beq	.L14
  77:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 		*EXTI_PR |= EXTI2_IRQ_BPOS;
 230              		.loc 1 77 0
 231 00d2 134B     		ldr	r3, .L15
 232 00d4 1A68     		ldr	r2, [r3]
 233 00d6 124B     		ldr	r3, .L15
 234 00d8 0421     		movs	r1, #4
 235 00da 0A43     		orrs	r2, r1
 236 00dc 1A60     		str	r2, [r3]
  78:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 	
  79:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 	if((GPIO_E.idrLow & 4) != 0){
 237              		.loc 1 79 0
 238 00de 114B     		ldr	r3, .L15+4
 239 00e0 1B7C     		ldrb	r3, [r3, #16]
 240 00e2 DBB2     		uxtb	r3, r3
 241 00e4 1A00     		movs	r2, r3
 242 00e6 0423     		movs	r3, #4
 243 00e8 1340     		ands	r3, r2
 244 00ea 16D0     		beq	.L14
  80:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 			
  81:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 			GPIO_E.odrLow |= 0x40;
 245              		.loc 1 81 0
 246 00ec 0D4B     		ldr	r3, .L15+4
 247 00ee 1B7D     		ldrb	r3, [r3, #20]
 248 00f0 DBB2     		uxtb	r3, r3
 249 00f2 0C4A     		ldr	r2, .L15+4
 250 00f4 4021     		movs	r1, #64
 251 00f6 0B43     		orrs	r3, r1
 252 00f8 DBB2     		uxtb	r3, r3
 253 00fa 1375     		strb	r3, [r2, #20]
  82:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 			GPIO_E.odrLow &= 0xBF;
 254              		.loc 1 82 0
 255 00fc 094B     		ldr	r3, .L15+4
 256 00fe 1B7D     		ldrb	r3, [r3, #20]
 257 0100 DBB2     		uxtb	r3, r3
 258 0102 084A     		ldr	r2, .L15+4
 259 0104 4021     		movs	r1, #64
 260 0106 8B43     		bics	r3, r1
 261 0108 DBB2     		uxtb	r3, r3
 262 010a 1375     		strb	r3, [r2, #20]
  83:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 			GPIO_D.odrHigh  = ~GPIO_D.odrHigh;
 263              		.loc 1 83 0
 264 010c 064B     		ldr	r3, .L15+8
 265 010e 5B7D     		ldrb	r3, [r3, #21]
 266 0110 DBB2     		uxtb	r3, r3
 267 0112 054A     		ldr	r2, .L15+8
 268 0114 DB43     		mvns	r3, r3
 269 0116 DBB2     		uxtb	r3, r3
 270 0118 5375     		strb	r3, [r2, #21]
 271              	.L14:
  84:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 		}
  85:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 	}
  86:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** }
 272              		.loc 1 86 0
 273 011a C046     		nop
 274 011c BD46     		mov	sp, r7
 275              		@ sp needed
 276 011e 80BD     		pop	{r7, pc}
 277              	.L16:
 278              		.align	2
 279              	.L15:
 280 0120 143C0140 		.word	1073822740
 281 0124 00100240 		.word	1073876992
 282 0128 000C0240 		.word	1073875968
 283              		.cfi_endproc
 284              	.LFE3:
 286              		.align	1
 287              		.global	app_init
 288              		.syntax unified
 289              		.code	16
 290              		.thumb_func
 291              		.fpu softvfp
 293              	app_init:
 294              	.LFB4:
  87:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 
  88:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 
  89:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** void app_init(void) {
 295              		.loc 1 89 0
 296              		.cfi_startproc
 297              		@ args = 0, pretend = 0, frame = 0
 298              		@ frame_needed = 1, uses_anonymous_args = 0
 299 012c 80B5     		push	{r7, lr}
 300              		.cfi_def_cfa_offset 8
 301              		.cfi_offset 7, -8
 302              		.cfi_offset 14, -4
 303 012e 00AF     		add	r7, sp, #0
 304              		.cfi_def_cfa_register 7
  90:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     /*SET OUTPUT FOR HEX DISP*/
  91:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     GPIO_D.moder = 0x55555555;
 305              		.loc 1 91 0
 306 0130 1A4B     		ldr	r3, .L18
 307 0132 1B4A     		ldr	r2, .L18+4
 308 0134 1A60     		str	r2, [r3]
  92:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     /*SET INPUT FOR FLIPFLOP*/
  93:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     GPIO_E.moder = 0x00005500;
 309              		.loc 1 93 0
 310 0136 1B4B     		ldr	r3, .L18+8
 311 0138 AA22     		movs	r2, #170
 312 013a D201     		lsls	r2, r2, #7
 313 013c 1A60     		str	r2, [r3]
  94:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     
  95:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     /*Nollställ fält*/
  96:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     *SYSCFG_EXTICR1 &= 0xF000;
 314              		.loc 1 96 0
 315 013e 1A4B     		ldr	r3, .L18+12
 316 0140 1968     		ldr	r1, [r3]
 317 0142 194B     		ldr	r3, .L18+12
 318 0144 F022     		movs	r2, #240
 319 0146 1202     		lsls	r2, r2, #8
 320 0148 0A40     		ands	r2, r1
 321 014a 1A60     		str	r2, [r3]
  97:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     /*PE3 -> EXTI3*/
  98:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     *SYSCFG_EXTICR1 |= 0x0444;
 322              		.loc 1 98 0
 323 014c 164B     		ldr	r3, .L18+12
 324 014e 1A68     		ldr	r2, [r3]
 325 0150 154B     		ldr	r3, .L18+12
 326 0152 1649     		ldr	r1, .L18+16
 327 0154 0A43     		orrs	r2, r1
 328 0156 1A60     		str	r2, [r3]
  99:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     
 100:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     /*Ac*/
 101:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     *EXTI_IMR |= 0x7;
 329              		.loc 1 101 0
 330 0158 154B     		ldr	r3, .L18+20
 331 015a 1A68     		ldr	r2, [r3]
 332 015c 144B     		ldr	r3, .L18+20
 333 015e 0721     		movs	r1, #7
 334 0160 0A43     		orrs	r2, r1
 335 0162 1A60     		str	r2, [r3]
 102:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     *EXTI_RTSR |= 0x7;
 336              		.loc 1 102 0
 337 0164 134B     		ldr	r3, .L18+24
 338 0166 1A68     		ldr	r2, [r3]
 339 0168 124B     		ldr	r3, .L18+24
 340 016a 0721     		movs	r1, #7
 341 016c 0A43     		orrs	r2, r1
 342 016e 1A60     		str	r2, [r3]
 103:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 	
 104:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     *EXTI0_IRQVEC  = irq_handler0;
 343              		.loc 1 104 0
 344 0170 114B     		ldr	r3, .L18+28
 345 0172 124A     		ldr	r2, .L18+32
 346 0174 1A60     		str	r2, [r3]
 105:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** 	*EXTI1_IRQVEC  = irq_handler1;
 347              		.loc 1 105 0
 348 0176 124B     		ldr	r3, .L18+36
 349 0178 124A     		ldr	r2, .L18+40
 350 017a 1A60     		str	r2, [r3]
 106:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     *EXTI2_IRQVEC  = irq_handler2;
 351              		.loc 1 106 0
 352 017c 124B     		ldr	r3, .L18+44
 353 017e 134A     		ldr	r2, .L18+48
 354 0180 1A60     		str	r2, [r3]
 107:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     
 108:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     *NVIC_ISER0 |= (NVIC_EXTI0_IRQ_BPOS | NVIC_EXTI1_IRQ_BPOS | NVIC_EXTI2_IRQ_BPOS);
 355              		.loc 1 108 0
 356 0182 134B     		ldr	r3, .L18+52
 357 0184 1A68     		ldr	r2, [r3]
 358 0186 124B     		ldr	r3, .L18+52
 359 0188 E021     		movs	r1, #224
 360 018a 4900     		lsls	r1, r1, #1
 361 018c 0A43     		orrs	r2, r1
 362 018e 1A60     		str	r2, [r3]
 109:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     
 110:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     count = 0;
 363              		.loc 1 110 0
 364 0190 104B     		ldr	r3, .L18+56
 365 0192 0022     		movs	r2, #0
 366 0194 1A60     		str	r2, [r3]
 111:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** }
 367              		.loc 1 111 0
 368 0196 C046     		nop
 369 0198 BD46     		mov	sp, r7
 370              		@ sp needed
 371 019a 80BD     		pop	{r7, pc}
 372              	.L19:
 373              		.align	2
 374              	.L18:
 375 019c 000C0240 		.word	1073875968
 376 01a0 55555555 		.word	1431655765
 377 01a4 00100240 		.word	1073876992
 378 01a8 08380140 		.word	1073821704
 379 01ac 44040000 		.word	1092
 380 01b0 003C0140 		.word	1073822720
 381 01b4 083C0140 		.word	1073822728
 382 01b8 58C00120 		.word	536985688
 383 01bc 00000000 		.word	irq_handler0
 384 01c0 5CC00120 		.word	536985692
 385 01c4 00000000 		.word	irq_handler1
 386 01c8 60C00120 		.word	536985696
 387 01cc 00000000 		.word	irq_handler2
 388 01d0 00E100E0 		.word	-536813312
 389 01d4 00000000 		.word	count
 390              		.cfi_endproc
 391              	.LFE4:
 393              		.align	1
 394              		.global	main
 395              		.syntax unified
 396              		.code	16
 397              		.thumb_func
 398              		.fpu softvfp
 400              	main:
 401              	.LFB5:
 112:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** void main(void)
 113:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c **** {
 402              		.loc 1 113 0
 403              		.cfi_startproc
 404              		@ args = 0, pretend = 0, frame = 0
 405              		@ frame_needed = 1, uses_anonymous_args = 0
 406 01d8 80B5     		push	{r7, lr}
 407              		.cfi_def_cfa_offset 8
 408              		.cfi_offset 7, -8
 409              		.cfi_offset 14, -4
 410 01da 00AF     		add	r7, sp, #0
 411              		.cfi_def_cfa_register 7
 114:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     app_init();
 412              		.loc 1 114 0
 413 01dc FFF7FEFF 		bl	app_init
 414              	.L21:
 115:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****     while(1){
 116:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored\startup.c ****         GPIO_D.odrLow = count;
 415              		.loc 1 116 0 discriminator 1
 416 01e0 024B     		ldr	r3, .L22
 417 01e2 1A68     		ldr	r2, [r3]
 418 01e4 024B     		ldr	r3, .L22+4
 419 01e6 D2B2     		uxtb	r2, r2
 420 01e8 1A75     		strb	r2, [r3, #20]
 421 01ea F9E7     		b	.L21
 422              	.L23:
 423              		.align	2
 424              	.L22:
 425 01ec 00000000 		.word	count
 426 01f0 000C0240 		.word	1073875968
 427              		.cfi_endproc
 428              	.LFE5:
 430              	.Letext0:
 431              		.file 2 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\machine\\_default_types.h"
 432              		.file 3 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\sys\\_stdint.h"
 433              		.file 4 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/flipflop_irq_vectored/gpio.h"
