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
 865              		.syntax unified
 866              		.code	16
 867              		.thumb_func
 868              		.fpu softvfp
 870              	load_sprite:
 871              	.LFB12:
 167:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 168:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** typedef struct {
 169:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	unsigned char width;
 170:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	unsigned char height;
 171:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	unsigned char* data;
 172:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** } sprite;
 173:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static void load_sprite(sprite* s, unsigned char* data, int width, int height) {
 872              		.loc 1 173 0
 873              		.cfi_startproc
 874              		@ args = 0, pretend = 0, frame = 16
 875              		@ frame_needed = 1, uses_anonymous_args = 0
 876 0400 80B5     		push	{r7, lr}
 877              		.cfi_def_cfa_offset 8
 878              		.cfi_offset 7, -8
 879              		.cfi_offset 14, -4
 880 0402 84B0     		sub	sp, sp, #16
 881              		.cfi_def_cfa_offset 24
 882 0404 00AF     		add	r7, sp, #0
 883              		.cfi_def_cfa_register 7
 884 0406 F860     		str	r0, [r7, #12]
 885 0408 B960     		str	r1, [r7, #8]
 886 040a 7A60     		str	r2, [r7, #4]
 887 040c 3B60     		str	r3, [r7]
 174:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	s->width = width;
 888              		.loc 1 174 0
 889 040e 7B68     		ldr	r3, [r7, #4]
 890 0410 DAB2     		uxtb	r2, r3
 891 0412 FB68     		ldr	r3, [r7, #12]
 892 0414 1A70     		strb	r2, [r3]
 175:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	s->height = height;
 893              		.loc 1 175 0
 894 0416 3B68     		ldr	r3, [r7]
 895 0418 DAB2     		uxtb	r2, r3
 896 041a FB68     		ldr	r3, [r7, #12]
 897 041c 5A70     		strb	r2, [r3, #1]
 176:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	s->data = data;
 898              		.loc 1 176 0
 899 041e FB68     		ldr	r3, [r7, #12]
 900 0420 BA68     		ldr	r2, [r7, #8]
 901 0422 5A60     		str	r2, [r3, #4]
 177:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 902              		.loc 1 177 0
 903 0424 C046     		nop
 904 0426 BD46     		mov	sp, r7
 905 0428 04B0     		add	sp, sp, #16
 906              		@ sp needed
 907 042a 80BD     		pop	{r7, pc}
 908              		.cfi_endproc
 909              	.LFE12:
 911              		.align	1
 912              		.global	draw_sprite
 913              		.syntax unified
 914              		.code	16
 915              		.thumb_func
 916              		.fpu softvfp
 918              	draw_sprite:
 919              	.LFB13:
 178:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 179:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** void draw_sprite(sprite* s, int x, int y) {
 920              		.loc 1 179 0
 921              		.cfi_startproc
 922              		@ args = 0, pretend = 0, frame = 40
 923              		@ frame_needed = 1, uses_anonymous_args = 0
 924 042c 80B5     		push	{r7, lr}
 925              		.cfi_def_cfa_offset 8
 926              		.cfi_offset 7, -8
 927              		.cfi_offset 14, -4
 928 042e 8AB0     		sub	sp, sp, #40
 929              		.cfi_def_cfa_offset 48
 930 0430 00AF     		add	r7, sp, #0
 931              		.cfi_def_cfa_register 7
 932 0432 F860     		str	r0, [r7, #12]
 933 0434 B960     		str	r1, [r7, #8]
 934 0436 7A60     		str	r2, [r7, #4]
 180:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	int i,j,k, width_in_bytes;
 181:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	if (s->width % 8 == 0){
 935              		.loc 1 181 0
 936 0438 FB68     		ldr	r3, [r7, #12]
 937 043a 1B78     		ldrb	r3, [r3]
 938 043c 0722     		movs	r2, #7
 939 043e 1340     		ands	r3, r2
 940 0440 DBB2     		uxtb	r3, r3
 941 0442 002B     		cmp	r3, #0
 942 0444 05D1     		bne	.L51
 182:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		width_in_bytes = s->width / 8;
 943              		.loc 1 182 0
 944 0446 FB68     		ldr	r3, [r7, #12]
 945 0448 1B78     		ldrb	r3, [r3]
 946 044a DB08     		lsrs	r3, r3, #3
 947 044c DBB2     		uxtb	r3, r3
 948 044e BB61     		str	r3, [r7, #24]
 949 0450 05E0     		b	.L52
 950              	.L51:
 183:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	
 184:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	} else {
 185:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		width_in_bytes = s->width / 8 + 1;
 951              		.loc 1 185 0
 952 0452 FB68     		ldr	r3, [r7, #12]
 953 0454 1B78     		ldrb	r3, [r3]
 954 0456 DB08     		lsrs	r3, r3, #3
 955 0458 DBB2     		uxtb	r3, r3
 956 045a 0133     		adds	r3, r3, #1
 957 045c BB61     		str	r3, [r7, #24]
 958              	.L52:
 186:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		
 187:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	}
 188:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	for (i = 0; i < s->height; i++) {
 959              		.loc 1 188 0
 960 045e 0023     		movs	r3, #0
 961 0460 7B62     		str	r3, [r7, #36]
 962 0462 38E0     		b	.L53
 963              	.L59:
 189:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		for (j = 0; j < width_in_bytes; j++) {
 964              		.loc 1 189 0
 965 0464 0023     		movs	r3, #0
 966 0466 3B62     		str	r3, [r7, #32]
 967 0468 2EE0     		b	.L54
 968              	.L58:
 969              	.LBB4:
 190:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			unsigned char byte = s->data[i * width_in_bytes + j];
 970              		.loc 1 190 0
 971 046a FB68     		ldr	r3, [r7, #12]
 972 046c 5B68     		ldr	r3, [r3, #4]
 973 046e 7A6A     		ldr	r2, [r7, #36]
 974 0470 B969     		ldr	r1, [r7, #24]
 975 0472 5143     		muls	r1, r2
 976 0474 3A6A     		ldr	r2, [r7, #32]
 977 0476 8A18     		adds	r2, r1, r2
 978 0478 9A18     		adds	r2, r3, r2
 979 047a 1723     		movs	r3, #23
 980 047c FB18     		adds	r3, r7, r3
 981 047e 1278     		ldrb	r2, [r2]
 982 0480 1A70     		strb	r2, [r3]
 191:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			for (k =0; k < 8; k++) {
 983              		.loc 1 191 0
 984 0482 0023     		movs	r3, #0
 985 0484 FB61     		str	r3, [r7, #28]
 986 0486 19E0     		b	.L55
 987              	.L57:
 192:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 				if (byte & (1 << k))
 988              		.loc 1 192 0
 989 0488 1723     		movs	r3, #23
 990 048a FB18     		adds	r3, r7, r3
 991 048c 1A78     		ldrb	r2, [r3]
 992 048e FB69     		ldr	r3, [r7, #28]
 993 0490 1A41     		asrs	r2, r2, r3
 994 0492 1300     		movs	r3, r2
 995 0494 0122     		movs	r2, #1
 996 0496 1340     		ands	r3, r2
 997 0498 0DD0     		beq	.L56
 998              	.LBB5:
 193:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 				pixel(8 * j + k + x + 1, i + y + 1);
 999              		.loc 1 193 0
 1000 049a 3B6A     		ldr	r3, [r7, #32]
 1001 049c DA00     		lsls	r2, r3, #3
 1002 049e FB69     		ldr	r3, [r7, #28]
 1003 04a0 D218     		adds	r2, r2, r3
 1004 04a2 BB68     		ldr	r3, [r7, #8]
 1005 04a4 D318     		adds	r3, r2, r3
 1006 04a6 581C     		adds	r0, r3, #1
 1007 04a8 7A6A     		ldr	r2, [r7, #36]
 1008 04aa 7B68     		ldr	r3, [r7, #4]
 1009 04ac D318     		adds	r3, r2, r3
 1010 04ae 0133     		adds	r3, r3, #1
 1011 04b0 1900     		movs	r1, r3
 1012 04b2 FFF7FEFF 		bl	pixel
 1013              	.L56:
 1014              	.LBE5:
 191:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			for (k =0; k < 8; k++) {
 1015              		.loc 1 191 0 discriminator 2
 1016 04b6 FB69     		ldr	r3, [r7, #28]
 1017 04b8 0133     		adds	r3, r3, #1
 1018 04ba FB61     		str	r3, [r7, #28]
 1019              	.L55:
 191:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			for (k =0; k < 8; k++) {
 1020              		.loc 1 191 0 is_stmt 0 discriminator 1
 1021 04bc FB69     		ldr	r3, [r7, #28]
 1022 04be 072B     		cmp	r3, #7
 1023 04c0 E2DD     		ble	.L57
 1024              	.LBE4:
 189:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			unsigned char byte = s->data[i * width_in_bytes + j];
 1025              		.loc 1 189 0 is_stmt 1 discriminator 2
 1026 04c2 3B6A     		ldr	r3, [r7, #32]
 1027 04c4 0133     		adds	r3, r3, #1
 1028 04c6 3B62     		str	r3, [r7, #32]
 1029              	.L54:
 189:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			unsigned char byte = s->data[i * width_in_bytes + j];
 1030              		.loc 1 189 0 is_stmt 0 discriminator 1
 1031 04c8 3A6A     		ldr	r2, [r7, #32]
 1032 04ca BB69     		ldr	r3, [r7, #24]
 1033 04cc 9A42     		cmp	r2, r3
 1034 04ce CCDB     		blt	.L58
 188:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		for (j = 0; j < width_in_bytes; j++) {
 1035              		.loc 1 188 0 is_stmt 1 discriminator 2
 1036 04d0 7B6A     		ldr	r3, [r7, #36]
 1037 04d2 0133     		adds	r3, r3, #1
 1038 04d4 7B62     		str	r3, [r7, #36]
 1039              	.L53:
 188:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		for (j = 0; j < width_in_bytes; j++) {
 1040              		.loc 1 188 0 is_stmt 0 discriminator 1
 1041 04d6 FB68     		ldr	r3, [r7, #12]
 1042 04d8 5B78     		ldrb	r3, [r3, #1]
 1043 04da 1A00     		movs	r2, r3
 1044 04dc 7B6A     		ldr	r3, [r7, #36]
 1045 04de 9342     		cmp	r3, r2
 1046 04e0 C0DB     		blt	.L59
 194:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			}
 195:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		}
 196:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	}
 197:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 1047              		.loc 1 197 0 is_stmt 1
 1048 04e2 C046     		nop
 1049 04e4 BD46     		mov	sp, r7
 1050 04e6 0AB0     		add	sp, sp, #40
 1051              		@ sp needed
 1052 04e8 80BD     		pop	{r7, pc}
 1053              		.cfi_endproc
 1054              	.LFE13:
 1056              		.align	1
 1057              		.global	graphic_draw_screen
 1058              		.syntax unified
 1059              		.code	16
 1060              		.thumb_func
 1061              		.fpu softvfp
 1063              	graphic_draw_screen:
 1064              	.LFB14:
 198:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 199:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 200:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** void graphic_draw_screen(void) {
 1065              		.loc 1 200 0
 1066              		.cfi_startproc
 1067              		@ args = 0, pretend = 0, frame = 16
 1068              		@ frame_needed = 1, uses_anonymous_args = 0
 1069 04ea 80B5     		push	{r7, lr}
 1070              		.cfi_def_cfa_offset 8
 1071              		.cfi_offset 7, -8
 1072              		.cfi_offset 14, -4
 1073 04ec 84B0     		sub	sp, sp, #16
 1074              		.cfi_def_cfa_offset 24
 1075 04ee 00AF     		add	r7, sp, #0
 1076              		.cfi_def_cfa_register 7
 201:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	uint8_t i, j, controller, c;
 202:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	unsigned int k = 0;
 1077              		.loc 1 202 0
 1078 04f0 0023     		movs	r3, #0
 1079 04f2 BB60     		str	r3, [r7, #8]
 203:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	for(c = 0; c < 2; c++) {
 1080              		.loc 1 203 0
 1081 04f4 0D23     		movs	r3, #13
 1082 04f6 FB18     		adds	r3, r7, r3
 1083 04f8 0022     		movs	r2, #0
 1084 04fa 1A70     		strb	r2, [r3]
 1085 04fc 4FE0     		b	.L61
 1086              	.L68:
 204:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		controller = (c == 0) ? B_CS1 : B_CS2;
 1087              		.loc 1 204 0
 1088 04fe 0D23     		movs	r3, #13
 1089 0500 FB18     		adds	r3, r7, r3
 1090 0502 1B78     		ldrb	r3, [r3]
 1091 0504 002B     		cmp	r3, #0
 1092 0506 01D1     		bne	.L62
 1093              		.loc 1 204 0 is_stmt 0 discriminator 1
 1094 0508 0822     		movs	r2, #8
 1095 050a 00E0     		b	.L63
 1096              	.L62:
 1097              		.loc 1 204 0 discriminator 2
 1098 050c 1022     		movs	r2, #16
 1099              	.L63:
 1100              		.loc 1 204 0 discriminator 4
 1101 050e FB1D     		adds	r3, r7, #7
 1102 0510 1A70     		strb	r2, [r3]
 205:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		for(j = 0; j < 8; j++) {
 1103              		.loc 1 205 0 is_stmt 1 discriminator 4
 1104 0512 0E23     		movs	r3, #14
 1105 0514 FB18     		adds	r3, r7, r3
 1106 0516 0022     		movs	r2, #0
 1107 0518 1A70     		strb	r2, [r3]
 1108 051a 35E0     		b	.L64
 1109              	.L67:
 206:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			graphic_write_command(LCD_SET_PAGE | j, controller);
 1110              		.loc 1 206 0
 1111 051c 0E23     		movs	r3, #14
 1112 051e FB18     		adds	r3, r7, r3
 1113 0520 1B78     		ldrb	r3, [r3]
 1114 0522 4822     		movs	r2, #72
 1115 0524 5242     		rsbs	r2, r2, #0
 1116 0526 1343     		orrs	r3, r2
 1117 0528 DAB2     		uxtb	r2, r3
 1118 052a FB1D     		adds	r3, r7, #7
 1119 052c 1B78     		ldrb	r3, [r3]
 1120 052e 1900     		movs	r1, r3
 1121 0530 1000     		movs	r0, r2
 1122 0532 FFF7ABFE 		bl	graphic_write_command
 207:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			graphic_write_command(LCD_SET_ADD | 0, controller);
 1123              		.loc 1 207 0
 1124 0536 FB1D     		adds	r3, r7, #7
 1125 0538 1B78     		ldrb	r3, [r3]
 1126 053a 1900     		movs	r1, r3
 1127 053c 4020     		movs	r0, #64
 1128 053e FFF7A5FE 		bl	graphic_write_command
 208:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			for(i = 0; i <= 63; i++, k++) {
 1129              		.loc 1 208 0
 1130 0542 0F23     		movs	r3, #15
 1131 0544 FB18     		adds	r3, r7, r3
 1132 0546 0022     		movs	r2, #0
 1133 0548 1A70     		strb	r2, [r3]
 1134 054a 12E0     		b	.L65
 1135              	.L66:
 209:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 				graphic_write_data(backBuffer[k], controller);
 1136              		.loc 1 209 0 discriminator 3
 1137 054c 184A     		ldr	r2, .L69
 1138 054e BB68     		ldr	r3, [r7, #8]
 1139 0550 D318     		adds	r3, r2, r3
 1140 0552 1A78     		ldrb	r2, [r3]
 1141 0554 FB1D     		adds	r3, r7, #7
 1142 0556 1B78     		ldrb	r3, [r3]
 1143 0558 1900     		movs	r1, r3
 1144 055a 1000     		movs	r0, r2
 1145 055c FFF7B9FE 		bl	graphic_write_data
 208:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			for(i = 0; i <= 63; i++, k++) {
 1146              		.loc 1 208 0 discriminator 3
 1147 0560 0F21     		movs	r1, #15
 1148 0562 7B18     		adds	r3, r7, r1
 1149 0564 1A78     		ldrb	r2, [r3]
 1150 0566 7B18     		adds	r3, r7, r1
 1151 0568 0132     		adds	r2, r2, #1
 1152 056a 1A70     		strb	r2, [r3]
 1153 056c BB68     		ldr	r3, [r7, #8]
 1154 056e 0133     		adds	r3, r3, #1
 1155 0570 BB60     		str	r3, [r7, #8]
 1156              	.L65:
 208:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			for(i = 0; i <= 63; i++, k++) {
 1157              		.loc 1 208 0 is_stmt 0 discriminator 1
 1158 0572 0F23     		movs	r3, #15
 1159 0574 FB18     		adds	r3, r7, r3
 1160 0576 1B78     		ldrb	r3, [r3]
 1161 0578 3F2B     		cmp	r3, #63
 1162 057a E7D9     		bls	.L66
 205:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			graphic_write_command(LCD_SET_PAGE | j, controller);
 1163              		.loc 1 205 0 is_stmt 1 discriminator 2
 1164 057c 0E21     		movs	r1, #14
 1165 057e 7B18     		adds	r3, r7, r1
 1166 0580 1A78     		ldrb	r2, [r3]
 1167 0582 7B18     		adds	r3, r7, r1
 1168 0584 0132     		adds	r2, r2, #1
 1169 0586 1A70     		strb	r2, [r3]
 1170              	.L64:
 205:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			graphic_write_command(LCD_SET_PAGE | j, controller);
 1171              		.loc 1 205 0 is_stmt 0 discriminator 1
 1172 0588 0E23     		movs	r3, #14
 1173 058a FB18     		adds	r3, r7, r3
 1174 058c 1B78     		ldrb	r3, [r3]
 1175 058e 072B     		cmp	r3, #7
 1176 0590 C4D9     		bls	.L67
 203:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		controller = (c == 0) ? B_CS1 : B_CS2;
 1177              		.loc 1 203 0 is_stmt 1 discriminator 2
 1178 0592 0D21     		movs	r1, #13
 1179 0594 7B18     		adds	r3, r7, r1
 1180 0596 1A78     		ldrb	r2, [r3]
 1181 0598 7B18     		adds	r3, r7, r1
 1182 059a 0132     		adds	r2, r2, #1
 1183 059c 1A70     		strb	r2, [r3]
 1184              	.L61:
 203:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		controller = (c == 0) ? B_CS1 : B_CS2;
 1185              		.loc 1 203 0 is_stmt 0 discriminator 1
 1186 059e 0D23     		movs	r3, #13
 1187 05a0 FB18     		adds	r3, r7, r3
 1188 05a2 1B78     		ldrb	r3, [r3]
 1189 05a4 012B     		cmp	r3, #1
 1190 05a6 AAD9     		bls	.L68
 210:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			}
 211:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		}
 212:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	}
 213:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 1191              		.loc 1 213 0 is_stmt 1
 1192 05a8 C046     		nop
 1193 05aa BD46     		mov	sp, r7
 1194 05ac 04B0     		add	sp, sp, #16
 1195              		@ sp needed
 1196 05ae 80BD     		pop	{r7, pc}
 1197              	.L70:
 1198              		.align	2
 1199              	.L69:
 1200 05b0 00000000 		.word	backBuffer
 1201              		.cfi_endproc
 1202              	.LFE14:
 1204              		.align	1
 1205              		.global	pixel
 1206              		.syntax unified
 1207              		.code	16
 1208              		.thumb_func
 1209              		.fpu softvfp
 1211              	pixel:
 1212              	.LFB15:
 214:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 215:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** void pixel(int x, int y) {
 1213              		.loc 1 215 0
 1214              		.cfi_startproc
 1215              		@ args = 0, pretend = 0, frame = 16
 1216              		@ frame_needed = 1, uses_anonymous_args = 0
 1217 05b4 80B5     		push	{r7, lr}
 1218              		.cfi_def_cfa_offset 8
 1219              		.cfi_offset 7, -8
 1220              		.cfi_offset 14, -4
 1221 05b6 84B0     		sub	sp, sp, #16
 1222              		.cfi_def_cfa_offset 24
 1223 05b8 00AF     		add	r7, sp, #0
 1224              		.cfi_def_cfa_register 7
 1225 05ba 7860     		str	r0, [r7, #4]
 1226 05bc 3960     		str	r1, [r7]
 216:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	uint8_t mask;
 217:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	int index = 0;
 1227              		.loc 1 217 0
 1228 05be 0023     		movs	r3, #0
 1229 05c0 FB60     		str	r3, [r7, #12]
 218:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	if( (x > 128 ) || (x < 1) || (y > 64) || (y < 1) ) {
 1230              		.loc 1 218 0
 1231 05c2 7B68     		ldr	r3, [r7, #4]
 1232 05c4 802B     		cmp	r3, #128
 1233 05c6 3DDC     		bgt	.L78
 1234              		.loc 1 218 0 is_stmt 0 discriminator 1
 1235 05c8 7B68     		ldr	r3, [r7, #4]
 1236 05ca 002B     		cmp	r3, #0
 1237 05cc 3ADD     		ble	.L78
 1238              		.loc 1 218 0 discriminator 2
 1239 05ce 3B68     		ldr	r3, [r7]
 1240 05d0 402B     		cmp	r3, #64
 1241 05d2 37DC     		bgt	.L78
 1242              		.loc 1 218 0 discriminator 3
 1243 05d4 3B68     		ldr	r3, [r7]
 1244 05d6 002B     		cmp	r3, #0
 1245 05d8 34DD     		ble	.L78
 219:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		return;
 220:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	}
 221:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	mask = 1 << ((y-1)%8);
 1246              		.loc 1 221 0 is_stmt 1
 1247 05da 3B68     		ldr	r3, [r7]
 1248 05dc 013B     		subs	r3, r3, #1
 1249 05de 1B4A     		ldr	r2, .L79
 1250 05e0 1340     		ands	r3, r2
 1251 05e2 04D5     		bpl	.L75
 1252 05e4 013B     		subs	r3, r3, #1
 1253 05e6 0822     		movs	r2, #8
 1254 05e8 5242     		rsbs	r2, r2, #0
 1255 05ea 1343     		orrs	r3, r2
 1256 05ec 0133     		adds	r3, r3, #1
 1257              	.L75:
 1258 05ee 1A00     		movs	r2, r3
 1259 05f0 0123     		movs	r3, #1
 1260 05f2 9340     		lsls	r3, r3, r2
 1261 05f4 1A00     		movs	r2, r3
 1262 05f6 0B23     		movs	r3, #11
 1263 05f8 FB18     		adds	r3, r7, r3
 1264 05fa 1A70     		strb	r2, [r3]
 222:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	if(x > 64) {
 1265              		.loc 1 222 0
 1266 05fc 7B68     		ldr	r3, [r7, #4]
 1267 05fe 402B     		cmp	r3, #64
 1268 0600 05DD     		ble	.L76
 223:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		x -= 65;
 1269              		.loc 1 223 0
 1270 0602 7B68     		ldr	r3, [r7, #4]
 1271 0604 413B     		subs	r3, r3, #65
 1272 0606 7B60     		str	r3, [r7, #4]
 224:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		index = 512;
 1273              		.loc 1 224 0
 1274 0608 8023     		movs	r3, #128
 1275 060a 9B00     		lsls	r3, r3, #2
 1276 060c FB60     		str	r3, [r7, #12]
 1277              	.L76:
 225:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	}
 226:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	index += x + ((y-1)/8)*64;
 1278              		.loc 1 226 0
 1279 060e 3B68     		ldr	r3, [r7]
 1280 0610 013B     		subs	r3, r3, #1
 1281 0612 002B     		cmp	r3, #0
 1282 0614 00DA     		bge	.L77
 1283 0616 0733     		adds	r3, r3, #7
 1284              	.L77:
 1285 0618 DB10     		asrs	r3, r3, #3
 1286 061a 9A01     		lsls	r2, r3, #6
 1287 061c 7B68     		ldr	r3, [r7, #4]
 1288 061e D318     		adds	r3, r2, r3
 1289 0620 FA68     		ldr	r2, [r7, #12]
 1290 0622 D318     		adds	r3, r2, r3
 1291 0624 FB60     		str	r3, [r7, #12]
 227:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	backBuffer[index] |= mask;
 1292              		.loc 1 227 0
 1293 0626 0A4A     		ldr	r2, .L79+4
 1294 0628 FB68     		ldr	r3, [r7, #12]
 1295 062a D318     		adds	r3, r2, r3
 1296 062c 1A78     		ldrb	r2, [r3]
 1297 062e 0B23     		movs	r3, #11
 1298 0630 FB18     		adds	r3, r7, r3
 1299 0632 1B78     		ldrb	r3, [r3]
 1300 0634 1343     		orrs	r3, r2
 1301 0636 D9B2     		uxtb	r1, r3
 1302 0638 054A     		ldr	r2, .L79+4
 1303 063a FB68     		ldr	r3, [r7, #12]
 1304 063c D318     		adds	r3, r2, r3
 1305 063e 0A1C     		adds	r2, r1, #0
 1306 0640 1A70     		strb	r2, [r3]
 1307 0642 00E0     		b	.L71
 1308              	.L78:
 219:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	}
 1309              		.loc 1 219 0
 1310 0644 C046     		nop
 1311              	.L71:
 228:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 1312              		.loc 1 228 0
 1313 0646 BD46     		mov	sp, r7
 1314 0648 04B0     		add	sp, sp, #16
 1315              		@ sp needed
 1316 064a 80BD     		pop	{r7, pc}
 1317              	.L80:
 1318              		.align	2
 1319              	.L79:
 1320 064c 07000080 		.word	-2147483641
 1321 0650 00000000 		.word	backBuffer
 1322              		.cfi_endproc
 1323              	.LFE15:
 1325              		.global	ball_geometry
 1326              		.data
 1327              		.align	2
 1330              	ball_geometry:
 1331 0000 0C000000 		.word	12
 1332 0004 04000000 		.word	4
 1333 0008 04000000 		.word	4
 1334 000c 00       		.byte	0
 1335 000d 01       		.byte	1
 1336 000e 00       		.byte	0
 1337 000f 02       		.byte	2
 1338 0010 01       		.byte	1
 1339 0011 00       		.byte	0
 1340 0012 01       		.byte	1
 1341 0013 01       		.byte	1
 1342 0014 01       		.byte	1
 1343 0015 02       		.byte	2
 1344 0016 01       		.byte	1
 1345 0017 03       		.byte	3
 1346 0018 02       		.byte	2
 1347 0019 00       		.byte	0
 1348 001a 02       		.byte	2
 1349 001b 01       		.byte	1
 1350 001c 02       		.byte	2
 1351 001d 02       		.byte	2
 1352 001e 02       		.byte	2
 1353 001f 03       		.byte	3
 1354 0020 03       		.byte	3
 1355 0021 01       		.byte	1
 1356 0022 03       		.byte	3
 1357 0023 02       		.byte	2
 1358 0024 00000000 		.space	16
 1358      00000000 
 1358      00000000 
 1358      00000000 
 1359              		.text
 1360              		.align	1
 1361              		.global	set_object_speed
 1362              		.syntax unified
 1363              		.code	16
 1364              		.thumb_func
 1365              		.fpu softvfp
 1367              	set_object_speed:
 1368              	.LFB16:
 1369              		.file 2 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/geometry.h"
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
 1370              		.loc 2 51 0
 1371              		.cfi_startproc
 1372              		@ args = 0, pretend = 0, frame = 16
 1373              		@ frame_needed = 1, uses_anonymous_args = 0
 1374 0654 80B5     		push	{r7, lr}
 1375              		.cfi_def_cfa_offset 8
 1376              		.cfi_offset 7, -8
 1377              		.cfi_offset 14, -4
 1378 0656 84B0     		sub	sp, sp, #16
 1379              		.cfi_def_cfa_offset 24
 1380 0658 00AF     		add	r7, sp, #0
 1381              		.cfi_def_cfa_register 7
 1382 065a F860     		str	r0, [r7, #12]
 1383 065c B960     		str	r1, [r7, #8]
 1384 065e 7A60     		str	r2, [r7, #4]
  52:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     o->dirx = speedx;
 1385              		.loc 2 52 0
 1386 0660 FB68     		ldr	r3, [r7, #12]
 1387 0662 BA68     		ldr	r2, [r7, #8]
 1388 0664 5A60     		str	r2, [r3, #4]
  53:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     o->diry = speedy;
 1389              		.loc 2 53 0
 1390 0666 FB68     		ldr	r3, [r7, #12]
 1391 0668 7A68     		ldr	r2, [r7, #4]
 1392 066a 9A60     		str	r2, [r3, #8]
  54:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** }
 1393              		.loc 2 54 0
 1394 066c C046     		nop
 1395 066e BD46     		mov	sp, r7
 1396 0670 04B0     		add	sp, sp, #16
 1397              		@ sp needed
 1398 0672 80BD     		pop	{r7, pc}
 1399              		.cfi_endproc
 1400              	.LFE16:
 1402              		.align	1
 1403              		.global	draw_object
 1404              		.syntax unified
 1405              		.code	16
 1406              		.thumb_func
 1407              		.fpu softvfp
 1409              	draw_object:
 1410              	.LFB17:
  55:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** 
  56:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** void draw_object(POBJECT o) {
 1411              		.loc 2 56 0
 1412              		.cfi_startproc
 1413              		@ args = 0, pretend = 0, frame = 16
 1414              		@ frame_needed = 1, uses_anonymous_args = 0
 1415 0674 80B5     		push	{r7, lr}
 1416              		.cfi_def_cfa_offset 8
 1417              		.cfi_offset 7, -8
 1418              		.cfi_offset 14, -4
 1419 0676 84B0     		sub	sp, sp, #16
 1420              		.cfi_def_cfa_offset 24
 1421 0678 00AF     		add	r7, sp, #0
 1422              		.cfi_def_cfa_register 7
 1423 067a 7860     		str	r0, [r7, #4]
 1424              	.LBB6:
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 1425              		.loc 2 57 0
 1426 067c 0023     		movs	r3, #0
 1427 067e FB60     		str	r3, [r7, #12]
 1428 0680 1BE0     		b	.L83
 1429              	.L84:
  58:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         pixel(o->posx+o->geo->px[i].x,o->posy+o->geo->px[i].y);
 1430              		.loc 2 58 0 discriminator 3
 1431 0682 7B68     		ldr	r3, [r7, #4]
 1432 0684 DA68     		ldr	r2, [r3, #12]
 1433 0686 7B68     		ldr	r3, [r7, #4]
 1434 0688 1968     		ldr	r1, [r3]
 1435 068a FB68     		ldr	r3, [r7, #12]
 1436 068c 0433     		adds	r3, r3, #4
 1437 068e 5B00     		lsls	r3, r3, #1
 1438 0690 CB18     		adds	r3, r1, r3
 1439 0692 0433     		adds	r3, r3, #4
 1440 0694 1B78     		ldrb	r3, [r3]
 1441 0696 D018     		adds	r0, r2, r3
 1442 0698 7B68     		ldr	r3, [r7, #4]
 1443 069a 1A69     		ldr	r2, [r3, #16]
 1444 069c 7B68     		ldr	r3, [r7, #4]
 1445 069e 1968     		ldr	r1, [r3]
 1446 06a0 FB68     		ldr	r3, [r7, #12]
 1447 06a2 0433     		adds	r3, r3, #4
 1448 06a4 5B00     		lsls	r3, r3, #1
 1449 06a6 CB18     		adds	r3, r1, r3
 1450 06a8 0533     		adds	r3, r3, #5
 1451 06aa 1B78     		ldrb	r3, [r3]
 1452 06ac D318     		adds	r3, r2, r3
 1453 06ae 1900     		movs	r1, r3
 1454 06b0 FFF7FEFF 		bl	pixel
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 1455              		.loc 2 57 0 discriminator 3
 1456 06b4 FB68     		ldr	r3, [r7, #12]
 1457 06b6 0133     		adds	r3, r3, #1
 1458 06b8 FB60     		str	r3, [r7, #12]
 1459              	.L83:
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 1460              		.loc 2 57 0 is_stmt 0 discriminator 1
 1461 06ba 7B68     		ldr	r3, [r7, #4]
 1462 06bc 1B68     		ldr	r3, [r3]
 1463 06be 1B68     		ldr	r3, [r3]
 1464 06c0 FA68     		ldr	r2, [r7, #12]
 1465 06c2 9A42     		cmp	r2, r3
 1466 06c4 DDDB     		blt	.L84
 1467              	.LBE6:
  59:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     }
  60:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** }
 1468              		.loc 2 60 0 is_stmt 1
 1469 06c6 C046     		nop
 1470 06c8 BD46     		mov	sp, r7
 1471 06ca 04B0     		add	sp, sp, #16
 1472              		@ sp needed
 1473 06cc 80BD     		pop	{r7, pc}
 1474              		.cfi_endproc
 1475              	.LFE17:
 1477              		.align	1
 1478              		.global	move_object
 1479              		.syntax unified
 1480              		.code	16
 1481              		.thumb_func
 1482              		.fpu softvfp
 1484              	move_object:
 1485              	.LFB18:
  61:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** 
  62:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** void move_object(POBJECT o){
 1486              		.loc 2 62 0
 1487              		.cfi_startproc
 1488              		@ args = 0, pretend = 0, frame = 8
 1489              		@ frame_needed = 1, uses_anonymous_args = 0
 1490 06ce 80B5     		push	{r7, lr}
 1491              		.cfi_def_cfa_offset 8
 1492              		.cfi_offset 7, -8
 1493              		.cfi_offset 14, -4
 1494 06d0 82B0     		sub	sp, sp, #8
 1495              		.cfi_def_cfa_offset 16
 1496 06d2 00AF     		add	r7, sp, #0
 1497              		.cfi_def_cfa_register 7
 1498 06d4 7860     		str	r0, [r7, #4]
  63:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     clear_object(o);
 1499              		.loc 2 63 0
 1500 06d6 7B68     		ldr	r3, [r7, #4]
 1501 06d8 1800     		movs	r0, r3
 1502 06da FFF7FEFF 		bl	clear_object
  64:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     o->posx = o->posx+o->dirx;
 1503              		.loc 2 64 0
 1504 06de 7B68     		ldr	r3, [r7, #4]
 1505 06e0 DA68     		ldr	r2, [r3, #12]
 1506 06e2 7B68     		ldr	r3, [r7, #4]
 1507 06e4 5B68     		ldr	r3, [r3, #4]
 1508 06e6 D218     		adds	r2, r2, r3
 1509 06e8 7B68     		ldr	r3, [r7, #4]
 1510 06ea DA60     		str	r2, [r3, #12]
  65:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     o->posy = o->posy+o->diry;
 1511              		.loc 2 65 0
 1512 06ec 7B68     		ldr	r3, [r7, #4]
 1513 06ee 1A69     		ldr	r2, [r3, #16]
 1514 06f0 7B68     		ldr	r3, [r7, #4]
 1515 06f2 9B68     		ldr	r3, [r3, #8]
 1516 06f4 D218     		adds	r2, r2, r3
 1517 06f6 7B68     		ldr	r3, [r7, #4]
 1518 06f8 1A61     		str	r2, [r3, #16]
  66:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     if (o->posx < 1){
 1519              		.loc 2 66 0
 1520 06fa 7B68     		ldr	r3, [r7, #4]
 1521 06fc DB68     		ldr	r3, [r3, #12]
 1522 06fe 002B     		cmp	r3, #0
 1523 0700 07DC     		bgt	.L86
  67:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->dirx *= -1;
 1524              		.loc 2 67 0
 1525 0702 7B68     		ldr	r3, [r7, #4]
 1526 0704 5B68     		ldr	r3, [r3, #4]
 1527 0706 5A42     		rsbs	r2, r3, #0
 1528 0708 7B68     		ldr	r3, [r7, #4]
 1529 070a 5A60     		str	r2, [r3, #4]
  68:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->posx = 1;
 1530              		.loc 2 68 0
 1531 070c 7B68     		ldr	r3, [r7, #4]
 1532 070e 0122     		movs	r2, #1
 1533 0710 DA60     		str	r2, [r3, #12]
 1534              	.L86:
  69:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     }
  70:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     if (o->posx + o->geo->sizex > 128){
 1535              		.loc 2 70 0
 1536 0712 7B68     		ldr	r3, [r7, #4]
 1537 0714 DA68     		ldr	r2, [r3, #12]
 1538 0716 7B68     		ldr	r3, [r7, #4]
 1539 0718 1B68     		ldr	r3, [r3]
 1540 071a 5B68     		ldr	r3, [r3, #4]
 1541 071c D318     		adds	r3, r2, r3
 1542 071e 802B     		cmp	r3, #128
 1543 0720 0BDD     		ble	.L87
  71:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->dirx *= -1;
 1544              		.loc 2 71 0
 1545 0722 7B68     		ldr	r3, [r7, #4]
 1546 0724 5B68     		ldr	r3, [r3, #4]
 1547 0726 5A42     		rsbs	r2, r3, #0
 1548 0728 7B68     		ldr	r3, [r7, #4]
 1549 072a 5A60     		str	r2, [r3, #4]
  72:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->posx = 128 - o->geo->sizex;
 1550              		.loc 2 72 0
 1551 072c 7B68     		ldr	r3, [r7, #4]
 1552 072e 1B68     		ldr	r3, [r3]
 1553 0730 5B68     		ldr	r3, [r3, #4]
 1554 0732 8022     		movs	r2, #128
 1555 0734 D21A     		subs	r2, r2, r3
 1556 0736 7B68     		ldr	r3, [r7, #4]
 1557 0738 DA60     		str	r2, [r3, #12]
 1558              	.L87:
  73:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     }
  74:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     
  75:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     if (o->posy < 1){
 1559              		.loc 2 75 0
 1560 073a 7B68     		ldr	r3, [r7, #4]
 1561 073c 1B69     		ldr	r3, [r3, #16]
 1562 073e 002B     		cmp	r3, #0
 1563 0740 07DC     		bgt	.L88
  76:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->diry *= -1;
 1564              		.loc 2 76 0
 1565 0742 7B68     		ldr	r3, [r7, #4]
 1566 0744 9B68     		ldr	r3, [r3, #8]
 1567 0746 5A42     		rsbs	r2, r3, #0
 1568 0748 7B68     		ldr	r3, [r7, #4]
 1569 074a 9A60     		str	r2, [r3, #8]
  77:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->posy = 1;
 1570              		.loc 2 77 0
 1571 074c 7B68     		ldr	r3, [r7, #4]
 1572 074e 0122     		movs	r2, #1
 1573 0750 1A61     		str	r2, [r3, #16]
 1574              	.L88:
  78:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     }
  79:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     if (o->posy + o->geo->sizey > 64){
 1575              		.loc 2 79 0
 1576 0752 7B68     		ldr	r3, [r7, #4]
 1577 0754 1A69     		ldr	r2, [r3, #16]
 1578 0756 7B68     		ldr	r3, [r7, #4]
 1579 0758 1B68     		ldr	r3, [r3]
 1580 075a 9B68     		ldr	r3, [r3, #8]
 1581 075c D318     		adds	r3, r2, r3
 1582 075e 402B     		cmp	r3, #64
 1583 0760 0BDD     		ble	.L89
  80:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->diry *= -1;
 1584              		.loc 2 80 0
 1585 0762 7B68     		ldr	r3, [r7, #4]
 1586 0764 9B68     		ldr	r3, [r3, #8]
 1587 0766 5A42     		rsbs	r2, r3, #0
 1588 0768 7B68     		ldr	r3, [r7, #4]
 1589 076a 9A60     		str	r2, [r3, #8]
  81:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->posy = 64 - o->geo->sizey;
 1590              		.loc 2 81 0
 1591 076c 7B68     		ldr	r3, [r7, #4]
 1592 076e 1B68     		ldr	r3, [r3]
 1593 0770 9B68     		ldr	r3, [r3, #8]
 1594 0772 4022     		movs	r2, #64
 1595 0774 D21A     		subs	r2, r2, r3
 1596 0776 7B68     		ldr	r3, [r7, #4]
 1597 0778 1A61     		str	r2, [r3, #16]
 1598              	.L89:
  82:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     }
  83:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     draw_object(o);
 1599              		.loc 2 83 0
 1600 077a 7B68     		ldr	r3, [r7, #4]
 1601 077c 1800     		movs	r0, r3
 1602 077e FFF7FEFF 		bl	draw_object
  84:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** }
 1603              		.loc 2 84 0
 1604 0782 C046     		nop
 1605 0784 BD46     		mov	sp, r7
 1606 0786 02B0     		add	sp, sp, #8
 1607              		@ sp needed
 1608 0788 80BD     		pop	{r7, pc}
 1609              		.cfi_endproc
 1610              	.LFE18:
 1612              		.align	1
 1613              		.global	clear_object
 1614              		.syntax unified
 1615              		.code	16
 1616              		.thumb_func
 1617              		.fpu softvfp
 1619              	clear_object:
 1620              	.LFB19:
  85:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** 
  86:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** void clear_object(POBJECT o){
 1621              		.loc 2 86 0
 1622              		.cfi_startproc
 1623              		@ args = 0, pretend = 0, frame = 16
 1624              		@ frame_needed = 1, uses_anonymous_args = 0
 1625 078a 80B5     		push	{r7, lr}
 1626              		.cfi_def_cfa_offset 8
 1627              		.cfi_offset 7, -8
 1628              		.cfi_offset 14, -4
 1629 078c 84B0     		sub	sp, sp, #16
 1630              		.cfi_def_cfa_offset 24
 1631 078e 00AF     		add	r7, sp, #0
 1632              		.cfi_def_cfa_register 7
 1633 0790 7860     		str	r0, [r7, #4]
 1634              	.LBB7:
  87:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 1635              		.loc 2 87 0
 1636 0792 0023     		movs	r3, #0
 1637 0794 FB60     		str	r3, [r7, #12]
 1638 0796 1BE0     		b	.L91
 1639              	.L92:
  88:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         pixel(o->posx+o->geo->px[i].x,o->posy+o->geo->px[i].y);
 1640              		.loc 2 88 0 discriminator 3
 1641 0798 7B68     		ldr	r3, [r7, #4]
 1642 079a DA68     		ldr	r2, [r3, #12]
 1643 079c 7B68     		ldr	r3, [r7, #4]
 1644 079e 1968     		ldr	r1, [r3]
 1645 07a0 FB68     		ldr	r3, [r7, #12]
 1646 07a2 0433     		adds	r3, r3, #4
 1647 07a4 5B00     		lsls	r3, r3, #1
 1648 07a6 CB18     		adds	r3, r1, r3
 1649 07a8 0433     		adds	r3, r3, #4
 1650 07aa 1B78     		ldrb	r3, [r3]
 1651 07ac D018     		adds	r0, r2, r3
 1652 07ae 7B68     		ldr	r3, [r7, #4]
 1653 07b0 1A69     		ldr	r2, [r3, #16]
 1654 07b2 7B68     		ldr	r3, [r7, #4]
 1655 07b4 1968     		ldr	r1, [r3]
 1656 07b6 FB68     		ldr	r3, [r7, #12]
 1657 07b8 0433     		adds	r3, r3, #4
 1658 07ba 5B00     		lsls	r3, r3, #1
 1659 07bc CB18     		adds	r3, r1, r3
 1660 07be 0533     		adds	r3, r3, #5
 1661 07c0 1B78     		ldrb	r3, [r3]
 1662 07c2 D318     		adds	r3, r2, r3
 1663 07c4 1900     		movs	r1, r3
 1664 07c6 FFF7FEFF 		bl	pixel
  87:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 1665              		.loc 2 87 0 discriminator 3
 1666 07ca FB68     		ldr	r3, [r7, #12]
 1667 07cc 0133     		adds	r3, r3, #1
 1668 07ce FB60     		str	r3, [r7, #12]
 1669              	.L91:
  87:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 1670              		.loc 2 87 0 is_stmt 0 discriminator 1
 1671 07d0 7B68     		ldr	r3, [r7, #4]
 1672 07d2 1B68     		ldr	r3, [r3]
 1673 07d4 1B68     		ldr	r3, [r3]
 1674 07d6 FA68     		ldr	r2, [r7, #12]
 1675 07d8 9A42     		cmp	r2, r3
 1676 07da DDDB     		blt	.L92
 1677              	.LBE7:
  89:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     }
  90:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** }
 1678              		.loc 2 90 0 is_stmt 1
 1679 07dc C046     		nop
 1680 07de BD46     		mov	sp, r7
 1681 07e0 04B0     		add	sp, sp, #16
 1682              		@ sp needed
 1683 07e2 80BD     		pop	{r7, pc}
 1684              		.cfi_endproc
 1685              	.LFE19:
 1687              		.align	1
 1688              		.global	delay_250ns
 1689              		.syntax unified
 1690              		.code	16
 1691              		.thumb_func
 1692              		.fpu softvfp
 1694              	delay_250ns:
 1695              	.LFB20:
 1696              		.file 3 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/delay.h"
   1:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #ifndef DELAY_H
   2:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #define DELAY_H
   3:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** 
   4:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #define STK_CTRL ((volatile unsigned int *)(0xE000E010))
   5:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #define STK_LOAD ((volatile unsigned int *)(0xE000E014))
   6:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #define STK_VAL ((volatile unsigned int *)(0xE000E018))
   7:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** void delay_250ns( void ) {
 1697              		.loc 3 7 0
 1698              		.cfi_startproc
 1699              		@ args = 0, pretend = 0, frame = 0
 1700              		@ frame_needed = 1, uses_anonymous_args = 0
 1701 07e4 80B5     		push	{r7, lr}
 1702              		.cfi_def_cfa_offset 8
 1703              		.cfi_offset 7, -8
 1704              		.cfi_offset 14, -4
 1705 07e6 00AF     		add	r7, sp, #0
 1706              		.cfi_def_cfa_register 7
   8:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     /* SystemCoreClock = 168000000 */
   9:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     *STK_CTRL = 0;
 1707              		.loc 3 9 0
 1708 07e8 0C4B     		ldr	r3, .L95
 1709 07ea 0022     		movs	r2, #0
 1710 07ec 1A60     		str	r2, [r3]
  10:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     *STK_LOAD = ( (168/4) -1 );
 1711              		.loc 3 10 0
 1712 07ee 0C4B     		ldr	r3, .L95+4
 1713 07f0 2922     		movs	r2, #41
 1714 07f2 1A60     		str	r2, [r3]
  11:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     *STK_VAL = 0;
 1715              		.loc 3 11 0
 1716 07f4 0B4B     		ldr	r3, .L95+8
 1717 07f6 0022     		movs	r2, #0
 1718 07f8 1A60     		str	r2, [r3]
  12:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     *STK_CTRL = 5;
 1719              		.loc 3 12 0
 1720 07fa 084B     		ldr	r3, .L95
 1721 07fc 0522     		movs	r2, #5
 1722 07fe 1A60     		str	r2, [r3]
  13:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     while( (*STK_CTRL & 0x10000 )== 0 );
 1723              		.loc 3 13 0
 1724 0800 C046     		nop
 1725              	.L94:
 1726              		.loc 3 13 0 is_stmt 0 discriminator 1
 1727 0802 064B     		ldr	r3, .L95
 1728 0804 1A68     		ldr	r2, [r3]
 1729 0806 8023     		movs	r3, #128
 1730 0808 5B02     		lsls	r3, r3, #9
 1731 080a 1340     		ands	r3, r2
 1732 080c F9D0     		beq	.L94
  14:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         *STK_CTRL = 0;
 1733              		.loc 3 14 0 is_stmt 1
 1734 080e 034B     		ldr	r3, .L95
 1735 0810 0022     		movs	r2, #0
 1736 0812 1A60     		str	r2, [r3]
  15:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** }
 1737              		.loc 3 15 0
 1738 0814 C046     		nop
 1739 0816 BD46     		mov	sp, r7
 1740              		@ sp needed
 1741 0818 80BD     		pop	{r7, pc}
 1742              	.L96:
 1743 081a C046     		.align	2
 1744              	.L95:
 1745 081c 10E000E0 		.word	-536813552
 1746 0820 14E000E0 		.word	-536813548
 1747 0824 18E000E0 		.word	-536813544
 1748              		.cfi_endproc
 1749              	.LFE20:
 1751              		.align	1
 1752              		.global	delay_500ns
 1753              		.syntax unified
 1754              		.code	16
 1755              		.thumb_func
 1756              		.fpu softvfp
 1758              	delay_500ns:
 1759              	.LFB21:
  16:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** void delay_500ns( void) {
 1760              		.loc 3 16 0
 1761              		.cfi_startproc
 1762              		@ args = 0, pretend = 0, frame = 0
 1763              		@ frame_needed = 1, uses_anonymous_args = 0
 1764 0828 80B5     		push	{r7, lr}
 1765              		.cfi_def_cfa_offset 8
 1766              		.cfi_offset 7, -8
 1767              		.cfi_offset 14, -4
 1768 082a 00AF     		add	r7, sp, #0
 1769              		.cfi_def_cfa_register 7
  17:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     delay_250ns();
 1770              		.loc 3 17 0
 1771 082c FFF7FEFF 		bl	delay_250ns
  18:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     delay_250ns();
 1772              		.loc 3 18 0
 1773 0830 FFF7FEFF 		bl	delay_250ns
  19:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** }
 1774              		.loc 3 19 0
 1775 0834 C046     		nop
 1776 0836 BD46     		mov	sp, r7
 1777              		@ sp needed
 1778 0838 80BD     		pop	{r7, pc}
 1779              		.cfi_endproc
 1780              	.LFE21:
 1782              		.global	__aeabi_uidiv
 1783              		.align	1
 1784              		.global	delay_micro
 1785              		.syntax unified
 1786              		.code	16
 1787              		.thumb_func
 1788              		.fpu softvfp
 1790              	delay_micro:
 1791              	.LFB22:
  20:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** void delay_micro(unsigned int us) {
 1792              		.loc 3 20 0
 1793              		.cfi_startproc
 1794              		@ args = 0, pretend = 0, frame = 8
 1795              		@ frame_needed = 1, uses_anonymous_args = 0
 1796 083a 80B5     		push	{r7, lr}
 1797              		.cfi_def_cfa_offset 8
 1798              		.cfi_offset 7, -8
 1799              		.cfi_offset 14, -4
 1800 083c 82B0     		sub	sp, sp, #8
 1801              		.cfi_def_cfa_offset 16
 1802 083e 00AF     		add	r7, sp, #0
 1803              		.cfi_def_cfa_register 7
 1804 0840 7860     		str	r0, [r7, #4]
  21:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #ifdef SIMULATOR
  22:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     us = us / 1000;
 1805              		.loc 3 22 0
 1806 0842 7A68     		ldr	r2, [r7, #4]
 1807 0844 FA23     		movs	r3, #250
 1808 0846 9900     		lsls	r1, r3, #2
 1809 0848 1000     		movs	r0, r2
 1810 084a FFF7FEFF 		bl	__aeabi_uidiv
 1811              	.LVL0:
 1812 084e 0300     		movs	r3, r0
 1813 0850 7B60     		str	r3, [r7, #4]
  23:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     us++;
 1814              		.loc 3 23 0
 1815 0852 7B68     		ldr	r3, [r7, #4]
 1816 0854 0133     		adds	r3, r3, #1
 1817 0856 7B60     		str	r3, [r7, #4]
  24:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #endif
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     while( us > 0 ) {
 1818              		.loc 3 25 0
 1819 0858 0AE0     		b	.L99
 1820              	.L100:
  26:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_250ns();
 1821              		.loc 3 26 0
 1822 085a FFF7FEFF 		bl	delay_250ns
  27:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_250ns();
 1823              		.loc 3 27 0
 1824 085e FFF7FEFF 		bl	delay_250ns
  28:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_250ns();
 1825              		.loc 3 28 0
 1826 0862 FFF7FEFF 		bl	delay_250ns
  29:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_250ns();
 1827              		.loc 3 29 0
 1828 0866 FFF7FEFF 		bl	delay_250ns
  30:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         us--;
 1829              		.loc 3 30 0
 1830 086a 7B68     		ldr	r3, [r7, #4]
 1831 086c 013B     		subs	r3, r3, #1
 1832 086e 7B60     		str	r3, [r7, #4]
 1833              	.L99:
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_250ns();
 1834              		.loc 3 25 0
 1835 0870 7B68     		ldr	r3, [r7, #4]
 1836 0872 002B     		cmp	r3, #0
 1837 0874 F1D1     		bne	.L100
  31:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     }
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** }
 1838              		.loc 3 32 0
 1839 0876 C046     		nop
 1840 0878 BD46     		mov	sp, r7
 1841 087a 02B0     		add	sp, sp, #8
 1842              		@ sp needed
 1843 087c 80BD     		pop	{r7, pc}
 1844              		.cfi_endproc
 1845              	.LFE22:
 1847              		.align	1
 1848              		.global	delay_milli
 1849              		.syntax unified
 1850              		.code	16
 1851              		.thumb_func
 1852              		.fpu softvfp
 1854              	delay_milli:
 1855              	.LFB23:
  33:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** void delay_milli(unsigned int ms){
 1856              		.loc 3 33 0
 1857              		.cfi_startproc
 1858              		@ args = 0, pretend = 0, frame = 8
 1859              		@ frame_needed = 1, uses_anonymous_args = 0
 1860 087e 80B5     		push	{r7, lr}
 1861              		.cfi_def_cfa_offset 8
 1862              		.cfi_offset 7, -8
 1863              		.cfi_offset 14, -4
 1864 0880 82B0     		sub	sp, sp, #8
 1865              		.cfi_def_cfa_offset 16
 1866 0882 00AF     		add	r7, sp, #0
 1867              		.cfi_def_cfa_register 7
 1868 0884 7860     		str	r0, [r7, #4]
  34:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #ifdef SIMULATOR
  35:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     ms = ms / 1000;
 1869              		.loc 3 35 0
 1870 0886 7A68     		ldr	r2, [r7, #4]
 1871 0888 FA23     		movs	r3, #250
 1872 088a 9900     		lsls	r1, r3, #2
 1873 088c 1000     		movs	r0, r2
 1874 088e FFF7FEFF 		bl	__aeabi_uidiv
 1875              	.LVL1:
 1876 0892 0300     		movs	r3, r0
 1877 0894 7B60     		str	r3, [r7, #4]
  36:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     ms++;
 1878              		.loc 3 36 0
 1879 0896 7B68     		ldr	r3, [r7, #4]
 1880 0898 0133     		adds	r3, r3, #1
 1881 089a 7B60     		str	r3, [r7, #4]
  37:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #endif
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     while( ms > 0 ) {
 1882              		.loc 3 38 0
 1883 089c 07E0     		b	.L102
 1884              	.L103:
  39:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_micro(1000);
 1885              		.loc 3 39 0
 1886 089e FA23     		movs	r3, #250
 1887 08a0 9B00     		lsls	r3, r3, #2
 1888 08a2 1800     		movs	r0, r3
 1889 08a4 FFF7FEFF 		bl	delay_micro
  40:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         ms--;
 1890              		.loc 3 40 0
 1891 08a8 7B68     		ldr	r3, [r7, #4]
 1892 08aa 013B     		subs	r3, r3, #1
 1893 08ac 7B60     		str	r3, [r7, #4]
 1894              	.L102:
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_micro(1000);
 1895              		.loc 3 38 0
 1896 08ae 7B68     		ldr	r3, [r7, #4]
 1897 08b0 002B     		cmp	r3, #0
 1898 08b2 F4D1     		bne	.L103
  41:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     }
  42:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** }
 1899              		.loc 3 42 0
 1900 08b4 C046     		nop
 1901 08b6 BD46     		mov	sp, r7
 1902 08b8 02B0     		add	sp, sp, #8
 1903              		@ sp needed
 1904 08ba 80BD     		pop	{r7, pc}
 1905              		.cfi_endproc
 1906              	.LFE23:
 1908              		.align	1
 1909              		.global	activateRow
 1910              		.syntax unified
 1911              		.code	16
 1912              		.thumb_func
 1913              		.fpu softvfp
 1915              	activateRow:
 1916              	.LFB24:
 1917              		.file 4 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/keypad.h"
   1:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** #ifndef KEYPAD_H
   2:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** #define KEYPAD_H
   3:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** #include "gpio.h"
   4:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** 
   5:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** void activateRow(unsigned int row ){
 1918              		.loc 4 5 0
 1919              		.cfi_startproc
 1920              		@ args = 0, pretend = 0, frame = 8
 1921              		@ frame_needed = 1, uses_anonymous_args = 0
 1922 08bc 80B5     		push	{r7, lr}
 1923              		.cfi_def_cfa_offset 8
 1924              		.cfi_offset 7, -8
 1925              		.cfi_offset 14, -4
 1926 08be 82B0     		sub	sp, sp, #8
 1927              		.cfi_def_cfa_offset 16
 1928 08c0 00AF     		add	r7, sp, #0
 1929              		.cfi_def_cfa_register 7
 1930 08c2 7860     		str	r0, [r7, #4]
   6:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** /* Aktivera angiven rad hos tangentbordet, eller
   7:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** * deaktivera samtliga */
   8:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     switch( row ){
 1931              		.loc 4 8 0
 1932 08c4 7B68     		ldr	r3, [r7, #4]
 1933 08c6 042B     		cmp	r3, #4
 1934 08c8 19D8     		bhi	.L112
 1935 08ca 7B68     		ldr	r3, [r7, #4]
 1936 08cc 9A00     		lsls	r2, r3, #2
 1937 08ce 0E4B     		ldr	r3, .L113
 1938 08d0 D318     		adds	r3, r2, r3
 1939 08d2 1B68     		ldr	r3, [r3]
 1940 08d4 9F46     		mov	pc, r3
 1941              		.section	.rodata
 1942              		.align	2
 1943              	.L107:
 1944 0000 F6080000 		.word	.L106
 1945 0004 D6080000 		.word	.L108
 1946 0008 DE080000 		.word	.L109
 1947 000c E6080000 		.word	.L110
 1948 0010 EE080000 		.word	.L111
 1949              		.text
 1950              	.L108:
   9:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         case 1: GPIO_D.odrHigh = 0x10; break;
 1951              		.loc 4 9 0
 1952 08d6 0D4B     		ldr	r3, .L113+4
 1953 08d8 1022     		movs	r2, #16
 1954 08da 5A75     		strb	r2, [r3, #21]
 1955 08dc 0FE0     		b	.L105
 1956              	.L109:
  10:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         case 2: GPIO_D.odrHigh = 0x20; break;
 1957              		.loc 4 10 0
 1958 08de 0B4B     		ldr	r3, .L113+4
 1959 08e0 2022     		movs	r2, #32
 1960 08e2 5A75     		strb	r2, [r3, #21]
 1961 08e4 0BE0     		b	.L105
 1962              	.L110:
  11:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         case 3: GPIO_D.odrHigh = 0x40; break;
 1963              		.loc 4 11 0
 1964 08e6 094B     		ldr	r3, .L113+4
 1965 08e8 4022     		movs	r2, #64
 1966 08ea 5A75     		strb	r2, [r3, #21]
 1967 08ec 07E0     		b	.L105
 1968              	.L111:
  12:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         case 4: GPIO_D.odrHigh = 0x80; break;
 1969              		.loc 4 12 0
 1970 08ee 074B     		ldr	r3, .L113+4
 1971 08f0 8022     		movs	r2, #128
 1972 08f2 5A75     		strb	r2, [r3, #21]
 1973 08f4 03E0     		b	.L105
 1974              	.L106:
  13:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         case 0: GPIO_D.odrHigh = 0x00; break;
 1975              		.loc 4 13 0
 1976 08f6 054B     		ldr	r3, .L113+4
 1977 08f8 0022     		movs	r2, #0
 1978 08fa 5A75     		strb	r2, [r3, #21]
 1979 08fc C046     		nop
 1980              	.L105:
 1981              	.L112:
  14:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     }
  15:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** }
 1982              		.loc 4 15 0
 1983 08fe C046     		nop
 1984 0900 BD46     		mov	sp, r7
 1985 0902 02B0     		add	sp, sp, #8
 1986              		@ sp needed
 1987 0904 80BD     		pop	{r7, pc}
 1988              	.L114:
 1989 0906 C046     		.align	2
 1990              	.L113:
 1991 0908 00000000 		.word	.L107
 1992 090c 000C0240 		.word	1073875968
 1993              		.cfi_endproc
 1994              	.LFE24:
 1996              		.align	1
 1997              		.global	readColumn
 1998              		.syntax unified
 1999              		.code	16
 2000              		.thumb_func
 2001              		.fpu softvfp
 2003              	readColumn:
 2004              	.LFB25:
  16:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** int readColumn(void) {
 2005              		.loc 4 16 0
 2006              		.cfi_startproc
 2007              		@ args = 0, pretend = 0, frame = 8
 2008              		@ frame_needed = 1, uses_anonymous_args = 0
 2009 0910 80B5     		push	{r7, lr}
 2010              		.cfi_def_cfa_offset 8
 2011              		.cfi_offset 7, -8
 2012              		.cfi_offset 14, -4
 2013 0912 82B0     		sub	sp, sp, #8
 2014              		.cfi_def_cfa_offset 16
 2015 0914 00AF     		add	r7, sp, #0
 2016              		.cfi_def_cfa_register 7
  17:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     /* Om någon tangent (i aktiverad rad)
  18:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     * är nedtryckt, returnera dess kolumnnummer,
  19:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     * annars, returnera 0 */
  20:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     unsigned char c;
  21:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     c = GPIO_D.idrHigh;
 2017              		.loc 4 21 0
 2018 0916 124A     		ldr	r2, .L121
 2019 0918 FB1D     		adds	r3, r7, #7
 2020 091a 527C     		ldrb	r2, [r2, #17]
 2021 091c 1A70     		strb	r2, [r3]
  22:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     if ( c & 0x8 ) return 4;
 2022              		.loc 4 22 0
 2023 091e FB1D     		adds	r3, r7, #7
 2024 0920 1B78     		ldrb	r3, [r3]
 2025 0922 0822     		movs	r2, #8
 2026 0924 1340     		ands	r3, r2
 2027 0926 01D0     		beq	.L116
 2028              		.loc 4 22 0 is_stmt 0 discriminator 1
 2029 0928 0423     		movs	r3, #4
 2030 092a 15E0     		b	.L117
 2031              	.L116:
  23:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     if ( c & 0x4 ) return 3;
 2032              		.loc 4 23 0 is_stmt 1
 2033 092c FB1D     		adds	r3, r7, #7
 2034 092e 1B78     		ldrb	r3, [r3]
 2035 0930 0422     		movs	r2, #4
 2036 0932 1340     		ands	r3, r2
 2037 0934 01D0     		beq	.L118
 2038              		.loc 4 23 0 is_stmt 0 discriminator 1
 2039 0936 0323     		movs	r3, #3
 2040 0938 0EE0     		b	.L117
 2041              	.L118:
  24:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     if ( c & 0x2 ) return 2;
 2042              		.loc 4 24 0 is_stmt 1
 2043 093a FB1D     		adds	r3, r7, #7
 2044 093c 1B78     		ldrb	r3, [r3]
 2045 093e 0222     		movs	r2, #2
 2046 0940 1340     		ands	r3, r2
 2047 0942 01D0     		beq	.L119
 2048              		.loc 4 24 0 is_stmt 0 discriminator 1
 2049 0944 0223     		movs	r3, #2
 2050 0946 07E0     		b	.L117
 2051              	.L119:
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     if ( c & 0x1 ) return 1;
 2052              		.loc 4 25 0 is_stmt 1
 2053 0948 FB1D     		adds	r3, r7, #7
 2054 094a 1B78     		ldrb	r3, [r3]
 2055 094c 0122     		movs	r2, #1
 2056 094e 1340     		ands	r3, r2
 2057 0950 01D0     		beq	.L120
 2058              		.loc 4 25 0 is_stmt 0 discriminator 1
 2059 0952 0123     		movs	r3, #1
 2060 0954 00E0     		b	.L117
 2061              	.L120:
  26:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     return 0;
 2062              		.loc 4 26 0 is_stmt 1
 2063 0956 0023     		movs	r3, #0
 2064              	.L117:
  27:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** }
 2065              		.loc 4 27 0
 2066 0958 1800     		movs	r0, r3
 2067 095a BD46     		mov	sp, r7
 2068 095c 02B0     		add	sp, sp, #8
 2069              		@ sp needed
 2070 095e 80BD     		pop	{r7, pc}
 2071              	.L122:
 2072              		.align	2
 2073              	.L121:
 2074 0960 000C0240 		.word	1073875968
 2075              		.cfi_endproc
 2076              	.LFE25:
 2078              		.section	.rodata
 2079              		.align	2
 2080              	.LC0:
 2081 0014 01       		.byte	1
 2082 0015 02       		.byte	2
 2083 0016 03       		.byte	3
 2084 0017 0A       		.byte	10
 2085 0018 04       		.byte	4
 2086 0019 05       		.byte	5
 2087 001a 06       		.byte	6
 2088 001b 0B       		.byte	11
 2089 001c 07       		.byte	7
 2090 001d 08       		.byte	8
 2091 001e 09       		.byte	9
 2092 001f 0C       		.byte	12
 2093 0020 0E       		.byte	14
 2094 0021 00       		.byte	0
 2095 0022 0F       		.byte	15
 2096 0023 0D       		.byte	13
 2097              		.text
 2098              		.align	1
 2099              		.global	keyb
 2100              		.syntax unified
 2101              		.code	16
 2102              		.thumb_func
 2103              		.fpu softvfp
 2105              	keyb:
 2106              	.LFB26:
  28:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** 
  29:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** unsigned char keyb( void ) {
 2107              		.loc 4 29 0
 2108              		.cfi_startproc
 2109              		@ args = 0, pretend = 0, frame = 24
 2110              		@ frame_needed = 1, uses_anonymous_args = 0
 2111 0964 90B5     		push	{r4, r7, lr}
 2112              		.cfi_def_cfa_offset 12
 2113              		.cfi_offset 4, -12
 2114              		.cfi_offset 7, -8
 2115              		.cfi_offset 14, -4
 2116 0966 87B0     		sub	sp, sp, #28
 2117              		.cfi_def_cfa_offset 40
 2118 0968 00AF     		add	r7, sp, #0
 2119              		.cfi_def_cfa_register 7
  30:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     unsigned char key[]={1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
 2120              		.loc 4 30 0
 2121 096a 3B00     		movs	r3, r7
 2122 096c 164A     		ldr	r2, .L129
 2123 096e 13CA     		ldmia	r2!, {r0, r1, r4}
 2124 0970 13C3     		stmia	r3!, {r0, r1, r4}
 2125 0972 1268     		ldr	r2, [r2]
 2126 0974 1A60     		str	r2, [r3]
  31:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     int row, col;
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     for (row=1; row <=4 ; row++ ) {
 2127              		.loc 4 32 0
 2128 0976 0123     		movs	r3, #1
 2129 0978 7B61     		str	r3, [r7, #20]
 2130 097a 19E0     		b	.L124
 2131              	.L127:
  33:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         activateRow(row);
 2132              		.loc 4 33 0
 2133 097c 7B69     		ldr	r3, [r7, #20]
 2134 097e 1800     		movs	r0, r3
 2135 0980 FFF7FEFF 		bl	activateRow
  34:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         if(col = readColumn()) {
 2136              		.loc 4 34 0
 2137 0984 FFF7FEFF 		bl	readColumn
 2138 0988 0300     		movs	r3, r0
 2139 098a 3B61     		str	r3, [r7, #16]
 2140 098c 3B69     		ldr	r3, [r7, #16]
 2141 098e 002B     		cmp	r3, #0
 2142 0990 0BD0     		beq	.L125
  35:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****             activateRow(0);
 2143              		.loc 4 35 0
 2144 0992 0020     		movs	r0, #0
 2145 0994 FFF7FEFF 		bl	activateRow
  36:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****             return key [4*(row-1)+(col-1)];
 2146              		.loc 4 36 0
 2147 0998 7B69     		ldr	r3, [r7, #20]
 2148 099a 013B     		subs	r3, r3, #1
 2149 099c 9A00     		lsls	r2, r3, #2
 2150 099e 3B69     		ldr	r3, [r7, #16]
 2151 09a0 013B     		subs	r3, r3, #1
 2152 09a2 D318     		adds	r3, r2, r3
 2153 09a4 3A00     		movs	r2, r7
 2154 09a6 D35C     		ldrb	r3, [r2, r3]
 2155 09a8 09E0     		b	.L128
 2156              	.L125:
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         activateRow(row);
 2157              		.loc 4 32 0 discriminator 2
 2158 09aa 7B69     		ldr	r3, [r7, #20]
 2159 09ac 0133     		adds	r3, r3, #1
 2160 09ae 7B61     		str	r3, [r7, #20]
 2161              	.L124:
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         activateRow(row);
 2162              		.loc 4 32 0 is_stmt 0 discriminator 1
 2163 09b0 7B69     		ldr	r3, [r7, #20]
 2164 09b2 042B     		cmp	r3, #4
 2165 09b4 E2DD     		ble	.L127
  37:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         }
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     }
  39:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     activateRow(0);
 2166              		.loc 4 39 0 is_stmt 1
 2167 09b6 0020     		movs	r0, #0
 2168 09b8 FFF7FEFF 		bl	activateRow
  40:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     return 0xFF;
 2169              		.loc 4 40 0
 2170 09bc FF23     		movs	r3, #255
 2171              	.L128:
  41:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** }
 2172              		.loc 4 41 0 discriminator 1
 2173 09be 1800     		movs	r0, r3
 2174 09c0 BD46     		mov	sp, r7
 2175 09c2 07B0     		add	sp, sp, #28
 2176              		@ sp needed
 2177 09c4 90BD     		pop	{r4, r7, pc}
 2178              	.L130:
 2179 09c6 C046     		.align	2
 2180              	.L129:
 2181 09c8 14000000 		.word	.LC0
 2182              		.cfi_endproc
 2183              	.LFE26:
 2185              		.data
 2186              		.align	2
 2189              	circle_bits:
 2190 0034 00       		.byte	0
 2191 0035 00       		.byte	0
 2192 0036 00       		.byte	0
 2193 0037 00       		.byte	0
 2194 0038 00       		.byte	0
 2195 0039 00       		.byte	0
 2196 003a 80       		.byte	-128
 2197 003b 1F       		.byte	31
 2198 003c 00       		.byte	0
 2199 003d E0       		.byte	-32
 2200 003e 70       		.byte	112
 2201 003f 00       		.byte	0
 2202 0040 30       		.byte	48
 2203 0041 C0       		.byte	-64
 2204 0042 00       		.byte	0
 2205 0043 18       		.byte	24
 2206 0044 80       		.byte	-128
 2207 0045 01       		.byte	1
 2208 0046 08       		.byte	8
 2209 0047 00       		.byte	0
 2210 0048 01       		.byte	1
 2211 0049 0C       		.byte	12
 2212 004a 00       		.byte	0
 2213 004b 03       		.byte	3
 2214 004c 04       		.byte	4
 2215 004d 00       		.byte	0
 2216 004e 02       		.byte	2
 2217 004f 04       		.byte	4
 2218 0050 00       		.byte	0
 2219 0051 02       		.byte	2
 2220 0052 04       		.byte	4
 2221 0053 00       		.byte	0
 2222 0054 02       		.byte	2
 2223 0055 04       		.byte	4
 2224 0056 00       		.byte	0
 2225 0057 02       		.byte	2
 2226 0058 0C       		.byte	12
 2227 0059 00       		.byte	0
 2228 005a 03       		.byte	3
 2229 005b 08       		.byte	8
 2230 005c 00       		.byte	0
 2231 005d 01       		.byte	1
 2232 005e 18       		.byte	24
 2233 005f 80       		.byte	-128
 2234 0060 01       		.byte	1
 2235 0061 30       		.byte	48
 2236 0062 C0       		.byte	-64
 2237 0063 00       		.byte	0
 2238 0064 E0       		.byte	-32
 2239 0065 70       		.byte	112
 2240 0066 00       		.byte	0
 2241 0067 80       		.byte	-128
 2242 0068 1F       		.byte	31
 2243 0069 00       		.byte	0
 2244 006a 00       		.byte	0
 2245 006b 00       		.byte	0
 2246 006c 00       		.byte	0
 2247 006d 00       		.byte	0
 2248 006e 00       		.byte	0
 2249 006f 00       		.byte	0
 2250              		.align	2
 2253              	cross_bits:
 2254 0070 00       		.byte	0
 2255 0071 00       		.byte	0
 2256 0072 00       		.byte	0
 2257 0073 00       		.byte	0
 2258 0074 00       		.byte	0
 2259 0075 00       		.byte	0
 2260 0076 04       		.byte	4
 2261 0077 00       		.byte	0
 2262 0078 02       		.byte	2
 2263 0079 0C       		.byte	12
 2264 007a 00       		.byte	0
 2265 007b 03       		.byte	3
 2266 007c 18       		.byte	24
 2267 007d 80       		.byte	-128
 2268 007e 01       		.byte	1
 2269 007f 30       		.byte	48
 2270 0080 C0       		.byte	-64
 2271 0081 00       		.byte	0
 2272 0082 60       		.byte	96
 2273 0083 60       		.byte	96
 2274 0084 00       		.byte	0
 2275 0085 C0       		.byte	-64
 2276 0086 30       		.byte	48
 2277 0087 00       		.byte	0
 2278 0088 80       		.byte	-128
 2279 0089 19       		.byte	25
 2280 008a 00       		.byte	0
 2281 008b 00       		.byte	0
 2282 008c 0F       		.byte	15
 2283 008d 00       		.byte	0
 2284 008e 00       		.byte	0
 2285 008f 06       		.byte	6
 2286 0090 00       		.byte	0
 2287 0091 00       		.byte	0
 2288 0092 0F       		.byte	15
 2289 0093 00       		.byte	0
 2290 0094 80       		.byte	-128
 2291 0095 19       		.byte	25
 2292 0096 00       		.byte	0
 2293 0097 C0       		.byte	-64
 2294 0098 30       		.byte	48
 2295 0099 00       		.byte	0
 2296 009a 60       		.byte	96
 2297 009b 60       		.byte	96
 2298 009c 00       		.byte	0
 2299 009d 30       		.byte	48
 2300 009e C0       		.byte	-64
 2301 009f 00       		.byte	0
 2302 00a0 18       		.byte	24
 2303 00a1 80       		.byte	-128
 2304 00a2 01       		.byte	1
 2305 00a3 0C       		.byte	12
 2306 00a4 00       		.byte	0
 2307 00a5 03       		.byte	3
 2308 00a6 00       		.byte	0
 2309 00a7 00       		.byte	0
 2310 00a8 00       		.byte	0
 2311 00a9 00       		.byte	0
 2312 00aa 00       		.byte	0
 2313 00ab 00       		.byte	0
 2314              		.align	2
 2317              	big_circle_bits:
 2318 00ac 00       		.byte	0
 2319 00ad 00       		.byte	0
 2320 00ae 00       		.byte	0
 2321 00af 00       		.byte	0
 2322 00b0 00       		.byte	0
 2323 00b1 00       		.byte	0
 2324 00b2 00       		.byte	0
 2325 00b3 00       		.byte	0
 2326 00b4 00       		.byte	0
 2327 00b5 00       		.byte	0
 2328 00b6 00       		.byte	0
 2329 00b7 00       		.byte	0
 2330 00b8 00       		.byte	0
 2331 00b9 00       		.byte	0
 2332 00ba 00       		.byte	0
 2333 00bb 00       		.byte	0
 2334 00bc 00       		.byte	0
 2335 00bd 00       		.byte	0
 2336 00be 00       		.byte	0
 2337 00bf 00       		.byte	0
 2338 00c0 00       		.byte	0
 2339 00c1 00       		.byte	0
 2340 00c2 00       		.byte	0
 2341 00c3 00       		.byte	0
 2342 00c4 00       		.byte	0
 2343 00c5 00       		.byte	0
 2344 00c6 00       		.byte	0
 2345 00c7 00       		.byte	0
 2346 00c8 00       		.byte	0
 2347 00c9 00       		.byte	0
 2348 00ca 00       		.byte	0
 2349 00cb 00       		.byte	0
 2350 00cc 00       		.byte	0
 2351 00cd 00       		.byte	0
 2352 00ce 00       		.byte	0
 2353 00cf 00       		.byte	0
 2354 00d0 00       		.byte	0
 2355 00d1 00       		.byte	0
 2356 00d2 00       		.byte	0
 2357 00d3 00       		.byte	0
 2358 00d4 00       		.byte	0
 2359 00d5 00       		.byte	0
 2360 00d6 00       		.byte	0
 2361 00d7 FC       		.byte	-4
 2362 00d8 3F       		.byte	63
 2363 00d9 00       		.byte	0
 2364 00da 00       		.byte	0
 2365 00db 00       		.byte	0
 2366 00dc 00       		.byte	0
 2367 00dd 00       		.byte	0
 2368 00de C0       		.byte	-64
 2369 00df FF       		.byte	-1
 2370 00e0 FF       		.byte	-1
 2371 00e1 03       		.byte	3
 2372 00e2 00       		.byte	0
 2373 00e3 00       		.byte	0
 2374 00e4 00       		.byte	0
 2375 00e5 00       		.byte	0
 2376 00e6 F0       		.byte	-16
 2377 00e7 FF       		.byte	-1
 2378 00e8 FF       		.byte	-1
 2379 00e9 0F       		.byte	15
 2380 00ea 00       		.byte	0
 2381 00eb 00       		.byte	0
 2382 00ec 00       		.byte	0
 2383 00ed 00       		.byte	0
 2384 00ee FC       		.byte	-4
 2385 00ef FF       		.byte	-1
 2386 00f0 FF       		.byte	-1
 2387 00f1 3F       		.byte	63
 2388 00f2 00       		.byte	0
 2389 00f3 00       		.byte	0
 2390 00f4 00       		.byte	0
 2391 00f5 00       		.byte	0
 2392 00f6 FE       		.byte	-2
 2393 00f7 FF       		.byte	-1
 2394 00f8 FF       		.byte	-1
 2395 00f9 7F       		.byte	127
 2396 00fa 00       		.byte	0
 2397 00fb 00       		.byte	0
 2398 00fc 00       		.byte	0
 2399 00fd 80       		.byte	-128
 2400 00fe FF       		.byte	-1
 2401 00ff 1F       		.byte	31
 2402 0100 F8       		.byte	-8
 2403 0101 FF       		.byte	-1
 2404 0102 01       		.byte	1
 2405 0103 00       		.byte	0
 2406 0104 00       		.byte	0
 2407 0105 C0       		.byte	-64
 2408 0106 FF       		.byte	-1
 2409 0107 01       		.byte	1
 2410 0108 80       		.byte	-128
 2411 0109 FF       		.byte	-1
 2412 010a 03       		.byte	3
 2413 010b 00       		.byte	0
 2414 010c 00       		.byte	0
 2415 010d E0       		.byte	-32
 2416 010e 7F       		.byte	127
 2417 010f 00       		.byte	0
 2418 0110 00       		.byte	0
 2419 0111 FE       		.byte	-2
 2420 0112 07       		.byte	7
 2421 0113 00       		.byte	0
 2422 0114 00       		.byte	0
 2423 0115 F0       		.byte	-16
 2424 0116 1F       		.byte	31
 2425 0117 00       		.byte	0
 2426 0118 00       		.byte	0
 2427 0119 F8       		.byte	-8
 2428 011a 0F       		.byte	15
 2429 011b 00       		.byte	0
 2430 011c 00       		.byte	0
 2431 011d F8       		.byte	-8
 2432 011e 0F       		.byte	15
 2433 011f 00       		.byte	0
 2434 0120 00       		.byte	0
 2435 0121 F0       		.byte	-16
 2436 0122 1F       		.byte	31
 2437 0123 00       		.byte	0
 2438 0124 00       		.byte	0
 2439 0125 FC       		.byte	-4
 2440 0126 03       		.byte	3
 2441 0127 00       		.byte	0
 2442 0128 00       		.byte	0
 2443 0129 C0       		.byte	-64
 2444 012a 3F       		.byte	63
 2445 012b 00       		.byte	0
 2446 012c 00       		.byte	0
 2447 012d FC       		.byte	-4
 2448 012e 01       		.byte	1
 2449 012f 00       		.byte	0
 2450 0130 00       		.byte	0
 2451 0131 80       		.byte	-128
 2452 0132 3F       		.byte	63
 2453 0133 00       		.byte	0
 2454 0134 00       		.byte	0
 2455 0135 FE       		.byte	-2
 2456 0136 00       		.byte	0
 2457 0137 00       		.byte	0
 2458 0138 00       		.byte	0
 2459 0139 00       		.byte	0
 2460 013a 7F       		.byte	127
 2461 013b 00       		.byte	0
 2462 013c 00       		.byte	0
 2463 013d 7F       		.byte	127
 2464 013e 00       		.byte	0
 2465 013f 00       		.byte	0
 2466 0140 00       		.byte	0
 2467 0141 00       		.byte	0
 2468 0142 FE       		.byte	-2
 2469 0143 00       		.byte	0
 2470 0144 00       		.byte	0
 2471 0145 7F       		.byte	127
 2472 0146 00       		.byte	0
 2473 0147 00       		.byte	0
 2474 0148 00       		.byte	0
 2475 0149 00       		.byte	0
 2476 014a FE       		.byte	-2
 2477 014b 00       		.byte	0
 2478 014c 80       		.byte	-128
 2479 014d 3F       		.byte	63
 2480 014e 00       		.byte	0
 2481 014f 00       		.byte	0
 2482 0150 00       		.byte	0
 2483 0151 00       		.byte	0
 2484 0152 FC       		.byte	-4
 2485 0153 01       		.byte	1
 2486 0154 80       		.byte	-128
 2487 0155 1F       		.byte	31
 2488 0156 00       		.byte	0
 2489 0157 00       		.byte	0
 2490 0158 00       		.byte	0
 2491 0159 00       		.byte	0
 2492 015a F8       		.byte	-8
 2493 015b 01       		.byte	1
 2494 015c C0       		.byte	-64
 2495 015d 1F       		.byte	31
 2496 015e 00       		.byte	0
 2497 015f 00       		.byte	0
 2498 0160 00       		.byte	0
 2499 0161 00       		.byte	0
 2500 0162 F8       		.byte	-8
 2501 0163 03       		.byte	3
 2502 0164 C0       		.byte	-64
 2503 0165 0F       		.byte	15
 2504 0166 00       		.byte	0
 2505 0167 00       		.byte	0
 2506 0168 00       		.byte	0
 2507 0169 00       		.byte	0
 2508 016a F0       		.byte	-16
 2509 016b 03       		.byte	3
 2510 016c C0       		.byte	-64
 2511 016d 0F       		.byte	15
 2512 016e 00       		.byte	0
 2513 016f 00       		.byte	0
 2514 0170 00       		.byte	0
 2515 0171 00       		.byte	0
 2516 0172 F0       		.byte	-16
 2517 0173 03       		.byte	3
 2518 0174 C0       		.byte	-64
 2519 0175 07       		.byte	7
 2520 0176 00       		.byte	0
 2521 0177 00       		.byte	0
 2522 0178 00       		.byte	0
 2523 0179 00       		.byte	0
 2524 017a E0       		.byte	-32
 2525 017b 03       		.byte	3
 2526 017c E0       		.byte	-32
 2527 017d 07       		.byte	7
 2528 017e 00       		.byte	0
 2529 017f 00       		.byte	0
 2530 0180 00       		.byte	0
 2531 0181 00       		.byte	0
 2532 0182 E0       		.byte	-32
 2533 0183 07       		.byte	7
 2534 0184 E0       		.byte	-32
 2535 0185 07       		.byte	7
 2536 0186 00       		.byte	0
 2537 0187 00       		.byte	0
 2538 0188 00       		.byte	0
 2539 0189 00       		.byte	0
 2540 018a E0       		.byte	-32
 2541 018b 07       		.byte	7
 2542 018c E0       		.byte	-32
 2543 018d 07       		.byte	7
 2544 018e 00       		.byte	0
 2545 018f 00       		.byte	0
 2546 0190 00       		.byte	0
 2547 0191 00       		.byte	0
 2548 0192 E0       		.byte	-32
 2549 0193 07       		.byte	7
 2550 0194 E0       		.byte	-32
 2551 0195 03       		.byte	3
 2552 0196 00       		.byte	0
 2553 0197 00       		.byte	0
 2554 0198 00       		.byte	0
 2555 0199 00       		.byte	0
 2556 019a C0       		.byte	-64
 2557 019b 07       		.byte	7
 2558 019c E0       		.byte	-32
 2559 019d 03       		.byte	3
 2560 019e 00       		.byte	0
 2561 019f 00       		.byte	0
 2562 01a0 00       		.byte	0
 2563 01a1 00       		.byte	0
 2564 01a2 C0       		.byte	-64
 2565 01a3 07       		.byte	7
 2566 01a4 E0       		.byte	-32
 2567 01a5 03       		.byte	3
 2568 01a6 00       		.byte	0
 2569 01a7 00       		.byte	0
 2570 01a8 00       		.byte	0
 2571 01a9 00       		.byte	0
 2572 01aa C0       		.byte	-64
 2573 01ab 07       		.byte	7
 2574 01ac E0       		.byte	-32
 2575 01ad 03       		.byte	3
 2576 01ae 00       		.byte	0
 2577 01af 00       		.byte	0
 2578 01b0 00       		.byte	0
 2579 01b1 00       		.byte	0
 2580 01b2 C0       		.byte	-64
 2581 01b3 07       		.byte	7
 2582 01b4 E0       		.byte	-32
 2583 01b5 03       		.byte	3
 2584 01b6 00       		.byte	0
 2585 01b7 00       		.byte	0
 2586 01b8 00       		.byte	0
 2587 01b9 00       		.byte	0
 2588 01ba C0       		.byte	-64
 2589 01bb 07       		.byte	7
 2590 01bc E0       		.byte	-32
 2591 01bd 03       		.byte	3
 2592 01be 00       		.byte	0
 2593 01bf 00       		.byte	0
 2594 01c0 00       		.byte	0
 2595 01c1 00       		.byte	0
 2596 01c2 C0       		.byte	-64
 2597 01c3 07       		.byte	7
 2598 01c4 E0       		.byte	-32
 2599 01c5 07       		.byte	7
 2600 01c6 00       		.byte	0
 2601 01c7 00       		.byte	0
 2602 01c8 00       		.byte	0
 2603 01c9 00       		.byte	0
 2604 01ca E0       		.byte	-32
 2605 01cb 07       		.byte	7
 2606 01cc E0       		.byte	-32
 2607 01cd 07       		.byte	7
 2608 01ce 00       		.byte	0
 2609 01cf 00       		.byte	0
 2610 01d0 00       		.byte	0
 2611 01d1 00       		.byte	0
 2612 01d2 E0       		.byte	-32
 2613 01d3 07       		.byte	7
 2614 01d4 E0       		.byte	-32
 2615 01d5 07       		.byte	7
 2616 01d6 00       		.byte	0
 2617 01d7 00       		.byte	0
 2618 01d8 00       		.byte	0
 2619 01d9 00       		.byte	0
 2620 01da E0       		.byte	-32
 2621 01db 07       		.byte	7
 2622 01dc C0       		.byte	-64
 2623 01dd 07       		.byte	7
 2624 01de 00       		.byte	0
 2625 01df 00       		.byte	0
 2626 01e0 00       		.byte	0
 2627 01e1 00       		.byte	0
 2628 01e2 E0       		.byte	-32
 2629 01e3 03       		.byte	3
 2630 01e4 C0       		.byte	-64
 2631 01e5 0F       		.byte	15
 2632 01e6 00       		.byte	0
 2633 01e7 00       		.byte	0
 2634 01e8 00       		.byte	0
 2635 01e9 00       		.byte	0
 2636 01ea F0       		.byte	-16
 2637 01eb 03       		.byte	3
 2638 01ec C0       		.byte	-64
 2639 01ed 0F       		.byte	15
 2640 01ee 00       		.byte	0
 2641 01ef 00       		.byte	0
 2642 01f0 00       		.byte	0
 2643 01f1 00       		.byte	0
 2644 01f2 F0       		.byte	-16
 2645 01f3 03       		.byte	3
 2646 01f4 C0       		.byte	-64
 2647 01f5 1F       		.byte	31
 2648 01f6 00       		.byte	0
 2649 01f7 00       		.byte	0
 2650 01f8 00       		.byte	0
 2651 01f9 00       		.byte	0
 2652 01fa F8       		.byte	-8
 2653 01fb 03       		.byte	3
 2654 01fc 80       		.byte	-128
 2655 01fd 1F       		.byte	31
 2656 01fe 00       		.byte	0
 2657 01ff 00       		.byte	0
 2658 0200 00       		.byte	0
 2659 0201 00       		.byte	0
 2660 0202 F8       		.byte	-8
 2661 0203 01       		.byte	1
 2662 0204 80       		.byte	-128
 2663 0205 3F       		.byte	63
 2664 0206 00       		.byte	0
 2665 0207 00       		.byte	0
 2666 0208 00       		.byte	0
 2667 0209 00       		.byte	0
 2668 020a FC       		.byte	-4
 2669 020b 01       		.byte	1
 2670 020c 00       		.byte	0
 2671 020d 7F       		.byte	127
 2672 020e 00       		.byte	0
 2673 020f 00       		.byte	0
 2674 0210 00       		.byte	0
 2675 0211 00       		.byte	0
 2676 0212 FE       		.byte	-2
 2677 0213 00       		.byte	0
 2678 0214 00       		.byte	0
 2679 0215 7F       		.byte	127
 2680 0216 00       		.byte	0
 2681 0217 00       		.byte	0
 2682 0218 00       		.byte	0
 2683 0219 00       		.byte	0
 2684 021a FE       		.byte	-2
 2685 021b 00       		.byte	0
 2686 021c 00       		.byte	0
 2687 021d FE       		.byte	-2
 2688 021e 00       		.byte	0
 2689 021f 00       		.byte	0
 2690 0220 00       		.byte	0
 2691 0221 00       		.byte	0
 2692 0222 7F       		.byte	127
 2693 0223 00       		.byte	0
 2694 0224 00       		.byte	0
 2695 0225 FC       		.byte	-4
 2696 0226 01       		.byte	1
 2697 0227 00       		.byte	0
 2698 0228 00       		.byte	0
 2699 0229 80       		.byte	-128
 2700 022a 3F       		.byte	63
 2701 022b 00       		.byte	0
 2702 022c 00       		.byte	0
 2703 022d FC       		.byte	-4
 2704 022e 03       		.byte	3
 2705 022f 00       		.byte	0
 2706 0230 00       		.byte	0
 2707 0231 C0       		.byte	-64
 2708 0232 3F       		.byte	63
 2709 0233 00       		.byte	0
 2710 0234 00       		.byte	0
 2711 0235 F8       		.byte	-8
 2712 0236 0F       		.byte	15
 2713 0237 00       		.byte	0
 2714 0238 00       		.byte	0
 2715 0239 F0       		.byte	-16
 2716 023a 1F       		.byte	31
 2717 023b 00       		.byte	0
 2718 023c 00       		.byte	0
 2719 023d F0       		.byte	-16
 2720 023e 1F       		.byte	31
 2721 023f 00       		.byte	0
 2722 0240 00       		.byte	0
 2723 0241 F8       		.byte	-8
 2724 0242 0F       		.byte	15
 2725 0243 00       		.byte	0
 2726 0244 00       		.byte	0
 2727 0245 E0       		.byte	-32
 2728 0246 7F       		.byte	127
 2729 0247 00       		.byte	0
 2730 0248 00       		.byte	0
 2731 0249 FE       		.byte	-2
 2732 024a 07       		.byte	7
 2733 024b 00       		.byte	0
 2734 024c 00       		.byte	0
 2735 024d C0       		.byte	-64
 2736 024e FF       		.byte	-1
 2737 024f 01       		.byte	1
 2738 0250 80       		.byte	-128
 2739 0251 FF       		.byte	-1
 2740 0252 03       		.byte	3
 2741 0253 00       		.byte	0
 2742 0254 00       		.byte	0
 2743 0255 80       		.byte	-128
 2744 0256 FF       		.byte	-1
 2745 0257 1F       		.byte	31
 2746 0258 F8       		.byte	-8
 2747 0259 FF       		.byte	-1
 2748 025a 01       		.byte	1
 2749 025b 00       		.byte	0
 2750 025c 00       		.byte	0
 2751 025d 00       		.byte	0
 2752 025e FE       		.byte	-2
 2753 025f FF       		.byte	-1
 2754 0260 FF       		.byte	-1
 2755 0261 7F       		.byte	127
 2756 0262 00       		.byte	0
 2757 0263 00       		.byte	0
 2758 0264 00       		.byte	0
 2759 0265 00       		.byte	0
 2760 0266 FC       		.byte	-4
 2761 0267 FF       		.byte	-1
 2762 0268 FF       		.byte	-1
 2763 0269 3F       		.byte	63
 2764 026a 00       		.byte	0
 2765 026b 00       		.byte	0
 2766 026c 00       		.byte	0
 2767 026d 00       		.byte	0
 2768 026e F0       		.byte	-16
 2769 026f FF       		.byte	-1
 2770 0270 FF       		.byte	-1
 2771 0271 0F       		.byte	15
 2772 0272 00       		.byte	0
 2773 0273 00       		.byte	0
 2774 0274 00       		.byte	0
 2775 0275 00       		.byte	0
 2776 0276 C0       		.byte	-64
 2777 0277 FF       		.byte	-1
 2778 0278 FF       		.byte	-1
 2779 0279 03       		.byte	3
 2780 027a 00       		.byte	0
 2781 027b 00       		.byte	0
 2782 027c 00       		.byte	0
 2783 027d 00       		.byte	0
 2784 027e 00       		.byte	0
 2785 027f FC       		.byte	-4
 2786 0280 3F       		.byte	63
 2787 0281 00       		.byte	0
 2788 0282 00       		.byte	0
 2789 0283 00       		.byte	0
 2790 0284 00       		.byte	0
 2791 0285 00       		.byte	0
 2792 0286 00       		.byte	0
 2793 0287 00       		.byte	0
 2794 0288 00       		.byte	0
 2795 0289 00       		.byte	0
 2796 028a 00       		.byte	0
 2797 028b 00       		.byte	0
 2798 028c 00       		.byte	0
 2799 028d 00       		.byte	0
 2800 028e 00       		.byte	0
 2801 028f 00       		.byte	0
 2802 0290 00       		.byte	0
 2803 0291 00       		.byte	0
 2804 0292 00       		.byte	0
 2805 0293 00       		.byte	0
 2806 0294 00       		.byte	0
 2807 0295 00       		.byte	0
 2808 0296 00       		.byte	0
 2809 0297 00       		.byte	0
 2810 0298 00       		.byte	0
 2811 0299 00       		.byte	0
 2812 029a 00       		.byte	0
 2813 029b 00       		.byte	0
 2814 029c 00       		.byte	0
 2815 029d 00       		.byte	0
 2816 029e 00       		.byte	0
 2817 029f 00       		.byte	0
 2818 02a0 00       		.byte	0
 2819 02a1 00       		.byte	0
 2820 02a2 00       		.byte	0
 2821 02a3 00       		.byte	0
 2822 02a4 00       		.byte	0
 2823 02a5 00       		.byte	0
 2824 02a6 00       		.byte	0
 2825 02a7 00       		.byte	0
 2826 02a8 00       		.byte	0
 2827 02a9 00       		.byte	0
 2828 02aa 00       		.byte	0
 2829 02ab 00       		.byte	0
 2830              		.align	2
 2833              	big_cross_bits:
 2834 02ac 00       		.byte	0
 2835 02ad 00       		.byte	0
 2836 02ae 00       		.byte	0
 2837 02af 00       		.byte	0
 2838 02b0 00       		.byte	0
 2839 02b1 00       		.byte	0
 2840 02b2 00       		.byte	0
 2841 02b3 00       		.byte	0
 2842 02b4 00       		.byte	0
 2843 02b5 00       		.byte	0
 2844 02b6 00       		.byte	0
 2845 02b7 00       		.byte	0
 2846 02b8 00       		.byte	0
 2847 02b9 00       		.byte	0
 2848 02ba 00       		.byte	0
 2849 02bb 00       		.byte	0
 2850 02bc 00       		.byte	0
 2851 02bd 00       		.byte	0
 2852 02be 00       		.byte	0
 2853 02bf 00       		.byte	0
 2854 02c0 00       		.byte	0
 2855 02c1 00       		.byte	0
 2856 02c2 00       		.byte	0
 2857 02c3 00       		.byte	0
 2858 02c4 78       		.byte	120
 2859 02c5 00       		.byte	0
 2860 02c6 00       		.byte	0
 2861 02c7 00       		.byte	0
 2862 02c8 00       		.byte	0
 2863 02c9 00       		.byte	0
 2864 02ca 00       		.byte	0
 2865 02cb 1E       		.byte	30
 2866 02cc F8       		.byte	-8
 2867 02cd 00       		.byte	0
 2868 02ce 00       		.byte	0
 2869 02cf 00       		.byte	0
 2870 02d0 00       		.byte	0
 2871 02d1 00       		.byte	0
 2872 02d2 00       		.byte	0
 2873 02d3 1F       		.byte	31
 2874 02d4 F8       		.byte	-8
 2875 02d5 01       		.byte	1
 2876 02d6 00       		.byte	0
 2877 02d7 00       		.byte	0
 2878 02d8 00       		.byte	0
 2879 02d9 00       		.byte	0
 2880 02da 80       		.byte	-128
 2881 02db 1F       		.byte	31
 2882 02dc F8       		.byte	-8
 2883 02dd 03       		.byte	3
 2884 02de 00       		.byte	0
 2885 02df 00       		.byte	0
 2886 02e0 00       		.byte	0
 2887 02e1 00       		.byte	0
 2888 02e2 C0       		.byte	-64
 2889 02e3 1F       		.byte	31
 2890 02e4 F0       		.byte	-16
 2891 02e5 07       		.byte	7
 2892 02e6 00       		.byte	0
 2893 02e7 00       		.byte	0
 2894 02e8 00       		.byte	0
 2895 02e9 00       		.byte	0
 2896 02ea E0       		.byte	-32
 2897 02eb 0F       		.byte	15
 2898 02ec E0       		.byte	-32
 2899 02ed 0F       		.byte	15
 2900 02ee 00       		.byte	0
 2901 02ef 00       		.byte	0
 2902 02f0 00       		.byte	0
 2903 02f1 00       		.byte	0
 2904 02f2 F0       		.byte	-16
 2905 02f3 07       		.byte	7
 2906 02f4 C0       		.byte	-64
 2907 02f5 1F       		.byte	31
 2908 02f6 00       		.byte	0
 2909 02f7 00       		.byte	0
 2910 02f8 00       		.byte	0
 2911 02f9 00       		.byte	0
 2912 02fa F8       		.byte	-8
 2913 02fb 03       		.byte	3
 2914 02fc 80       		.byte	-128
 2915 02fd 3F       		.byte	63
 2916 02fe 00       		.byte	0
 2917 02ff 00       		.byte	0
 2918 0300 00       		.byte	0
 2919 0301 00       		.byte	0
 2920 0302 FC       		.byte	-4
 2921 0303 01       		.byte	1
 2922 0304 00       		.byte	0
 2923 0305 7F       		.byte	127
 2924 0306 00       		.byte	0
 2925 0307 00       		.byte	0
 2926 0308 00       		.byte	0
 2927 0309 00       		.byte	0
 2928 030a FE       		.byte	-2
 2929 030b 00       		.byte	0
 2930 030c 00       		.byte	0
 2931 030d FE       		.byte	-2
 2932 030e 00       		.byte	0
 2933 030f 00       		.byte	0
 2934 0310 00       		.byte	0
 2935 0311 00       		.byte	0
 2936 0312 7F       		.byte	127
 2937 0313 00       		.byte	0
 2938 0314 00       		.byte	0
 2939 0315 FC       		.byte	-4
 2940 0316 01       		.byte	1
 2941 0317 00       		.byte	0
 2942 0318 00       		.byte	0
 2943 0319 80       		.byte	-128
 2944 031a 3F       		.byte	63
 2945 031b 00       		.byte	0
 2946 031c 00       		.byte	0
 2947 031d F8       		.byte	-8
 2948 031e 03       		.byte	3
 2949 031f 00       		.byte	0
 2950 0320 00       		.byte	0
 2951 0321 C0       		.byte	-64
 2952 0322 1F       		.byte	31
 2953 0323 00       		.byte	0
 2954 0324 00       		.byte	0
 2955 0325 F0       		.byte	-16
 2956 0326 07       		.byte	7
 2957 0327 00       		.byte	0
 2958 0328 00       		.byte	0
 2959 0329 E0       		.byte	-32
 2960 032a 0F       		.byte	15
 2961 032b 00       		.byte	0
 2962 032c 00       		.byte	0
 2963 032d E0       		.byte	-32
 2964 032e 0F       		.byte	15
 2965 032f 00       		.byte	0
 2966 0330 00       		.byte	0
 2967 0331 F0       		.byte	-16
 2968 0332 07       		.byte	7
 2969 0333 00       		.byte	0
 2970 0334 00       		.byte	0
 2971 0335 C0       		.byte	-64
 2972 0336 1F       		.byte	31
 2973 0337 00       		.byte	0
 2974 0338 00       		.byte	0
 2975 0339 F8       		.byte	-8
 2976 033a 03       		.byte	3
 2977 033b 00       		.byte	0
 2978 033c 00       		.byte	0
 2979 033d 80       		.byte	-128
 2980 033e 3F       		.byte	63
 2981 033f 00       		.byte	0
 2982 0340 00       		.byte	0
 2983 0341 FC       		.byte	-4
 2984 0342 01       		.byte	1
 2985 0343 00       		.byte	0
 2986 0344 00       		.byte	0
 2987 0345 00       		.byte	0
 2988 0346 7F       		.byte	127
 2989 0347 00       		.byte	0
 2990 0348 00       		.byte	0
 2991 0349 FE       		.byte	-2
 2992 034a 00       		.byte	0
 2993 034b 00       		.byte	0
 2994 034c 00       		.byte	0
 2995 034d 00       		.byte	0
 2996 034e FE       		.byte	-2
 2997 034f 00       		.byte	0
 2998 0350 00       		.byte	0
 2999 0351 7F       		.byte	127
 3000 0352 00       		.byte	0
 3001 0353 00       		.byte	0
 3002 0354 00       		.byte	0
 3003 0355 00       		.byte	0
 3004 0356 FC       		.byte	-4
 3005 0357 01       		.byte	1
 3006 0358 80       		.byte	-128
 3007 0359 3F       		.byte	63
 3008 035a 00       		.byte	0
 3009 035b 00       		.byte	0
 3010 035c 00       		.byte	0
 3011 035d 00       		.byte	0
 3012 035e F8       		.byte	-8
 3013 035f 03       		.byte	3
 3014 0360 C0       		.byte	-64
 3015 0361 1F       		.byte	31
 3016 0362 00       		.byte	0
 3017 0363 00       		.byte	0
 3018 0364 00       		.byte	0
 3019 0365 00       		.byte	0
 3020 0366 F0       		.byte	-16
 3021 0367 07       		.byte	7
 3022 0368 E0       		.byte	-32
 3023 0369 0F       		.byte	15
 3024 036a 00       		.byte	0
 3025 036b 00       		.byte	0
 3026 036c 00       		.byte	0
 3027 036d 00       		.byte	0
 3028 036e E0       		.byte	-32
 3029 036f 0F       		.byte	15
 3030 0370 F0       		.byte	-16
 3031 0371 07       		.byte	7
 3032 0372 00       		.byte	0
 3033 0373 00       		.byte	0
 3034 0374 00       		.byte	0
 3035 0375 00       		.byte	0
 3036 0376 C0       		.byte	-64
 3037 0377 1F       		.byte	31
 3038 0378 F8       		.byte	-8
 3039 0379 03       		.byte	3
 3040 037a 00       		.byte	0
 3041 037b 00       		.byte	0
 3042 037c 00       		.byte	0
 3043 037d 00       		.byte	0
 3044 037e 80       		.byte	-128
 3045 037f 3F       		.byte	63
 3046 0380 FC       		.byte	-4
 3047 0381 01       		.byte	1
 3048 0382 00       		.byte	0
 3049 0383 00       		.byte	0
 3050 0384 00       		.byte	0
 3051 0385 00       		.byte	0
 3052 0386 00       		.byte	0
 3053 0387 7F       		.byte	127
 3054 0388 FE       		.byte	-2
 3055 0389 00       		.byte	0
 3056 038a 00       		.byte	0
 3057 038b 00       		.byte	0
 3058 038c 00       		.byte	0
 3059 038d 00       		.byte	0
 3060 038e 00       		.byte	0
 3061 038f FE       		.byte	-2
 3062 0390 7F       		.byte	127
 3063 0391 00       		.byte	0
 3064 0392 00       		.byte	0
 3065 0393 00       		.byte	0
 3066 0394 00       		.byte	0
 3067 0395 00       		.byte	0
 3068 0396 00       		.byte	0
 3069 0397 FC       		.byte	-4
 3070 0398 3F       		.byte	63
 3071 0399 00       		.byte	0
 3072 039a 00       		.byte	0
 3073 039b 00       		.byte	0
 3074 039c 00       		.byte	0
 3075 039d 00       		.byte	0
 3076 039e 00       		.byte	0
 3077 039f F8       		.byte	-8
 3078 03a0 1F       		.byte	31
 3079 03a1 00       		.byte	0
 3080 03a2 00       		.byte	0
 3081 03a3 00       		.byte	0
 3082 03a4 00       		.byte	0
 3083 03a5 00       		.byte	0
 3084 03a6 00       		.byte	0
 3085 03a7 F0       		.byte	-16
 3086 03a8 0F       		.byte	15
 3087 03a9 00       		.byte	0
 3088 03aa 00       		.byte	0
 3089 03ab 00       		.byte	0
 3090 03ac 00       		.byte	0
 3091 03ad 00       		.byte	0
 3092 03ae 00       		.byte	0
 3093 03af F0       		.byte	-16
 3094 03b0 0F       		.byte	15
 3095 03b1 00       		.byte	0
 3096 03b2 00       		.byte	0
 3097 03b3 00       		.byte	0
 3098 03b4 00       		.byte	0
 3099 03b5 00       		.byte	0
 3100 03b6 00       		.byte	0
 3101 03b7 F8       		.byte	-8
 3102 03b8 1F       		.byte	31
 3103 03b9 00       		.byte	0
 3104 03ba 00       		.byte	0
 3105 03bb 00       		.byte	0
 3106 03bc 00       		.byte	0
 3107 03bd 00       		.byte	0
 3108 03be 00       		.byte	0
 3109 03bf FC       		.byte	-4
 3110 03c0 3F       		.byte	63
 3111 03c1 00       		.byte	0
 3112 03c2 00       		.byte	0
 3113 03c3 00       		.byte	0
 3114 03c4 00       		.byte	0
 3115 03c5 00       		.byte	0
 3116 03c6 00       		.byte	0
 3117 03c7 FE       		.byte	-2
 3118 03c8 7F       		.byte	127
 3119 03c9 00       		.byte	0
 3120 03ca 00       		.byte	0
 3121 03cb 00       		.byte	0
 3122 03cc 00       		.byte	0
 3123 03cd 00       		.byte	0
 3124 03ce 00       		.byte	0
 3125 03cf 7F       		.byte	127
 3126 03d0 FE       		.byte	-2
 3127 03d1 00       		.byte	0
 3128 03d2 00       		.byte	0
 3129 03d3 00       		.byte	0
 3130 03d4 00       		.byte	0
 3131 03d5 00       		.byte	0
 3132 03d6 80       		.byte	-128
 3133 03d7 3F       		.byte	63
 3134 03d8 FC       		.byte	-4
 3135 03d9 01       		.byte	1
 3136 03da 00       		.byte	0
 3137 03db 00       		.byte	0
 3138 03dc 00       		.byte	0
 3139 03dd 00       		.byte	0
 3140 03de C0       		.byte	-64
 3141 03df 1F       		.byte	31
 3142 03e0 F8       		.byte	-8
 3143 03e1 03       		.byte	3
 3144 03e2 00       		.byte	0
 3145 03e3 00       		.byte	0
 3146 03e4 00       		.byte	0
 3147 03e5 00       		.byte	0
 3148 03e6 E0       		.byte	-32
 3149 03e7 0F       		.byte	15
 3150 03e8 F0       		.byte	-16
 3151 03e9 07       		.byte	7
 3152 03ea 00       		.byte	0
 3153 03eb 00       		.byte	0
 3154 03ec 00       		.byte	0
 3155 03ed 00       		.byte	0
 3156 03ee F0       		.byte	-16
 3157 03ef 07       		.byte	7
 3158 03f0 E0       		.byte	-32
 3159 03f1 0F       		.byte	15
 3160 03f2 00       		.byte	0
 3161 03f3 00       		.byte	0
 3162 03f4 00       		.byte	0
 3163 03f5 00       		.byte	0
 3164 03f6 F8       		.byte	-8
 3165 03f7 03       		.byte	3
 3166 03f8 C0       		.byte	-64
 3167 03f9 1F       		.byte	31
 3168 03fa 00       		.byte	0
 3169 03fb 00       		.byte	0
 3170 03fc 00       		.byte	0
 3171 03fd 00       		.byte	0
 3172 03fe FC       		.byte	-4
 3173 03ff 01       		.byte	1
 3174 0400 80       		.byte	-128
 3175 0401 3F       		.byte	63
 3176 0402 00       		.byte	0
 3177 0403 00       		.byte	0
 3178 0404 00       		.byte	0
 3179 0405 00       		.byte	0
 3180 0406 FE       		.byte	-2
 3181 0407 00       		.byte	0
 3182 0408 00       		.byte	0
 3183 0409 7F       		.byte	127
 3184 040a 00       		.byte	0
 3185 040b 00       		.byte	0
 3186 040c 00       		.byte	0
 3187 040d 00       		.byte	0
 3188 040e 7F       		.byte	127
 3189 040f 00       		.byte	0
 3190 0410 00       		.byte	0
 3191 0411 FE       		.byte	-2
 3192 0412 00       		.byte	0
 3193 0413 00       		.byte	0
 3194 0414 00       		.byte	0
 3195 0415 80       		.byte	-128
 3196 0416 3F       		.byte	63
 3197 0417 00       		.byte	0
 3198 0418 00       		.byte	0
 3199 0419 FC       		.byte	-4
 3200 041a 01       		.byte	1
 3201 041b 00       		.byte	0
 3202 041c 00       		.byte	0
 3203 041d C0       		.byte	-64
 3204 041e 1F       		.byte	31
 3205 041f 00       		.byte	0
 3206 0420 00       		.byte	0
 3207 0421 F8       		.byte	-8
 3208 0422 03       		.byte	3
 3209 0423 00       		.byte	0
 3210 0424 00       		.byte	0
 3211 0425 E0       		.byte	-32
 3212 0426 0F       		.byte	15
 3213 0427 00       		.byte	0
 3214 0428 00       		.byte	0
 3215 0429 F0       		.byte	-16
 3216 042a 07       		.byte	7
 3217 042b 00       		.byte	0
 3218 042c 00       		.byte	0
 3219 042d F0       		.byte	-16
 3220 042e 07       		.byte	7
 3221 042f 00       		.byte	0
 3222 0430 00       		.byte	0
 3223 0431 E0       		.byte	-32
 3224 0432 0F       		.byte	15
 3225 0433 00       		.byte	0
 3226 0434 00       		.byte	0
 3227 0435 F8       		.byte	-8
 3228 0436 03       		.byte	3
 3229 0437 00       		.byte	0
 3230 0438 00       		.byte	0
 3231 0439 C0       		.byte	-64
 3232 043a 1F       		.byte	31
 3233 043b 00       		.byte	0
 3234 043c 00       		.byte	0
 3235 043d FC       		.byte	-4
 3236 043e 01       		.byte	1
 3237 043f 00       		.byte	0
 3238 0440 00       		.byte	0
 3239 0441 80       		.byte	-128
 3240 0442 3F       		.byte	63
 3241 0443 00       		.byte	0
 3242 0444 00       		.byte	0
 3243 0445 FE       		.byte	-2
 3244 0446 00       		.byte	0
 3245 0447 00       		.byte	0
 3246 0448 00       		.byte	0
 3247 0449 00       		.byte	0
 3248 044a 7F       		.byte	127
 3249 044b 00       		.byte	0
 3250 044c 00       		.byte	0
 3251 044d 7F       		.byte	127
 3252 044e 00       		.byte	0
 3253 044f 00       		.byte	0
 3254 0450 00       		.byte	0
 3255 0451 00       		.byte	0
 3256 0452 FE       		.byte	-2
 3257 0453 00       		.byte	0
 3258 0454 80       		.byte	-128
 3259 0455 3F       		.byte	63
 3260 0456 00       		.byte	0
 3261 0457 00       		.byte	0
 3262 0458 00       		.byte	0
 3263 0459 00       		.byte	0
 3264 045a FC       		.byte	-4
 3265 045b 01       		.byte	1
 3266 045c C0       		.byte	-64
 3267 045d 1F       		.byte	31
 3268 045e 00       		.byte	0
 3269 045f 00       		.byte	0
 3270 0460 00       		.byte	0
 3271 0461 00       		.byte	0
 3272 0462 F8       		.byte	-8
 3273 0463 03       		.byte	3
 3274 0464 E0       		.byte	-32
 3275 0465 0F       		.byte	15
 3276 0466 00       		.byte	0
 3277 0467 00       		.byte	0
 3278 0468 00       		.byte	0
 3279 0469 00       		.byte	0
 3280 046a F0       		.byte	-16
 3281 046b 07       		.byte	7
 3282 046c F0       		.byte	-16
 3283 046d 07       		.byte	7
 3284 046e 00       		.byte	0
 3285 046f 00       		.byte	0
 3286 0470 00       		.byte	0
 3287 0471 00       		.byte	0
 3288 0472 E0       		.byte	-32
 3289 0473 0F       		.byte	15
 3290 0474 F8       		.byte	-8
 3291 0475 03       		.byte	3
 3292 0476 00       		.byte	0
 3293 0477 00       		.byte	0
 3294 0478 00       		.byte	0
 3295 0479 00       		.byte	0
 3296 047a C0       		.byte	-64
 3297 047b 1F       		.byte	31
 3298 047c F8       		.byte	-8
 3299 047d 01       		.byte	1
 3300 047e 00       		.byte	0
 3301 047f 00       		.byte	0
 3302 0480 00       		.byte	0
 3303 0481 00       		.byte	0
 3304 0482 80       		.byte	-128
 3305 0483 1F       		.byte	31
 3306 0484 F8       		.byte	-8
 3307 0485 00       		.byte	0
 3308 0486 00       		.byte	0
 3309 0487 00       		.byte	0
 3310 0488 00       		.byte	0
 3311 0489 00       		.byte	0
 3312 048a 00       		.byte	0
 3313 048b 1F       		.byte	31
 3314 048c 78       		.byte	120
 3315 048d 00       		.byte	0
 3316 048e 00       		.byte	0
 3317 048f 00       		.byte	0
 3318 0490 00       		.byte	0
 3319 0491 00       		.byte	0
 3320 0492 00       		.byte	0
 3321 0493 1E       		.byte	30
 3322 0494 00       		.byte	0
 3323 0495 00       		.byte	0
 3324 0496 00       		.byte	0
 3325 0497 00       		.byte	0
 3326 0498 00       		.byte	0
 3327 0499 00       		.byte	0
 3328 049a 00       		.byte	0
 3329 049b 00       		.byte	0
 3330 049c 00       		.byte	0
 3331 049d 00       		.byte	0
 3332 049e 00       		.byte	0
 3333 049f 00       		.byte	0
 3334 04a0 00       		.byte	0
 3335 04a1 00       		.byte	0
 3336 04a2 00       		.byte	0
 3337 04a3 00       		.byte	0
 3338 04a4 00       		.byte	0
 3339 04a5 00       		.byte	0
 3340 04a6 00       		.byte	0
 3341 04a7 00       		.byte	0
 3342 04a8 00       		.byte	0
 3343 04a9 00       		.byte	0
 3344 04aa 00       		.byte	0
 3345 04ab 00       		.byte	0
 3346              		.align	2
 3349              	ball:
 3350 04ac 00000000 		.word	ball_geometry
 3351 04b0 00000000 		.word	0
 3352 04b4 00000000 		.word	0
 3353 04b8 0A000000 		.word	10
 3354 04bc 0A000000 		.word	10
 3355 04c0 00000000 		.word	draw_object
 3356 04c4 00000000 		.word	move_object
 3357 04c8 00000000 		.word	set_object_speed
 3358              		.text
 3359              		.align	1
 3360              		.global	drawgrid
 3361              		.syntax unified
 3362              		.code	16
 3363              		.thumb_func
 3364              		.fpu softvfp
 3366              	drawgrid:
 3367              	.LFB27:
 3368              		.file 5 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/startup.c"
   1:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** /*
   2:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****  * 	startup.c
   3:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****  *
   4:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****  */
   5:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "geometry.h"
   6:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "delay.h"
   7:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "gpio.h"
   8:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "graphics.h"
   9:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "keypad.h"
  10:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "circle.xbm"
  11:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "cross.xbm"
  12:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
  13:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "big_circle.xbm"
  14:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "big_cross.xbm"
  15:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
  16:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** static OBJECT ball = {
  17:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     &ball_geometry, // geometry for a ball
  18:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     0,0, // move direction (x,y)
  19:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     10,10, // position (x,y)
  20:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     draw_object, // draw method
  21:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     move_object, // move method
  22:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     set_object_speed // set-speed method
  23:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** };
  24:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** void drawgrid(void) {
 3369              		.loc 5 25 0
 3370              		.cfi_startproc
 3371              		@ args = 0, pretend = 0, frame = 8
 3372              		@ frame_needed = 1, uses_anonymous_args = 0
 3373 09cc 80B5     		push	{r7, lr}
 3374              		.cfi_def_cfa_offset 8
 3375              		.cfi_offset 7, -8
 3376              		.cfi_offset 14, -4
 3377 09ce 82B0     		sub	sp, sp, #8
 3378              		.cfi_def_cfa_offset 16
 3379 09d0 00AF     		add	r7, sp, #0
 3380              		.cfi_def_cfa_register 7
  26:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	unsigned i;
  27:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	for(i = 0; i < 64; i++ ){
 3381              		.loc 5 27 0
 3382 09d2 0023     		movs	r3, #0
 3383 09d4 7B60     		str	r3, [r7, #4]
 3384 09d6 07E0     		b	.L132
 3385              	.L133:
  28:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(i, 21);
 3386              		.loc 5 28 0 discriminator 3
 3387 09d8 7B68     		ldr	r3, [r7, #4]
 3388 09da 1521     		movs	r1, #21
 3389 09dc 1800     		movs	r0, r3
 3390 09de FFF7FEFF 		bl	pixel
  27:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(i, 21);
 3391              		.loc 5 27 0 discriminator 3
 3392 09e2 7B68     		ldr	r3, [r7, #4]
 3393 09e4 0133     		adds	r3, r3, #1
 3394 09e6 7B60     		str	r3, [r7, #4]
 3395              	.L132:
  27:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(i, 21);
 3396              		.loc 5 27 0 is_stmt 0 discriminator 1
 3397 09e8 7B68     		ldr	r3, [r7, #4]
 3398 09ea 3F2B     		cmp	r3, #63
 3399 09ec F4D9     		bls	.L133
  29:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	}
  30:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	for(i = 0; i < 64; i++){
 3400              		.loc 5 30 0 is_stmt 1
 3401 09ee 0023     		movs	r3, #0
 3402 09f0 7B60     		str	r3, [r7, #4]
 3403 09f2 07E0     		b	.L134
 3404              	.L135:
  31:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(21, i);
 3405              		.loc 5 31 0 discriminator 3
 3406 09f4 7B68     		ldr	r3, [r7, #4]
 3407 09f6 1900     		movs	r1, r3
 3408 09f8 1520     		movs	r0, #21
 3409 09fa FFF7FEFF 		bl	pixel
  30:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(21, i);
 3410              		.loc 5 30 0 discriminator 3
 3411 09fe 7B68     		ldr	r3, [r7, #4]
 3412 0a00 0133     		adds	r3, r3, #1
 3413 0a02 7B60     		str	r3, [r7, #4]
 3414              	.L134:
  30:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(21, i);
 3415              		.loc 5 30 0 is_stmt 0 discriminator 1
 3416 0a04 7B68     		ldr	r3, [r7, #4]
 3417 0a06 3F2B     		cmp	r3, #63
 3418 0a08 F4D9     		bls	.L135
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	}
  33:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	for(i = 0; i < 64; i++ ){
 3419              		.loc 5 33 0 is_stmt 1
 3420 0a0a 0023     		movs	r3, #0
 3421 0a0c 7B60     		str	r3, [r7, #4]
 3422 0a0e 07E0     		b	.L136
 3423              	.L137:
  34:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(i, 43);
 3424              		.loc 5 34 0 discriminator 3
 3425 0a10 7B68     		ldr	r3, [r7, #4]
 3426 0a12 2B21     		movs	r1, #43
 3427 0a14 1800     		movs	r0, r3
 3428 0a16 FFF7FEFF 		bl	pixel
  33:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(i, 43);
 3429              		.loc 5 33 0 discriminator 3
 3430 0a1a 7B68     		ldr	r3, [r7, #4]
 3431 0a1c 0133     		adds	r3, r3, #1
 3432 0a1e 7B60     		str	r3, [r7, #4]
 3433              	.L136:
  33:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(i, 43);
 3434              		.loc 5 33 0 is_stmt 0 discriminator 1
 3435 0a20 7B68     		ldr	r3, [r7, #4]
 3436 0a22 3F2B     		cmp	r3, #63
 3437 0a24 F4D9     		bls	.L137
  35:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	}
  36:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	for(i = 0; i < 64; i++){
 3438              		.loc 5 36 0 is_stmt 1
 3439 0a26 0023     		movs	r3, #0
 3440 0a28 7B60     		str	r3, [r7, #4]
 3441 0a2a 07E0     		b	.L138
 3442              	.L139:
  37:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(43, i);
 3443              		.loc 5 37 0 discriminator 3
 3444 0a2c 7B68     		ldr	r3, [r7, #4]
 3445 0a2e 1900     		movs	r1, r3
 3446 0a30 2B20     		movs	r0, #43
 3447 0a32 FFF7FEFF 		bl	pixel
  36:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(43, i);
 3448              		.loc 5 36 0 discriminator 3
 3449 0a36 7B68     		ldr	r3, [r7, #4]
 3450 0a38 0133     		adds	r3, r3, #1
 3451 0a3a 7B60     		str	r3, [r7, #4]
 3452              	.L138:
  36:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		pixel(43, i);
 3453              		.loc 5 36 0 is_stmt 0 discriminator 1
 3454 0a3c 7B68     		ldr	r3, [r7, #4]
 3455 0a3e 3F2B     		cmp	r3, #63
 3456 0a40 F4D9     		bls	.L139
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	}
  39:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** }
 3457              		.loc 5 39 0 is_stmt 1
 3458 0a42 C046     		nop
 3459 0a44 BD46     		mov	sp, r7
 3460 0a46 02B0     		add	sp, sp, #8
 3461              		@ sp needed
 3462 0a48 80BD     		pop	{r7, pc}
 3463              		.cfi_endproc
 3464              	.LFE27:
 3466              		.section	.start_section,"ax",%progbits
 3467              		.align	1
 3468              		.global	startup
 3469              		.syntax unified
 3470              		.code	16
 3471              		.thumb_func
 3472              		.fpu softvfp
 3474              	startup:
 3475              	.LFB28:
  40:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
  41:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section (".start_section")) );
  42:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
  43:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** void startup ( void )
  44:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** {
 3476              		.loc 5 44 0
 3477              		.cfi_startproc
 3478              		@ Naked Function: prologue and epilogue provided by programmer.
 3479              		@ args = 0, pretend = 0, frame = 0
 3480              		@ frame_needed = 1, uses_anonymous_args = 0
  45:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** __asm volatile(
 3481              		.loc 5 45 0
 3482              		.syntax divided
 3483              	@ 45 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/startup.c" 1
 3484 0000 0248     		 LDR R0,=0x2001C000
 3485 0002 8546     	 MOV SP,R0
 3486 0004 FFF7FEFF 	 BL main
 3487 0008 FEE7     	.L1: B .L1
 3488              	
 3489              	@ 0 "" 2
  46:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	" LDR R0,=0x2001C000\n"		/* set stack */
  47:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	" MOV SP,R0\n"
  48:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	" BL main\n"				/* call main */
  49:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	".L1: B .L1\n"				/* never return */
  50:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	) ;
  51:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** }
 3490              		.loc 5 51 0
 3491              		.thumb
 3492              		.syntax unified
 3493 000a C046     		nop
 3494              		.cfi_endproc
 3495              	.LFE28:
 3497              		.text
 3498              		.align	1
 3499              		.global	init_app
 3500              		.syntax unified
 3501              		.code	16
 3502              		.thumb_func
 3503              		.fpu softvfp
 3505              	init_app:
 3506              	.LFB29:
  52:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
  53:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** void init_app() {
 3507              		.loc 5 53 0
 3508              		.cfi_startproc
 3509              		@ args = 0, pretend = 0, frame = 0
 3510              		@ frame_needed = 1, uses_anonymous_args = 0
 3511 0a4a 80B5     		push	{r7, lr}
 3512              		.cfi_def_cfa_offset 8
 3513              		.cfi_offset 7, -8
 3514              		.cfi_offset 14, -4
 3515 0a4c 00AF     		add	r7, sp, #0
 3516              		.cfi_def_cfa_register 7
  54:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #ifdef USBDM
  55:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	 *( (unsigned long *) 0x40023830) = 0x18;
  56:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	 __asm volatile( " LDR R0,=0x08000209\n BLX R0 \n");
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #endif
  58:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     GPIO_E.moder = 0x55555555;
 3517              		.loc 5 58 0
 3518 0a4e 034B     		ldr	r3, .L142
 3519 0a50 034A     		ldr	r2, .L142+4
 3520 0a52 1A60     		str	r2, [r3]
  59:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** }
 3521              		.loc 5 59 0
 3522 0a54 C046     		nop
 3523 0a56 BD46     		mov	sp, r7
 3524              		@ sp needed
 3525 0a58 80BD     		pop	{r7, pc}
 3526              	.L143:
 3527 0a5a C046     		.align	2
 3528              	.L142:
 3529 0a5c 00100240 		.word	1073876992
 3530 0a60 55555555 		.word	1431655765
 3531              		.cfi_endproc
 3532              	.LFE29:
 3534              		.section	.rodata
 3535              		.align	2
 3536              	.LC10:
 3537 0024 14       		.byte	20
 3538 0025 14       		.byte	20
 3539 0026 0000     		.space	2
 3540 0028 34000000 		.word	circle_bits
 3541              		.align	2
 3542              	.LC12:
 3543 002c 14       		.byte	20
 3544 002d 14       		.byte	20
 3545 002e 0000     		.space	2
 3546 0030 70000000 		.word	cross_bits
 3547              		.align	2
 3548              	.LC14:
 3549 0034 40       		.byte	64
 3550 0035 40       		.byte	64
 3551 0036 0000     		.space	2
 3552 0038 AC000000 		.word	big_circle_bits
 3553              		.align	2
 3554              	.LC16:
 3555 003c 40       		.byte	64
 3556 003d 40       		.byte	64
 3557 003e 0000     		.space	2
 3558 0040 AC020000 		.word	big_cross_bits
 3559              		.text
 3560              		.align	1
 3561              		.global	main
 3562              		.syntax unified
 3563              		.code	16
 3564              		.thumb_func
 3565              		.fpu softvfp
 3567              	main:
 3568              	.LFB30:
  60:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** void main(void) {
 3569              		.loc 5 60 0
 3570              		.cfi_startproc
 3571              		@ args = 0, pretend = 0, frame = 32
 3572              		@ frame_needed = 1, uses_anonymous_args = 0
 3573 0a64 90B5     		push	{r4, r7, lr}
 3574              		.cfi_def_cfa_offset 12
 3575              		.cfi_offset 4, -12
 3576              		.cfi_offset 7, -8
 3577              		.cfi_offset 14, -4
 3578 0a66 89B0     		sub	sp, sp, #36
 3579              		.cfi_def_cfa_offset 48
 3580 0a68 00AF     		add	r7, sp, #0
 3581              		.cfi_def_cfa_register 7
  61:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     unsigned i;
  62:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     init_app();
 3582              		.loc 5 62 0
 3583 0a6a FFF7FEFF 		bl	init_app
  63:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     graphic_initialize();
 3584              		.loc 5 63 0
 3585 0a6e FFF7FEFF 		bl	graphic_initialize
  64:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #ifndef SIMULATOR
  65:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     graphic_clear_screen();
  66:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #endif
  67:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	sprite circle = {circle_width, circle_height, circle_bits};
 3586              		.loc 5 67 0
 3587 0a72 1823     		movs	r3, #24
 3588 0a74 FB18     		adds	r3, r7, r3
 3589 0a76 174A     		ldr	r2, .L146
 3590 0a78 03CA     		ldmia	r2!, {r0, r1}
 3591 0a7a 03C3     		stmia	r3!, {r0, r1}
  68:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	sprite cross = {cross_width, cross_height, cross_bits};
 3592              		.loc 5 68 0
 3593 0a7c 1023     		movs	r3, #16
 3594 0a7e FB18     		adds	r3, r7, r3
 3595 0a80 154A     		ldr	r2, .L146+4
 3596 0a82 03CA     		ldmia	r2!, {r0, r1}
 3597 0a84 03C3     		stmia	r3!, {r0, r1}
  69:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	
  70:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	sprite big_circle = {big_circle_width, big_circle_height, big_circle_bits};
 3598              		.loc 5 70 0
 3599 0a86 0823     		movs	r3, #8
 3600 0a88 FB18     		adds	r3, r7, r3
 3601 0a8a 144A     		ldr	r2, .L146+8
 3602 0a8c 03CA     		ldmia	r2!, {r0, r1}
 3603 0a8e 03C3     		stmia	r3!, {r0, r1}
  71:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	sprite big_cross = {big_cross_width, big_cross_height, big_cross_bits};
 3604              		.loc 5 71 0
 3605 0a90 3B00     		movs	r3, r7
 3606 0a92 134A     		ldr	r2, .L146+12
 3607 0a94 03CA     		ldmia	r2!, {r0, r1}
 3608 0a96 03C3     		stmia	r3!, {r0, r1}
 3609              	.L145:
  72:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	
  73:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     
  74:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	
  75:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     while(1){
  76:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		clear_backBuffer();
 3610              		.loc 5 76 0 discriminator 1
 3611 0a98 FFF7FEFF 		bl	clear_backBuffer
  77:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		drawgrid();
 3612              		.loc 5 77 0 discriminator 1
 3613 0a9c FFF7FEFF 		bl	drawgrid
  78:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		draw_sprite(&cross,1,1);
 3614              		.loc 5 78 0 discriminator 1
 3615 0aa0 1024     		movs	r4, #16
 3616 0aa2 3B19     		adds	r3, r7, r4
 3617 0aa4 0122     		movs	r2, #1
 3618 0aa6 0121     		movs	r1, #1
 3619 0aa8 1800     		movs	r0, r3
 3620 0aaa FFF7FEFF 		bl	draw_sprite
  79:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		draw_sprite(&cross,22,22);
 3621              		.loc 5 79 0 discriminator 1
 3622 0aae 3B19     		adds	r3, r7, r4
 3623 0ab0 1622     		movs	r2, #22
 3624 0ab2 1621     		movs	r1, #22
 3625 0ab4 1800     		movs	r0, r3
 3626 0ab6 FFF7FEFF 		bl	draw_sprite
  80:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		draw_sprite(&cross,44,44);
 3627              		.loc 5 80 0 discriminator 1
 3628 0aba 3B19     		adds	r3, r7, r4
 3629 0abc 2C22     		movs	r2, #44
 3630 0abe 2C21     		movs	r1, #44
 3631 0ac0 1800     		movs	r0, r3
 3632 0ac2 FFF7FEFF 		bl	draw_sprite
  81:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		
  82:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		graphic_draw_screen();
 3633              		.loc 5 82 0 discriminator 1
 3634 0ac6 FFF7FEFF 		bl	graphic_draw_screen
  83:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		delay_milli(40);
 3635              		.loc 5 83 0 discriminator 1
 3636 0aca 2820     		movs	r0, #40
 3637 0acc FFF7FEFF 		bl	delay_milli
  76:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		drawgrid();
 3638              		.loc 5 76 0 discriminator 1
 3639 0ad0 E2E7     		b	.L145
 3640              	.L147:
 3641 0ad2 C046     		.align	2
 3642              	.L146:
 3643 0ad4 24000000 		.word	.LC10
 3644 0ad8 2C000000 		.word	.LC12
 3645 0adc 34000000 		.word	.LC14
 3646 0ae0 3C000000 		.word	.LC16
 3647              		.cfi_endproc
 3648              	.LFE30:
 3650              	.Letext0:
 3651              		.file 6 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\machine\\_default_types.h"
 3652              		.file 7 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\sys\\_stdint.h"
 3653              		.file 8 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/gpio.h"
 3654              		.file 9 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/circle.xbm"
 3655              		.file 10 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/cross.xbm"
 3656              		.file 11 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/big_circle.xbm"
 3657              		.file 12 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/big_cross.xbm"
