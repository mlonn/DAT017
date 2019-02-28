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
  15              		.align	1
  16              		.syntax unified
  17              		.code	16
  18              		.thumb_func
  19              		.fpu softvfp
  21              	graphic_ctrl_bit_set:
  22              	.LFB0:
  23              		.file 1 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/graphics.h"
   1:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** #ifndef GRAPHICS_H
   2:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** #define GRAPHICS_H
   3:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** #include "gpio.h"
   4:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** #define B_E 0x40 // Enable
   5:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** #define B_RST 0x20 // Reset
   6:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** #define B_CS2 0x10 // Controller Select 2
   7:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** #define B_CS1 8 // Controller Select 1
   8:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** #define B_SELECT 4 // 0 Graphics, 1 ASCII
   9:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** #define B_RW 2 // 0 Write, 1 Read
  10:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** #define B_RS 1 // 0 Command, 1 Data
  11:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
  12:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** #define LCD_ON 0x3F // Display on
  13:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** #define LCD_OFF 0x3E // Display off
  14:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** #define LCD_SET_ADD 0x40 // Set horizontal coordinate
  15:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** #define LCD_SET_PAGE 0xB8 // Set vertical coordinate
  16:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** #define LCD_DISP_START 0xC0 // Start address
  17:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** #define LCD_BUSY 0x80 // Read busy status
  18:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
  19:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static void graphic_ctrl_bit_set(uint8_t x) {
  24              		.loc 1 19 0
  25              		.cfi_startproc
  26              		@ args = 0, pretend = 0, frame = 16
  27              		@ frame_needed = 1, uses_anonymous_args = 0
  28 0000 80B5     		push	{r7, lr}
  29              		.cfi_def_cfa_offset 8
  30              		.cfi_offset 7, -8
  31              		.cfi_offset 14, -4
  32 0002 84B0     		sub	sp, sp, #16
  33              		.cfi_def_cfa_offset 24
  34 0004 00AF     		add	r7, sp, #0
  35              		.cfi_def_cfa_register 7
  36 0006 0200     		movs	r2, r0
  37 0008 FB1D     		adds	r3, r7, #7
  38 000a 1A70     		strb	r2, [r3]
  20:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     unsigned char c;
  21:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     c = GPIO_E.odrLow;
  39              		.loc 1 21 0
  40 000c 0C4A     		ldr	r2, .L2
  41 000e 0F21     		movs	r1, #15
  42 0010 7B18     		adds	r3, r7, r1
  43 0012 127D     		ldrb	r2, [r2, #20]
  44 0014 1A70     		strb	r2, [r3]
  22:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     c |= (~B_SELECT & x );
  45              		.loc 1 22 0
  46 0016 FB1D     		adds	r3, r7, #7
  47 0018 1B78     		ldrb	r3, [r3]
  48 001a 5BB2     		sxtb	r3, r3
  49 001c 0422     		movs	r2, #4
  50 001e 9343     		bics	r3, r2
  51 0020 5AB2     		sxtb	r2, r3
  52 0022 7B18     		adds	r3, r7, r1
  53 0024 1B78     		ldrb	r3, [r3]
  54 0026 5BB2     		sxtb	r3, r3
  55 0028 1343     		orrs	r3, r2
  56 002a 5AB2     		sxtb	r2, r3
  57 002c 7B18     		adds	r3, r7, r1
  58 002e 1A70     		strb	r2, [r3]
  23:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     GPIO_E.odrLow = c;
  59              		.loc 1 23 0
  60 0030 034A     		ldr	r2, .L2
  61 0032 7B18     		adds	r3, r7, r1
  62 0034 1B78     		ldrb	r3, [r3]
  63 0036 1375     		strb	r3, [r2, #20]
  24:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
  64              		.loc 1 24 0
  65 0038 C046     		nop
  66 003a BD46     		mov	sp, r7
  67 003c 04B0     		add	sp, sp, #16
  68              		@ sp needed
  69 003e 80BD     		pop	{r7, pc}
  70              	.L3:
  71              		.align	2
  72              	.L2:
  73 0040 00100240 		.word	1073876992
  74              		.cfi_endproc
  75              	.LFE0:
  77              		.align	1
  78              		.syntax unified
  79              		.code	16
  80              		.thumb_func
  81              		.fpu softvfp
  83              	graphic_ctrl_bit_clear:
  84              	.LFB1:
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static void graphic_ctrl_bit_clear(uint8_t x) {
  85              		.loc 1 25 0
  86              		.cfi_startproc
  87              		@ args = 0, pretend = 0, frame = 16
  88              		@ frame_needed = 1, uses_anonymous_args = 0
  89 0044 80B5     		push	{r7, lr}
  90              		.cfi_def_cfa_offset 8
  91              		.cfi_offset 7, -8
  92              		.cfi_offset 14, -4
  93 0046 84B0     		sub	sp, sp, #16
  94              		.cfi_def_cfa_offset 24
  95 0048 00AF     		add	r7, sp, #0
  96              		.cfi_def_cfa_register 7
  97 004a 0200     		movs	r2, r0
  98 004c FB1D     		adds	r3, r7, #7
  99 004e 1A70     		strb	r2, [r3]
  26:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     unsigned char c;
  27:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     c = GPIO_E.odrLow;
 100              		.loc 1 27 0
 101 0050 0F4A     		ldr	r2, .L5
 102 0052 0F20     		movs	r0, #15
 103 0054 3B18     		adds	r3, r7, r0
 104 0056 127D     		ldrb	r2, [r2, #20]
 105 0058 1A70     		strb	r2, [r3]
  28:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     c &= ~B_SELECT;
 106              		.loc 1 28 0
 107 005a 3B18     		adds	r3, r7, r0
 108 005c 3A18     		adds	r2, r7, r0
 109 005e 1278     		ldrb	r2, [r2]
 110 0060 0421     		movs	r1, #4
 111 0062 8A43     		bics	r2, r1
 112 0064 1A70     		strb	r2, [r3]
  29:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     c &= ~x;
 113              		.loc 1 29 0
 114 0066 FB1D     		adds	r3, r7, #7
 115 0068 1B78     		ldrb	r3, [r3]
 116 006a 5BB2     		sxtb	r3, r3
 117 006c DB43     		mvns	r3, r3
 118 006e 5BB2     		sxtb	r3, r3
 119 0070 3A18     		adds	r2, r7, r0
 120 0072 1278     		ldrb	r2, [r2]
 121 0074 52B2     		sxtb	r2, r2
 122 0076 1340     		ands	r3, r2
 123 0078 5AB2     		sxtb	r2, r3
 124 007a 3B18     		adds	r3, r7, r0
 125 007c 1A70     		strb	r2, [r3]
  30:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     GPIO_E.odrLow = c;
 126              		.loc 1 30 0
 127 007e 044A     		ldr	r2, .L5
 128 0080 3B18     		adds	r3, r7, r0
 129 0082 1B78     		ldrb	r3, [r3]
 130 0084 1375     		strb	r3, [r2, #20]
  31:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 131              		.loc 1 32 0
 132 0086 C046     		nop
 133 0088 BD46     		mov	sp, r7
 134 008a 04B0     		add	sp, sp, #16
 135              		@ sp needed
 136 008c 80BD     		pop	{r7, pc}
 137              	.L6:
 138 008e C046     		.align	2
 139              	.L5:
 140 0090 00100240 		.word	1073876992
 141              		.cfi_endproc
 142              	.LFE1:
 144              		.align	1
 145              		.syntax unified
 146              		.code	16
 147              		.thumb_func
 148              		.fpu softvfp
 150              	select_controller:
 151              	.LFB2:
  33:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
  34:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static void select_controller(uint8_t controller){
 152              		.loc 1 34 0
 153              		.cfi_startproc
 154              		@ args = 0, pretend = 0, frame = 8
 155              		@ frame_needed = 1, uses_anonymous_args = 0
 156 0094 80B5     		push	{r7, lr}
 157              		.cfi_def_cfa_offset 8
 158              		.cfi_offset 7, -8
 159              		.cfi_offset 14, -4
 160 0096 82B0     		sub	sp, sp, #8
 161              		.cfi_def_cfa_offset 16
 162 0098 00AF     		add	r7, sp, #0
 163              		.cfi_def_cfa_register 7
 164 009a 0200     		movs	r2, r0
 165 009c FB1D     		adds	r3, r7, #7
 166 009e 1A70     		strb	r2, [r3]
  35:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     switch(controller){
 167              		.loc 1 35 0
 168 00a0 FB1D     		adds	r3, r7, #7
 169 00a2 1B78     		ldrb	r3, [r3]
 170 00a4 082B     		cmp	r3, #8
 171 00a6 0CD0     		beq	.L9
 172 00a8 02DC     		bgt	.L10
 173 00aa 002B     		cmp	r3, #0
 174 00ac 05D0     		beq	.L11
  36:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         case 0:
  37:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_ctrl_bit_clear(B_CS1|B_CS2);
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         break;
  39:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         case B_CS1 :
  40:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_ctrl_bit_set(B_CS1);
  41:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_ctrl_bit_clear(B_CS2);
  42:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         break;
  43:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         case B_CS2 :
  44:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_ctrl_bit_set(B_CS2);
  45:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_ctrl_bit_clear(B_CS1);
  46:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         break;
  47:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         case B_CS1|B_CS2 :
  48:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_ctrl_bit_set(B_CS1|B_CS2);
  49:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         break;
  50:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     }
  51:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 175              		.loc 1 51 0
 176 00ae 1AE0     		b	.L14
 177              	.L10:
  35:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     switch(controller){
 178              		.loc 1 35 0
 179 00b0 102B     		cmp	r3, #16
 180 00b2 0DD0     		beq	.L12
 181 00b4 182B     		cmp	r3, #24
 182 00b6 12D0     		beq	.L13
 183              		.loc 1 51 0
 184 00b8 15E0     		b	.L14
 185              	.L11:
  37:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         break;
 186              		.loc 1 37 0
 187 00ba 1820     		movs	r0, #24
 188 00bc FFF7C2FF 		bl	graphic_ctrl_bit_clear
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         case B_CS1 :
 189              		.loc 1 38 0
 190 00c0 11E0     		b	.L8
 191              	.L9:
  40:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_ctrl_bit_clear(B_CS2);
 192              		.loc 1 40 0
 193 00c2 0820     		movs	r0, #8
 194 00c4 FFF79CFF 		bl	graphic_ctrl_bit_set
  41:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         break;
 195              		.loc 1 41 0
 196 00c8 1020     		movs	r0, #16
 197 00ca FFF7BBFF 		bl	graphic_ctrl_bit_clear
  42:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         case B_CS2 :
 198              		.loc 1 42 0
 199 00ce 0AE0     		b	.L8
 200              	.L12:
  44:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_ctrl_bit_clear(B_CS1);
 201              		.loc 1 44 0
 202 00d0 1020     		movs	r0, #16
 203 00d2 FFF795FF 		bl	graphic_ctrl_bit_set
  45:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         break;
 204              		.loc 1 45 0
 205 00d6 0820     		movs	r0, #8
 206 00d8 FFF7B4FF 		bl	graphic_ctrl_bit_clear
  46:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         case B_CS1|B_CS2 :
 207              		.loc 1 46 0
 208 00dc 03E0     		b	.L8
 209              	.L13:
  48:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         break;
 210              		.loc 1 48 0
 211 00de 1820     		movs	r0, #24
 212 00e0 FFF78EFF 		bl	graphic_ctrl_bit_set
  49:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     }
 213              		.loc 1 49 0
 214 00e4 C046     		nop
 215              	.L8:
 216              	.L14:
 217              		.loc 1 51 0
 218 00e6 C046     		nop
 219 00e8 BD46     		mov	sp, r7
 220 00ea 02B0     		add	sp, sp, #8
 221              		@ sp needed
 222 00ec 80BD     		pop	{r7, pc}
 223              		.cfi_endproc
 224              	.LFE2:
 226              		.align	1
 227              		.syntax unified
 228              		.code	16
 229              		.thumb_func
 230              		.fpu softvfp
 232              	graphic_wait_ready:
 233              	.LFB3:
  52:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static void graphic_wait_ready(void) {
 234              		.loc 1 52 0
 235              		.cfi_startproc
 236              		@ args = 0, pretend = 0, frame = 8
 237              		@ frame_needed = 1, uses_anonymous_args = 0
 238 00ee 80B5     		push	{r7, lr}
 239              		.cfi_def_cfa_offset 8
 240              		.cfi_offset 7, -8
 241              		.cfi_offset 14, -4
 242 00f0 82B0     		sub	sp, sp, #8
 243              		.cfi_def_cfa_offset 16
 244 00f2 00AF     		add	r7, sp, #0
 245              		.cfi_def_cfa_register 7
  53:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     uint8_t c;
  54:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_E);
 246              		.loc 1 54 0
 247 00f4 4020     		movs	r0, #64
 248 00f6 FFF7A5FF 		bl	graphic_ctrl_bit_clear
  55:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     GPIO_E.moder = 0x00005555; // 15-8 inputs, 7-0 outputs
 249              		.loc 1 55 0
 250 00fa 144B     		ldr	r3, .L21
 251 00fc 144A     		ldr	r2, .L21+4
 252 00fe 1A60     		str	r2, [r3]
  56:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_RS);
 253              		.loc 1 56 0
 254 0100 0120     		movs	r0, #1
 255 0102 FFF79FFF 		bl	graphic_ctrl_bit_clear
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_set(B_RW);
 256              		.loc 1 57 0
 257 0106 0220     		movs	r0, #2
 258 0108 FFF77AFF 		bl	graphic_ctrl_bit_set
  58:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     delay_500ns();
 259              		.loc 1 58 0
 260 010c FFF7FEFF 		bl	delay_500ns
 261              	.L18:
  59:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     while(1) {
  60:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_ctrl_bit_set(B_E);
 262              		.loc 1 60 0
 263 0110 4020     		movs	r0, #64
 264 0112 FFF775FF 		bl	graphic_ctrl_bit_set
  61:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         delay_500ns();
 265              		.loc 1 61 0
 266 0116 FFF7FEFF 		bl	delay_500ns
  62:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         c = GPIO_E.idrHigh & LCD_BUSY;
 267              		.loc 1 62 0
 268 011a 0C4B     		ldr	r3, .L21
 269 011c 5B7C     		ldrb	r3, [r3, #17]
 270 011e DAB2     		uxtb	r2, r3
 271 0120 FB1D     		adds	r3, r7, #7
 272 0122 7F21     		movs	r1, #127
 273 0124 8A43     		bics	r2, r1
 274 0126 1A70     		strb	r2, [r3]
  63:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_ctrl_bit_clear(B_E);
 275              		.loc 1 63 0
 276 0128 4020     		movs	r0, #64
 277 012a FFF78BFF 		bl	graphic_ctrl_bit_clear
  64:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         delay_500ns();
 278              		.loc 1 64 0
 279 012e FFF7FEFF 		bl	delay_500ns
  65:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         if( c == 0 ) break;
 280              		.loc 1 65 0
 281 0132 FB1D     		adds	r3, r7, #7
 282 0134 1B78     		ldrb	r3, [r3]
 283 0136 002B     		cmp	r3, #0
 284 0138 00D0     		beq	.L20
  60:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         delay_500ns();
 285              		.loc 1 60 0
 286 013a E9E7     		b	.L18
 287              	.L20:
 288              		.loc 1 65 0
 289 013c C046     		nop
  66:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     }
  67:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     GPIO_E.moder = 0x55555555; // 15-0 outputs
 290              		.loc 1 67 0
 291 013e 034B     		ldr	r3, .L21
 292 0140 044A     		ldr	r2, .L21+8
 293 0142 1A60     		str	r2, [r3]
  68:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 294              		.loc 1 68 0
 295 0144 C046     		nop
 296 0146 BD46     		mov	sp, r7
 297 0148 02B0     		add	sp, sp, #8
 298              		@ sp needed
 299 014a 80BD     		pop	{r7, pc}
 300              	.L22:
 301              		.align	2
 302              	.L21:
 303 014c 00100240 		.word	1073876992
 304 0150 55550000 		.word	21845
 305 0154 55555555 		.word	1431655765
 306              		.cfi_endproc
 307              	.LFE3:
 309              		.align	1
 310              		.syntax unified
 311              		.code	16
 312              		.thumb_func
 313              		.fpu softvfp
 315              	graphic_read:
 316              	.LFB4:
  69:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static uint8_t graphic_read(uint8_t controller) {
 317              		.loc 1 69 0
 318              		.cfi_startproc
 319              		@ args = 0, pretend = 0, frame = 16
 320              		@ frame_needed = 1, uses_anonymous_args = 0
 321 0158 80B5     		push	{r7, lr}
 322              		.cfi_def_cfa_offset 8
 323              		.cfi_offset 7, -8
 324              		.cfi_offset 14, -4
 325 015a 84B0     		sub	sp, sp, #16
 326              		.cfi_def_cfa_offset 24
 327 015c 00AF     		add	r7, sp, #0
 328              		.cfi_def_cfa_register 7
 329 015e 0200     		movs	r2, r0
 330 0160 FB1D     		adds	r3, r7, #7
 331 0162 1A70     		strb	r2, [r3]
  70:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     uint8_t c;
  71:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_E);
 332              		.loc 1 71 0
 333 0164 4020     		movs	r0, #64
 334 0166 FFF76DFF 		bl	graphic_ctrl_bit_clear
  72:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     GPIO_E.moder = 0x00005555; // 15-8 inputs, 7-0 outputs
 335              		.loc 1 72 0
 336 016a 1C4B     		ldr	r3, .L27
 337 016c 1C4A     		ldr	r2, .L27+4
 338 016e 1A60     		str	r2, [r3]
  73:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_set(B_RS|B_RW);
 339              		.loc 1 73 0
 340 0170 0320     		movs	r0, #3
 341 0172 FFF745FF 		bl	graphic_ctrl_bit_set
  74:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     select_controller(controller);
 342              		.loc 1 74 0
 343 0176 FB1D     		adds	r3, r7, #7
 344 0178 1B78     		ldrb	r3, [r3]
 345 017a 1800     		movs	r0, r3
 346 017c FFF78AFF 		bl	select_controller
  75:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     delay_500ns();
 347              		.loc 1 75 0
 348 0180 FFF7FEFF 		bl	delay_500ns
  76:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_set(B_E);
 349              		.loc 1 76 0
 350 0184 4020     		movs	r0, #64
 351 0186 FFF73BFF 		bl	graphic_ctrl_bit_set
  77:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     delay_500ns();
 352              		.loc 1 77 0
 353 018a FFF7FEFF 		bl	delay_500ns
  78:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     c = GPIO_E.idrHigh;
 354              		.loc 1 78 0
 355 018e 134A     		ldr	r2, .L27
 356 0190 0F23     		movs	r3, #15
 357 0192 FB18     		adds	r3, r7, r3
 358 0194 527C     		ldrb	r2, [r2, #17]
 359 0196 1A70     		strb	r2, [r3]
  79:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_E);
 360              		.loc 1 79 0
 361 0198 4020     		movs	r0, #64
 362 019a FFF753FF 		bl	graphic_ctrl_bit_clear
  80:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     GPIO_E.moder = 0x55555555; // 15-0 outputs
 363              		.loc 1 80 0
 364 019e 0F4B     		ldr	r3, .L27
 365 01a0 104A     		ldr	r2, .L27+8
 366 01a2 1A60     		str	r2, [r3]
  81:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     if( controller & B_CS1 ) {
 367              		.loc 1 81 0
 368 01a4 FB1D     		adds	r3, r7, #7
 369 01a6 1B78     		ldrb	r3, [r3]
 370 01a8 0822     		movs	r2, #8
 371 01aa 1340     		ands	r3, r2
 372 01ac 04D0     		beq	.L24
  82:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         select_controller(B_CS1);
 373              		.loc 1 82 0
 374 01ae 0820     		movs	r0, #8
 375 01b0 FFF770FF 		bl	select_controller
  83:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_wait_ready();
 376              		.loc 1 83 0
 377 01b4 FFF79BFF 		bl	graphic_wait_ready
 378              	.L24:
  84:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     }
  85:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     if( controller & B_CS2 ) {
 379              		.loc 1 85 0
 380 01b8 FB1D     		adds	r3, r7, #7
 381 01ba 1B78     		ldrb	r3, [r3]
 382 01bc 1022     		movs	r2, #16
 383 01be 1340     		ands	r3, r2
 384 01c0 04D0     		beq	.L25
  86:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         select_controller(B_CS2);
 385              		.loc 1 86 0
 386 01c2 1020     		movs	r0, #16
 387 01c4 FFF766FF 		bl	select_controller
  87:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_wait_ready();
 388              		.loc 1 87 0
 389 01c8 FFF791FF 		bl	graphic_wait_ready
 390              	.L25:
  88:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     }
  89:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     return c;
 391              		.loc 1 89 0
 392 01cc 0F23     		movs	r3, #15
 393 01ce FB18     		adds	r3, r7, r3
 394 01d0 1B78     		ldrb	r3, [r3]
  90:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 395              		.loc 1 90 0
 396 01d2 1800     		movs	r0, r3
 397 01d4 BD46     		mov	sp, r7
 398 01d6 04B0     		add	sp, sp, #16
 399              		@ sp needed
 400 01d8 80BD     		pop	{r7, pc}
 401              	.L28:
 402 01da C046     		.align	2
 403              	.L27:
 404 01dc 00100240 		.word	1073876992
 405 01e0 55550000 		.word	21845
 406 01e4 55555555 		.word	1431655765
 407              		.cfi_endproc
 408              	.LFE4:
 410              		.align	1
 411              		.syntax unified
 412              		.code	16
 413              		.thumb_func
 414              		.fpu softvfp
 416              	graphic_read_data:
 417              	.LFB5:
  91:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static uint8_t graphic_read_data(uint8_t controller) {
 418              		.loc 1 91 0
 419              		.cfi_startproc
 420              		@ args = 0, pretend = 0, frame = 8
 421              		@ frame_needed = 1, uses_anonymous_args = 0
 422 01e8 80B5     		push	{r7, lr}
 423              		.cfi_def_cfa_offset 8
 424              		.cfi_offset 7, -8
 425              		.cfi_offset 14, -4
 426 01ea 82B0     		sub	sp, sp, #8
 427              		.cfi_def_cfa_offset 16
 428 01ec 00AF     		add	r7, sp, #0
 429              		.cfi_def_cfa_register 7
 430 01ee 0200     		movs	r2, r0
 431 01f0 FB1D     		adds	r3, r7, #7
 432 01f2 1A70     		strb	r2, [r3]
  92:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_read(controller);
 433              		.loc 1 92 0
 434 01f4 FB1D     		adds	r3, r7, #7
 435 01f6 1B78     		ldrb	r3, [r3]
 436 01f8 1800     		movs	r0, r3
 437 01fa FFF7ADFF 		bl	graphic_read
  93:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     return graphic_read(controller);
 438              		.loc 1 93 0
 439 01fe FB1D     		adds	r3, r7, #7
 440 0200 1B78     		ldrb	r3, [r3]
 441 0202 1800     		movs	r0, r3
 442 0204 FFF7A8FF 		bl	graphic_read
 443 0208 0300     		movs	r3, r0
  94:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 444              		.loc 1 94 0
 445 020a 1800     		movs	r0, r3
 446 020c BD46     		mov	sp, r7
 447 020e 02B0     		add	sp, sp, #8
 448              		@ sp needed
 449 0210 80BD     		pop	{r7, pc}
 450              		.cfi_endproc
 451              	.LFE5:
 453              		.align	1
 454              		.syntax unified
 455              		.code	16
 456              		.thumb_func
 457              		.fpu softvfp
 459              	graphic_write:
 460              	.LFB6:
  95:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static void graphic_write(uint8_t value, uint8_t controller){
 461              		.loc 1 95 0
 462              		.cfi_startproc
 463              		@ args = 0, pretend = 0, frame = 8
 464              		@ frame_needed = 1, uses_anonymous_args = 0
 465 0212 80B5     		push	{r7, lr}
 466              		.cfi_def_cfa_offset 8
 467              		.cfi_offset 7, -8
 468              		.cfi_offset 14, -4
 469 0214 82B0     		sub	sp, sp, #8
 470              		.cfi_def_cfa_offset 16
 471 0216 00AF     		add	r7, sp, #0
 472              		.cfi_def_cfa_register 7
 473 0218 0200     		movs	r2, r0
 474 021a FB1D     		adds	r3, r7, #7
 475 021c 1A70     		strb	r2, [r3]
 476 021e BB1D     		adds	r3, r7, #6
 477 0220 0A1C     		adds	r2, r1, #0
 478 0222 1A70     		strb	r2, [r3]
  96:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     GPIO_E.odrHigh = value;
 479              		.loc 1 96 0
 480 0224 184A     		ldr	r2, .L34
 481 0226 FB1D     		adds	r3, r7, #7
 482 0228 1B78     		ldrb	r3, [r3]
 483 022a 5375     		strb	r3, [r2, #21]
  97:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     select_controller(controller);
 484              		.loc 1 97 0
 485 022c BB1D     		adds	r3, r7, #6
 486 022e 1B78     		ldrb	r3, [r3]
 487 0230 1800     		movs	r0, r3
 488 0232 FFF72FFF 		bl	select_controller
  98:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     delay_500ns();
 489              		.loc 1 98 0
 490 0236 FFF7FEFF 		bl	delay_500ns
  99:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_set(B_E);
 491              		.loc 1 99 0
 492 023a 4020     		movs	r0, #64
 493 023c FFF7E0FE 		bl	graphic_ctrl_bit_set
 100:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     delay_500ns();
 494              		.loc 1 100 0
 495 0240 FFF7FEFF 		bl	delay_500ns
 101:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_E);
 496              		.loc 1 101 0
 497 0244 4020     		movs	r0, #64
 498 0246 FFF7FDFE 		bl	graphic_ctrl_bit_clear
 102:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     
 103:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     if (controller && B_CS1) {
 499              		.loc 1 103 0
 500 024a BB1D     		adds	r3, r7, #6
 501 024c 1B78     		ldrb	r3, [r3]
 502 024e 002B     		cmp	r3, #0
 503 0250 04D0     		beq	.L32
 104:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             select_controller(B_CS1);
 504              		.loc 1 104 0
 505 0252 0820     		movs	r0, #8
 506 0254 FFF71EFF 		bl	select_controller
 105:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             graphic_wait_ready();
 507              		.loc 1 105 0
 508 0258 FFF749FF 		bl	graphic_wait_ready
 509              	.L32:
 106:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     }
 107:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     
 108:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     if (controller && B_CS2) {
 510              		.loc 1 108 0
 511 025c BB1D     		adds	r3, r7, #6
 512 025e 1B78     		ldrb	r3, [r3]
 513 0260 002B     		cmp	r3, #0
 514 0262 04D0     		beq	.L33
 109:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             select_controller(B_CS2);
 515              		.loc 1 109 0
 516 0264 1020     		movs	r0, #16
 517 0266 FFF715FF 		bl	select_controller
 110:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             graphic_wait_ready();
 518              		.loc 1 110 0
 519 026a FFF740FF 		bl	graphic_wait_ready
 520              	.L33:
 111:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     }
 112:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     
 113:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     GPIO_E.odrHigh = 0;
 521              		.loc 1 113 0
 522 026e 064B     		ldr	r3, .L34
 523 0270 0022     		movs	r2, #0
 524 0272 5A75     		strb	r2, [r3, #21]
 114:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_ctrl_bit_set(B_E);
 525              		.loc 1 114 0
 526 0274 4020     		movs	r0, #64
 527 0276 FFF7C3FE 		bl	graphic_ctrl_bit_set
 115:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         select_controller(0);
 528              		.loc 1 115 0
 529 027a 0020     		movs	r0, #0
 530 027c FFF70AFF 		bl	select_controller
 116:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     
 117:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****  
 118:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 531              		.loc 1 118 0
 532 0280 C046     		nop
 533 0282 BD46     		mov	sp, r7
 534 0284 02B0     		add	sp, sp, #8
 535              		@ sp needed
 536 0286 80BD     		pop	{r7, pc}
 537              	.L35:
 538              		.align	2
 539              	.L34:
 540 0288 00100240 		.word	1073876992
 541              		.cfi_endproc
 542              	.LFE6:
 544              		.align	1
 545              		.syntax unified
 546              		.code	16
 547              		.thumb_func
 548              		.fpu softvfp
 550              	graphic_write_command:
 551              	.LFB7:
 119:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static void graphic_write_command(uint8_t command, uint8_t controller) {
 552              		.loc 1 119 0
 553              		.cfi_startproc
 554              		@ args = 0, pretend = 0, frame = 8
 555              		@ frame_needed = 1, uses_anonymous_args = 0
 556 028c 80B5     		push	{r7, lr}
 557              		.cfi_def_cfa_offset 8
 558              		.cfi_offset 7, -8
 559              		.cfi_offset 14, -4
 560 028e 82B0     		sub	sp, sp, #8
 561              		.cfi_def_cfa_offset 16
 562 0290 00AF     		add	r7, sp, #0
 563              		.cfi_def_cfa_register 7
 564 0292 0200     		movs	r2, r0
 565 0294 FB1D     		adds	r3, r7, #7
 566 0296 1A70     		strb	r2, [r3]
 567 0298 BB1D     		adds	r3, r7, #6
 568 029a 0A1C     		adds	r2, r1, #0
 569 029c 1A70     		strb	r2, [r3]
 120:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_E);
 570              		.loc 1 120 0
 571 029e 4020     		movs	r0, #64
 572 02a0 FFF7D0FE 		bl	graphic_ctrl_bit_clear
 121:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     select_controller(controller);
 573              		.loc 1 121 0
 574 02a4 BB1D     		adds	r3, r7, #6
 575 02a6 1B78     		ldrb	r3, [r3]
 576 02a8 1800     		movs	r0, r3
 577 02aa FFF7F3FE 		bl	select_controller
 122:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_RS);
 578              		.loc 1 122 0
 579 02ae 0120     		movs	r0, #1
 580 02b0 FFF7C8FE 		bl	graphic_ctrl_bit_clear
 123:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_RW);
 581              		.loc 1 123 0
 582 02b4 0220     		movs	r0, #2
 583 02b6 FFF7C5FE 		bl	graphic_ctrl_bit_clear
 124:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_write(command, controller);
 584              		.loc 1 124 0
 585 02ba BB1D     		adds	r3, r7, #6
 586 02bc 1A78     		ldrb	r2, [r3]
 587 02be FB1D     		adds	r3, r7, #7
 588 02c0 1B78     		ldrb	r3, [r3]
 589 02c2 1100     		movs	r1, r2
 590 02c4 1800     		movs	r0, r3
 591 02c6 FFF7A4FF 		bl	graphic_write
 125:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 592              		.loc 1 125 0
 593 02ca C046     		nop
 594 02cc BD46     		mov	sp, r7
 595 02ce 02B0     		add	sp, sp, #8
 596              		@ sp needed
 597 02d0 80BD     		pop	{r7, pc}
 598              		.cfi_endproc
 599              	.LFE7:
 601              		.align	1
 602              		.syntax unified
 603              		.code	16
 604              		.thumb_func
 605              		.fpu softvfp
 607              	graphic_write_data:
 608              	.LFB8:
 126:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static void graphic_write_data(uint8_t data, uint8_t controller){
 609              		.loc 1 126 0
 610              		.cfi_startproc
 611              		@ args = 0, pretend = 0, frame = 8
 612              		@ frame_needed = 1, uses_anonymous_args = 0
 613 02d2 80B5     		push	{r7, lr}
 614              		.cfi_def_cfa_offset 8
 615              		.cfi_offset 7, -8
 616              		.cfi_offset 14, -4
 617 02d4 82B0     		sub	sp, sp, #8
 618              		.cfi_def_cfa_offset 16
 619 02d6 00AF     		add	r7, sp, #0
 620              		.cfi_def_cfa_register 7
 621 02d8 0200     		movs	r2, r0
 622 02da FB1D     		adds	r3, r7, #7
 623 02dc 1A70     		strb	r2, [r3]
 624 02de BB1D     		adds	r3, r7, #6
 625 02e0 0A1C     		adds	r2, r1, #0
 626 02e2 1A70     		strb	r2, [r3]
 127:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_E);
 627              		.loc 1 127 0
 628 02e4 4020     		movs	r0, #64
 629 02e6 FFF7ADFE 		bl	graphic_ctrl_bit_clear
 128:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     select_controller(controller);
 630              		.loc 1 128 0
 631 02ea BB1D     		adds	r3, r7, #6
 632 02ec 1B78     		ldrb	r3, [r3]
 633 02ee 1800     		movs	r0, r3
 634 02f0 FFF7D0FE 		bl	select_controller
 129:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_set(B_RS);
 635              		.loc 1 129 0
 636 02f4 0120     		movs	r0, #1
 637 02f6 FFF783FE 		bl	graphic_ctrl_bit_set
 130:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_RW);
 638              		.loc 1 130 0
 639 02fa 0220     		movs	r0, #2
 640 02fc FFF7A2FE 		bl	graphic_ctrl_bit_clear
 131:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_write(data, controller);
 641              		.loc 1 131 0
 642 0300 BB1D     		adds	r3, r7, #6
 643 0302 1A78     		ldrb	r2, [r3]
 644 0304 FB1D     		adds	r3, r7, #7
 645 0306 1B78     		ldrb	r3, [r3]
 646 0308 1100     		movs	r1, r2
 647 030a 1800     		movs	r0, r3
 648 030c FFF781FF 		bl	graphic_write
 132:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 649              		.loc 1 132 0
 650 0310 C046     		nop
 651 0312 BD46     		mov	sp, r7
 652 0314 02B0     		add	sp, sp, #8
 653              		@ sp needed
 654 0316 80BD     		pop	{r7, pc}
 655              		.cfi_endproc
 656              	.LFE8:
 658              		.align	1
 659              		.global	graphic_clear_screen
 660              		.syntax unified
 661              		.code	16
 662              		.thumb_func
 663              		.fpu softvfp
 665              	graphic_clear_screen:
 666              	.LFB9:
 133:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** void graphic_clear_screen(void){
 667              		.loc 1 133 0
 668              		.cfi_startproc
 669              		@ args = 0, pretend = 0, frame = 8
 670              		@ frame_needed = 1, uses_anonymous_args = 0
 671 0318 80B5     		push	{r7, lr}
 672              		.cfi_def_cfa_offset 8
 673              		.cfi_offset 7, -8
 674              		.cfi_offset 14, -4
 675 031a 82B0     		sub	sp, sp, #8
 676              		.cfi_def_cfa_offset 16
 677 031c 00AF     		add	r7, sp, #0
 678              		.cfi_def_cfa_register 7
 679              	.LBB2:
 134:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         for(int page = 0; page < 8; page++){
 680              		.loc 1 134 0
 681 031e 0023     		movs	r3, #0
 682 0320 7B60     		str	r3, [r7, #4]
 683 0322 1EE0     		b	.L39
 684              	.L42:
 135:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             graphic_write_command(LCD_SET_PAGE | page, B_CS1|B_CS2);
 685              		.loc 1 135 0
 686 0324 7B68     		ldr	r3, [r7, #4]
 687 0326 5BB2     		sxtb	r3, r3
 688 0328 4822     		movs	r2, #72
 689 032a 5242     		rsbs	r2, r2, #0
 690 032c 1343     		orrs	r3, r2
 691 032e 5BB2     		sxtb	r3, r3
 692 0330 DBB2     		uxtb	r3, r3
 693 0332 1821     		movs	r1, #24
 694 0334 1800     		movs	r0, r3
 695 0336 FFF7A9FF 		bl	graphic_write_command
 136:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             graphic_write_command(LCD_SET_ADD | 0, B_CS1|B_CS2);
 696              		.loc 1 136 0
 697 033a 1821     		movs	r1, #24
 698 033c 4020     		movs	r0, #64
 699 033e FFF7A5FF 		bl	graphic_write_command
 700              	.LBB3:
 137:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             for (int add = 0; add < 64 ;add++){
 701              		.loc 1 137 0
 702 0342 0023     		movs	r3, #0
 703 0344 3B60     		str	r3, [r7]
 704 0346 06E0     		b	.L40
 705              	.L41:
 138:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****                 graphic_write_data(0, B_CS1|B_CS2);
 706              		.loc 1 138 0 discriminator 3
 707 0348 1821     		movs	r1, #24
 708 034a 0020     		movs	r0, #0
 709 034c FFF7C1FF 		bl	graphic_write_data
 137:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             for (int add = 0; add < 64 ;add++){
 710              		.loc 1 137 0 discriminator 3
 711 0350 3B68     		ldr	r3, [r7]
 712 0352 0133     		adds	r3, r3, #1
 713 0354 3B60     		str	r3, [r7]
 714              	.L40:
 137:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             for (int add = 0; add < 64 ;add++){
 715              		.loc 1 137 0 is_stmt 0 discriminator 1
 716 0356 3B68     		ldr	r3, [r7]
 717 0358 3F2B     		cmp	r3, #63
 718 035a F5DD     		ble	.L41
 719              	.LBE3:
 134:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             graphic_write_command(LCD_SET_PAGE | page, B_CS1|B_CS2);
 720              		.loc 1 134 0 is_stmt 1 discriminator 2
 721 035c 7B68     		ldr	r3, [r7, #4]
 722 035e 0133     		adds	r3, r3, #1
 723 0360 7B60     		str	r3, [r7, #4]
 724              	.L39:
 134:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             graphic_write_command(LCD_SET_PAGE | page, B_CS1|B_CS2);
 725              		.loc 1 134 0 is_stmt 0 discriminator 1
 726 0362 7B68     		ldr	r3, [r7, #4]
 727 0364 072B     		cmp	r3, #7
 728 0366 DDDD     		ble	.L42
 729              	.LBE2:
 139:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             }
 140:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         }
 141:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 730              		.loc 1 141 0 is_stmt 1
 731 0368 C046     		nop
 732 036a BD46     		mov	sp, r7
 733 036c 02B0     		add	sp, sp, #8
 734              		@ sp needed
 735 036e 80BD     		pop	{r7, pc}
 736              		.cfi_endproc
 737              	.LFE9:
 739              		.align	1
 740              		.global	graphic_initialize
 741              		.syntax unified
 742              		.code	16
 743              		.thumb_func
 744              		.fpu softvfp
 746              	graphic_initialize:
 747              	.LFB10:
 142:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 143:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** void graphic_initialize(void) {
 748              		.loc 1 143 0
 749              		.cfi_startproc
 750              		@ args = 0, pretend = 0, frame = 0
 751              		@ frame_needed = 1, uses_anonymous_args = 0
 752 0370 80B5     		push	{r7, lr}
 753              		.cfi_def_cfa_offset 8
 754              		.cfi_offset 7, -8
 755              		.cfi_offset 14, -4
 756 0372 00AF     		add	r7, sp, #0
 757              		.cfi_def_cfa_register 7
 144:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_set(B_E);
 758              		.loc 1 144 0
 759 0374 4020     		movs	r0, #64
 760 0376 FFF743FE 		bl	graphic_ctrl_bit_set
 145:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     delay_micro(10);
 761              		.loc 1 145 0
 762 037a 0A20     		movs	r0, #10
 763 037c FFF7FEFF 		bl	delay_micro
 146:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
 764              		.loc 1 146 0
 765 0380 7820     		movs	r0, #120
 766 0382 FFF75FFE 		bl	graphic_ctrl_bit_clear
 147:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     delay_milli(30);
 767              		.loc 1 147 0
 768 0386 1E20     		movs	r0, #30
 769 0388 FFF7FEFF 		bl	delay_milli
 148:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_set(B_RST);
 770              		.loc 1 148 0
 771 038c 2020     		movs	r0, #32
 772 038e FFF737FE 		bl	graphic_ctrl_bit_set
 149:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     delay_milli(100);
 773              		.loc 1 149 0
 774 0392 6420     		movs	r0, #100
 775 0394 FFF7FEFF 		bl	delay_milli
 150:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_write_command(LCD_OFF, B_CS1|B_CS2);
 776              		.loc 1 150 0
 777 0398 1821     		movs	r1, #24
 778 039a 3E20     		movs	r0, #62
 779 039c FFF776FF 		bl	graphic_write_command
 151:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_write_command(LCD_ON, B_CS1|B_CS2);
 780              		.loc 1 151 0
 781 03a0 1821     		movs	r1, #24
 782 03a2 3F20     		movs	r0, #63
 783 03a4 FFF772FF 		bl	graphic_write_command
 152:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_write_command(LCD_DISP_START, B_CS1|B_CS2);
 784              		.loc 1 152 0
 785 03a8 1821     		movs	r1, #24
 786 03aa C020     		movs	r0, #192
 787 03ac FFF76EFF 		bl	graphic_write_command
 153:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_write_command(LCD_SET_ADD, B_CS1|B_CS2);
 788              		.loc 1 153 0
 789 03b0 1821     		movs	r1, #24
 790 03b2 4020     		movs	r0, #64
 791 03b4 FFF76AFF 		bl	graphic_write_command
 154:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_write_command(LCD_SET_PAGE, B_CS1|B_CS2);
 792              		.loc 1 154 0
 793 03b8 1821     		movs	r1, #24
 794 03ba B820     		movs	r0, #184
 795 03bc FFF766FF 		bl	graphic_write_command
 155:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     select_controller(0);
 796              		.loc 1 155 0
 797 03c0 0020     		movs	r0, #0
 798 03c2 FFF767FE 		bl	select_controller
 156:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 799              		.loc 1 156 0
 800 03c6 C046     		nop
 801 03c8 BD46     		mov	sp, r7
 802              		@ sp needed
 803 03ca 80BD     		pop	{r7, pc}
 804              		.cfi_endproc
 805              	.LFE10:
 807              		.comm	backBuffer,1024,4
 808              		.align	1
 809              		.global	clear_backBuffer
 810              		.syntax unified
 811              		.code	16
 812              		.thumb_func
 813              		.fpu softvfp
 815              	clear_backBuffer:
 816              	.LFB11:
 157:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 158:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** uint8_t backBuffer[1024]; // 128 * 64 / 8
 159:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 160:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 161:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** void clear_backBuffer() {
 817              		.loc 1 161 0
 818              		.cfi_startproc
 819              		@ args = 0, pretend = 0, frame = 8
 820              		@ frame_needed = 1, uses_anonymous_args = 0
 821 03cc 80B5     		push	{r7, lr}
 822              		.cfi_def_cfa_offset 8
 823              		.cfi_offset 7, -8
 824              		.cfi_offset 14, -4
 825 03ce 82B0     		sub	sp, sp, #8
 826              		.cfi_def_cfa_offset 16
 827 03d0 00AF     		add	r7, sp, #0
 828              		.cfi_def_cfa_register 7
 162:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	int i;
 163:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	for (i = 0; i < 1024; i++){
 829              		.loc 1 163 0
 830 03d2 0023     		movs	r3, #0
 831 03d4 7B60     		str	r3, [r7, #4]
 832 03d6 07E0     		b	.L45
 833              	.L46:
 164:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		backBuffer[i] = 0;
 834              		.loc 1 164 0 discriminator 3
 835 03d8 074A     		ldr	r2, .L47
 836 03da 7B68     		ldr	r3, [r7, #4]
 837 03dc D318     		adds	r3, r2, r3
 838 03de 0022     		movs	r2, #0
 839 03e0 1A70     		strb	r2, [r3]
 163:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		backBuffer[i] = 0;
 840              		.loc 1 163 0 discriminator 3
 841 03e2 7B68     		ldr	r3, [r7, #4]
 842 03e4 0133     		adds	r3, r3, #1
 843 03e6 7B60     		str	r3, [r7, #4]
 844              	.L45:
 163:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		backBuffer[i] = 0;
 845              		.loc 1 163 0 is_stmt 0 discriminator 1
 846 03e8 7B68     		ldr	r3, [r7, #4]
 847 03ea 044A     		ldr	r2, .L47+4
 848 03ec 9342     		cmp	r3, r2
 849 03ee F3DD     		ble	.L46
 165:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	}
 166:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 850              		.loc 1 166 0 is_stmt 1
 851 03f0 C046     		nop
 852 03f2 BD46     		mov	sp, r7
 853 03f4 02B0     		add	sp, sp, #8
 854              		@ sp needed
 855 03f6 80BD     		pop	{r7, pc}
 856              	.L48:
 857              		.align	2
 858              	.L47:
 859 03f8 00000000 		.word	backBuffer
 860 03fc FF030000 		.word	1023
 861              		.cfi_endproc
 862              	.LFE11:
 864              		.align	1
 865              		.global	graphic_draw_screen
 866              		.syntax unified
 867              		.code	16
 868              		.thumb_func
 869              		.fpu softvfp
 871              	graphic_draw_screen:
 872              	.LFB12:
 167:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 168:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 169:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** void graphic_draw_screen(void) {
 873              		.loc 1 169 0
 874              		.cfi_startproc
 875              		@ args = 0, pretend = 0, frame = 16
 876              		@ frame_needed = 1, uses_anonymous_args = 0
 877 0400 80B5     		push	{r7, lr}
 878              		.cfi_def_cfa_offset 8
 879              		.cfi_offset 7, -8
 880              		.cfi_offset 14, -4
 881 0402 84B0     		sub	sp, sp, #16
 882              		.cfi_def_cfa_offset 24
 883 0404 00AF     		add	r7, sp, #0
 884              		.cfi_def_cfa_register 7
 170:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	uint8_t i, j, controller, c;
 171:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	unsigned int k = 0;
 885              		.loc 1 171 0
 886 0406 0023     		movs	r3, #0
 887 0408 BB60     		str	r3, [r7, #8]
 172:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	for(c = 0; c < 2; c++) {
 888              		.loc 1 172 0
 889 040a 0D23     		movs	r3, #13
 890 040c FB18     		adds	r3, r7, r3
 891 040e 0022     		movs	r2, #0
 892 0410 1A70     		strb	r2, [r3]
 893 0412 4FE0     		b	.L50
 894              	.L57:
 173:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		controller = (c == 0) ? B_CS1 : B_CS2;
 895              		.loc 1 173 0
 896 0414 0D23     		movs	r3, #13
 897 0416 FB18     		adds	r3, r7, r3
 898 0418 1B78     		ldrb	r3, [r3]
 899 041a 002B     		cmp	r3, #0
 900 041c 01D1     		bne	.L51
 901              		.loc 1 173 0 is_stmt 0 discriminator 1
 902 041e 0822     		movs	r2, #8
 903 0420 00E0     		b	.L52
 904              	.L51:
 905              		.loc 1 173 0 discriminator 2
 906 0422 1022     		movs	r2, #16
 907              	.L52:
 908              		.loc 1 173 0 discriminator 4
 909 0424 FB1D     		adds	r3, r7, #7
 910 0426 1A70     		strb	r2, [r3]
 174:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		for(j = 0; j < 8; j++) {
 911              		.loc 1 174 0 is_stmt 1 discriminator 4
 912 0428 0E23     		movs	r3, #14
 913 042a FB18     		adds	r3, r7, r3
 914 042c 0022     		movs	r2, #0
 915 042e 1A70     		strb	r2, [r3]
 916 0430 35E0     		b	.L53
 917              	.L56:
 175:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			graphic_write_command(LCD_SET_PAGE | j, controller);
 918              		.loc 1 175 0
 919 0432 0E23     		movs	r3, #14
 920 0434 FB18     		adds	r3, r7, r3
 921 0436 1B78     		ldrb	r3, [r3]
 922 0438 4822     		movs	r2, #72
 923 043a 5242     		rsbs	r2, r2, #0
 924 043c 1343     		orrs	r3, r2
 925 043e DAB2     		uxtb	r2, r3
 926 0440 FB1D     		adds	r3, r7, #7
 927 0442 1B78     		ldrb	r3, [r3]
 928 0444 1900     		movs	r1, r3
 929 0446 1000     		movs	r0, r2
 930 0448 FFF720FF 		bl	graphic_write_command
 176:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			graphic_write_command(LCD_SET_ADD | 0, controller);
 931              		.loc 1 176 0
 932 044c FB1D     		adds	r3, r7, #7
 933 044e 1B78     		ldrb	r3, [r3]
 934 0450 1900     		movs	r1, r3
 935 0452 4020     		movs	r0, #64
 936 0454 FFF71AFF 		bl	graphic_write_command
 177:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			for(i = 0; i <= 63; i++, k++) {
 937              		.loc 1 177 0
 938 0458 0F23     		movs	r3, #15
 939 045a FB18     		adds	r3, r7, r3
 940 045c 0022     		movs	r2, #0
 941 045e 1A70     		strb	r2, [r3]
 942 0460 12E0     		b	.L54
 943              	.L55:
 178:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 				graphic_write_data(backBuffer[k], controller);
 944              		.loc 1 178 0 discriminator 3
 945 0462 194A     		ldr	r2, .L58
 946 0464 BB68     		ldr	r3, [r7, #8]
 947 0466 D318     		adds	r3, r2, r3
 948 0468 1A78     		ldrb	r2, [r3]
 949 046a FB1D     		adds	r3, r7, #7
 950 046c 1B78     		ldrb	r3, [r3]
 951 046e 1900     		movs	r1, r3
 952 0470 1000     		movs	r0, r2
 953 0472 FFF72EFF 		bl	graphic_write_data
 177:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			for(i = 0; i <= 63; i++, k++) {
 954              		.loc 1 177 0 discriminator 3
 955 0476 0F21     		movs	r1, #15
 956 0478 7B18     		adds	r3, r7, r1
 957 047a 1A78     		ldrb	r2, [r3]
 958 047c 7B18     		adds	r3, r7, r1
 959 047e 0132     		adds	r2, r2, #1
 960 0480 1A70     		strb	r2, [r3]
 961 0482 BB68     		ldr	r3, [r7, #8]
 962 0484 0133     		adds	r3, r3, #1
 963 0486 BB60     		str	r3, [r7, #8]
 964              	.L54:
 177:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			for(i = 0; i <= 63; i++, k++) {
 965              		.loc 1 177 0 is_stmt 0 discriminator 1
 966 0488 0F23     		movs	r3, #15
 967 048a FB18     		adds	r3, r7, r3
 968 048c 1B78     		ldrb	r3, [r3]
 969 048e 3F2B     		cmp	r3, #63
 970 0490 E7D9     		bls	.L55
 174:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			graphic_write_command(LCD_SET_PAGE | j, controller);
 971              		.loc 1 174 0 is_stmt 1 discriminator 2
 972 0492 0E21     		movs	r1, #14
 973 0494 7B18     		adds	r3, r7, r1
 974 0496 1A78     		ldrb	r2, [r3]
 975 0498 7B18     		adds	r3, r7, r1
 976 049a 0132     		adds	r2, r2, #1
 977 049c 1A70     		strb	r2, [r3]
 978              	.L53:
 174:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			graphic_write_command(LCD_SET_PAGE | j, controller);
 979              		.loc 1 174 0 is_stmt 0 discriminator 1
 980 049e 0E23     		movs	r3, #14
 981 04a0 FB18     		adds	r3, r7, r3
 982 04a2 1B78     		ldrb	r3, [r3]
 983 04a4 072B     		cmp	r3, #7
 984 04a6 C4D9     		bls	.L56
 172:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		controller = (c == 0) ? B_CS1 : B_CS2;
 985              		.loc 1 172 0 is_stmt 1 discriminator 2
 986 04a8 0D21     		movs	r1, #13
 987 04aa 7B18     		adds	r3, r7, r1
 988 04ac 1A78     		ldrb	r2, [r3]
 989 04ae 7B18     		adds	r3, r7, r1
 990 04b0 0132     		adds	r2, r2, #1
 991 04b2 1A70     		strb	r2, [r3]
 992              	.L50:
 172:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		controller = (c == 0) ? B_CS1 : B_CS2;
 993              		.loc 1 172 0 is_stmt 0 discriminator 1
 994 04b4 0D23     		movs	r3, #13
 995 04b6 FB18     		adds	r3, r7, r3
 996 04b8 1B78     		ldrb	r3, [r3]
 997 04ba 012B     		cmp	r3, #1
 998 04bc AAD9     		bls	.L57
 179:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			}
 180:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		}
 181:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	}
 182:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 999              		.loc 1 182 0 is_stmt 1
 1000 04be C046     		nop
 1001 04c0 BD46     		mov	sp, r7
 1002 04c2 04B0     		add	sp, sp, #16
 1003              		@ sp needed
 1004 04c4 80BD     		pop	{r7, pc}
 1005              	.L59:
 1006 04c6 C046     		.align	2
 1007              	.L58:
 1008 04c8 00000000 		.word	backBuffer
 1009              		.cfi_endproc
 1010              	.LFE12:
 1012              		.align	1
 1013              		.global	pixel
 1014              		.syntax unified
 1015              		.code	16
 1016              		.thumb_func
 1017              		.fpu softvfp
 1019              	pixel:
 1020              	.LFB13:
 183:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 184:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** void pixel(int x, int y) {
 1021              		.loc 1 184 0
 1022              		.cfi_startproc
 1023              		@ args = 0, pretend = 0, frame = 16
 1024              		@ frame_needed = 1, uses_anonymous_args = 0
 1025 04cc 80B5     		push	{r7, lr}
 1026              		.cfi_def_cfa_offset 8
 1027              		.cfi_offset 7, -8
 1028              		.cfi_offset 14, -4
 1029 04ce 84B0     		sub	sp, sp, #16
 1030              		.cfi_def_cfa_offset 24
 1031 04d0 00AF     		add	r7, sp, #0
 1032              		.cfi_def_cfa_register 7
 1033 04d2 7860     		str	r0, [r7, #4]
 1034 04d4 3960     		str	r1, [r7]
 185:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	uint8_t mask;
 186:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	int index = 0;
 1035              		.loc 1 186 0
 1036 04d6 0023     		movs	r3, #0
 1037 04d8 FB60     		str	r3, [r7, #12]
 187:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	if( (x > 128 ) || (x < 1) || (y > 64) || (y < 1) ) {
 1038              		.loc 1 187 0
 1039 04da 7B68     		ldr	r3, [r7, #4]
 1040 04dc 802B     		cmp	r3, #128
 1041 04de 3DDC     		bgt	.L67
 1042              		.loc 1 187 0 is_stmt 0 discriminator 1
 1043 04e0 7B68     		ldr	r3, [r7, #4]
 1044 04e2 002B     		cmp	r3, #0
 1045 04e4 3ADD     		ble	.L67
 1046              		.loc 1 187 0 discriminator 2
 1047 04e6 3B68     		ldr	r3, [r7]
 1048 04e8 402B     		cmp	r3, #64
 1049 04ea 37DC     		bgt	.L67
 1050              		.loc 1 187 0 discriminator 3
 1051 04ec 3B68     		ldr	r3, [r7]
 1052 04ee 002B     		cmp	r3, #0
 1053 04f0 34DD     		ble	.L67
 188:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		return;
 189:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	}
 190:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	mask = 1 << ((y-1)%8);
 1054              		.loc 1 190 0 is_stmt 1
 1055 04f2 3B68     		ldr	r3, [r7]
 1056 04f4 013B     		subs	r3, r3, #1
 1057 04f6 1B4A     		ldr	r2, .L68
 1058 04f8 1340     		ands	r3, r2
 1059 04fa 04D5     		bpl	.L64
 1060 04fc 013B     		subs	r3, r3, #1
 1061 04fe 0822     		movs	r2, #8
 1062 0500 5242     		rsbs	r2, r2, #0
 1063 0502 1343     		orrs	r3, r2
 1064 0504 0133     		adds	r3, r3, #1
 1065              	.L64:
 1066 0506 1A00     		movs	r2, r3
 1067 0508 0123     		movs	r3, #1
 1068 050a 9340     		lsls	r3, r3, r2
 1069 050c 1A00     		movs	r2, r3
 1070 050e 0B23     		movs	r3, #11
 1071 0510 FB18     		adds	r3, r7, r3
 1072 0512 1A70     		strb	r2, [r3]
 191:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	if(x > 64) {
 1073              		.loc 1 191 0
 1074 0514 7B68     		ldr	r3, [r7, #4]
 1075 0516 402B     		cmp	r3, #64
 1076 0518 05DD     		ble	.L65
 192:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		x -= 65;
 1077              		.loc 1 192 0
 1078 051a 7B68     		ldr	r3, [r7, #4]
 1079 051c 413B     		subs	r3, r3, #65
 1080 051e 7B60     		str	r3, [r7, #4]
 193:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		index = 512;
 1081              		.loc 1 193 0
 1082 0520 8023     		movs	r3, #128
 1083 0522 9B00     		lsls	r3, r3, #2
 1084 0524 FB60     		str	r3, [r7, #12]
 1085              	.L65:
 194:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	}
 195:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	index += x + ((y-1)/8)*64;
 1086              		.loc 1 195 0
 1087 0526 3B68     		ldr	r3, [r7]
 1088 0528 013B     		subs	r3, r3, #1
 1089 052a 002B     		cmp	r3, #0
 1090 052c 00DA     		bge	.L66
 1091 052e 0733     		adds	r3, r3, #7
 1092              	.L66:
 1093 0530 DB10     		asrs	r3, r3, #3
 1094 0532 9A01     		lsls	r2, r3, #6
 1095 0534 7B68     		ldr	r3, [r7, #4]
 1096 0536 D318     		adds	r3, r2, r3
 1097 0538 FA68     		ldr	r2, [r7, #12]
 1098 053a D318     		adds	r3, r2, r3
 1099 053c FB60     		str	r3, [r7, #12]
 196:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	backBuffer[index] |= mask;
 1100              		.loc 1 196 0
 1101 053e 0A4A     		ldr	r2, .L68+4
 1102 0540 FB68     		ldr	r3, [r7, #12]
 1103 0542 D318     		adds	r3, r2, r3
 1104 0544 1A78     		ldrb	r2, [r3]
 1105 0546 0B23     		movs	r3, #11
 1106 0548 FB18     		adds	r3, r7, r3
 1107 054a 1B78     		ldrb	r3, [r3]
 1108 054c 1343     		orrs	r3, r2
 1109 054e D9B2     		uxtb	r1, r3
 1110 0550 054A     		ldr	r2, .L68+4
 1111 0552 FB68     		ldr	r3, [r7, #12]
 1112 0554 D318     		adds	r3, r2, r3
 1113 0556 0A1C     		adds	r2, r1, #0
 1114 0558 1A70     		strb	r2, [r3]
 1115 055a 00E0     		b	.L60
 1116              	.L67:
 188:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	}
 1117              		.loc 1 188 0
 1118 055c C046     		nop
 1119              	.L60:
 197:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 1120              		.loc 1 197 0
 1121 055e BD46     		mov	sp, r7
 1122 0560 04B0     		add	sp, sp, #16
 1123              		@ sp needed
 1124 0562 80BD     		pop	{r7, pc}
 1125              	.L69:
 1126              		.align	2
 1127              	.L68:
 1128 0564 07000080 		.word	-2147483641
 1129 0568 00000000 		.word	backBuffer
 1130              		.cfi_endproc
 1131              	.LFE13:
 1133              		.global	ball_geometry
 1134              		.data
 1135              		.align	2
 1138              	ball_geometry:
 1139 0000 0C000000 		.word	12
 1140 0004 04000000 		.word	4
 1141 0008 04000000 		.word	4
 1142 000c 00       		.byte	0
 1143 000d 01       		.byte	1
 1144 000e 00       		.byte	0
 1145 000f 02       		.byte	2
 1146 0010 01       		.byte	1
 1147 0011 00       		.byte	0
 1148 0012 01       		.byte	1
 1149 0013 01       		.byte	1
 1150 0014 01       		.byte	1
 1151 0015 02       		.byte	2
 1152 0016 01       		.byte	1
 1153 0017 03       		.byte	3
 1154 0018 02       		.byte	2
 1155 0019 00       		.byte	0
 1156 001a 02       		.byte	2
 1157 001b 01       		.byte	1
 1158 001c 02       		.byte	2
 1159 001d 02       		.byte	2
 1160 001e 02       		.byte	2
 1161 001f 03       		.byte	3
 1162 0020 03       		.byte	3
 1163 0021 01       		.byte	1
 1164 0022 03       		.byte	3
 1165 0023 02       		.byte	2
 1166 0024 00000000 		.space	16
 1166      00000000 
 1166      00000000 
 1166      00000000 
 1167              		.text
 1168              		.align	1
 1169              		.global	set_object_speed
 1170              		.syntax unified
 1171              		.code	16
 1172              		.thumb_func
 1173              		.fpu softvfp
 1175              	set_object_speed:
 1176              	.LFB14:
 1177              		.file 2 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/geometry.h"
   1:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** #ifndef GEOMETRY_H
   2:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** #define GEOMETRY_H
   3:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** #include "graphics.h";
   4:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** typedef struct tPoint{
   5:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     unsigned char x;
   6:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     unsigned char y;
   7:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** } POINT;
   8:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** 
   9:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** #define MAX_POINTS 20
  10:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** typedef struct tGeometry{
  11:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     int numpoints;
  12:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     int sizex;
  13:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     int sizey;
  14:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     POINT px[ MAX_POINTS ];
  15:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** } GEOMETRY, *PGEOMETRY;
  16:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** 
  17:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** GEOMETRY ball_geometry = {
  18:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     12, 4, 4,
  19:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     { // POINT px[20]
  20:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         {0,1}, // px[...]
  21:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         {0,2},
  22:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         {1,0},
  23:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         {1,1},
  24:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         {1,2},
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         {1,3},
  26:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         {2,0},
  27:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         {2,1},
  28:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         {2,2},
  29:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         {2,3},
  30:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         {3,1},
  31:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         {3,2} // Incomplete initialization
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     } // (12 of 20)
  33:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** };
  34:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** typedef struct tObj {
  35:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     PGEOMETRY geo;
  36:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     int dirx,diry;
  37:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     int posx,posy;
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     void (* draw ) (struct tObj *);
  39:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     void (* move ) (struct tObj *);
  40:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     void (* set_speed ) (struct tObj *, int, int);
  41:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** } OBJECT, *POBJECT;
  42:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** 
  43:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** void set_object_speed (POBJECT o, int speedx, int speedy);
  44:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** 
  45:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** void draw_object(POBJECT o);
  46:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** 
  47:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** void move_object(POBJECT o);
  48:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** 
  49:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** void clear_object(POBJECT o);
  50:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** 
  51:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** void set_object_speed (POBJECT o, int speedx, int speedy){
 1178              		.loc 2 51 0
 1179              		.cfi_startproc
 1180              		@ args = 0, pretend = 0, frame = 16
 1181              		@ frame_needed = 1, uses_anonymous_args = 0
 1182 056c 80B5     		push	{r7, lr}
 1183              		.cfi_def_cfa_offset 8
 1184              		.cfi_offset 7, -8
 1185              		.cfi_offset 14, -4
 1186 056e 84B0     		sub	sp, sp, #16
 1187              		.cfi_def_cfa_offset 24
 1188 0570 00AF     		add	r7, sp, #0
 1189              		.cfi_def_cfa_register 7
 1190 0572 F860     		str	r0, [r7, #12]
 1191 0574 B960     		str	r1, [r7, #8]
 1192 0576 7A60     		str	r2, [r7, #4]
  52:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     o->dirx = speedx;
 1193              		.loc 2 52 0
 1194 0578 FB68     		ldr	r3, [r7, #12]
 1195 057a BA68     		ldr	r2, [r7, #8]
 1196 057c 5A60     		str	r2, [r3, #4]
  53:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     o->diry = speedy;
 1197              		.loc 2 53 0
 1198 057e FB68     		ldr	r3, [r7, #12]
 1199 0580 7A68     		ldr	r2, [r7, #4]
 1200 0582 9A60     		str	r2, [r3, #8]
  54:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** }
 1201              		.loc 2 54 0
 1202 0584 C046     		nop
 1203 0586 BD46     		mov	sp, r7
 1204 0588 04B0     		add	sp, sp, #16
 1205              		@ sp needed
 1206 058a 80BD     		pop	{r7, pc}
 1207              		.cfi_endproc
 1208              	.LFE14:
 1210              		.align	1
 1211              		.global	draw_object
 1212              		.syntax unified
 1213              		.code	16
 1214              		.thumb_func
 1215              		.fpu softvfp
 1217              	draw_object:
 1218              	.LFB15:
  55:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** 
  56:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** void draw_object(POBJECT o) {
 1219              		.loc 2 56 0
 1220              		.cfi_startproc
 1221              		@ args = 0, pretend = 0, frame = 16
 1222              		@ frame_needed = 1, uses_anonymous_args = 0
 1223 058c 80B5     		push	{r7, lr}
 1224              		.cfi_def_cfa_offset 8
 1225              		.cfi_offset 7, -8
 1226              		.cfi_offset 14, -4
 1227 058e 84B0     		sub	sp, sp, #16
 1228              		.cfi_def_cfa_offset 24
 1229 0590 00AF     		add	r7, sp, #0
 1230              		.cfi_def_cfa_register 7
 1231 0592 7860     		str	r0, [r7, #4]
 1232              	.LBB4:
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 1233              		.loc 2 57 0
 1234 0594 0023     		movs	r3, #0
 1235 0596 FB60     		str	r3, [r7, #12]
 1236 0598 1BE0     		b	.L72
 1237              	.L73:
  58:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         pixel(o->posx+o->geo->px[i].x,o->posy+o->geo->px[i].y);
 1238              		.loc 2 58 0 discriminator 3
 1239 059a 7B68     		ldr	r3, [r7, #4]
 1240 059c DA68     		ldr	r2, [r3, #12]
 1241 059e 7B68     		ldr	r3, [r7, #4]
 1242 05a0 1968     		ldr	r1, [r3]
 1243 05a2 FB68     		ldr	r3, [r7, #12]
 1244 05a4 0433     		adds	r3, r3, #4
 1245 05a6 5B00     		lsls	r3, r3, #1
 1246 05a8 CB18     		adds	r3, r1, r3
 1247 05aa 0433     		adds	r3, r3, #4
 1248 05ac 1B78     		ldrb	r3, [r3]
 1249 05ae D018     		adds	r0, r2, r3
 1250 05b0 7B68     		ldr	r3, [r7, #4]
 1251 05b2 1A69     		ldr	r2, [r3, #16]
 1252 05b4 7B68     		ldr	r3, [r7, #4]
 1253 05b6 1968     		ldr	r1, [r3]
 1254 05b8 FB68     		ldr	r3, [r7, #12]
 1255 05ba 0433     		adds	r3, r3, #4
 1256 05bc 5B00     		lsls	r3, r3, #1
 1257 05be CB18     		adds	r3, r1, r3
 1258 05c0 0533     		adds	r3, r3, #5
 1259 05c2 1B78     		ldrb	r3, [r3]
 1260 05c4 D318     		adds	r3, r2, r3
 1261 05c6 1900     		movs	r1, r3
 1262 05c8 FFF7FEFF 		bl	pixel
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 1263              		.loc 2 57 0 discriminator 3
 1264 05cc FB68     		ldr	r3, [r7, #12]
 1265 05ce 0133     		adds	r3, r3, #1
 1266 05d0 FB60     		str	r3, [r7, #12]
 1267              	.L72:
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 1268              		.loc 2 57 0 is_stmt 0 discriminator 1
 1269 05d2 7B68     		ldr	r3, [r7, #4]
 1270 05d4 1B68     		ldr	r3, [r3]
 1271 05d6 1B68     		ldr	r3, [r3]
 1272 05d8 FA68     		ldr	r2, [r7, #12]
 1273 05da 9A42     		cmp	r2, r3
 1274 05dc DDDB     		blt	.L73
 1275              	.LBE4:
  59:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     }
  60:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** }
 1276              		.loc 2 60 0 is_stmt 1
 1277 05de C046     		nop
 1278 05e0 BD46     		mov	sp, r7
 1279 05e2 04B0     		add	sp, sp, #16
 1280              		@ sp needed
 1281 05e4 80BD     		pop	{r7, pc}
 1282              		.cfi_endproc
 1283              	.LFE15:
 1285              		.align	1
 1286              		.global	move_object
 1287              		.syntax unified
 1288              		.code	16
 1289              		.thumb_func
 1290              		.fpu softvfp
 1292              	move_object:
 1293              	.LFB16:
  61:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** 
  62:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** void move_object(POBJECT o){
 1294              		.loc 2 62 0
 1295              		.cfi_startproc
 1296              		@ args = 0, pretend = 0, frame = 8
 1297              		@ frame_needed = 1, uses_anonymous_args = 0
 1298 05e6 80B5     		push	{r7, lr}
 1299              		.cfi_def_cfa_offset 8
 1300              		.cfi_offset 7, -8
 1301              		.cfi_offset 14, -4
 1302 05e8 82B0     		sub	sp, sp, #8
 1303              		.cfi_def_cfa_offset 16
 1304 05ea 00AF     		add	r7, sp, #0
 1305              		.cfi_def_cfa_register 7
 1306 05ec 7860     		str	r0, [r7, #4]
  63:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     clear_object(o);
 1307              		.loc 2 63 0
 1308 05ee 7B68     		ldr	r3, [r7, #4]
 1309 05f0 1800     		movs	r0, r3
 1310 05f2 FFF7FEFF 		bl	clear_object
  64:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     o->posx = o->posx+o->dirx;
 1311              		.loc 2 64 0
 1312 05f6 7B68     		ldr	r3, [r7, #4]
 1313 05f8 DA68     		ldr	r2, [r3, #12]
 1314 05fa 7B68     		ldr	r3, [r7, #4]
 1315 05fc 5B68     		ldr	r3, [r3, #4]
 1316 05fe D218     		adds	r2, r2, r3
 1317 0600 7B68     		ldr	r3, [r7, #4]
 1318 0602 DA60     		str	r2, [r3, #12]
  65:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     o->posy = o->posy+o->diry;
 1319              		.loc 2 65 0
 1320 0604 7B68     		ldr	r3, [r7, #4]
 1321 0606 1A69     		ldr	r2, [r3, #16]
 1322 0608 7B68     		ldr	r3, [r7, #4]
 1323 060a 9B68     		ldr	r3, [r3, #8]
 1324 060c D218     		adds	r2, r2, r3
 1325 060e 7B68     		ldr	r3, [r7, #4]
 1326 0610 1A61     		str	r2, [r3, #16]
  66:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     if (o->posx < 1){
 1327              		.loc 2 66 0
 1328 0612 7B68     		ldr	r3, [r7, #4]
 1329 0614 DB68     		ldr	r3, [r3, #12]
 1330 0616 002B     		cmp	r3, #0
 1331 0618 07DC     		bgt	.L75
  67:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->dirx *= -1;
 1332              		.loc 2 67 0
 1333 061a 7B68     		ldr	r3, [r7, #4]
 1334 061c 5B68     		ldr	r3, [r3, #4]
 1335 061e 5A42     		rsbs	r2, r3, #0
 1336 0620 7B68     		ldr	r3, [r7, #4]
 1337 0622 5A60     		str	r2, [r3, #4]
  68:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->posx = 1;
 1338              		.loc 2 68 0
 1339 0624 7B68     		ldr	r3, [r7, #4]
 1340 0626 0122     		movs	r2, #1
 1341 0628 DA60     		str	r2, [r3, #12]
 1342              	.L75:
  69:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     }
  70:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     if (o->posx + o->geo->sizex > 128){
 1343              		.loc 2 70 0
 1344 062a 7B68     		ldr	r3, [r7, #4]
 1345 062c DA68     		ldr	r2, [r3, #12]
 1346 062e 7B68     		ldr	r3, [r7, #4]
 1347 0630 1B68     		ldr	r3, [r3]
 1348 0632 5B68     		ldr	r3, [r3, #4]
 1349 0634 D318     		adds	r3, r2, r3
 1350 0636 802B     		cmp	r3, #128
 1351 0638 0BDD     		ble	.L76
  71:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->dirx *= -1;
 1352              		.loc 2 71 0
 1353 063a 7B68     		ldr	r3, [r7, #4]
 1354 063c 5B68     		ldr	r3, [r3, #4]
 1355 063e 5A42     		rsbs	r2, r3, #0
 1356 0640 7B68     		ldr	r3, [r7, #4]
 1357 0642 5A60     		str	r2, [r3, #4]
  72:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->posx = 128 - o->geo->sizex;
 1358              		.loc 2 72 0
 1359 0644 7B68     		ldr	r3, [r7, #4]
 1360 0646 1B68     		ldr	r3, [r3]
 1361 0648 5B68     		ldr	r3, [r3, #4]
 1362 064a 8022     		movs	r2, #128
 1363 064c D21A     		subs	r2, r2, r3
 1364 064e 7B68     		ldr	r3, [r7, #4]
 1365 0650 DA60     		str	r2, [r3, #12]
 1366              	.L76:
  73:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     }
  74:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     
  75:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     if (o->posy < 1){
 1367              		.loc 2 75 0
 1368 0652 7B68     		ldr	r3, [r7, #4]
 1369 0654 1B69     		ldr	r3, [r3, #16]
 1370 0656 002B     		cmp	r3, #0
 1371 0658 07DC     		bgt	.L77
  76:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->diry *= -1;
 1372              		.loc 2 76 0
 1373 065a 7B68     		ldr	r3, [r7, #4]
 1374 065c 9B68     		ldr	r3, [r3, #8]
 1375 065e 5A42     		rsbs	r2, r3, #0
 1376 0660 7B68     		ldr	r3, [r7, #4]
 1377 0662 9A60     		str	r2, [r3, #8]
  77:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->posy = 1;
 1378              		.loc 2 77 0
 1379 0664 7B68     		ldr	r3, [r7, #4]
 1380 0666 0122     		movs	r2, #1
 1381 0668 1A61     		str	r2, [r3, #16]
 1382              	.L77:
  78:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     }
  79:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     if (o->posy + o->geo->sizey > 64){
 1383              		.loc 2 79 0
 1384 066a 7B68     		ldr	r3, [r7, #4]
 1385 066c 1A69     		ldr	r2, [r3, #16]
 1386 066e 7B68     		ldr	r3, [r7, #4]
 1387 0670 1B68     		ldr	r3, [r3]
 1388 0672 9B68     		ldr	r3, [r3, #8]
 1389 0674 D318     		adds	r3, r2, r3
 1390 0676 402B     		cmp	r3, #64
 1391 0678 0BDD     		ble	.L78
  80:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->diry *= -1;
 1392              		.loc 2 80 0
 1393 067a 7B68     		ldr	r3, [r7, #4]
 1394 067c 9B68     		ldr	r3, [r3, #8]
 1395 067e 5A42     		rsbs	r2, r3, #0
 1396 0680 7B68     		ldr	r3, [r7, #4]
 1397 0682 9A60     		str	r2, [r3, #8]
  81:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->posy = 64 - o->geo->sizey;
 1398              		.loc 2 81 0
 1399 0684 7B68     		ldr	r3, [r7, #4]
 1400 0686 1B68     		ldr	r3, [r3]
 1401 0688 9B68     		ldr	r3, [r3, #8]
 1402 068a 4022     		movs	r2, #64
 1403 068c D21A     		subs	r2, r2, r3
 1404 068e 7B68     		ldr	r3, [r7, #4]
 1405 0690 1A61     		str	r2, [r3, #16]
 1406              	.L78:
  82:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     }
  83:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     draw_object(o);
 1407              		.loc 2 83 0
 1408 0692 7B68     		ldr	r3, [r7, #4]
 1409 0694 1800     		movs	r0, r3
 1410 0696 FFF7FEFF 		bl	draw_object
  84:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** }
 1411              		.loc 2 84 0
 1412 069a C046     		nop
 1413 069c BD46     		mov	sp, r7
 1414 069e 02B0     		add	sp, sp, #8
 1415              		@ sp needed
 1416 06a0 80BD     		pop	{r7, pc}
 1417              		.cfi_endproc
 1418              	.LFE16:
 1420              		.align	1
 1421              		.global	clear_object
 1422              		.syntax unified
 1423              		.code	16
 1424              		.thumb_func
 1425              		.fpu softvfp
 1427              	clear_object:
 1428              	.LFB17:
  85:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** 
  86:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** void clear_object(POBJECT o){
 1429              		.loc 2 86 0
 1430              		.cfi_startproc
 1431              		@ args = 0, pretend = 0, frame = 16
 1432              		@ frame_needed = 1, uses_anonymous_args = 0
 1433 06a2 80B5     		push	{r7, lr}
 1434              		.cfi_def_cfa_offset 8
 1435              		.cfi_offset 7, -8
 1436              		.cfi_offset 14, -4
 1437 06a4 84B0     		sub	sp, sp, #16
 1438              		.cfi_def_cfa_offset 24
 1439 06a6 00AF     		add	r7, sp, #0
 1440              		.cfi_def_cfa_register 7
 1441 06a8 7860     		str	r0, [r7, #4]
 1442              	.LBB5:
  87:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 1443              		.loc 2 87 0
 1444 06aa 0023     		movs	r3, #0
 1445 06ac FB60     		str	r3, [r7, #12]
 1446 06ae 1BE0     		b	.L80
 1447              	.L81:
  88:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         pixel(o->posx+o->geo->px[i].x,o->posy+o->geo->px[i].y);
 1448              		.loc 2 88 0 discriminator 3
 1449 06b0 7B68     		ldr	r3, [r7, #4]
 1450 06b2 DA68     		ldr	r2, [r3, #12]
 1451 06b4 7B68     		ldr	r3, [r7, #4]
 1452 06b6 1968     		ldr	r1, [r3]
 1453 06b8 FB68     		ldr	r3, [r7, #12]
 1454 06ba 0433     		adds	r3, r3, #4
 1455 06bc 5B00     		lsls	r3, r3, #1
 1456 06be CB18     		adds	r3, r1, r3
 1457 06c0 0433     		adds	r3, r3, #4
 1458 06c2 1B78     		ldrb	r3, [r3]
 1459 06c4 D018     		adds	r0, r2, r3
 1460 06c6 7B68     		ldr	r3, [r7, #4]
 1461 06c8 1A69     		ldr	r2, [r3, #16]
 1462 06ca 7B68     		ldr	r3, [r7, #4]
 1463 06cc 1968     		ldr	r1, [r3]
 1464 06ce FB68     		ldr	r3, [r7, #12]
 1465 06d0 0433     		adds	r3, r3, #4
 1466 06d2 5B00     		lsls	r3, r3, #1
 1467 06d4 CB18     		adds	r3, r1, r3
 1468 06d6 0533     		adds	r3, r3, #5
 1469 06d8 1B78     		ldrb	r3, [r3]
 1470 06da D318     		adds	r3, r2, r3
 1471 06dc 1900     		movs	r1, r3
 1472 06de FFF7FEFF 		bl	pixel
  87:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 1473              		.loc 2 87 0 discriminator 3
 1474 06e2 FB68     		ldr	r3, [r7, #12]
 1475 06e4 0133     		adds	r3, r3, #1
 1476 06e6 FB60     		str	r3, [r7, #12]
 1477              	.L80:
  87:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 1478              		.loc 2 87 0 is_stmt 0 discriminator 1
 1479 06e8 7B68     		ldr	r3, [r7, #4]
 1480 06ea 1B68     		ldr	r3, [r3]
 1481 06ec 1B68     		ldr	r3, [r3]
 1482 06ee FA68     		ldr	r2, [r7, #12]
 1483 06f0 9A42     		cmp	r2, r3
 1484 06f2 DDDB     		blt	.L81
 1485              	.LBE5:
  89:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     }
  90:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** }
 1486              		.loc 2 90 0 is_stmt 1
 1487 06f4 C046     		nop
 1488 06f6 BD46     		mov	sp, r7
 1489 06f8 04B0     		add	sp, sp, #16
 1490              		@ sp needed
 1491 06fa 80BD     		pop	{r7, pc}
 1492              		.cfi_endproc
 1493              	.LFE17:
 1495              		.align	1
 1496              		.global	delay_250ns
 1497              		.syntax unified
 1498              		.code	16
 1499              		.thumb_func
 1500              		.fpu softvfp
 1502              	delay_250ns:
 1503              	.LFB18:
 1504              		.file 3 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/delay.h"
   1:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #ifndef DELAY_H
   2:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #define DELAY_H
   3:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** 
   4:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #define STK_CTRL ((volatile unsigned int *)(0xE000E010))
   5:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #define STK_LOAD ((volatile unsigned int *)(0xE000E014))
   6:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #define STK_VAL ((volatile unsigned int *)(0xE000E018))
   7:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** void delay_250ns( void ) {
 1505              		.loc 3 7 0
 1506              		.cfi_startproc
 1507              		@ args = 0, pretend = 0, frame = 0
 1508              		@ frame_needed = 1, uses_anonymous_args = 0
 1509 06fc 80B5     		push	{r7, lr}
 1510              		.cfi_def_cfa_offset 8
 1511              		.cfi_offset 7, -8
 1512              		.cfi_offset 14, -4
 1513 06fe 00AF     		add	r7, sp, #0
 1514              		.cfi_def_cfa_register 7
   8:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     /* SystemCoreClock = 168000000 */
   9:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     *STK_CTRL = 0;
 1515              		.loc 3 9 0
 1516 0700 0C4B     		ldr	r3, .L84
 1517 0702 0022     		movs	r2, #0
 1518 0704 1A60     		str	r2, [r3]
  10:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     *STK_LOAD = ( (168/4) -1 );
 1519              		.loc 3 10 0
 1520 0706 0C4B     		ldr	r3, .L84+4
 1521 0708 2922     		movs	r2, #41
 1522 070a 1A60     		str	r2, [r3]
  11:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     *STK_VAL = 0;
 1523              		.loc 3 11 0
 1524 070c 0B4B     		ldr	r3, .L84+8
 1525 070e 0022     		movs	r2, #0
 1526 0710 1A60     		str	r2, [r3]
  12:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     *STK_CTRL = 5;
 1527              		.loc 3 12 0
 1528 0712 084B     		ldr	r3, .L84
 1529 0714 0522     		movs	r2, #5
 1530 0716 1A60     		str	r2, [r3]
  13:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     while( (*STK_CTRL & 0x10000 )== 0 );
 1531              		.loc 3 13 0
 1532 0718 C046     		nop
 1533              	.L83:
 1534              		.loc 3 13 0 is_stmt 0 discriminator 1
 1535 071a 064B     		ldr	r3, .L84
 1536 071c 1A68     		ldr	r2, [r3]
 1537 071e 8023     		movs	r3, #128
 1538 0720 5B02     		lsls	r3, r3, #9
 1539 0722 1340     		ands	r3, r2
 1540 0724 F9D0     		beq	.L83
  14:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         *STK_CTRL = 0;
 1541              		.loc 3 14 0 is_stmt 1
 1542 0726 034B     		ldr	r3, .L84
 1543 0728 0022     		movs	r2, #0
 1544 072a 1A60     		str	r2, [r3]
  15:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** }
 1545              		.loc 3 15 0
 1546 072c C046     		nop
 1547 072e BD46     		mov	sp, r7
 1548              		@ sp needed
 1549 0730 80BD     		pop	{r7, pc}
 1550              	.L85:
 1551 0732 C046     		.align	2
 1552              	.L84:
 1553 0734 10E000E0 		.word	-536813552
 1554 0738 14E000E0 		.word	-536813548
 1555 073c 18E000E0 		.word	-536813544
 1556              		.cfi_endproc
 1557              	.LFE18:
 1559              		.align	1
 1560              		.global	delay_500ns
 1561              		.syntax unified
 1562              		.code	16
 1563              		.thumb_func
 1564              		.fpu softvfp
 1566              	delay_500ns:
 1567              	.LFB19:
  16:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** void delay_500ns( void) {
 1568              		.loc 3 16 0
 1569              		.cfi_startproc
 1570              		@ args = 0, pretend = 0, frame = 0
 1571              		@ frame_needed = 1, uses_anonymous_args = 0
 1572 0740 80B5     		push	{r7, lr}
 1573              		.cfi_def_cfa_offset 8
 1574              		.cfi_offset 7, -8
 1575              		.cfi_offset 14, -4
 1576 0742 00AF     		add	r7, sp, #0
 1577              		.cfi_def_cfa_register 7
  17:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     delay_250ns();
 1578              		.loc 3 17 0
 1579 0744 FFF7FEFF 		bl	delay_250ns
  18:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     delay_250ns();
 1580              		.loc 3 18 0
 1581 0748 FFF7FEFF 		bl	delay_250ns
  19:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** }
 1582              		.loc 3 19 0
 1583 074c C046     		nop
 1584 074e BD46     		mov	sp, r7
 1585              		@ sp needed
 1586 0750 80BD     		pop	{r7, pc}
 1587              		.cfi_endproc
 1588              	.LFE19:
 1590              		.global	__aeabi_uidiv
 1591              		.align	1
 1592              		.global	delay_micro
 1593              		.syntax unified
 1594              		.code	16
 1595              		.thumb_func
 1596              		.fpu softvfp
 1598              	delay_micro:
 1599              	.LFB20:
  20:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** void delay_micro(unsigned int us) {
 1600              		.loc 3 20 0
 1601              		.cfi_startproc
 1602              		@ args = 0, pretend = 0, frame = 8
 1603              		@ frame_needed = 1, uses_anonymous_args = 0
 1604 0752 80B5     		push	{r7, lr}
 1605              		.cfi_def_cfa_offset 8
 1606              		.cfi_offset 7, -8
 1607              		.cfi_offset 14, -4
 1608 0754 82B0     		sub	sp, sp, #8
 1609              		.cfi_def_cfa_offset 16
 1610 0756 00AF     		add	r7, sp, #0
 1611              		.cfi_def_cfa_register 7
 1612 0758 7860     		str	r0, [r7, #4]
  21:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #ifdef SIMULATOR
  22:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     us = us / 1000;
 1613              		.loc 3 22 0
 1614 075a 7A68     		ldr	r2, [r7, #4]
 1615 075c FA23     		movs	r3, #250
 1616 075e 9900     		lsls	r1, r3, #2
 1617 0760 1000     		movs	r0, r2
 1618 0762 FFF7FEFF 		bl	__aeabi_uidiv
 1619              	.LVL0:
 1620 0766 0300     		movs	r3, r0
 1621 0768 7B60     		str	r3, [r7, #4]
  23:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     us++;
 1622              		.loc 3 23 0
 1623 076a 7B68     		ldr	r3, [r7, #4]
 1624 076c 0133     		adds	r3, r3, #1
 1625 076e 7B60     		str	r3, [r7, #4]
  24:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #endif
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     while( us > 0 ) {
 1626              		.loc 3 25 0
 1627 0770 0AE0     		b	.L88
 1628              	.L89:
  26:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_250ns();
 1629              		.loc 3 26 0
 1630 0772 FFF7FEFF 		bl	delay_250ns
  27:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_250ns();
 1631              		.loc 3 27 0
 1632 0776 FFF7FEFF 		bl	delay_250ns
  28:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_250ns();
 1633              		.loc 3 28 0
 1634 077a FFF7FEFF 		bl	delay_250ns
  29:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_250ns();
 1635              		.loc 3 29 0
 1636 077e FFF7FEFF 		bl	delay_250ns
  30:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         us--;
 1637              		.loc 3 30 0
 1638 0782 7B68     		ldr	r3, [r7, #4]
 1639 0784 013B     		subs	r3, r3, #1
 1640 0786 7B60     		str	r3, [r7, #4]
 1641              	.L88:
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_250ns();
 1642              		.loc 3 25 0
 1643 0788 7B68     		ldr	r3, [r7, #4]
 1644 078a 002B     		cmp	r3, #0
 1645 078c F1D1     		bne	.L89
  31:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     }
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** }
 1646              		.loc 3 32 0
 1647 078e C046     		nop
 1648 0790 BD46     		mov	sp, r7
 1649 0792 02B0     		add	sp, sp, #8
 1650              		@ sp needed
 1651 0794 80BD     		pop	{r7, pc}
 1652              		.cfi_endproc
 1653              	.LFE20:
 1655              		.align	1
 1656              		.global	delay_milli
 1657              		.syntax unified
 1658              		.code	16
 1659              		.thumb_func
 1660              		.fpu softvfp
 1662              	delay_milli:
 1663              	.LFB21:
  33:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** void delay_milli(unsigned int ms){
 1664              		.loc 3 33 0
 1665              		.cfi_startproc
 1666              		@ args = 0, pretend = 0, frame = 8
 1667              		@ frame_needed = 1, uses_anonymous_args = 0
 1668 0796 80B5     		push	{r7, lr}
 1669              		.cfi_def_cfa_offset 8
 1670              		.cfi_offset 7, -8
 1671              		.cfi_offset 14, -4
 1672 0798 82B0     		sub	sp, sp, #8
 1673              		.cfi_def_cfa_offset 16
 1674 079a 00AF     		add	r7, sp, #0
 1675              		.cfi_def_cfa_register 7
 1676 079c 7860     		str	r0, [r7, #4]
  34:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #ifdef SIMULATOR
  35:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     ms = ms / 1000;
 1677              		.loc 3 35 0
 1678 079e 7A68     		ldr	r2, [r7, #4]
 1679 07a0 FA23     		movs	r3, #250
 1680 07a2 9900     		lsls	r1, r3, #2
 1681 07a4 1000     		movs	r0, r2
 1682 07a6 FFF7FEFF 		bl	__aeabi_uidiv
 1683              	.LVL1:
 1684 07aa 0300     		movs	r3, r0
 1685 07ac 7B60     		str	r3, [r7, #4]
  36:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     ms++;
 1686              		.loc 3 36 0
 1687 07ae 7B68     		ldr	r3, [r7, #4]
 1688 07b0 0133     		adds	r3, r3, #1
 1689 07b2 7B60     		str	r3, [r7, #4]
  37:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #endif
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     while( ms > 0 ) {
 1690              		.loc 3 38 0
 1691 07b4 07E0     		b	.L91
 1692              	.L92:
  39:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_micro(1000);
 1693              		.loc 3 39 0
 1694 07b6 FA23     		movs	r3, #250
 1695 07b8 9B00     		lsls	r3, r3, #2
 1696 07ba 1800     		movs	r0, r3
 1697 07bc FFF7FEFF 		bl	delay_micro
  40:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         ms--;
 1698              		.loc 3 40 0
 1699 07c0 7B68     		ldr	r3, [r7, #4]
 1700 07c2 013B     		subs	r3, r3, #1
 1701 07c4 7B60     		str	r3, [r7, #4]
 1702              	.L91:
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_micro(1000);
 1703              		.loc 3 38 0
 1704 07c6 7B68     		ldr	r3, [r7, #4]
 1705 07c8 002B     		cmp	r3, #0
 1706 07ca F4D1     		bne	.L92
  41:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     }
  42:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** }
 1707              		.loc 3 42 0
 1708 07cc C046     		nop
 1709 07ce BD46     		mov	sp, r7
 1710 07d0 02B0     		add	sp, sp, #8
 1711              		@ sp needed
 1712 07d2 80BD     		pop	{r7, pc}
 1713              		.cfi_endproc
 1714              	.LFE21:
 1716              		.align	1
 1717              		.global	activateRow
 1718              		.syntax unified
 1719              		.code	16
 1720              		.thumb_func
 1721              		.fpu softvfp
 1723              	activateRow:
 1724              	.LFB22:
 1725              		.file 4 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/keypad.h"
   1:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** #ifndef KEYPAD_H
   2:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** #define KEYPAD_H
   3:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** #include "gpio.h"
   4:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** 
   5:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** void activateRow(unsigned int row ){
 1726              		.loc 4 5 0
 1727              		.cfi_startproc
 1728              		@ args = 0, pretend = 0, frame = 8
 1729              		@ frame_needed = 1, uses_anonymous_args = 0
 1730 07d4 80B5     		push	{r7, lr}
 1731              		.cfi_def_cfa_offset 8
 1732              		.cfi_offset 7, -8
 1733              		.cfi_offset 14, -4
 1734 07d6 82B0     		sub	sp, sp, #8
 1735              		.cfi_def_cfa_offset 16
 1736 07d8 00AF     		add	r7, sp, #0
 1737              		.cfi_def_cfa_register 7
 1738 07da 7860     		str	r0, [r7, #4]
   6:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** /* Aktivera angiven rad hos tangentbordet, eller
   7:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** * deaktivera samtliga */
   8:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     switch( row ){
 1739              		.loc 4 8 0
 1740 07dc 7B68     		ldr	r3, [r7, #4]
 1741 07de 042B     		cmp	r3, #4
 1742 07e0 19D8     		bhi	.L101
 1743 07e2 7B68     		ldr	r3, [r7, #4]
 1744 07e4 9A00     		lsls	r2, r3, #2
 1745 07e6 0E4B     		ldr	r3, .L102
 1746 07e8 D318     		adds	r3, r2, r3
 1747 07ea 1B68     		ldr	r3, [r3]
 1748 07ec 9F46     		mov	pc, r3
 1749              		.section	.rodata
 1750              		.align	2
 1751              	.L96:
 1752 0000 0E080000 		.word	.L95
 1753 0004 EE070000 		.word	.L97
 1754 0008 F6070000 		.word	.L98
 1755 000c FE070000 		.word	.L99
 1756 0010 06080000 		.word	.L100
 1757              		.text
 1758              	.L97:
   9:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         case 1: GPIO_D.odrHigh = 0x10; break;
 1759              		.loc 4 9 0
 1760 07ee 0D4B     		ldr	r3, .L102+4
 1761 07f0 1022     		movs	r2, #16
 1762 07f2 5A75     		strb	r2, [r3, #21]
 1763 07f4 0FE0     		b	.L94
 1764              	.L98:
  10:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         case 2: GPIO_D.odrHigh = 0x20; break;
 1765              		.loc 4 10 0
 1766 07f6 0B4B     		ldr	r3, .L102+4
 1767 07f8 2022     		movs	r2, #32
 1768 07fa 5A75     		strb	r2, [r3, #21]
 1769 07fc 0BE0     		b	.L94
 1770              	.L99:
  11:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         case 3: GPIO_D.odrHigh = 0x40; break;
 1771              		.loc 4 11 0
 1772 07fe 094B     		ldr	r3, .L102+4
 1773 0800 4022     		movs	r2, #64
 1774 0802 5A75     		strb	r2, [r3, #21]
 1775 0804 07E0     		b	.L94
 1776              	.L100:
  12:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         case 4: GPIO_D.odrHigh = 0x80; break;
 1777              		.loc 4 12 0
 1778 0806 074B     		ldr	r3, .L102+4
 1779 0808 8022     		movs	r2, #128
 1780 080a 5A75     		strb	r2, [r3, #21]
 1781 080c 03E0     		b	.L94
 1782              	.L95:
  13:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         case 0: GPIO_D.odrHigh = 0x00; break;
 1783              		.loc 4 13 0
 1784 080e 054B     		ldr	r3, .L102+4
 1785 0810 0022     		movs	r2, #0
 1786 0812 5A75     		strb	r2, [r3, #21]
 1787 0814 C046     		nop
 1788              	.L94:
 1789              	.L101:
  14:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     }
  15:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** }
 1790              		.loc 4 15 0
 1791 0816 C046     		nop
 1792 0818 BD46     		mov	sp, r7
 1793 081a 02B0     		add	sp, sp, #8
 1794              		@ sp needed
 1795 081c 80BD     		pop	{r7, pc}
 1796              	.L103:
 1797 081e C046     		.align	2
 1798              	.L102:
 1799 0820 00000000 		.word	.L96
 1800 0824 000C0240 		.word	1073875968
 1801              		.cfi_endproc
 1802              	.LFE22:
 1804              		.align	1
 1805              		.global	readColumn
 1806              		.syntax unified
 1807              		.code	16
 1808              		.thumb_func
 1809              		.fpu softvfp
 1811              	readColumn:
 1812              	.LFB23:
  16:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** int readColumn(void) {
 1813              		.loc 4 16 0
 1814              		.cfi_startproc
 1815              		@ args = 0, pretend = 0, frame = 8
 1816              		@ frame_needed = 1, uses_anonymous_args = 0
 1817 0828 80B5     		push	{r7, lr}
 1818              		.cfi_def_cfa_offset 8
 1819              		.cfi_offset 7, -8
 1820              		.cfi_offset 14, -4
 1821 082a 82B0     		sub	sp, sp, #8
 1822              		.cfi_def_cfa_offset 16
 1823 082c 00AF     		add	r7, sp, #0
 1824              		.cfi_def_cfa_register 7
  17:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     /* Om någon tangent (i aktiverad rad)
  18:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     * är nedtryckt, returnera dess kolumnnummer,
  19:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     * annars, returnera 0 */
  20:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     unsigned char c;
  21:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     c = GPIO_D.idrHigh;
 1825              		.loc 4 21 0
 1826 082e 124A     		ldr	r2, .L110
 1827 0830 FB1D     		adds	r3, r7, #7
 1828 0832 527C     		ldrb	r2, [r2, #17]
 1829 0834 1A70     		strb	r2, [r3]
  22:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     if ( c & 0x8 ) return 4;
 1830              		.loc 4 22 0
 1831 0836 FB1D     		adds	r3, r7, #7
 1832 0838 1B78     		ldrb	r3, [r3]
 1833 083a 0822     		movs	r2, #8
 1834 083c 1340     		ands	r3, r2
 1835 083e 01D0     		beq	.L105
 1836              		.loc 4 22 0 is_stmt 0 discriminator 1
 1837 0840 0423     		movs	r3, #4
 1838 0842 15E0     		b	.L106
 1839              	.L105:
  23:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     if ( c & 0x4 ) return 3;
 1840              		.loc 4 23 0 is_stmt 1
 1841 0844 FB1D     		adds	r3, r7, #7
 1842 0846 1B78     		ldrb	r3, [r3]
 1843 0848 0422     		movs	r2, #4
 1844 084a 1340     		ands	r3, r2
 1845 084c 01D0     		beq	.L107
 1846              		.loc 4 23 0 is_stmt 0 discriminator 1
 1847 084e 0323     		movs	r3, #3
 1848 0850 0EE0     		b	.L106
 1849              	.L107:
  24:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     if ( c & 0x2 ) return 2;
 1850              		.loc 4 24 0 is_stmt 1
 1851 0852 FB1D     		adds	r3, r7, #7
 1852 0854 1B78     		ldrb	r3, [r3]
 1853 0856 0222     		movs	r2, #2
 1854 0858 1340     		ands	r3, r2
 1855 085a 01D0     		beq	.L108
 1856              		.loc 4 24 0 is_stmt 0 discriminator 1
 1857 085c 0223     		movs	r3, #2
 1858 085e 07E0     		b	.L106
 1859              	.L108:
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     if ( c & 0x1 ) return 1;
 1860              		.loc 4 25 0 is_stmt 1
 1861 0860 FB1D     		adds	r3, r7, #7
 1862 0862 1B78     		ldrb	r3, [r3]
 1863 0864 0122     		movs	r2, #1
 1864 0866 1340     		ands	r3, r2
 1865 0868 01D0     		beq	.L109
 1866              		.loc 4 25 0 is_stmt 0 discriminator 1
 1867 086a 0123     		movs	r3, #1
 1868 086c 00E0     		b	.L106
 1869              	.L109:
  26:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     return 0;
 1870              		.loc 4 26 0 is_stmt 1
 1871 086e 0023     		movs	r3, #0
 1872              	.L106:
  27:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** }
 1873              		.loc 4 27 0
 1874 0870 1800     		movs	r0, r3
 1875 0872 BD46     		mov	sp, r7
 1876 0874 02B0     		add	sp, sp, #8
 1877              		@ sp needed
 1878 0876 80BD     		pop	{r7, pc}
 1879              	.L111:
 1880              		.align	2
 1881              	.L110:
 1882 0878 000C0240 		.word	1073875968
 1883              		.cfi_endproc
 1884              	.LFE23:
 1886              		.section	.rodata
 1887              		.align	2
 1888              	.LC0:
 1889 0014 01       		.byte	1
 1890 0015 02       		.byte	2
 1891 0016 03       		.byte	3
 1892 0017 0A       		.byte	10
 1893 0018 04       		.byte	4
 1894 0019 05       		.byte	5
 1895 001a 06       		.byte	6
 1896 001b 0B       		.byte	11
 1897 001c 07       		.byte	7
 1898 001d 08       		.byte	8
 1899 001e 09       		.byte	9
 1900 001f 0C       		.byte	12
 1901 0020 0E       		.byte	14
 1902 0021 00       		.byte	0
 1903 0022 0F       		.byte	15
 1904 0023 0D       		.byte	13
 1905              		.text
 1906              		.align	1
 1907              		.global	keyb
 1908              		.syntax unified
 1909              		.code	16
 1910              		.thumb_func
 1911              		.fpu softvfp
 1913              	keyb:
 1914              	.LFB24:
  28:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** 
  29:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** unsigned char keyb( void ) {
 1915              		.loc 4 29 0
 1916              		.cfi_startproc
 1917              		@ args = 0, pretend = 0, frame = 24
 1918              		@ frame_needed = 1, uses_anonymous_args = 0
 1919 087c 90B5     		push	{r4, r7, lr}
 1920              		.cfi_def_cfa_offset 12
 1921              		.cfi_offset 4, -12
 1922              		.cfi_offset 7, -8
 1923              		.cfi_offset 14, -4
 1924 087e 87B0     		sub	sp, sp, #28
 1925              		.cfi_def_cfa_offset 40
 1926 0880 00AF     		add	r7, sp, #0
 1927              		.cfi_def_cfa_register 7
  30:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     unsigned char key[]={1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
 1928              		.loc 4 30 0
 1929 0882 3B00     		movs	r3, r7
 1930 0884 164A     		ldr	r2, .L118
 1931 0886 13CA     		ldmia	r2!, {r0, r1, r4}
 1932 0888 13C3     		stmia	r3!, {r0, r1, r4}
 1933 088a 1268     		ldr	r2, [r2]
 1934 088c 1A60     		str	r2, [r3]
  31:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     int row, col;
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     for (row=1; row <=4 ; row++ ) {
 1935              		.loc 4 32 0
 1936 088e 0123     		movs	r3, #1
 1937 0890 7B61     		str	r3, [r7, #20]
 1938 0892 19E0     		b	.L113
 1939              	.L116:
  33:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         activateRow(row);
 1940              		.loc 4 33 0
 1941 0894 7B69     		ldr	r3, [r7, #20]
 1942 0896 1800     		movs	r0, r3
 1943 0898 FFF7FEFF 		bl	activateRow
  34:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         if(col = readColumn()) {
 1944              		.loc 4 34 0
 1945 089c FFF7FEFF 		bl	readColumn
 1946 08a0 0300     		movs	r3, r0
 1947 08a2 3B61     		str	r3, [r7, #16]
 1948 08a4 3B69     		ldr	r3, [r7, #16]
 1949 08a6 002B     		cmp	r3, #0
 1950 08a8 0BD0     		beq	.L114
  35:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****             activateRow(0);
 1951              		.loc 4 35 0
 1952 08aa 0020     		movs	r0, #0
 1953 08ac FFF7FEFF 		bl	activateRow
  36:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****             return key [4*(row-1)+(col-1)];
 1954              		.loc 4 36 0
 1955 08b0 7B69     		ldr	r3, [r7, #20]
 1956 08b2 013B     		subs	r3, r3, #1
 1957 08b4 9A00     		lsls	r2, r3, #2
 1958 08b6 3B69     		ldr	r3, [r7, #16]
 1959 08b8 013B     		subs	r3, r3, #1
 1960 08ba D318     		adds	r3, r2, r3
 1961 08bc 3A00     		movs	r2, r7
 1962 08be D35C     		ldrb	r3, [r2, r3]
 1963 08c0 09E0     		b	.L117
 1964              	.L114:
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         activateRow(row);
 1965              		.loc 4 32 0 discriminator 2
 1966 08c2 7B69     		ldr	r3, [r7, #20]
 1967 08c4 0133     		adds	r3, r3, #1
 1968 08c6 7B61     		str	r3, [r7, #20]
 1969              	.L113:
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         activateRow(row);
 1970              		.loc 4 32 0 is_stmt 0 discriminator 1
 1971 08c8 7B69     		ldr	r3, [r7, #20]
 1972 08ca 042B     		cmp	r3, #4
 1973 08cc E2DD     		ble	.L116
  37:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         }
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     }
  39:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     activateRow(0);
 1974              		.loc 4 39 0 is_stmt 1
 1975 08ce 0020     		movs	r0, #0
 1976 08d0 FFF7FEFF 		bl	activateRow
  40:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     return 0xFF;
 1977              		.loc 4 40 0
 1978 08d4 FF23     		movs	r3, #255
 1979              	.L117:
  41:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** }
 1980              		.loc 4 41 0 discriminator 1
 1981 08d6 1800     		movs	r0, r3
 1982 08d8 BD46     		mov	sp, r7
 1983 08da 07B0     		add	sp, sp, #28
 1984              		@ sp needed
 1985 08dc 90BD     		pop	{r4, r7, pc}
 1986              	.L119:
 1987 08de C046     		.align	2
 1988              	.L118:
 1989 08e0 14000000 		.word	.LC0
 1990              		.cfi_endproc
 1991              	.LFE24:
 1993              		.data
 1994              		.align	2
 1997              	ball:
 1998 0034 00000000 		.word	ball_geometry
 1999 0038 00000000 		.word	0
 2000 003c 00000000 		.word	0
 2001 0040 0A000000 		.word	10
 2002 0044 0A000000 		.word	10
 2003 0048 00000000 		.word	draw_object
 2004 004c 00000000 		.word	move_object
 2005 0050 00000000 		.word	set_object_speed
 2006              		.text
 2007              		.align	1
 2008              		.global	drawgrid
 2009              		.syntax unified
 2010              		.code	16
 2011              		.thumb_func
 2012              		.fpu softvfp
 2014              	drawgrid:
 2015              	.LFB25:
 2016              		.file 5 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/startup.c"
   1:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** /*
   2:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****  * 	startup.c
   3:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****  *
   4:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****  */
   5:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "geometry.h"
   6:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "delay.h"
   7:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "gpio.h"
   8:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "graphics.h"
   9:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "keypad.h"
  10:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
  11:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** static OBJECT ball = {
  12:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     &ball_geometry, // geometry for a ball
  13:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     0,0, // move direction (x,y)
  14:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     10,10, // position (x,y)
  15:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     draw_object, // draw method
  16:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     move_object, // move method
  17:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     set_object_speed // set-speed method
  18:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** };
  19:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
  20:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** void drawgrid(void) {
 2017              		.loc 5 20 0
 2018              		.cfi_startproc
 2019              		@ args = 0, pretend = 0, frame = 8
 2020              		@ frame_needed = 1, uses_anonymous_args = 0
 2021 08e4 80B5     		push	{r7, lr}
 2022              		.cfi_def_cfa_offset 8
 2023              		.cfi_offset 7, -8
 2024              		.cfi_offset 14, -4
 2025 08e6 82B0     		sub	sp, sp, #8
 2026              		.cfi_def_cfa_offset 16
 2027 08e8 00AF     		add	r7, sp, #0
 2028              		.cfi_def_cfa_register 7
  21:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	unsigned i;
  22:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	for(i = 0; i < 64; i++ ){
 2029              		.loc 5 22 0
 2030 08ea 0023     		movs	r3, #0
 2031 08ec 7B60     		str	r3, [r7, #4]
 2032 08ee 07E0     		b	.L121
 2033              	.L122:
  23:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(i, 21);
 2034              		.loc 5 23 0 discriminator 3
 2035 08f0 7B68     		ldr	r3, [r7, #4]
 2036 08f2 1521     		movs	r1, #21
 2037 08f4 1800     		movs	r0, r3
 2038 08f6 FFF7FEFF 		bl	pixel
  22:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(i, 21);
 2039              		.loc 5 22 0 discriminator 3
 2040 08fa 7B68     		ldr	r3, [r7, #4]
 2041 08fc 0133     		adds	r3, r3, #1
 2042 08fe 7B60     		str	r3, [r7, #4]
 2043              	.L121:
  22:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(i, 21);
 2044              		.loc 5 22 0 is_stmt 0 discriminator 1
 2045 0900 7B68     		ldr	r3, [r7, #4]
 2046 0902 3F2B     		cmp	r3, #63
 2047 0904 F4D9     		bls	.L122
  24:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	}
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	for(i = 0; i < 64; i++){
 2048              		.loc 5 25 0 is_stmt 1
 2049 0906 0023     		movs	r3, #0
 2050 0908 7B60     		str	r3, [r7, #4]
 2051 090a 07E0     		b	.L123
 2052              	.L124:
  26:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(21, i);
 2053              		.loc 5 26 0 discriminator 3
 2054 090c 7B68     		ldr	r3, [r7, #4]
 2055 090e 1900     		movs	r1, r3
 2056 0910 1520     		movs	r0, #21
 2057 0912 FFF7FEFF 		bl	pixel
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(21, i);
 2058              		.loc 5 25 0 discriminator 3
 2059 0916 7B68     		ldr	r3, [r7, #4]
 2060 0918 0133     		adds	r3, r3, #1
 2061 091a 7B60     		str	r3, [r7, #4]
 2062              	.L123:
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(21, i);
 2063              		.loc 5 25 0 is_stmt 0 discriminator 1
 2064 091c 7B68     		ldr	r3, [r7, #4]
 2065 091e 3F2B     		cmp	r3, #63
 2066 0920 F4D9     		bls	.L124
  27:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	}
  28:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	for(i = 0; i < 64; i++ ){
 2067              		.loc 5 28 0 is_stmt 1
 2068 0922 0023     		movs	r3, #0
 2069 0924 7B60     		str	r3, [r7, #4]
 2070 0926 07E0     		b	.L125
 2071              	.L126:
  29:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(i, 43);
 2072              		.loc 5 29 0 discriminator 3
 2073 0928 7B68     		ldr	r3, [r7, #4]
 2074 092a 2B21     		movs	r1, #43
 2075 092c 1800     		movs	r0, r3
 2076 092e FFF7FEFF 		bl	pixel
  28:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(i, 43);
 2077              		.loc 5 28 0 discriminator 3
 2078 0932 7B68     		ldr	r3, [r7, #4]
 2079 0934 0133     		adds	r3, r3, #1
 2080 0936 7B60     		str	r3, [r7, #4]
 2081              	.L125:
  28:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(i, 43);
 2082              		.loc 5 28 0 is_stmt 0 discriminator 1
 2083 0938 7B68     		ldr	r3, [r7, #4]
 2084 093a 3F2B     		cmp	r3, #63
 2085 093c F4D9     		bls	.L126
  30:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	}
  31:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	for(i = 0; i < 64; i++){
 2086              		.loc 5 31 0 is_stmt 1
 2087 093e 0023     		movs	r3, #0
 2088 0940 7B60     		str	r3, [r7, #4]
 2089 0942 07E0     		b	.L127
 2090              	.L128:
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(43, i);
 2091              		.loc 5 32 0 discriminator 3
 2092 0944 7B68     		ldr	r3, [r7, #4]
 2093 0946 1900     		movs	r1, r3
 2094 0948 2B20     		movs	r0, #43
 2095 094a FFF7FEFF 		bl	pixel
  31:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(43, i);
 2096              		.loc 5 31 0 discriminator 3
 2097 094e 7B68     		ldr	r3, [r7, #4]
 2098 0950 0133     		adds	r3, r3, #1
 2099 0952 7B60     		str	r3, [r7, #4]
 2100              	.L127:
  31:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(43, i);
 2101              		.loc 5 31 0 is_stmt 0 discriminator 1
 2102 0954 7B68     		ldr	r3, [r7, #4]
 2103 0956 3F2B     		cmp	r3, #63
 2104 0958 F4D9     		bls	.L128
  33:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	}
  34:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** }
 2105              		.loc 5 34 0 is_stmt 1
 2106 095a C046     		nop
 2107 095c BD46     		mov	sp, r7
 2108 095e 02B0     		add	sp, sp, #8
 2109              		@ sp needed
 2110 0960 80BD     		pop	{r7, pc}
 2111              		.cfi_endproc
 2112              	.LFE25:
 2114              		.section	.start_section,"ax",%progbits
 2115              		.align	1
 2116              		.global	startup
 2117              		.syntax unified
 2118              		.code	16
 2119              		.thumb_func
 2120              		.fpu softvfp
 2122              	startup:
 2123              	.LFB26:
  35:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
  36:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  37:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** void startup ( void )
  39:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** {
 2124              		.loc 5 39 0
 2125              		.cfi_startproc
 2126              		@ Naked Function: prologue and epilogue provided by programmer.
 2127              		@ args = 0, pretend = 0, frame = 0
 2128              		@ frame_needed = 1, uses_anonymous_args = 0
  40:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** __asm volatile(
 2129              		.loc 5 40 0
 2130              		.syntax divided
 2131              	@ 40 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/startup.c" 1
 2132 0000 0248     		 LDR R0,=0x2001C000
 2133 0002 8546     	 MOV SP,R0
 2134 0004 FFF7FEFF 	 BL main
 2135 0008 FEE7     	.L1: B .L1
 2136              	
 2137              	@ 0 "" 2
  41:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  42:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	" MOV SP,R0\n"
  43:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	" BL main\n"				/* call main */
  44:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	".L1: B .L1\n"				/* never return */
  45:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	) ;
  46:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** }
 2138              		.loc 5 46 0
 2139              		.thumb
 2140              		.syntax unified
 2141 000a C046     		nop
 2142              		.cfi_endproc
 2143              	.LFE26:
 2145              		.text
 2146              		.align	1
 2147              		.global	init_app
 2148              		.syntax unified
 2149              		.code	16
 2150              		.thumb_func
 2151              		.fpu softvfp
 2153              	init_app:
 2154              	.LFB27:
  47:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
  48:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** void init_app() {
 2155              		.loc 5 48 0
 2156              		.cfi_startproc
 2157              		@ args = 0, pretend = 0, frame = 0
 2158              		@ frame_needed = 1, uses_anonymous_args = 0
 2159 0962 80B5     		push	{r7, lr}
 2160              		.cfi_def_cfa_offset 8
 2161              		.cfi_offset 7, -8
 2162              		.cfi_offset 14, -4
 2163 0964 00AF     		add	r7, sp, #0
 2164              		.cfi_def_cfa_register 7
  49:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #ifdef USBDM
  50:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	 *( (unsigned long *) 0x40023830) = 0x18;
  51:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	 __asm volatile( " LDR R0,=0x08000209\n BLX R0 \n");
  52:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #endif
  53:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     GPIO_E.moder = 0x55555555;
 2165              		.loc 5 53 0
 2166 0966 034B     		ldr	r3, .L131
 2167 0968 034A     		ldr	r2, .L131+4
 2168 096a 1A60     		str	r2, [r3]
  54:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** }
 2169              		.loc 5 54 0
 2170 096c C046     		nop
 2171 096e BD46     		mov	sp, r7
 2172              		@ sp needed
 2173 0970 80BD     		pop	{r7, pc}
 2174              	.L132:
 2175 0972 C046     		.align	2
 2176              	.L131:
 2177 0974 00100240 		.word	1073876992
 2178 0978 55555555 		.word	1431655765
 2179              		.cfi_endproc
 2180              	.LFE27:
 2182              		.align	1
 2183              		.global	main
 2184              		.syntax unified
 2185              		.code	16
 2186              		.thumb_func
 2187              		.fpu softvfp
 2189              	main:
 2190              	.LFB28:
  55:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** void main(void) {
 2191              		.loc 5 55 0
 2192              		.cfi_startproc
 2193              		@ args = 0, pretend = 0, frame = 0
 2194              		@ frame_needed = 1, uses_anonymous_args = 0
 2195 097c 80B5     		push	{r7, lr}
 2196              		.cfi_def_cfa_offset 8
 2197              		.cfi_offset 7, -8
 2198              		.cfi_offset 14, -4
 2199 097e 00AF     		add	r7, sp, #0
 2200              		.cfi_def_cfa_register 7
  56:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     unsigned i;
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     init_app();
 2201              		.loc 5 57 0
 2202 0980 FFF7FEFF 		bl	init_app
  58:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     graphic_initialize();
 2203              		.loc 5 58 0
 2204 0984 FFF7FEFF 		bl	graphic_initialize
  59:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #ifndef SIMULATOR
  60:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     graphic_clear_screen();
  61:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #endif
  62:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     drawgrid();
 2205              		.loc 5 62 0
 2206 0988 FFF7FEFF 		bl	drawgrid
 2207              	.L134:
  63:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     while(1){
  64:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		clear_backBuffer();
 2208              		.loc 5 64 0 discriminator 1
 2209 098c FFF7FEFF 		bl	clear_backBuffer
  65:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		drawgrid();
 2210              		.loc 5 65 0 discriminator 1
 2211 0990 FFF7FEFF 		bl	drawgrid
  66:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		graphic_draw_screen();
 2212              		.loc 5 66 0 discriminator 1
 2213 0994 FFF7FEFF 		bl	graphic_draw_screen
  64:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		drawgrid();
 2214              		.loc 5 64 0 discriminator 1
 2215 0998 F8E7     		b	.L134
 2216              		.cfi_endproc
 2217              	.LFE28:
 2219              	.Letext0:
 2220              		.file 6 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\machine\\_default_types.h"
 2221              		.file 7 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\sys\\_stdint.h"
 2222              		.file 8 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/gpio.h"
