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
  16              		.global	ascii_ctrl_bit_set
  17              		.syntax unified
  18              		.code	16
  19              		.thumb_func
  20              		.fpu softvfp
  22              	ascii_ctrl_bit_set:
  23              	.LFB0:
  24              		.file 1 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/ascii_display.h"
   1:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** #ifndef ASCII_DISPLAY_H
   2:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** #define ASCII_DISPLAY_H
   3:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** #include "gpio.h"
   4:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** 
   5:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** #define B_E 0x40 /* Enable-signal */
   6:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** #define B_SELECT 4 /* Select ASCII-display */
   7:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** #define B_RW 2 /* 0=Write, 1=Read */
   8:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** #define B_RS 1 /* 0=Control, 1=Data */
   9:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** 
  10:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** void ascii_ctrl_bit_set( unsigned char x ) {
  25              		.loc 1 10 0
  26              		.cfi_startproc
  27              		@ args = 0, pretend = 0, frame = 16
  28              		@ frame_needed = 1, uses_anonymous_args = 0
  29 0000 80B5     		push	{r7, lr}
  30              		.cfi_def_cfa_offset 8
  31              		.cfi_offset 7, -8
  32              		.cfi_offset 14, -4
  33 0002 84B0     		sub	sp, sp, #16
  34              		.cfi_def_cfa_offset 24
  35 0004 00AF     		add	r7, sp, #0
  36              		.cfi_def_cfa_register 7
  37 0006 0200     		movs	r2, r0
  38 0008 FB1D     		adds	r3, r7, #7
  39 000a 1A70     		strb	r2, [r3]
  11:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     unsigned char c;
  12:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     c = GPIO_E.odrLow;
  40              		.loc 1 12 0
  41 000c 0C4A     		ldr	r2, .L2
  42 000e 0F21     		movs	r1, #15
  43 0010 7B18     		adds	r3, r7, r1
  44 0012 127D     		ldrb	r2, [r2, #20]
  45 0014 1A70     		strb	r2, [r3]
  13:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     c |= ( B_SELECT | x );
  46              		.loc 1 13 0
  47 0016 FA1D     		adds	r2, r7, #7
  48 0018 7B18     		adds	r3, r7, r1
  49 001a 1278     		ldrb	r2, [r2]
  50 001c 1B78     		ldrb	r3, [r3]
  51 001e 1343     		orrs	r3, r2
  52 0020 DAB2     		uxtb	r2, r3
  53 0022 0800     		movs	r0, r1
  54 0024 7B18     		adds	r3, r7, r1
  55 0026 0421     		movs	r1, #4
  56 0028 0A43     		orrs	r2, r1
  57 002a 1A70     		strb	r2, [r3]
  14:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     GPIO_E.odrLow = c;
  58              		.loc 1 14 0
  59 002c 044A     		ldr	r2, .L2
  60 002e 0100     		movs	r1, r0
  61 0030 7B18     		adds	r3, r7, r1
  62 0032 1B78     		ldrb	r3, [r3]
  63 0034 1375     		strb	r3, [r2, #20]
  15:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** }
  64              		.loc 1 15 0
  65 0036 C046     		nop
  66 0038 BD46     		mov	sp, r7
  67 003a 04B0     		add	sp, sp, #16
  68              		@ sp needed
  69 003c 80BD     		pop	{r7, pc}
  70              	.L3:
  71 003e C046     		.align	2
  72              	.L2:
  73 0040 00100240 		.word	1073876992
  74              		.cfi_endproc
  75              	.LFE0:
  77              		.align	1
  78              		.global	ascii_ctrl_bit_clear
  79              		.syntax unified
  80              		.code	16
  81              		.thumb_func
  82              		.fpu softvfp
  84              	ascii_ctrl_bit_clear:
  85              	.LFB1:
  16:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** void ascii_ctrl_bit_clear( unsigned char x ) {
  86              		.loc 1 16 0
  87              		.cfi_startproc
  88              		@ args = 0, pretend = 0, frame = 16
  89              		@ frame_needed = 1, uses_anonymous_args = 0
  90 0044 80B5     		push	{r7, lr}
  91              		.cfi_def_cfa_offset 8
  92              		.cfi_offset 7, -8
  93              		.cfi_offset 14, -4
  94 0046 84B0     		sub	sp, sp, #16
  95              		.cfi_def_cfa_offset 24
  96 0048 00AF     		add	r7, sp, #0
  97              		.cfi_def_cfa_register 7
  98 004a 0200     		movs	r2, r0
  99 004c FB1D     		adds	r3, r7, #7
 100 004e 1A70     		strb	r2, [r3]
  17:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     unsigned char c;
  18:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     c = GPIO_E.odrLow;
 101              		.loc 1 18 0
 102 0050 0D4A     		ldr	r2, .L5
 103 0052 0F21     		movs	r1, #15
 104 0054 7B18     		adds	r3, r7, r1
 105 0056 127D     		ldrb	r2, [r2, #20]
 106 0058 1A70     		strb	r2, [r3]
  19:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     c &= ( B_SELECT | ~x );
 107              		.loc 1 19 0
 108 005a FB1D     		adds	r3, r7, #7
 109 005c 1B78     		ldrb	r3, [r3]
 110 005e 5BB2     		sxtb	r3, r3
 111 0060 DB43     		mvns	r3, r3
 112 0062 5BB2     		sxtb	r3, r3
 113 0064 0422     		movs	r2, #4
 114 0066 1343     		orrs	r3, r2
 115 0068 5BB2     		sxtb	r3, r3
 116 006a 7A18     		adds	r2, r7, r1
 117 006c 1278     		ldrb	r2, [r2]
 118 006e 52B2     		sxtb	r2, r2
 119 0070 1340     		ands	r3, r2
 120 0072 5AB2     		sxtb	r2, r3
 121 0074 7B18     		adds	r3, r7, r1
 122 0076 1A70     		strb	r2, [r3]
  20:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     GPIO_E.odrLow = c;
 123              		.loc 1 20 0
 124 0078 034A     		ldr	r2, .L5
 125 007a 7B18     		adds	r3, r7, r1
 126 007c 1B78     		ldrb	r3, [r3]
 127 007e 1375     		strb	r3, [r2, #20]
  21:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** }
 128              		.loc 1 21 0
 129 0080 C046     		nop
 130 0082 BD46     		mov	sp, r7
 131 0084 04B0     		add	sp, sp, #16
 132              		@ sp needed
 133 0086 80BD     		pop	{r7, pc}
 134              	.L6:
 135              		.align	2
 136              	.L5:
 137 0088 00100240 		.word	1073876992
 138              		.cfi_endproc
 139              	.LFE1:
 141              		.align	1
 142              		.global	ascii_write_controller
 143              		.syntax unified
 144              		.code	16
 145              		.thumb_func
 146              		.fpu softvfp
 148              	ascii_write_controller:
 149              	.LFB2:
  22:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** 
  23:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** void ascii_write_controller( unsigned char c ) {
 150              		.loc 1 23 0
 151              		.cfi_startproc
 152              		@ args = 0, pretend = 0, frame = 8
 153              		@ frame_needed = 1, uses_anonymous_args = 0
 154 008c 80B5     		push	{r7, lr}
 155              		.cfi_def_cfa_offset 8
 156              		.cfi_offset 7, -8
 157              		.cfi_offset 14, -4
 158 008e 82B0     		sub	sp, sp, #8
 159              		.cfi_def_cfa_offset 16
 160 0090 00AF     		add	r7, sp, #0
 161              		.cfi_def_cfa_register 7
 162 0092 0200     		movs	r2, r0
 163 0094 FB1D     		adds	r3, r7, #7
 164 0096 1A70     		strb	r2, [r3]
  24:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     ascii_ctrl_bit_set( B_E );
 165              		.loc 1 24 0
 166 0098 4020     		movs	r0, #64
 167 009a FFF7FEFF 		bl	ascii_ctrl_bit_set
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     GPIO_E.odrHigh = c;
 168              		.loc 1 25 0
 169 009e 064A     		ldr	r2, .L8
 170 00a0 FB1D     		adds	r3, r7, #7
 171 00a2 1B78     		ldrb	r3, [r3]
 172 00a4 5375     		strb	r3, [r2, #21]
  26:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     ascii_ctrl_bit_clear( B_E );
 173              		.loc 1 26 0
 174 00a6 4020     		movs	r0, #64
 175 00a8 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  27:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     delay_250ns();
 176              		.loc 1 27 0
 177 00ac FFF7FEFF 		bl	delay_250ns
  28:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** }
 178              		.loc 1 28 0
 179 00b0 C046     		nop
 180 00b2 BD46     		mov	sp, r7
 181 00b4 02B0     		add	sp, sp, #8
 182              		@ sp needed
 183 00b6 80BD     		pop	{r7, pc}
 184              	.L9:
 185              		.align	2
 186              	.L8:
 187 00b8 00100240 		.word	1073876992
 188              		.cfi_endproc
 189              	.LFE2:
 191              		.align	1
 192              		.global	ascii_read_controller
 193              		.syntax unified
 194              		.code	16
 195              		.thumb_func
 196              		.fpu softvfp
 198              	ascii_read_controller:
 199              	.LFB3:
  29:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** unsigned char ascii_read_controller( void ) {
 200              		.loc 1 29 0
 201              		.cfi_startproc
 202              		@ args = 0, pretend = 0, frame = 8
 203              		@ frame_needed = 1, uses_anonymous_args = 0
 204 00bc 80B5     		push	{r7, lr}
 205              		.cfi_def_cfa_offset 8
 206              		.cfi_offset 7, -8
 207              		.cfi_offset 14, -4
 208 00be 82B0     		sub	sp, sp, #8
 209              		.cfi_def_cfa_offset 16
 210 00c0 00AF     		add	r7, sp, #0
 211              		.cfi_def_cfa_register 7
  30:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     unsigned char c;
  31:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     ascii_ctrl_bit_set( B_E );
 212              		.loc 1 31 0
 213 00c2 4020     		movs	r0, #64
 214 00c4 FFF7FEFF 		bl	ascii_ctrl_bit_set
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     delay_250ns();
 215              		.loc 1 32 0
 216 00c8 FFF7FEFF 		bl	delay_250ns
  33:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     delay_250ns();
 217              		.loc 1 33 0
 218 00cc FFF7FEFF 		bl	delay_250ns
  34:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     c = GPIO_E.idrHigh;
 219              		.loc 1 34 0
 220 00d0 064A     		ldr	r2, .L12
 221 00d2 FB1D     		adds	r3, r7, #7
 222 00d4 527C     		ldrb	r2, [r2, #17]
 223 00d6 1A70     		strb	r2, [r3]
  35:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     ascii_ctrl_bit_clear( B_E );
 224              		.loc 1 35 0
 225 00d8 4020     		movs	r0, #64
 226 00da FFF7FEFF 		bl	ascii_ctrl_bit_clear
  36:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     return c;
 227              		.loc 1 36 0
 228 00de FB1D     		adds	r3, r7, #7
 229 00e0 1B78     		ldrb	r3, [r3]
  37:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** }
 230              		.loc 1 37 0
 231 00e2 1800     		movs	r0, r3
 232 00e4 BD46     		mov	sp, r7
 233 00e6 02B0     		add	sp, sp, #8
 234              		@ sp needed
 235 00e8 80BD     		pop	{r7, pc}
 236              	.L13:
 237 00ea C046     		.align	2
 238              	.L12:
 239 00ec 00100240 		.word	1073876992
 240              		.cfi_endproc
 241              	.LFE3:
 243              		.align	1
 244              		.global	ascii_read_status
 245              		.syntax unified
 246              		.code	16
 247              		.thumb_func
 248              		.fpu softvfp
 250              	ascii_read_status:
 251              	.LFB4:
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** unsigned char ascii_read_status() {
 252              		.loc 1 38 0
 253              		.cfi_startproc
 254              		@ args = 0, pretend = 0, frame = 8
 255              		@ frame_needed = 1, uses_anonymous_args = 0
 256 00f0 90B5     		push	{r4, r7, lr}
 257              		.cfi_def_cfa_offset 12
 258              		.cfi_offset 4, -12
 259              		.cfi_offset 7, -8
 260              		.cfi_offset 14, -4
 261 00f2 83B0     		sub	sp, sp, #12
 262              		.cfi_def_cfa_offset 24
 263 00f4 00AF     		add	r7, sp, #0
 264              		.cfi_def_cfa_register 7
  39:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     unsigned char c;
  40:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     GPIO_E.moder = 0x00005555;
 265              		.loc 1 40 0
 266 00f6 0B4B     		ldr	r3, .L16
 267 00f8 0B4A     		ldr	r2, .L16+4
 268 00fa 1A60     		str	r2, [r3]
  41:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     ascii_ctrl_bit_set( B_RW );
 269              		.loc 1 41 0
 270 00fc 0220     		movs	r0, #2
 271 00fe FFF7FEFF 		bl	ascii_ctrl_bit_set
  42:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     ascii_ctrl_bit_clear( B_RS );
 272              		.loc 1 42 0
 273 0102 0120     		movs	r0, #1
 274 0104 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  43:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     c = ascii_read_controller( );
 275              		.loc 1 43 0
 276 0108 FC1D     		adds	r4, r7, #7
 277 010a FFF7FEFF 		bl	ascii_read_controller
 278 010e 0300     		movs	r3, r0
 279 0110 2370     		strb	r3, [r4]
  44:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     GPIO_E.moder = 0x55555555;
 280              		.loc 1 44 0
 281 0112 044B     		ldr	r3, .L16
 282 0114 054A     		ldr	r2, .L16+8
 283 0116 1A60     		str	r2, [r3]
  45:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     return c;
 284              		.loc 1 45 0
 285 0118 FB1D     		adds	r3, r7, #7
 286 011a 1B78     		ldrb	r3, [r3]
  46:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** }
 287              		.loc 1 46 0
 288 011c 1800     		movs	r0, r3
 289 011e BD46     		mov	sp, r7
 290 0120 03B0     		add	sp, sp, #12
 291              		@ sp needed
 292 0122 90BD     		pop	{r4, r7, pc}
 293              	.L17:
 294              		.align	2
 295              	.L16:
 296 0124 00100240 		.word	1073876992
 297 0128 55550000 		.word	21845
 298 012c 55555555 		.word	1431655765
 299              		.cfi_endproc
 300              	.LFE4:
 302              		.align	1
 303              		.global	ascii_write_cmd
 304              		.syntax unified
 305              		.code	16
 306              		.thumb_func
 307              		.fpu softvfp
 309              	ascii_write_cmd:
 310              	.LFB5:
  47:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** 
  48:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** void ascii_write_cmd(unsigned char command) {
 311              		.loc 1 48 0
 312              		.cfi_startproc
 313              		@ args = 0, pretend = 0, frame = 8
 314              		@ frame_needed = 1, uses_anonymous_args = 0
 315 0130 80B5     		push	{r7, lr}
 316              		.cfi_def_cfa_offset 8
 317              		.cfi_offset 7, -8
 318              		.cfi_offset 14, -4
 319 0132 82B0     		sub	sp, sp, #8
 320              		.cfi_def_cfa_offset 16
 321 0134 00AF     		add	r7, sp, #0
 322              		.cfi_def_cfa_register 7
 323 0136 0200     		movs	r2, r0
 324 0138 FB1D     		adds	r3, r7, #7
 325 013a 1A70     		strb	r2, [r3]
  49:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     ascii_ctrl_bit_clear(B_RS);
 326              		.loc 1 49 0
 327 013c 0120     		movs	r0, #1
 328 013e FFF7FEFF 		bl	ascii_ctrl_bit_clear
  50:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     ascii_ctrl_bit_clear(B_RW);
 329              		.loc 1 50 0
 330 0142 0220     		movs	r0, #2
 331 0144 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  51:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     ascii_write_controller(command);
 332              		.loc 1 51 0
 333 0148 FB1D     		adds	r3, r7, #7
 334 014a 1B78     		ldrb	r3, [r3]
 335 014c 1800     		movs	r0, r3
 336 014e FFF7FEFF 		bl	ascii_write_controller
  52:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** }
 337              		.loc 1 52 0
 338 0152 C046     		nop
 339 0154 BD46     		mov	sp, r7
 340 0156 02B0     		add	sp, sp, #8
 341              		@ sp needed
 342 0158 80BD     		pop	{r7, pc}
 343              		.cfi_endproc
 344              	.LFE5:
 346              		.align	1
 347              		.global	ascii_write_data
 348              		.syntax unified
 349              		.code	16
 350              		.thumb_func
 351              		.fpu softvfp
 353              	ascii_write_data:
 354              	.LFB6:
  53:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** 
  54:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** void ascii_write_data(unsigned char data) {
 355              		.loc 1 54 0
 356              		.cfi_startproc
 357              		@ args = 0, pretend = 0, frame = 8
 358              		@ frame_needed = 1, uses_anonymous_args = 0
 359 015a 80B5     		push	{r7, lr}
 360              		.cfi_def_cfa_offset 8
 361              		.cfi_offset 7, -8
 362              		.cfi_offset 14, -4
 363 015c 82B0     		sub	sp, sp, #8
 364              		.cfi_def_cfa_offset 16
 365 015e 00AF     		add	r7, sp, #0
 366              		.cfi_def_cfa_register 7
 367 0160 0200     		movs	r2, r0
 368 0162 FB1D     		adds	r3, r7, #7
 369 0164 1A70     		strb	r2, [r3]
  55:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     ascii_ctrl_bit_set(B_RS);
 370              		.loc 1 55 0
 371 0166 0120     		movs	r0, #1
 372 0168 FFF7FEFF 		bl	ascii_ctrl_bit_set
  56:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     ascii_ctrl_bit_clear(B_RW);
 373              		.loc 1 56 0
 374 016c 0220     		movs	r0, #2
 375 016e FFF7FEFF 		bl	ascii_ctrl_bit_clear
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     ascii_write_controller(data);
 376              		.loc 1 57 0
 377 0172 FB1D     		adds	r3, r7, #7
 378 0174 1B78     		ldrb	r3, [r3]
 379 0176 1800     		movs	r0, r3
 380 0178 FFF7FEFF 		bl	ascii_write_controller
  58:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** }
 381              		.loc 1 58 0
 382 017c C046     		nop
 383 017e BD46     		mov	sp, r7
 384 0180 02B0     		add	sp, sp, #8
 385              		@ sp needed
 386 0182 80BD     		pop	{r7, pc}
 387              		.cfi_endproc
 388              	.LFE6:
 390              		.align	1
 391              		.global	ascii_write_char
 392              		.syntax unified
 393              		.code	16
 394              		.thumb_func
 395              		.fpu softvfp
 397              	ascii_write_char:
 398              	.LFB7:
  59:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** 
  60:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** void ascii_write_char(unsigned char c) {
 399              		.loc 1 60 0
 400              		.cfi_startproc
 401              		@ args = 0, pretend = 0, frame = 8
 402              		@ frame_needed = 1, uses_anonymous_args = 0
 403 0184 80B5     		push	{r7, lr}
 404              		.cfi_def_cfa_offset 8
 405              		.cfi_offset 7, -8
 406              		.cfi_offset 14, -4
 407 0186 82B0     		sub	sp, sp, #8
 408              		.cfi_def_cfa_offset 16
 409 0188 00AF     		add	r7, sp, #0
 410              		.cfi_def_cfa_register 7
 411 018a 0200     		movs	r2, r0
 412 018c FB1D     		adds	r3, r7, #7
 413 018e 1A70     		strb	r2, [r3]
  61:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     while((ascii_read_status() & 0x80) == 0x80) {}
 414              		.loc 1 61 0
 415 0190 C046     		nop
 416              	.L21:
 417              		.loc 1 61 0 is_stmt 0 discriminator 1
 418 0192 FFF7FEFF 		bl	ascii_read_status
 419 0196 0300     		movs	r3, r0
 420 0198 1A00     		movs	r2, r3
 421 019a 8023     		movs	r3, #128
 422 019c 1340     		ands	r3, r2
 423 019e 802B     		cmp	r3, #128
 424 01a0 F7D0     		beq	.L21
  62:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     delay_micro(8);
 425              		.loc 1 62 0 is_stmt 1
 426 01a2 0820     		movs	r0, #8
 427 01a4 FFF7FEFF 		bl	delay_micro
  63:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     ascii_write_data(c);
 428              		.loc 1 63 0
 429 01a8 FB1D     		adds	r3, r7, #7
 430 01aa 1B78     		ldrb	r3, [r3]
 431 01ac 1800     		movs	r0, r3
 432 01ae FFF7FEFF 		bl	ascii_write_data
  64:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     delay_micro(50);
 433              		.loc 1 64 0
 434 01b2 3220     		movs	r0, #50
 435 01b4 FFF7FEFF 		bl	delay_micro
  65:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** }
 436              		.loc 1 65 0
 437 01b8 C046     		nop
 438 01ba BD46     		mov	sp, r7
 439 01bc 02B0     		add	sp, sp, #8
 440              		@ sp needed
 441 01be 80BD     		pop	{r7, pc}
 442              		.cfi_endproc
 443              	.LFE7:
 445              		.align	1
 446              		.global	ascii_gotoxy
 447              		.syntax unified
 448              		.code	16
 449              		.thumb_func
 450              		.fpu softvfp
 452              	ascii_gotoxy:
 453              	.LFB8:
  66:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** 
  67:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** void ascii_gotoxy(int row, int column){
 454              		.loc 1 67 0
 455              		.cfi_startproc
 456              		@ args = 0, pretend = 0, frame = 16
 457              		@ frame_needed = 1, uses_anonymous_args = 0
 458 01c0 80B5     		push	{r7, lr}
 459              		.cfi_def_cfa_offset 8
 460              		.cfi_offset 7, -8
 461              		.cfi_offset 14, -4
 462 01c2 84B0     		sub	sp, sp, #16
 463              		.cfi_def_cfa_offset 24
 464 01c4 00AF     		add	r7, sp, #0
 465              		.cfi_def_cfa_register 7
 466 01c6 7860     		str	r0, [r7, #4]
 467 01c8 3960     		str	r1, [r7]
  68:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** 	while((ascii_read_status() & 0x80) == 0x80) 
 468              		.loc 1 68 0
 469 01ca 02E0     		b	.L23
 470              	.L24:
 471              	.LBB2:
  69:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** 	delay_micro(8);
 472              		.loc 1 69 0
 473 01cc 0820     		movs	r0, #8
 474 01ce FFF7FEFF 		bl	delay_micro
 475              	.L23:
 476              	.LBE2:
  68:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** 	while((ascii_read_status() & 0x80) == 0x80) 
 477              		.loc 1 68 0
 478 01d2 FFF7FEFF 		bl	ascii_read_status
 479 01d6 0300     		movs	r3, r0
 480 01d8 1A00     		movs	r2, r3
 481 01da 8023     		movs	r3, #128
 482 01dc 1340     		ands	r3, r2
 483 01de 802B     		cmp	r3, #128
 484 01e0 F4D0     		beq	.L24
  70:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     unsigned char address = row-1;
 485              		.loc 1 70 0
 486 01e2 7B68     		ldr	r3, [r7, #4]
 487 01e4 DAB2     		uxtb	r2, r3
 488 01e6 0F23     		movs	r3, #15
 489 01e8 FB18     		adds	r3, r7, r3
 490 01ea 013A     		subs	r2, r2, #1
 491 01ec 1A70     		strb	r2, [r3]
  71:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     if (column == 2){
 492              		.loc 1 71 0
 493 01ee 3B68     		ldr	r3, [r7]
 494 01f0 022B     		cmp	r3, #2
 495 01f2 05D1     		bne	.L25
  72:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****         address += 0x40;
 496              		.loc 1 72 0
 497 01f4 0F22     		movs	r2, #15
 498 01f6 BB18     		adds	r3, r7, r2
 499 01f8 BA18     		adds	r2, r7, r2
 500 01fa 1278     		ldrb	r2, [r2]
 501 01fc 4032     		adds	r2, r2, #64
 502 01fe 1A70     		strb	r2, [r3]
 503              	.L25:
  73:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     }
  74:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     ascii_write_cmd((0x80 | address));
 504              		.loc 1 74 0
 505 0200 0F23     		movs	r3, #15
 506 0202 FB18     		adds	r3, r7, r3
 507 0204 1B78     		ldrb	r3, [r3]
 508 0206 8022     		movs	r2, #128
 509 0208 5242     		rsbs	r2, r2, #0
 510 020a 1343     		orrs	r3, r2
 511 020c DBB2     		uxtb	r3, r3
 512 020e 1800     		movs	r0, r3
 513 0210 FFF7FEFF 		bl	ascii_write_cmd
  75:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** }
 514              		.loc 1 75 0
 515 0214 C046     		nop
 516 0216 BD46     		mov	sp, r7
 517 0218 04B0     		add	sp, sp, #16
 518              		@ sp needed
 519 021a 80BD     		pop	{r7, pc}
 520              		.cfi_endproc
 521              	.LFE8:
 523              		.align	1
 524              		.global	function_set
 525              		.syntax unified
 526              		.code	16
 527              		.thumb_func
 528              		.fpu softvfp
 530              	function_set:
 531              	.LFB9:
  76:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** void function_set(){
 532              		.loc 1 76 0
 533              		.cfi_startproc
 534              		@ args = 0, pretend = 0, frame = 0
 535              		@ frame_needed = 1, uses_anonymous_args = 0
 536 021c 80B5     		push	{r7, lr}
 537              		.cfi_def_cfa_offset 8
 538              		.cfi_offset 7, -8
 539              		.cfi_offset 14, -4
 540 021e 00AF     		add	r7, sp, #0
 541              		.cfi_def_cfa_register 7
  77:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     while((ascii_read_status() & 0x80) == 0x80) {}
 542              		.loc 1 77 0
 543 0220 C046     		nop
 544              	.L27:
 545              		.loc 1 77 0 is_stmt 0 discriminator 1
 546 0222 FFF7FEFF 		bl	ascii_read_status
 547 0226 0300     		movs	r3, r0
 548 0228 1A00     		movs	r2, r3
 549 022a 8023     		movs	r3, #128
 550 022c 1340     		ands	r3, r2
 551 022e 802B     		cmp	r3, #128
 552 0230 F7D0     		beq	.L27
  78:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     delay_micro(8);
 553              		.loc 1 78 0 is_stmt 1
 554 0232 0820     		movs	r0, #8
 555 0234 FFF7FEFF 		bl	delay_micro
  79:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     ascii_write_cmd(0b111000); // 2 rader 2x8 tecken
 556              		.loc 1 79 0
 557 0238 3820     		movs	r0, #56
 558 023a FFF7FEFF 		bl	ascii_write_cmd
  80:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     delay_micro(50);
 559              		.loc 1 80 0
 560 023e 3220     		movs	r0, #50
 561 0240 FFF7FEFF 		bl	delay_micro
  81:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** }
 562              		.loc 1 81 0
 563 0244 C046     		nop
 564 0246 BD46     		mov	sp, r7
 565              		@ sp needed
 566 0248 80BD     		pop	{r7, pc}
 567              		.cfi_endproc
 568              	.LFE9:
 570              		.align	1
 571              		.global	display_control
 572              		.syntax unified
 573              		.code	16
 574              		.thumb_func
 575              		.fpu softvfp
 577              	display_control:
 578              	.LFB10:
  82:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** void display_control(){
 579              		.loc 1 82 0
 580              		.cfi_startproc
 581              		@ args = 0, pretend = 0, frame = 0
 582              		@ frame_needed = 1, uses_anonymous_args = 0
 583 024a 80B5     		push	{r7, lr}
 584              		.cfi_def_cfa_offset 8
 585              		.cfi_offset 7, -8
 586              		.cfi_offset 14, -4
 587 024c 00AF     		add	r7, sp, #0
 588              		.cfi_def_cfa_register 7
  83:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     while((ascii_read_status() & 0x80) == 0x80) {}
 589              		.loc 1 83 0
 590 024e C046     		nop
 591              	.L29:
 592              		.loc 1 83 0 is_stmt 0 discriminator 1
 593 0250 FFF7FEFF 		bl	ascii_read_status
 594 0254 0300     		movs	r3, r0
 595 0256 1A00     		movs	r2, r3
 596 0258 8023     		movs	r3, #128
 597 025a 1340     		ands	r3, r2
 598 025c 802B     		cmp	r3, #128
 599 025e F7D0     		beq	.L29
  84:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     delay_micro(8);
 600              		.loc 1 84 0 is_stmt 1
 601 0260 0820     		movs	r0, #8
 602 0262 FFF7FEFF 		bl	delay_micro
  85:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     ascii_write_cmd(0b1110);
 603              		.loc 1 85 0
 604 0266 0E20     		movs	r0, #14
 605 0268 FFF7FEFF 		bl	ascii_write_cmd
  86:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     delay_micro(50);
 606              		.loc 1 86 0
 607 026c 3220     		movs	r0, #50
 608 026e FFF7FEFF 		bl	delay_micro
  87:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** 
  88:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** }
 609              		.loc 1 88 0
 610 0272 C046     		nop
 611 0274 BD46     		mov	sp, r7
 612              		@ sp needed
 613 0276 80BD     		pop	{r7, pc}
 614              		.cfi_endproc
 615              	.LFE10:
 617              		.align	1
 618              		.global	entry_mode
 619              		.syntax unified
 620              		.code	16
 621              		.thumb_func
 622              		.fpu softvfp
 624              	entry_mode:
 625              	.LFB11:
  89:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** void entry_mode(){
 626              		.loc 1 89 0
 627              		.cfi_startproc
 628              		@ args = 0, pretend = 0, frame = 0
 629              		@ frame_needed = 1, uses_anonymous_args = 0
 630 0278 80B5     		push	{r7, lr}
 631              		.cfi_def_cfa_offset 8
 632              		.cfi_offset 7, -8
 633              		.cfi_offset 14, -4
 634 027a 00AF     		add	r7, sp, #0
 635              		.cfi_def_cfa_register 7
  90:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     while((ascii_read_status() & 0x80) == 0x80) {}
 636              		.loc 1 90 0
 637 027c C046     		nop
 638              	.L31:
 639              		.loc 1 90 0 is_stmt 0 discriminator 1
 640 027e FFF7FEFF 		bl	ascii_read_status
 641 0282 0300     		movs	r3, r0
 642 0284 1A00     		movs	r2, r3
 643 0286 8023     		movs	r3, #128
 644 0288 1340     		ands	r3, r2
 645 028a 802B     		cmp	r3, #128
 646 028c F7D0     		beq	.L31
  91:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     delay_micro(8);
 647              		.loc 1 91 0 is_stmt 1
 648 028e 0820     		movs	r0, #8
 649 0290 FFF7FEFF 		bl	delay_micro
  92:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     ascii_write_cmd(0b110);
 650              		.loc 1 92 0
 651 0294 0620     		movs	r0, #6
 652 0296 FFF7FEFF 		bl	ascii_write_cmd
  93:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     delay_micro(50);
 653              		.loc 1 93 0
 654 029a 3220     		movs	r0, #50
 655 029c FFF7FEFF 		bl	delay_micro
  94:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** }
 656              		.loc 1 94 0
 657 02a0 C046     		nop
 658 02a2 BD46     		mov	sp, r7
 659              		@ sp needed
 660 02a4 80BD     		pop	{r7, pc}
 661              		.cfi_endproc
 662              	.LFE11:
 664              		.align	1
 665              		.global	clear_display
 666              		.syntax unified
 667              		.code	16
 668              		.thumb_func
 669              		.fpu softvfp
 671              	clear_display:
 672              	.LFB12:
  95:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** void clear_display() {
 673              		.loc 1 95 0
 674              		.cfi_startproc
 675              		@ args = 0, pretend = 0, frame = 0
 676              		@ frame_needed = 1, uses_anonymous_args = 0
 677 02a6 80B5     		push	{r7, lr}
 678              		.cfi_def_cfa_offset 8
 679              		.cfi_offset 7, -8
 680              		.cfi_offset 14, -4
 681 02a8 00AF     		add	r7, sp, #0
 682              		.cfi_def_cfa_register 7
  96:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     while((ascii_read_status() & 0x80) == 0x80) {}
 683              		.loc 1 96 0
 684 02aa C046     		nop
 685              	.L33:
 686              		.loc 1 96 0 is_stmt 0 discriminator 1
 687 02ac FFF7FEFF 		bl	ascii_read_status
 688 02b0 0300     		movs	r3, r0
 689 02b2 1A00     		movs	r2, r3
 690 02b4 8023     		movs	r3, #128
 691 02b6 1340     		ands	r3, r2
 692 02b8 802B     		cmp	r3, #128
 693 02ba F7D0     		beq	.L33
  97:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     delay_micro(8);
 694              		.loc 1 97 0 is_stmt 1
 695 02bc 0820     		movs	r0, #8
 696 02be FFF7FEFF 		bl	delay_micro
  98:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     ascii_write_cmd(1);
 697              		.loc 1 98 0
 698 02c2 0120     		movs	r0, #1
 699 02c4 FFF7FEFF 		bl	ascii_write_cmd
  99:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     delay_milli(2);
 700              		.loc 1 99 0
 701 02c8 0220     		movs	r0, #2
 702 02ca FFF7FEFF 		bl	delay_milli
 100:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** }
 703              		.loc 1 100 0
 704 02ce C046     		nop
 705 02d0 BD46     		mov	sp, r7
 706              		@ sp needed
 707 02d2 80BD     		pop	{r7, pc}
 708              		.cfi_endproc
 709              	.LFE12:
 711              		.align	1
 712              		.global	ascii_init
 713              		.syntax unified
 714              		.code	16
 715              		.thumb_func
 716              		.fpu softvfp
 718              	ascii_init:
 719              	.LFB13:
 101:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** void ascii_init(){
 720              		.loc 1 101 0
 721              		.cfi_startproc
 722              		@ args = 0, pretend = 0, frame = 0
 723              		@ frame_needed = 1, uses_anonymous_args = 0
 724 02d4 80B5     		push	{r7, lr}
 725              		.cfi_def_cfa_offset 8
 726              		.cfi_offset 7, -8
 727              		.cfi_offset 14, -4
 728 02d6 00AF     		add	r7, sp, #0
 729              		.cfi_def_cfa_register 7
 102:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     function_set(); 
 730              		.loc 1 102 0
 731 02d8 FFF7FEFF 		bl	function_set
 103:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     display_control();
 732              		.loc 1 103 0
 733 02dc FFF7FEFF 		bl	display_control
 104:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     entry_mode();
 734              		.loc 1 104 0
 735 02e0 FFF7FEFF 		bl	entry_mode
 105:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h ****     clear_display();
 736              		.loc 1 105 0
 737 02e4 FFF7FEFF 		bl	clear_display
 106:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\ascii_display.h **** }
 738              		.loc 1 106 0
 739 02e8 C046     		nop
 740 02ea BD46     		mov	sp, r7
 741              		@ sp needed
 742 02ec 80BD     		pop	{r7, pc}
 743              		.cfi_endproc
 744              	.LFE13:
 746              		.data
 747              		.align	2
 750              	big_circle_bits:
 751 0000 00       		.byte	0
 752 0001 00       		.byte	0
 753 0002 00       		.byte	0
 754 0003 00       		.byte	0
 755 0004 00       		.byte	0
 756 0005 00       		.byte	0
 757 0006 00       		.byte	0
 758 0007 00       		.byte	0
 759 0008 00       		.byte	0
 760 0009 00       		.byte	0
 761 000a 00       		.byte	0
 762 000b 00       		.byte	0
 763 000c 00       		.byte	0
 764 000d 00       		.byte	0
 765 000e 00       		.byte	0
 766 000f 00       		.byte	0
 767 0010 00       		.byte	0
 768 0011 00       		.byte	0
 769 0012 00       		.byte	0
 770 0013 00       		.byte	0
 771 0014 00       		.byte	0
 772 0015 00       		.byte	0
 773 0016 00       		.byte	0
 774 0017 00       		.byte	0
 775 0018 00       		.byte	0
 776 0019 00       		.byte	0
 777 001a 00       		.byte	0
 778 001b 00       		.byte	0
 779 001c 00       		.byte	0
 780 001d 00       		.byte	0
 781 001e 00       		.byte	0
 782 001f 00       		.byte	0
 783 0020 00       		.byte	0
 784 0021 00       		.byte	0
 785 0022 00       		.byte	0
 786 0023 00       		.byte	0
 787 0024 00       		.byte	0
 788 0025 00       		.byte	0
 789 0026 00       		.byte	0
 790 0027 00       		.byte	0
 791 0028 00       		.byte	0
 792 0029 00       		.byte	0
 793 002a 00       		.byte	0
 794 002b FC       		.byte	-4
 795 002c 3F       		.byte	63
 796 002d 00       		.byte	0
 797 002e 00       		.byte	0
 798 002f 00       		.byte	0
 799 0030 00       		.byte	0
 800 0031 00       		.byte	0
 801 0032 C0       		.byte	-64
 802 0033 FF       		.byte	-1
 803 0034 FF       		.byte	-1
 804 0035 03       		.byte	3
 805 0036 00       		.byte	0
 806 0037 00       		.byte	0
 807 0038 00       		.byte	0
 808 0039 00       		.byte	0
 809 003a F0       		.byte	-16
 810 003b FF       		.byte	-1
 811 003c FF       		.byte	-1
 812 003d 0F       		.byte	15
 813 003e 00       		.byte	0
 814 003f 00       		.byte	0
 815 0040 00       		.byte	0
 816 0041 00       		.byte	0
 817 0042 FC       		.byte	-4
 818 0043 FF       		.byte	-1
 819 0044 FF       		.byte	-1
 820 0045 3F       		.byte	63
 821 0046 00       		.byte	0
 822 0047 00       		.byte	0
 823 0048 00       		.byte	0
 824 0049 00       		.byte	0
 825 004a FE       		.byte	-2
 826 004b FF       		.byte	-1
 827 004c FF       		.byte	-1
 828 004d 7F       		.byte	127
 829 004e 00       		.byte	0
 830 004f 00       		.byte	0
 831 0050 00       		.byte	0
 832 0051 80       		.byte	-128
 833 0052 FF       		.byte	-1
 834 0053 1F       		.byte	31
 835 0054 F8       		.byte	-8
 836 0055 FF       		.byte	-1
 837 0056 01       		.byte	1
 838 0057 00       		.byte	0
 839 0058 00       		.byte	0
 840 0059 C0       		.byte	-64
 841 005a FF       		.byte	-1
 842 005b 01       		.byte	1
 843 005c 80       		.byte	-128
 844 005d FF       		.byte	-1
 845 005e 03       		.byte	3
 846 005f 00       		.byte	0
 847 0060 00       		.byte	0
 848 0061 E0       		.byte	-32
 849 0062 7F       		.byte	127
 850 0063 00       		.byte	0
 851 0064 00       		.byte	0
 852 0065 FE       		.byte	-2
 853 0066 07       		.byte	7
 854 0067 00       		.byte	0
 855 0068 00       		.byte	0
 856 0069 F0       		.byte	-16
 857 006a 1F       		.byte	31
 858 006b 00       		.byte	0
 859 006c 00       		.byte	0
 860 006d F8       		.byte	-8
 861 006e 0F       		.byte	15
 862 006f 00       		.byte	0
 863 0070 00       		.byte	0
 864 0071 F8       		.byte	-8
 865 0072 0F       		.byte	15
 866 0073 00       		.byte	0
 867 0074 00       		.byte	0
 868 0075 F0       		.byte	-16
 869 0076 1F       		.byte	31
 870 0077 00       		.byte	0
 871 0078 00       		.byte	0
 872 0079 FC       		.byte	-4
 873 007a 03       		.byte	3
 874 007b 00       		.byte	0
 875 007c 00       		.byte	0
 876 007d C0       		.byte	-64
 877 007e 3F       		.byte	63
 878 007f 00       		.byte	0
 879 0080 00       		.byte	0
 880 0081 FC       		.byte	-4
 881 0082 01       		.byte	1
 882 0083 00       		.byte	0
 883 0084 00       		.byte	0
 884 0085 80       		.byte	-128
 885 0086 3F       		.byte	63
 886 0087 00       		.byte	0
 887 0088 00       		.byte	0
 888 0089 FE       		.byte	-2
 889 008a 00       		.byte	0
 890 008b 00       		.byte	0
 891 008c 00       		.byte	0
 892 008d 00       		.byte	0
 893 008e 7F       		.byte	127
 894 008f 00       		.byte	0
 895 0090 00       		.byte	0
 896 0091 7F       		.byte	127
 897 0092 00       		.byte	0
 898 0093 00       		.byte	0
 899 0094 00       		.byte	0
 900 0095 00       		.byte	0
 901 0096 FE       		.byte	-2
 902 0097 00       		.byte	0
 903 0098 00       		.byte	0
 904 0099 7F       		.byte	127
 905 009a 00       		.byte	0
 906 009b 00       		.byte	0
 907 009c 00       		.byte	0
 908 009d 00       		.byte	0
 909 009e FE       		.byte	-2
 910 009f 00       		.byte	0
 911 00a0 80       		.byte	-128
 912 00a1 3F       		.byte	63
 913 00a2 00       		.byte	0
 914 00a3 00       		.byte	0
 915 00a4 00       		.byte	0
 916 00a5 00       		.byte	0
 917 00a6 FC       		.byte	-4
 918 00a7 01       		.byte	1
 919 00a8 80       		.byte	-128
 920 00a9 1F       		.byte	31
 921 00aa 00       		.byte	0
 922 00ab 00       		.byte	0
 923 00ac 00       		.byte	0
 924 00ad 00       		.byte	0
 925 00ae F8       		.byte	-8
 926 00af 01       		.byte	1
 927 00b0 C0       		.byte	-64
 928 00b1 1F       		.byte	31
 929 00b2 00       		.byte	0
 930 00b3 00       		.byte	0
 931 00b4 00       		.byte	0
 932 00b5 00       		.byte	0
 933 00b6 F8       		.byte	-8
 934 00b7 03       		.byte	3
 935 00b8 C0       		.byte	-64
 936 00b9 0F       		.byte	15
 937 00ba 00       		.byte	0
 938 00bb 00       		.byte	0
 939 00bc 00       		.byte	0
 940 00bd 00       		.byte	0
 941 00be F0       		.byte	-16
 942 00bf 03       		.byte	3
 943 00c0 C0       		.byte	-64
 944 00c1 0F       		.byte	15
 945 00c2 00       		.byte	0
 946 00c3 00       		.byte	0
 947 00c4 00       		.byte	0
 948 00c5 00       		.byte	0
 949 00c6 F0       		.byte	-16
 950 00c7 03       		.byte	3
 951 00c8 C0       		.byte	-64
 952 00c9 07       		.byte	7
 953 00ca 00       		.byte	0
 954 00cb 00       		.byte	0
 955 00cc 00       		.byte	0
 956 00cd 00       		.byte	0
 957 00ce E0       		.byte	-32
 958 00cf 03       		.byte	3
 959 00d0 E0       		.byte	-32
 960 00d1 07       		.byte	7
 961 00d2 00       		.byte	0
 962 00d3 00       		.byte	0
 963 00d4 00       		.byte	0
 964 00d5 00       		.byte	0
 965 00d6 E0       		.byte	-32
 966 00d7 07       		.byte	7
 967 00d8 E0       		.byte	-32
 968 00d9 07       		.byte	7
 969 00da 00       		.byte	0
 970 00db 00       		.byte	0
 971 00dc 00       		.byte	0
 972 00dd 00       		.byte	0
 973 00de E0       		.byte	-32
 974 00df 07       		.byte	7
 975 00e0 E0       		.byte	-32
 976 00e1 07       		.byte	7
 977 00e2 00       		.byte	0
 978 00e3 00       		.byte	0
 979 00e4 00       		.byte	0
 980 00e5 00       		.byte	0
 981 00e6 E0       		.byte	-32
 982 00e7 07       		.byte	7
 983 00e8 E0       		.byte	-32
 984 00e9 03       		.byte	3
 985 00ea 00       		.byte	0
 986 00eb 00       		.byte	0
 987 00ec 00       		.byte	0
 988 00ed 00       		.byte	0
 989 00ee C0       		.byte	-64
 990 00ef 07       		.byte	7
 991 00f0 E0       		.byte	-32
 992 00f1 03       		.byte	3
 993 00f2 00       		.byte	0
 994 00f3 00       		.byte	0
 995 00f4 00       		.byte	0
 996 00f5 00       		.byte	0
 997 00f6 C0       		.byte	-64
 998 00f7 07       		.byte	7
 999 00f8 E0       		.byte	-32
 1000 00f9 03       		.byte	3
 1001 00fa 00       		.byte	0
 1002 00fb 00       		.byte	0
 1003 00fc 00       		.byte	0
 1004 00fd 00       		.byte	0
 1005 00fe C0       		.byte	-64
 1006 00ff 07       		.byte	7
 1007 0100 E0       		.byte	-32
 1008 0101 03       		.byte	3
 1009 0102 00       		.byte	0
 1010 0103 00       		.byte	0
 1011 0104 00       		.byte	0
 1012 0105 00       		.byte	0
 1013 0106 C0       		.byte	-64
 1014 0107 07       		.byte	7
 1015 0108 E0       		.byte	-32
 1016 0109 03       		.byte	3
 1017 010a 00       		.byte	0
 1018 010b 00       		.byte	0
 1019 010c 00       		.byte	0
 1020 010d 00       		.byte	0
 1021 010e C0       		.byte	-64
 1022 010f 07       		.byte	7
 1023 0110 E0       		.byte	-32
 1024 0111 03       		.byte	3
 1025 0112 00       		.byte	0
 1026 0113 00       		.byte	0
 1027 0114 00       		.byte	0
 1028 0115 00       		.byte	0
 1029 0116 C0       		.byte	-64
 1030 0117 07       		.byte	7
 1031 0118 E0       		.byte	-32
 1032 0119 07       		.byte	7
 1033 011a 00       		.byte	0
 1034 011b 00       		.byte	0
 1035 011c 00       		.byte	0
 1036 011d 00       		.byte	0
 1037 011e E0       		.byte	-32
 1038 011f 07       		.byte	7
 1039 0120 E0       		.byte	-32
 1040 0121 07       		.byte	7
 1041 0122 00       		.byte	0
 1042 0123 00       		.byte	0
 1043 0124 00       		.byte	0
 1044 0125 00       		.byte	0
 1045 0126 E0       		.byte	-32
 1046 0127 07       		.byte	7
 1047 0128 E0       		.byte	-32
 1048 0129 07       		.byte	7
 1049 012a 00       		.byte	0
 1050 012b 00       		.byte	0
 1051 012c 00       		.byte	0
 1052 012d 00       		.byte	0
 1053 012e E0       		.byte	-32
 1054 012f 07       		.byte	7
 1055 0130 C0       		.byte	-64
 1056 0131 07       		.byte	7
 1057 0132 00       		.byte	0
 1058 0133 00       		.byte	0
 1059 0134 00       		.byte	0
 1060 0135 00       		.byte	0
 1061 0136 E0       		.byte	-32
 1062 0137 03       		.byte	3
 1063 0138 C0       		.byte	-64
 1064 0139 0F       		.byte	15
 1065 013a 00       		.byte	0
 1066 013b 00       		.byte	0
 1067 013c 00       		.byte	0
 1068 013d 00       		.byte	0
 1069 013e F0       		.byte	-16
 1070 013f 03       		.byte	3
 1071 0140 C0       		.byte	-64
 1072 0141 0F       		.byte	15
 1073 0142 00       		.byte	0
 1074 0143 00       		.byte	0
 1075 0144 00       		.byte	0
 1076 0145 00       		.byte	0
 1077 0146 F0       		.byte	-16
 1078 0147 03       		.byte	3
 1079 0148 C0       		.byte	-64
 1080 0149 1F       		.byte	31
 1081 014a 00       		.byte	0
 1082 014b 00       		.byte	0
 1083 014c 00       		.byte	0
 1084 014d 00       		.byte	0
 1085 014e F8       		.byte	-8
 1086 014f 03       		.byte	3
 1087 0150 80       		.byte	-128
 1088 0151 1F       		.byte	31
 1089 0152 00       		.byte	0
 1090 0153 00       		.byte	0
 1091 0154 00       		.byte	0
 1092 0155 00       		.byte	0
 1093 0156 F8       		.byte	-8
 1094 0157 01       		.byte	1
 1095 0158 80       		.byte	-128
 1096 0159 3F       		.byte	63
 1097 015a 00       		.byte	0
 1098 015b 00       		.byte	0
 1099 015c 00       		.byte	0
 1100 015d 00       		.byte	0
 1101 015e FC       		.byte	-4
 1102 015f 01       		.byte	1
 1103 0160 00       		.byte	0
 1104 0161 7F       		.byte	127
 1105 0162 00       		.byte	0
 1106 0163 00       		.byte	0
 1107 0164 00       		.byte	0
 1108 0165 00       		.byte	0
 1109 0166 FE       		.byte	-2
 1110 0167 00       		.byte	0
 1111 0168 00       		.byte	0
 1112 0169 7F       		.byte	127
 1113 016a 00       		.byte	0
 1114 016b 00       		.byte	0
 1115 016c 00       		.byte	0
 1116 016d 00       		.byte	0
 1117 016e FE       		.byte	-2
 1118 016f 00       		.byte	0
 1119 0170 00       		.byte	0
 1120 0171 FE       		.byte	-2
 1121 0172 00       		.byte	0
 1122 0173 00       		.byte	0
 1123 0174 00       		.byte	0
 1124 0175 00       		.byte	0
 1125 0176 7F       		.byte	127
 1126 0177 00       		.byte	0
 1127 0178 00       		.byte	0
 1128 0179 FC       		.byte	-4
 1129 017a 01       		.byte	1
 1130 017b 00       		.byte	0
 1131 017c 00       		.byte	0
 1132 017d 80       		.byte	-128
 1133 017e 3F       		.byte	63
 1134 017f 00       		.byte	0
 1135 0180 00       		.byte	0
 1136 0181 FC       		.byte	-4
 1137 0182 03       		.byte	3
 1138 0183 00       		.byte	0
 1139 0184 00       		.byte	0
 1140 0185 C0       		.byte	-64
 1141 0186 3F       		.byte	63
 1142 0187 00       		.byte	0
 1143 0188 00       		.byte	0
 1144 0189 F8       		.byte	-8
 1145 018a 0F       		.byte	15
 1146 018b 00       		.byte	0
 1147 018c 00       		.byte	0
 1148 018d F0       		.byte	-16
 1149 018e 1F       		.byte	31
 1150 018f 00       		.byte	0
 1151 0190 00       		.byte	0
 1152 0191 F0       		.byte	-16
 1153 0192 1F       		.byte	31
 1154 0193 00       		.byte	0
 1155 0194 00       		.byte	0
 1156 0195 F8       		.byte	-8
 1157 0196 0F       		.byte	15
 1158 0197 00       		.byte	0
 1159 0198 00       		.byte	0
 1160 0199 E0       		.byte	-32
 1161 019a 7F       		.byte	127
 1162 019b 00       		.byte	0
 1163 019c 00       		.byte	0
 1164 019d FE       		.byte	-2
 1165 019e 07       		.byte	7
 1166 019f 00       		.byte	0
 1167 01a0 00       		.byte	0
 1168 01a1 C0       		.byte	-64
 1169 01a2 FF       		.byte	-1
 1170 01a3 01       		.byte	1
 1171 01a4 80       		.byte	-128
 1172 01a5 FF       		.byte	-1
 1173 01a6 03       		.byte	3
 1174 01a7 00       		.byte	0
 1175 01a8 00       		.byte	0
 1176 01a9 80       		.byte	-128
 1177 01aa FF       		.byte	-1
 1178 01ab 1F       		.byte	31
 1179 01ac F8       		.byte	-8
 1180 01ad FF       		.byte	-1
 1181 01ae 01       		.byte	1
 1182 01af 00       		.byte	0
 1183 01b0 00       		.byte	0
 1184 01b1 00       		.byte	0
 1185 01b2 FE       		.byte	-2
 1186 01b3 FF       		.byte	-1
 1187 01b4 FF       		.byte	-1
 1188 01b5 7F       		.byte	127
 1189 01b6 00       		.byte	0
 1190 01b7 00       		.byte	0
 1191 01b8 00       		.byte	0
 1192 01b9 00       		.byte	0
 1193 01ba FC       		.byte	-4
 1194 01bb FF       		.byte	-1
 1195 01bc FF       		.byte	-1
 1196 01bd 3F       		.byte	63
 1197 01be 00       		.byte	0
 1198 01bf 00       		.byte	0
 1199 01c0 00       		.byte	0
 1200 01c1 00       		.byte	0
 1201 01c2 F0       		.byte	-16
 1202 01c3 FF       		.byte	-1
 1203 01c4 FF       		.byte	-1
 1204 01c5 0F       		.byte	15
 1205 01c6 00       		.byte	0
 1206 01c7 00       		.byte	0
 1207 01c8 00       		.byte	0
 1208 01c9 00       		.byte	0
 1209 01ca C0       		.byte	-64
 1210 01cb FF       		.byte	-1
 1211 01cc FF       		.byte	-1
 1212 01cd 03       		.byte	3
 1213 01ce 00       		.byte	0
 1214 01cf 00       		.byte	0
 1215 01d0 00       		.byte	0
 1216 01d1 00       		.byte	0
 1217 01d2 00       		.byte	0
 1218 01d3 FC       		.byte	-4
 1219 01d4 3F       		.byte	63
 1220 01d5 00       		.byte	0
 1221 01d6 00       		.byte	0
 1222 01d7 00       		.byte	0
 1223 01d8 00       		.byte	0
 1224 01d9 00       		.byte	0
 1225 01da 00       		.byte	0
 1226 01db 00       		.byte	0
 1227 01dc 00       		.byte	0
 1228 01dd 00       		.byte	0
 1229 01de 00       		.byte	0
 1230 01df 00       		.byte	0
 1231 01e0 00       		.byte	0
 1232 01e1 00       		.byte	0
 1233 01e2 00       		.byte	0
 1234 01e3 00       		.byte	0
 1235 01e4 00       		.byte	0
 1236 01e5 00       		.byte	0
 1237 01e6 00       		.byte	0
 1238 01e7 00       		.byte	0
 1239 01e8 00       		.byte	0
 1240 01e9 00       		.byte	0
 1241 01ea 00       		.byte	0
 1242 01eb 00       		.byte	0
 1243 01ec 00       		.byte	0
 1244 01ed 00       		.byte	0
 1245 01ee 00       		.byte	0
 1246 01ef 00       		.byte	0
 1247 01f0 00       		.byte	0
 1248 01f1 00       		.byte	0
 1249 01f2 00       		.byte	0
 1250 01f3 00       		.byte	0
 1251 01f4 00       		.byte	0
 1252 01f5 00       		.byte	0
 1253 01f6 00       		.byte	0
 1254 01f7 00       		.byte	0
 1255 01f8 00       		.byte	0
 1256 01f9 00       		.byte	0
 1257 01fa 00       		.byte	0
 1258 01fb 00       		.byte	0
 1259 01fc 00       		.byte	0
 1260 01fd 00       		.byte	0
 1261 01fe 00       		.byte	0
 1262 01ff 00       		.byte	0
 1263              		.align	2
 1266              	big_cross_bits:
 1267 0200 00       		.byte	0
 1268 0201 00       		.byte	0
 1269 0202 00       		.byte	0
 1270 0203 00       		.byte	0
 1271 0204 00       		.byte	0
 1272 0205 00       		.byte	0
 1273 0206 00       		.byte	0
 1274 0207 00       		.byte	0
 1275 0208 00       		.byte	0
 1276 0209 00       		.byte	0
 1277 020a 00       		.byte	0
 1278 020b 00       		.byte	0
 1279 020c 00       		.byte	0
 1280 020d 00       		.byte	0
 1281 020e 00       		.byte	0
 1282 020f 00       		.byte	0
 1283 0210 00       		.byte	0
 1284 0211 00       		.byte	0
 1285 0212 00       		.byte	0
 1286 0213 00       		.byte	0
 1287 0214 00       		.byte	0
 1288 0215 00       		.byte	0
 1289 0216 00       		.byte	0
 1290 0217 00       		.byte	0
 1291 0218 78       		.byte	120
 1292 0219 00       		.byte	0
 1293 021a 00       		.byte	0
 1294 021b 00       		.byte	0
 1295 021c 00       		.byte	0
 1296 021d 00       		.byte	0
 1297 021e 00       		.byte	0
 1298 021f 1E       		.byte	30
 1299 0220 F8       		.byte	-8
 1300 0221 00       		.byte	0
 1301 0222 00       		.byte	0
 1302 0223 00       		.byte	0
 1303 0224 00       		.byte	0
 1304 0225 00       		.byte	0
 1305 0226 00       		.byte	0
 1306 0227 1F       		.byte	31
 1307 0228 F8       		.byte	-8
 1308 0229 01       		.byte	1
 1309 022a 00       		.byte	0
 1310 022b 00       		.byte	0
 1311 022c 00       		.byte	0
 1312 022d 00       		.byte	0
 1313 022e 80       		.byte	-128
 1314 022f 1F       		.byte	31
 1315 0230 F8       		.byte	-8
 1316 0231 03       		.byte	3
 1317 0232 00       		.byte	0
 1318 0233 00       		.byte	0
 1319 0234 00       		.byte	0
 1320 0235 00       		.byte	0
 1321 0236 C0       		.byte	-64
 1322 0237 1F       		.byte	31
 1323 0238 F0       		.byte	-16
 1324 0239 07       		.byte	7
 1325 023a 00       		.byte	0
 1326 023b 00       		.byte	0
 1327 023c 00       		.byte	0
 1328 023d 00       		.byte	0
 1329 023e E0       		.byte	-32
 1330 023f 0F       		.byte	15
 1331 0240 E0       		.byte	-32
 1332 0241 0F       		.byte	15
 1333 0242 00       		.byte	0
 1334 0243 00       		.byte	0
 1335 0244 00       		.byte	0
 1336 0245 00       		.byte	0
 1337 0246 F0       		.byte	-16
 1338 0247 07       		.byte	7
 1339 0248 C0       		.byte	-64
 1340 0249 1F       		.byte	31
 1341 024a 00       		.byte	0
 1342 024b 00       		.byte	0
 1343 024c 00       		.byte	0
 1344 024d 00       		.byte	0
 1345 024e F8       		.byte	-8
 1346 024f 03       		.byte	3
 1347 0250 80       		.byte	-128
 1348 0251 3F       		.byte	63
 1349 0252 00       		.byte	0
 1350 0253 00       		.byte	0
 1351 0254 00       		.byte	0
 1352 0255 00       		.byte	0
 1353 0256 FC       		.byte	-4
 1354 0257 01       		.byte	1
 1355 0258 00       		.byte	0
 1356 0259 7F       		.byte	127
 1357 025a 00       		.byte	0
 1358 025b 00       		.byte	0
 1359 025c 00       		.byte	0
 1360 025d 00       		.byte	0
 1361 025e FE       		.byte	-2
 1362 025f 00       		.byte	0
 1363 0260 00       		.byte	0
 1364 0261 FE       		.byte	-2
 1365 0262 00       		.byte	0
 1366 0263 00       		.byte	0
 1367 0264 00       		.byte	0
 1368 0265 00       		.byte	0
 1369 0266 7F       		.byte	127
 1370 0267 00       		.byte	0
 1371 0268 00       		.byte	0
 1372 0269 FC       		.byte	-4
 1373 026a 01       		.byte	1
 1374 026b 00       		.byte	0
 1375 026c 00       		.byte	0
 1376 026d 80       		.byte	-128
 1377 026e 3F       		.byte	63
 1378 026f 00       		.byte	0
 1379 0270 00       		.byte	0
 1380 0271 F8       		.byte	-8
 1381 0272 03       		.byte	3
 1382 0273 00       		.byte	0
 1383 0274 00       		.byte	0
 1384 0275 C0       		.byte	-64
 1385 0276 1F       		.byte	31
 1386 0277 00       		.byte	0
 1387 0278 00       		.byte	0
 1388 0279 F0       		.byte	-16
 1389 027a 07       		.byte	7
 1390 027b 00       		.byte	0
 1391 027c 00       		.byte	0
 1392 027d E0       		.byte	-32
 1393 027e 0F       		.byte	15
 1394 027f 00       		.byte	0
 1395 0280 00       		.byte	0
 1396 0281 E0       		.byte	-32
 1397 0282 0F       		.byte	15
 1398 0283 00       		.byte	0
 1399 0284 00       		.byte	0
 1400 0285 F0       		.byte	-16
 1401 0286 07       		.byte	7
 1402 0287 00       		.byte	0
 1403 0288 00       		.byte	0
 1404 0289 C0       		.byte	-64
 1405 028a 1F       		.byte	31
 1406 028b 00       		.byte	0
 1407 028c 00       		.byte	0
 1408 028d F8       		.byte	-8
 1409 028e 03       		.byte	3
 1410 028f 00       		.byte	0
 1411 0290 00       		.byte	0
 1412 0291 80       		.byte	-128
 1413 0292 3F       		.byte	63
 1414 0293 00       		.byte	0
 1415 0294 00       		.byte	0
 1416 0295 FC       		.byte	-4
 1417 0296 01       		.byte	1
 1418 0297 00       		.byte	0
 1419 0298 00       		.byte	0
 1420 0299 00       		.byte	0
 1421 029a 7F       		.byte	127
 1422 029b 00       		.byte	0
 1423 029c 00       		.byte	0
 1424 029d FE       		.byte	-2
 1425 029e 00       		.byte	0
 1426 029f 00       		.byte	0
 1427 02a0 00       		.byte	0
 1428 02a1 00       		.byte	0
 1429 02a2 FE       		.byte	-2
 1430 02a3 00       		.byte	0
 1431 02a4 00       		.byte	0
 1432 02a5 7F       		.byte	127
 1433 02a6 00       		.byte	0
 1434 02a7 00       		.byte	0
 1435 02a8 00       		.byte	0
 1436 02a9 00       		.byte	0
 1437 02aa FC       		.byte	-4
 1438 02ab 01       		.byte	1
 1439 02ac 80       		.byte	-128
 1440 02ad 3F       		.byte	63
 1441 02ae 00       		.byte	0
 1442 02af 00       		.byte	0
 1443 02b0 00       		.byte	0
 1444 02b1 00       		.byte	0
 1445 02b2 F8       		.byte	-8
 1446 02b3 03       		.byte	3
 1447 02b4 C0       		.byte	-64
 1448 02b5 1F       		.byte	31
 1449 02b6 00       		.byte	0
 1450 02b7 00       		.byte	0
 1451 02b8 00       		.byte	0
 1452 02b9 00       		.byte	0
 1453 02ba F0       		.byte	-16
 1454 02bb 07       		.byte	7
 1455 02bc E0       		.byte	-32
 1456 02bd 0F       		.byte	15
 1457 02be 00       		.byte	0
 1458 02bf 00       		.byte	0
 1459 02c0 00       		.byte	0
 1460 02c1 00       		.byte	0
 1461 02c2 E0       		.byte	-32
 1462 02c3 0F       		.byte	15
 1463 02c4 F0       		.byte	-16
 1464 02c5 07       		.byte	7
 1465 02c6 00       		.byte	0
 1466 02c7 00       		.byte	0
 1467 02c8 00       		.byte	0
 1468 02c9 00       		.byte	0
 1469 02ca C0       		.byte	-64
 1470 02cb 1F       		.byte	31
 1471 02cc F8       		.byte	-8
 1472 02cd 03       		.byte	3
 1473 02ce 00       		.byte	0
 1474 02cf 00       		.byte	0
 1475 02d0 00       		.byte	0
 1476 02d1 00       		.byte	0
 1477 02d2 80       		.byte	-128
 1478 02d3 3F       		.byte	63
 1479 02d4 FC       		.byte	-4
 1480 02d5 01       		.byte	1
 1481 02d6 00       		.byte	0
 1482 02d7 00       		.byte	0
 1483 02d8 00       		.byte	0
 1484 02d9 00       		.byte	0
 1485 02da 00       		.byte	0
 1486 02db 7F       		.byte	127
 1487 02dc FE       		.byte	-2
 1488 02dd 00       		.byte	0
 1489 02de 00       		.byte	0
 1490 02df 00       		.byte	0
 1491 02e0 00       		.byte	0
 1492 02e1 00       		.byte	0
 1493 02e2 00       		.byte	0
 1494 02e3 FE       		.byte	-2
 1495 02e4 7F       		.byte	127
 1496 02e5 00       		.byte	0
 1497 02e6 00       		.byte	0
 1498 02e7 00       		.byte	0
 1499 02e8 00       		.byte	0
 1500 02e9 00       		.byte	0
 1501 02ea 00       		.byte	0
 1502 02eb FC       		.byte	-4
 1503 02ec 3F       		.byte	63
 1504 02ed 00       		.byte	0
 1505 02ee 00       		.byte	0
 1506 02ef 00       		.byte	0
 1507 02f0 00       		.byte	0
 1508 02f1 00       		.byte	0
 1509 02f2 00       		.byte	0
 1510 02f3 F8       		.byte	-8
 1511 02f4 1F       		.byte	31
 1512 02f5 00       		.byte	0
 1513 02f6 00       		.byte	0
 1514 02f7 00       		.byte	0
 1515 02f8 00       		.byte	0
 1516 02f9 00       		.byte	0
 1517 02fa 00       		.byte	0
 1518 02fb F0       		.byte	-16
 1519 02fc 0F       		.byte	15
 1520 02fd 00       		.byte	0
 1521 02fe 00       		.byte	0
 1522 02ff 00       		.byte	0
 1523 0300 00       		.byte	0
 1524 0301 00       		.byte	0
 1525 0302 00       		.byte	0
 1526 0303 F0       		.byte	-16
 1527 0304 0F       		.byte	15
 1528 0305 00       		.byte	0
 1529 0306 00       		.byte	0
 1530 0307 00       		.byte	0
 1531 0308 00       		.byte	0
 1532 0309 00       		.byte	0
 1533 030a 00       		.byte	0
 1534 030b F8       		.byte	-8
 1535 030c 1F       		.byte	31
 1536 030d 00       		.byte	0
 1537 030e 00       		.byte	0
 1538 030f 00       		.byte	0
 1539 0310 00       		.byte	0
 1540 0311 00       		.byte	0
 1541 0312 00       		.byte	0
 1542 0313 FC       		.byte	-4
 1543 0314 3F       		.byte	63
 1544 0315 00       		.byte	0
 1545 0316 00       		.byte	0
 1546 0317 00       		.byte	0
 1547 0318 00       		.byte	0
 1548 0319 00       		.byte	0
 1549 031a 00       		.byte	0
 1550 031b FE       		.byte	-2
 1551 031c 7F       		.byte	127
 1552 031d 00       		.byte	0
 1553 031e 00       		.byte	0
 1554 031f 00       		.byte	0
 1555 0320 00       		.byte	0
 1556 0321 00       		.byte	0
 1557 0322 00       		.byte	0
 1558 0323 7F       		.byte	127
 1559 0324 FE       		.byte	-2
 1560 0325 00       		.byte	0
 1561 0326 00       		.byte	0
 1562 0327 00       		.byte	0
 1563 0328 00       		.byte	0
 1564 0329 00       		.byte	0
 1565 032a 80       		.byte	-128
 1566 032b 3F       		.byte	63
 1567 032c FC       		.byte	-4
 1568 032d 01       		.byte	1
 1569 032e 00       		.byte	0
 1570 032f 00       		.byte	0
 1571 0330 00       		.byte	0
 1572 0331 00       		.byte	0
 1573 0332 C0       		.byte	-64
 1574 0333 1F       		.byte	31
 1575 0334 F8       		.byte	-8
 1576 0335 03       		.byte	3
 1577 0336 00       		.byte	0
 1578 0337 00       		.byte	0
 1579 0338 00       		.byte	0
 1580 0339 00       		.byte	0
 1581 033a E0       		.byte	-32
 1582 033b 0F       		.byte	15
 1583 033c F0       		.byte	-16
 1584 033d 07       		.byte	7
 1585 033e 00       		.byte	0
 1586 033f 00       		.byte	0
 1587 0340 00       		.byte	0
 1588 0341 00       		.byte	0
 1589 0342 F0       		.byte	-16
 1590 0343 07       		.byte	7
 1591 0344 E0       		.byte	-32
 1592 0345 0F       		.byte	15
 1593 0346 00       		.byte	0
 1594 0347 00       		.byte	0
 1595 0348 00       		.byte	0
 1596 0349 00       		.byte	0
 1597 034a F8       		.byte	-8
 1598 034b 03       		.byte	3
 1599 034c C0       		.byte	-64
 1600 034d 1F       		.byte	31
 1601 034e 00       		.byte	0
 1602 034f 00       		.byte	0
 1603 0350 00       		.byte	0
 1604 0351 00       		.byte	0
 1605 0352 FC       		.byte	-4
 1606 0353 01       		.byte	1
 1607 0354 80       		.byte	-128
 1608 0355 3F       		.byte	63
 1609 0356 00       		.byte	0
 1610 0357 00       		.byte	0
 1611 0358 00       		.byte	0
 1612 0359 00       		.byte	0
 1613 035a FE       		.byte	-2
 1614 035b 00       		.byte	0
 1615 035c 00       		.byte	0
 1616 035d 7F       		.byte	127
 1617 035e 00       		.byte	0
 1618 035f 00       		.byte	0
 1619 0360 00       		.byte	0
 1620 0361 00       		.byte	0
 1621 0362 7F       		.byte	127
 1622 0363 00       		.byte	0
 1623 0364 00       		.byte	0
 1624 0365 FE       		.byte	-2
 1625 0366 00       		.byte	0
 1626 0367 00       		.byte	0
 1627 0368 00       		.byte	0
 1628 0369 80       		.byte	-128
 1629 036a 3F       		.byte	63
 1630 036b 00       		.byte	0
 1631 036c 00       		.byte	0
 1632 036d FC       		.byte	-4
 1633 036e 01       		.byte	1
 1634 036f 00       		.byte	0
 1635 0370 00       		.byte	0
 1636 0371 C0       		.byte	-64
 1637 0372 1F       		.byte	31
 1638 0373 00       		.byte	0
 1639 0374 00       		.byte	0
 1640 0375 F8       		.byte	-8
 1641 0376 03       		.byte	3
 1642 0377 00       		.byte	0
 1643 0378 00       		.byte	0
 1644 0379 E0       		.byte	-32
 1645 037a 0F       		.byte	15
 1646 037b 00       		.byte	0
 1647 037c 00       		.byte	0
 1648 037d F0       		.byte	-16
 1649 037e 07       		.byte	7
 1650 037f 00       		.byte	0
 1651 0380 00       		.byte	0
 1652 0381 F0       		.byte	-16
 1653 0382 07       		.byte	7
 1654 0383 00       		.byte	0
 1655 0384 00       		.byte	0
 1656 0385 E0       		.byte	-32
 1657 0386 0F       		.byte	15
 1658 0387 00       		.byte	0
 1659 0388 00       		.byte	0
 1660 0389 F8       		.byte	-8
 1661 038a 03       		.byte	3
 1662 038b 00       		.byte	0
 1663 038c 00       		.byte	0
 1664 038d C0       		.byte	-64
 1665 038e 1F       		.byte	31
 1666 038f 00       		.byte	0
 1667 0390 00       		.byte	0
 1668 0391 FC       		.byte	-4
 1669 0392 01       		.byte	1
 1670 0393 00       		.byte	0
 1671 0394 00       		.byte	0
 1672 0395 80       		.byte	-128
 1673 0396 3F       		.byte	63
 1674 0397 00       		.byte	0
 1675 0398 00       		.byte	0
 1676 0399 FE       		.byte	-2
 1677 039a 00       		.byte	0
 1678 039b 00       		.byte	0
 1679 039c 00       		.byte	0
 1680 039d 00       		.byte	0
 1681 039e 7F       		.byte	127
 1682 039f 00       		.byte	0
 1683 03a0 00       		.byte	0
 1684 03a1 7F       		.byte	127
 1685 03a2 00       		.byte	0
 1686 03a3 00       		.byte	0
 1687 03a4 00       		.byte	0
 1688 03a5 00       		.byte	0
 1689 03a6 FE       		.byte	-2
 1690 03a7 00       		.byte	0
 1691 03a8 80       		.byte	-128
 1692 03a9 3F       		.byte	63
 1693 03aa 00       		.byte	0
 1694 03ab 00       		.byte	0
 1695 03ac 00       		.byte	0
 1696 03ad 00       		.byte	0
 1697 03ae FC       		.byte	-4
 1698 03af 01       		.byte	1
 1699 03b0 C0       		.byte	-64
 1700 03b1 1F       		.byte	31
 1701 03b2 00       		.byte	0
 1702 03b3 00       		.byte	0
 1703 03b4 00       		.byte	0
 1704 03b5 00       		.byte	0
 1705 03b6 F8       		.byte	-8
 1706 03b7 03       		.byte	3
 1707 03b8 E0       		.byte	-32
 1708 03b9 0F       		.byte	15
 1709 03ba 00       		.byte	0
 1710 03bb 00       		.byte	0
 1711 03bc 00       		.byte	0
 1712 03bd 00       		.byte	0
 1713 03be F0       		.byte	-16
 1714 03bf 07       		.byte	7
 1715 03c0 F0       		.byte	-16
 1716 03c1 07       		.byte	7
 1717 03c2 00       		.byte	0
 1718 03c3 00       		.byte	0
 1719 03c4 00       		.byte	0
 1720 03c5 00       		.byte	0
 1721 03c6 E0       		.byte	-32
 1722 03c7 0F       		.byte	15
 1723 03c8 F8       		.byte	-8
 1724 03c9 03       		.byte	3
 1725 03ca 00       		.byte	0
 1726 03cb 00       		.byte	0
 1727 03cc 00       		.byte	0
 1728 03cd 00       		.byte	0
 1729 03ce C0       		.byte	-64
 1730 03cf 1F       		.byte	31
 1731 03d0 F8       		.byte	-8
 1732 03d1 01       		.byte	1
 1733 03d2 00       		.byte	0
 1734 03d3 00       		.byte	0
 1735 03d4 00       		.byte	0
 1736 03d5 00       		.byte	0
 1737 03d6 80       		.byte	-128
 1738 03d7 1F       		.byte	31
 1739 03d8 F8       		.byte	-8
 1740 03d9 00       		.byte	0
 1741 03da 00       		.byte	0
 1742 03db 00       		.byte	0
 1743 03dc 00       		.byte	0
 1744 03dd 00       		.byte	0
 1745 03de 00       		.byte	0
 1746 03df 1F       		.byte	31
 1747 03e0 78       		.byte	120
 1748 03e1 00       		.byte	0
 1749 03e2 00       		.byte	0
 1750 03e3 00       		.byte	0
 1751 03e4 00       		.byte	0
 1752 03e5 00       		.byte	0
 1753 03e6 00       		.byte	0
 1754 03e7 1E       		.byte	30
 1755 03e8 00       		.byte	0
 1756 03e9 00       		.byte	0
 1757 03ea 00       		.byte	0
 1758 03eb 00       		.byte	0
 1759 03ec 00       		.byte	0
 1760 03ed 00       		.byte	0
 1761 03ee 00       		.byte	0
 1762 03ef 00       		.byte	0
 1763 03f0 00       		.byte	0
 1764 03f1 00       		.byte	0
 1765 03f2 00       		.byte	0
 1766 03f3 00       		.byte	0
 1767 03f4 00       		.byte	0
 1768 03f5 00       		.byte	0
 1769 03f6 00       		.byte	0
 1770 03f7 00       		.byte	0
 1771 03f8 00       		.byte	0
 1772 03f9 00       		.byte	0
 1773 03fa 00       		.byte	0
 1774 03fb 00       		.byte	0
 1775 03fc 00       		.byte	0
 1776 03fd 00       		.byte	0
 1777 03fe 00       		.byte	0
 1778 03ff 00       		.byte	0
 1779              		.align	2
 1782              	circle_bits:
 1783 0400 00       		.byte	0
 1784 0401 00       		.byte	0
 1785 0402 00       		.byte	0
 1786 0403 00       		.byte	0
 1787 0404 00       		.byte	0
 1788 0405 00       		.byte	0
 1789 0406 80       		.byte	-128
 1790 0407 1F       		.byte	31
 1791 0408 00       		.byte	0
 1792 0409 E0       		.byte	-32
 1793 040a 70       		.byte	112
 1794 040b 00       		.byte	0
 1795 040c 30       		.byte	48
 1796 040d C0       		.byte	-64
 1797 040e 00       		.byte	0
 1798 040f 18       		.byte	24
 1799 0410 80       		.byte	-128
 1800 0411 01       		.byte	1
 1801 0412 08       		.byte	8
 1802 0413 00       		.byte	0
 1803 0414 01       		.byte	1
 1804 0415 0C       		.byte	12
 1805 0416 00       		.byte	0
 1806 0417 03       		.byte	3
 1807 0418 04       		.byte	4
 1808 0419 00       		.byte	0
 1809 041a 02       		.byte	2
 1810 041b 04       		.byte	4
 1811 041c 00       		.byte	0
 1812 041d 02       		.byte	2
 1813 041e 04       		.byte	4
 1814 041f 00       		.byte	0
 1815 0420 02       		.byte	2
 1816 0421 04       		.byte	4
 1817 0422 00       		.byte	0
 1818 0423 02       		.byte	2
 1819 0424 0C       		.byte	12
 1820 0425 00       		.byte	0
 1821 0426 03       		.byte	3
 1822 0427 08       		.byte	8
 1823 0428 00       		.byte	0
 1824 0429 01       		.byte	1
 1825 042a 18       		.byte	24
 1826 042b 80       		.byte	-128
 1827 042c 01       		.byte	1
 1828 042d 30       		.byte	48
 1829 042e C0       		.byte	-64
 1830 042f 00       		.byte	0
 1831 0430 E0       		.byte	-32
 1832 0431 70       		.byte	112
 1833 0432 00       		.byte	0
 1834 0433 80       		.byte	-128
 1835 0434 1F       		.byte	31
 1836 0435 00       		.byte	0
 1837 0436 00       		.byte	0
 1838 0437 00       		.byte	0
 1839 0438 00       		.byte	0
 1840 0439 00       		.byte	0
 1841 043a 00       		.byte	0
 1842 043b 00       		.byte	0
 1843              		.align	2
 1846              	cross_bits:
 1847 043c 00       		.byte	0
 1848 043d 00       		.byte	0
 1849 043e 00       		.byte	0
 1850 043f 00       		.byte	0
 1851 0440 00       		.byte	0
 1852 0441 00       		.byte	0
 1853 0442 04       		.byte	4
 1854 0443 00       		.byte	0
 1855 0444 02       		.byte	2
 1856 0445 0C       		.byte	12
 1857 0446 00       		.byte	0
 1858 0447 03       		.byte	3
 1859 0448 18       		.byte	24
 1860 0449 80       		.byte	-128
 1861 044a 01       		.byte	1
 1862 044b 30       		.byte	48
 1863 044c C0       		.byte	-64
 1864 044d 00       		.byte	0
 1865 044e 60       		.byte	96
 1866 044f 60       		.byte	96
 1867 0450 00       		.byte	0
 1868 0451 C0       		.byte	-64
 1869 0452 30       		.byte	48
 1870 0453 00       		.byte	0
 1871 0454 80       		.byte	-128
 1872 0455 19       		.byte	25
 1873 0456 00       		.byte	0
 1874 0457 00       		.byte	0
 1875 0458 0F       		.byte	15
 1876 0459 00       		.byte	0
 1877 045a 00       		.byte	0
 1878 045b 06       		.byte	6
 1879 045c 00       		.byte	0
 1880 045d 00       		.byte	0
 1881 045e 0F       		.byte	15
 1882 045f 00       		.byte	0
 1883 0460 80       		.byte	-128
 1884 0461 19       		.byte	25
 1885 0462 00       		.byte	0
 1886 0463 C0       		.byte	-64
 1887 0464 30       		.byte	48
 1888 0465 00       		.byte	0
 1889 0466 60       		.byte	96
 1890 0467 60       		.byte	96
 1891 0468 00       		.byte	0
 1892 0469 30       		.byte	48
 1893 046a C0       		.byte	-64
 1894 046b 00       		.byte	0
 1895 046c 18       		.byte	24
 1896 046d 80       		.byte	-128
 1897 046e 01       		.byte	1
 1898 046f 0C       		.byte	12
 1899 0470 00       		.byte	0
 1900 0471 03       		.byte	3
 1901 0472 00       		.byte	0
 1902 0473 00       		.byte	0
 1903 0474 00       		.byte	0
 1904 0475 00       		.byte	0
 1905 0476 00       		.byte	0
 1906 0477 00       		.byte	0
 1907              		.text
 1908              		.align	1
 1909              		.global	delay_250ns
 1910              		.syntax unified
 1911              		.code	16
 1912              		.thumb_func
 1913              		.fpu softvfp
 1915              	delay_250ns:
 1916              	.LFB14:
 1917              		.file 2 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/delay.h"
   1:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #ifndef DELAY_H
   2:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #define DELAY_H
   3:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** 
   4:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #define STK_CTRL ((volatile unsigned int *)(0xE000E010))
   5:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #define STK_LOAD ((volatile unsigned int *)(0xE000E014))
   6:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #define STK_VAL ((volatile unsigned int *)(0xE000E018))
   7:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** void delay_250ns( void ) {
 1918              		.loc 2 7 0
 1919              		.cfi_startproc
 1920              		@ args = 0, pretend = 0, frame = 0
 1921              		@ frame_needed = 1, uses_anonymous_args = 0
 1922 02ee 80B5     		push	{r7, lr}
 1923              		.cfi_def_cfa_offset 8
 1924              		.cfi_offset 7, -8
 1925              		.cfi_offset 14, -4
 1926 02f0 00AF     		add	r7, sp, #0
 1927              		.cfi_def_cfa_register 7
   8:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     /* SystemCoreClock = 168000000 */
   9:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     *STK_CTRL = 0;
 1928              		.loc 2 9 0
 1929 02f2 0C4B     		ldr	r3, .L37
 1930 02f4 0022     		movs	r2, #0
 1931 02f6 1A60     		str	r2, [r3]
  10:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     *STK_LOAD = ( (168/4) -1 );
 1932              		.loc 2 10 0
 1933 02f8 0B4B     		ldr	r3, .L37+4
 1934 02fa 2922     		movs	r2, #41
 1935 02fc 1A60     		str	r2, [r3]
  11:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     *STK_VAL = 0;
 1936              		.loc 2 11 0
 1937 02fe 0B4B     		ldr	r3, .L37+8
 1938 0300 0022     		movs	r2, #0
 1939 0302 1A60     		str	r2, [r3]
  12:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     *STK_CTRL = 5;
 1940              		.loc 2 12 0
 1941 0304 074B     		ldr	r3, .L37
 1942 0306 0522     		movs	r2, #5
 1943 0308 1A60     		str	r2, [r3]
  13:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     while( (*STK_CTRL & 0x10000 )== 0 );
 1944              		.loc 2 13 0
 1945 030a C046     		nop
 1946              	.L36:
 1947              		.loc 2 13 0 is_stmt 0 discriminator 1
 1948 030c 054B     		ldr	r3, .L37
 1949 030e 1A68     		ldr	r2, [r3]
 1950 0310 8023     		movs	r3, #128
 1951 0312 5B02     		lsls	r3, r3, #9
 1952 0314 1340     		ands	r3, r2
 1953 0316 F9D0     		beq	.L36
  14:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         *STK_CTRL = 0;
 1954              		.loc 2 14 0 is_stmt 1
 1955 0318 024B     		ldr	r3, .L37
 1956 031a 0022     		movs	r2, #0
 1957 031c 1A60     		str	r2, [r3]
  15:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** }
 1958              		.loc 2 15 0
 1959 031e C046     		nop
 1960 0320 BD46     		mov	sp, r7
 1961              		@ sp needed
 1962 0322 80BD     		pop	{r7, pc}
 1963              	.L38:
 1964              		.align	2
 1965              	.L37:
 1966 0324 10E000E0 		.word	-536813552
 1967 0328 14E000E0 		.word	-536813548
 1968 032c 18E000E0 		.word	-536813544
 1969              		.cfi_endproc
 1970              	.LFE14:
 1972              		.align	1
 1973              		.global	delay_500ns
 1974              		.syntax unified
 1975              		.code	16
 1976              		.thumb_func
 1977              		.fpu softvfp
 1979              	delay_500ns:
 1980              	.LFB15:
  16:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** void delay_500ns( void) {
 1981              		.loc 2 16 0
 1982              		.cfi_startproc
 1983              		@ args = 0, pretend = 0, frame = 0
 1984              		@ frame_needed = 1, uses_anonymous_args = 0
 1985 0330 80B5     		push	{r7, lr}
 1986              		.cfi_def_cfa_offset 8
 1987              		.cfi_offset 7, -8
 1988              		.cfi_offset 14, -4
 1989 0332 00AF     		add	r7, sp, #0
 1990              		.cfi_def_cfa_register 7
  17:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     delay_250ns();
 1991              		.loc 2 17 0
 1992 0334 FFF7FEFF 		bl	delay_250ns
  18:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     delay_250ns();
 1993              		.loc 2 18 0
 1994 0338 FFF7FEFF 		bl	delay_250ns
  19:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** }
 1995              		.loc 2 19 0
 1996 033c C046     		nop
 1997 033e BD46     		mov	sp, r7
 1998              		@ sp needed
 1999 0340 80BD     		pop	{r7, pc}
 2000              		.cfi_endproc
 2001              	.LFE15:
 2003              		.global	__aeabi_uidiv
 2004              		.align	1
 2005              		.global	delay_micro
 2006              		.syntax unified
 2007              		.code	16
 2008              		.thumb_func
 2009              		.fpu softvfp
 2011              	delay_micro:
 2012              	.LFB16:
  20:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** void delay_micro(unsigned int us) {
 2013              		.loc 2 20 0
 2014              		.cfi_startproc
 2015              		@ args = 0, pretend = 0, frame = 8
 2016              		@ frame_needed = 1, uses_anonymous_args = 0
 2017 0342 80B5     		push	{r7, lr}
 2018              		.cfi_def_cfa_offset 8
 2019              		.cfi_offset 7, -8
 2020              		.cfi_offset 14, -4
 2021 0344 82B0     		sub	sp, sp, #8
 2022              		.cfi_def_cfa_offset 16
 2023 0346 00AF     		add	r7, sp, #0
 2024              		.cfi_def_cfa_register 7
 2025 0348 7860     		str	r0, [r7, #4]
  21:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #ifdef SIMULATOR
  22:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     us = us / 1000;
 2026              		.loc 2 22 0
 2027 034a 7A68     		ldr	r2, [r7, #4]
 2028 034c FA23     		movs	r3, #250
 2029 034e 9900     		lsls	r1, r3, #2
 2030 0350 1000     		movs	r0, r2
 2031 0352 FFF7FEFF 		bl	__aeabi_uidiv
 2032              	.LVL0:
 2033 0356 0300     		movs	r3, r0
 2034 0358 7B60     		str	r3, [r7, #4]
  23:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     us++;
 2035              		.loc 2 23 0
 2036 035a 7B68     		ldr	r3, [r7, #4]
 2037 035c 0133     		adds	r3, r3, #1
 2038 035e 7B60     		str	r3, [r7, #4]
  24:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #endif
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     while( us > 0 ) {
 2039              		.loc 2 25 0
 2040 0360 0AE0     		b	.L41
 2041              	.L42:
  26:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_250ns();
 2042              		.loc 2 26 0
 2043 0362 FFF7FEFF 		bl	delay_250ns
  27:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_250ns();
 2044              		.loc 2 27 0
 2045 0366 FFF7FEFF 		bl	delay_250ns
  28:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_250ns();
 2046              		.loc 2 28 0
 2047 036a FFF7FEFF 		bl	delay_250ns
  29:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_250ns();
 2048              		.loc 2 29 0
 2049 036e FFF7FEFF 		bl	delay_250ns
  30:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         us--;
 2050              		.loc 2 30 0
 2051 0372 7B68     		ldr	r3, [r7, #4]
 2052 0374 013B     		subs	r3, r3, #1
 2053 0376 7B60     		str	r3, [r7, #4]
 2054              	.L41:
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_250ns();
 2055              		.loc 2 25 0
 2056 0378 7B68     		ldr	r3, [r7, #4]
 2057 037a 002B     		cmp	r3, #0
 2058 037c F1D1     		bne	.L42
  31:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     }
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** }
 2059              		.loc 2 32 0
 2060 037e C046     		nop
 2061 0380 BD46     		mov	sp, r7
 2062 0382 02B0     		add	sp, sp, #8
 2063              		@ sp needed
 2064 0384 80BD     		pop	{r7, pc}
 2065              		.cfi_endproc
 2066              	.LFE16:
 2068              		.align	1
 2069              		.global	delay_milli
 2070              		.syntax unified
 2071              		.code	16
 2072              		.thumb_func
 2073              		.fpu softvfp
 2075              	delay_milli:
 2076              	.LFB17:
  33:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** void delay_milli(unsigned int ms){
 2077              		.loc 2 33 0
 2078              		.cfi_startproc
 2079              		@ args = 0, pretend = 0, frame = 8
 2080              		@ frame_needed = 1, uses_anonymous_args = 0
 2081 0386 80B5     		push	{r7, lr}
 2082              		.cfi_def_cfa_offset 8
 2083              		.cfi_offset 7, -8
 2084              		.cfi_offset 14, -4
 2085 0388 82B0     		sub	sp, sp, #8
 2086              		.cfi_def_cfa_offset 16
 2087 038a 00AF     		add	r7, sp, #0
 2088              		.cfi_def_cfa_register 7
 2089 038c 7860     		str	r0, [r7, #4]
  34:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #ifdef SIMULATOR
  35:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     ms = ms / 1000;
 2090              		.loc 2 35 0
 2091 038e 7A68     		ldr	r2, [r7, #4]
 2092 0390 FA23     		movs	r3, #250
 2093 0392 9900     		lsls	r1, r3, #2
 2094 0394 1000     		movs	r0, r2
 2095 0396 FFF7FEFF 		bl	__aeabi_uidiv
 2096              	.LVL1:
 2097 039a 0300     		movs	r3, r0
 2098 039c 7B60     		str	r3, [r7, #4]
  36:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     ms++;
 2099              		.loc 2 36 0
 2100 039e 7B68     		ldr	r3, [r7, #4]
 2101 03a0 0133     		adds	r3, r3, #1
 2102 03a2 7B60     		str	r3, [r7, #4]
  37:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** #endif
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     while( ms > 0 ) {
 2103              		.loc 2 38 0
 2104 03a4 07E0     		b	.L44
 2105              	.L45:
  39:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_micro(1000);
 2106              		.loc 2 39 0
 2107 03a6 FA23     		movs	r3, #250
 2108 03a8 9B00     		lsls	r3, r3, #2
 2109 03aa 1800     		movs	r0, r3
 2110 03ac FFF7FEFF 		bl	delay_micro
  40:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         ms--;
 2111              		.loc 2 40 0
 2112 03b0 7B68     		ldr	r3, [r7, #4]
 2113 03b2 013B     		subs	r3, r3, #1
 2114 03b4 7B60     		str	r3, [r7, #4]
 2115              	.L44:
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****         delay_micro(1000);
 2116              		.loc 2 38 0
 2117 03b6 7B68     		ldr	r3, [r7, #4]
 2118 03b8 002B     		cmp	r3, #0
 2119 03ba F4D1     		bne	.L45
  41:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h ****     }
  42:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\delay.h **** }
 2120              		.loc 2 42 0
 2121 03bc C046     		nop
 2122 03be BD46     		mov	sp, r7
 2123 03c0 02B0     		add	sp, sp, #8
 2124              		@ sp needed
 2125 03c2 80BD     		pop	{r7, pc}
 2126              		.cfi_endproc
 2127              	.LFE17:
 2129              		.data
 2130              		.align	2
 2133              	draw_bits:
 2134 0478 00       		.byte	0
 2135 0479 00       		.byte	0
 2136 047a 00       		.byte	0
 2137 047b 00       		.byte	0
 2138 047c 00       		.byte	0
 2139 047d 00       		.byte	0
 2140 047e 00       		.byte	0
 2141 047f 00       		.byte	0
 2142 0480 00       		.byte	0
 2143 0481 00       		.byte	0
 2144 0482 00       		.byte	0
 2145 0483 00       		.byte	0
 2146 0484 00       		.byte	0
 2147 0485 00       		.byte	0
 2148 0486 00       		.byte	0
 2149 0487 00       		.byte	0
 2150 0488 00       		.byte	0
 2151 0489 00       		.byte	0
 2152 048a 00       		.byte	0
 2153 048b 00       		.byte	0
 2154 048c 00       		.byte	0
 2155 048d 00       		.byte	0
 2156 048e 00       		.byte	0
 2157 048f 00       		.byte	0
 2158 0490 00       		.byte	0
 2159 0491 00       		.byte	0
 2160 0492 00       		.byte	0
 2161 0493 00       		.byte	0
 2162 0494 00       		.byte	0
 2163 0495 00       		.byte	0
 2164 0496 00       		.byte	0
 2165 0497 00       		.byte	0
 2166 0498 00       		.byte	0
 2167 0499 00       		.byte	0
 2168 049a 00       		.byte	0
 2169 049b 00       		.byte	0
 2170 049c 00       		.byte	0
 2171 049d 00       		.byte	0
 2172 049e 00       		.byte	0
 2173 049f 00       		.byte	0
 2174 04a0 00       		.byte	0
 2175 04a1 00       		.byte	0
 2176 04a2 00       		.byte	0
 2177 04a3 00       		.byte	0
 2178 04a4 00       		.byte	0
 2179 04a5 00       		.byte	0
 2180 04a6 00       		.byte	0
 2181 04a7 00       		.byte	0
 2182 04a8 00       		.byte	0
 2183 04a9 00       		.byte	0
 2184 04aa 00       		.byte	0
 2185 04ab 00       		.byte	0
 2186 04ac 00       		.byte	0
 2187 04ad 00       		.byte	0
 2188 04ae 00       		.byte	0
 2189 04af 00       		.byte	0
 2190 04b0 00       		.byte	0
 2191 04b1 00       		.byte	0
 2192 04b2 00       		.byte	0
 2193 04b3 00       		.byte	0
 2194 04b4 00       		.byte	0
 2195 04b5 00       		.byte	0
 2196 04b6 00       		.byte	0
 2197 04b7 00       		.byte	0
 2198 04b8 00       		.byte	0
 2199 04b9 00       		.byte	0
 2200 04ba 00       		.byte	0
 2201 04bb 00       		.byte	0
 2202 04bc 00       		.byte	0
 2203 04bd 00       		.byte	0
 2204 04be 00       		.byte	0
 2205 04bf 00       		.byte	0
 2206 04c0 00       		.byte	0
 2207 04c1 00       		.byte	0
 2208 04c2 00       		.byte	0
 2209 04c3 00       		.byte	0
 2210 04c4 00       		.byte	0
 2211 04c5 00       		.byte	0
 2212 04c6 00       		.byte	0
 2213 04c7 00       		.byte	0
 2214 04c8 00       		.byte	0
 2215 04c9 00       		.byte	0
 2216 04ca 00       		.byte	0
 2217 04cb 00       		.byte	0
 2218 04cc 00       		.byte	0
 2219 04cd 00       		.byte	0
 2220 04ce 00       		.byte	0
 2221 04cf 00       		.byte	0
 2222 04d0 00       		.byte	0
 2223 04d1 00       		.byte	0
 2224 04d2 00       		.byte	0
 2225 04d3 00       		.byte	0
 2226 04d4 00       		.byte	0
 2227 04d5 00       		.byte	0
 2228 04d6 00       		.byte	0
 2229 04d7 00       		.byte	0
 2230 04d8 00       		.byte	0
 2231 04d9 00       		.byte	0
 2232 04da 00       		.byte	0
 2233 04db 00       		.byte	0
 2234 04dc 00       		.byte	0
 2235 04dd 00       		.byte	0
 2236 04de 00       		.byte	0
 2237 04df 00       		.byte	0
 2238 04e0 00       		.byte	0
 2239 04e1 00       		.byte	0
 2240 04e2 00       		.byte	0
 2241 04e3 00       		.byte	0
 2242 04e4 00       		.byte	0
 2243 04e5 00       		.byte	0
 2244 04e6 00       		.byte	0
 2245 04e7 00       		.byte	0
 2246 04e8 00       		.byte	0
 2247 04e9 7F       		.byte	127
 2248 04ea F0       		.byte	-16
 2249 04eb 0F       		.byte	15
 2250 04ec 3C       		.byte	60
 2251 04ed F8       		.byte	-8
 2252 04ee 7C       		.byte	124
 2253 04ef 00       		.byte	0
 2254 04f0 00       		.byte	0
 2255 04f1 E6       		.byte	-26
 2256 04f2 40       		.byte	64
 2257 04f3 18       		.byte	24
 2258 04f4 30       		.byte	48
 2259 04f5 10       		.byte	16
 2260 04f6 20       		.byte	32
 2261 04f7 00       		.byte	0
 2262 04f8 00       		.byte	0
 2263 04f9 06       		.byte	6
 2264 04fa 61       		.byte	97
 2265 04fb 10       		.byte	16
 2266 04fc 78       		.byte	120
 2267 04fd 30       		.byte	48
 2268 04fe 20       		.byte	32
 2269 04ff 00       		.byte	0
 2270 0500 00       		.byte	0
 2271 0501 06       		.byte	6
 2272 0502 43       		.byte	67
 2273 0503 10       		.byte	16
 2274 0504 48       		.byte	72
 2275 0505 20       		.byte	32
 2276 0506 33       		.byte	51
 2277 0507 00       		.byte	0
 2278 0508 00       		.byte	0
 2279 0509 06       		.byte	6
 2280 050a 42       		.byte	66
 2281 050b 18       		.byte	24
 2282 050c CC       		.byte	-52
 2283 050d 30       		.byte	48
 2284 050e 13       		.byte	19
 2285 050f 00       		.byte	0
 2286 0510 00       		.byte	0
 2287 0511 06       		.byte	6
 2288 0512 42       		.byte	66
 2289 0513 0C       		.byte	12
 2290 0514 84       		.byte	-124
 2291 0515 20       		.byte	32
 2292 0516 17       		.byte	23
 2293 0517 00       		.byte	0
 2294 0518 00       		.byte	0
 2295 0519 06       		.byte	6
 2296 051a E2       		.byte	-30
 2297 051b 07       		.byte	7
 2298 051c 84       		.byte	-124
 2299 051d A1       		.byte	-95
 2300 051e 15       		.byte	21
 2301 051f 00       		.byte	0
 2302 0520 00       		.byte	0
 2303 0521 06       		.byte	6
 2304 0522 42       		.byte	66
 2305 0523 04       		.byte	4
 2306 0524 FE       		.byte	-2
 2307 0525 A1       		.byte	-95
 2308 0526 14       		.byte	20
 2309 0527 00       		.byte	0
 2310 0528 00       		.byte	0
 2311 0529 06       		.byte	6
 2312 052a 43       		.byte	67
 2313 052b 0C       		.byte	12
 2314 052c 02       		.byte	2
 2315 052d A3       		.byte	-93
 2316 052e 14       		.byte	20
 2317 052f 00       		.byte	0
 2318 0530 00       		.byte	0
 2319 0531 06       		.byte	6
 2320 0532 41       		.byte	65
 2321 0533 08       		.byte	8
 2322 0534 02       		.byte	2
 2323 0535 63       		.byte	99
 2324 0536 18       		.byte	24
 2325 0537 00       		.byte	0
 2326 0538 00       		.byte	0
 2327 0539 86       		.byte	-122
 2328 053a 61       		.byte	97
 2329 053b 10       		.byte	16
 2330 053c 03       		.byte	3
 2331 053d 42       		.byte	66
 2332 053e 18       		.byte	24
 2333 053f 00       		.byte	0
 2334 0540 00       		.byte	0
 2335 0541 7F       		.byte	127
 2336 0542 F0       		.byte	-16
 2337 0543 F0       		.byte	-16
 2338 0544 8F       		.byte	-113
 2339 0545 47       		.byte	71
 2340 0546 08       		.byte	8
 2341 0547 00       		.byte	0
 2342 0548 00       		.byte	0
 2343 0549 00       		.byte	0
 2344 054a 00       		.byte	0
 2345 054b 00       		.byte	0
 2346 054c 00       		.byte	0
 2347 054d 00       		.byte	0
 2348 054e 00       		.byte	0
 2349 054f 00       		.byte	0
 2350 0550 00       		.byte	0
 2351 0551 00       		.byte	0
 2352 0552 00       		.byte	0
 2353 0553 00       		.byte	0
 2354 0554 00       		.byte	0
 2355 0555 00       		.byte	0
 2356 0556 00       		.byte	0
 2357 0557 00       		.byte	0
 2358 0558 00       		.byte	0
 2359 0559 00       		.byte	0
 2360 055a 00       		.byte	0
 2361 055b 00       		.byte	0
 2362 055c 00       		.byte	0
 2363 055d 00       		.byte	0
 2364 055e 00       		.byte	0
 2365 055f 00       		.byte	0
 2366 0560 00       		.byte	0
 2367 0561 00       		.byte	0
 2368 0562 00       		.byte	0
 2369 0563 00       		.byte	0
 2370 0564 00       		.byte	0
 2371 0565 00       		.byte	0
 2372 0566 00       		.byte	0
 2373 0567 00       		.byte	0
 2374 0568 00       		.byte	0
 2375 0569 00       		.byte	0
 2376 056a 00       		.byte	0
 2377 056b 00       		.byte	0
 2378 056c 00       		.byte	0
 2379 056d 00       		.byte	0
 2380 056e 00       		.byte	0
 2381 056f 00       		.byte	0
 2382 0570 00       		.byte	0
 2383 0571 00       		.byte	0
 2384 0572 00       		.byte	0
 2385 0573 00       		.byte	0
 2386 0574 00       		.byte	0
 2387 0575 00       		.byte	0
 2388 0576 00       		.byte	0
 2389 0577 00       		.byte	0
 2390 0578 00       		.byte	0
 2391 0579 00       		.byte	0
 2392 057a 00       		.byte	0
 2393 057b 00       		.byte	0
 2394 057c 00       		.byte	0
 2395 057d 00       		.byte	0
 2396 057e 00       		.byte	0
 2397 057f 00       		.byte	0
 2398 0580 00       		.byte	0
 2399 0581 00       		.byte	0
 2400 0582 00       		.byte	0
 2401 0583 00       		.byte	0
 2402 0584 00       		.byte	0
 2403 0585 00       		.byte	0
 2404 0586 00       		.byte	0
 2405 0587 00       		.byte	0
 2406 0588 00       		.byte	0
 2407 0589 00       		.byte	0
 2408 058a 00       		.byte	0
 2409 058b 00       		.byte	0
 2410 058c 00       		.byte	0
 2411 058d 00       		.byte	0
 2412 058e 00       		.byte	0
 2413 058f 00       		.byte	0
 2414 0590 00       		.byte	0
 2415 0591 F8       		.byte	-8
 2416 0592 C1       		.byte	-63
 2417 0593 03       		.byte	3
 2418 0594 03       		.byte	3
 2419 0595 F3       		.byte	-13
 2420 0596 1F       		.byte	31
 2421 0597 00       		.byte	0
 2422 0598 00       		.byte	0
 2423 0599 8C       		.byte	-116
 2424 059a 01       		.byte	1
 2425 059b 03       		.byte	3
 2426 059c 86       		.byte	-122
 2427 059d 41       		.byte	65
 2428 059e 10       		.byte	16
 2429 059f 00       		.byte	0
 2430 05a0 00       		.byte	0
 2431 05a1 06       		.byte	6
 2432 05a2 81       		.byte	-127
 2433 05a3 06       		.byte	6
 2434 05a4 8E       		.byte	-114
 2435 05a5 41       		.byte	65
 2436 05a6 10       		.byte	16
 2437 05a7 00       		.byte	0
 2438 05a8 00       		.byte	0
 2439 05a9 03       		.byte	3
 2440 05aa 81       		.byte	-127
 2441 05ab 04       		.byte	4
 2442 05ac CA       		.byte	-54
 2443 05ad 41       		.byte	65
 2444 05ae 00       		.byte	0
 2445 05af 00       		.byte	0
 2446 05b0 00       		.byte	0
 2447 05b1 01       		.byte	1
 2448 05b2 C0       		.byte	-64
 2449 05b3 04       		.byte	4
 2450 05b4 5A       		.byte	90
 2451 05b5 41       		.byte	65
 2452 05b6 04       		.byte	4
 2453 05b7 00       		.byte	0
 2454 05b8 00       		.byte	0
 2455 05b9 01       		.byte	1
 2456 05ba 40       		.byte	64
 2457 05bb 08       		.byte	8
 2458 05bc 32       		.byte	50
 2459 05bd C1       		.byte	-63
 2460 05be 07       		.byte	7
 2461 05bf 00       		.byte	0
 2462 05c0 00       		.byte	0
 2463 05c1 01       		.byte	1
 2464 05c2 40       		.byte	64
 2465 05c3 08       		.byte	8
 2466 05c4 32       		.byte	50
 2467 05c5 41       		.byte	65
 2468 05c6 04       		.byte	4
 2469 05c7 00       		.byte	0
 2470 05c8 00       		.byte	0
 2471 05c9 C3       		.byte	-61
 2472 05ca E3       		.byte	-29
 2473 05cb 1F       		.byte	31
 2474 05cc 32       		.byte	50
 2475 05cd 61       		.byte	97
 2476 05ce 04       		.byte	4
 2477 05cf 00       		.byte	0
 2478 05d0 00       		.byte	0
 2479 05d1 03       		.byte	3
 2480 05d2 21       		.byte	33
 2481 05d3 10       		.byte	16
 2482 05d4 02       		.byte	2
 2483 05d5 41       		.byte	65
 2484 05d6 00       		.byte	0
 2485 05d7 00       		.byte	0
 2486 05d8 00       		.byte	0
 2487 05d9 02       		.byte	2
 2488 05da 21       		.byte	33
 2489 05db 30       		.byte	48
 2490 05dc 02       		.byte	2
 2491 05dd 41       		.byte	65
 2492 05de 10       		.byte	16
 2493 05df 00       		.byte	0
 2494 05e0 00       		.byte	0
 2495 05e1 0E       		.byte	14
 2496 05e2 11       		.byte	17
 2497 05e3 20       		.byte	32
 2498 05e4 02       		.byte	2
 2499 05e5 41       		.byte	65
 2500 05e6 10       		.byte	16
 2501 05e7 00       		.byte	0
 2502 05e8 00       		.byte	0
 2503 05e9 F8       		.byte	-8
 2504 05ea 79       		.byte	121
 2505 05eb 78       		.byte	120
 2506 05ec 87       		.byte	-121
 2507 05ed F7       		.byte	-9
 2508 05ee 1F       		.byte	31
 2509 05ef 00       		.byte	0
 2510 05f0 00       		.byte	0
 2511 05f1 00       		.byte	0
 2512 05f2 00       		.byte	0
 2513 05f3 00       		.byte	0
 2514 05f4 00       		.byte	0
 2515 05f5 00       		.byte	0
 2516 05f6 00       		.byte	0
 2517 05f7 00       		.byte	0
 2518 05f8 00       		.byte	0
 2519 05f9 00       		.byte	0
 2520 05fa 00       		.byte	0
 2521 05fb 00       		.byte	0
 2522 05fc 00       		.byte	0
 2523 05fd 00       		.byte	0
 2524 05fe 00       		.byte	0
 2525 05ff 00       		.byte	0
 2526 0600 00       		.byte	0
 2527 0601 00       		.byte	0
 2528 0602 00       		.byte	0
 2529 0603 00       		.byte	0
 2530 0604 00       		.byte	0
 2531 0605 00       		.byte	0
 2532 0606 00       		.byte	0
 2533 0607 00       		.byte	0
 2534 0608 00       		.byte	0
 2535 0609 00       		.byte	0
 2536 060a 00       		.byte	0
 2537 060b 00       		.byte	0
 2538 060c 00       		.byte	0
 2539 060d 00       		.byte	0
 2540 060e 00       		.byte	0
 2541 060f 00       		.byte	0
 2542 0610 00       		.byte	0
 2543 0611 00       		.byte	0
 2544 0612 00       		.byte	0
 2545 0613 00       		.byte	0
 2546 0614 00       		.byte	0
 2547 0615 00       		.byte	0
 2548 0616 00       		.byte	0
 2549 0617 00       		.byte	0
 2550 0618 00       		.byte	0
 2551 0619 00       		.byte	0
 2552 061a 00       		.byte	0
 2553 061b 00       		.byte	0
 2554 061c 00       		.byte	0
 2555 061d 00       		.byte	0
 2556 061e 00       		.byte	0
 2557 061f 00       		.byte	0
 2558 0620 00       		.byte	0
 2559 0621 00       		.byte	0
 2560 0622 00       		.byte	0
 2561 0623 00       		.byte	0
 2562 0624 00       		.byte	0
 2563 0625 00       		.byte	0
 2564 0626 00       		.byte	0
 2565 0627 00       		.byte	0
 2566 0628 00       		.byte	0
 2567 0629 00       		.byte	0
 2568 062a 00       		.byte	0
 2569 062b 00       		.byte	0
 2570 062c 00       		.byte	0
 2571 062d 00       		.byte	0
 2572 062e 00       		.byte	0
 2573 062f 00       		.byte	0
 2574 0630 00       		.byte	0
 2575 0631 00       		.byte	0
 2576 0632 00       		.byte	0
 2577 0633 00       		.byte	0
 2578 0634 00       		.byte	0
 2579 0635 00       		.byte	0
 2580 0636 00       		.byte	0
 2581 0637 00       		.byte	0
 2582 0638 00       		.byte	0
 2583 0639 00       		.byte	0
 2584 063a 00       		.byte	0
 2585 063b 00       		.byte	0
 2586 063c 00       		.byte	0
 2587 063d 00       		.byte	0
 2588 063e 00       		.byte	0
 2589 063f 00       		.byte	0
 2590 0640 00       		.byte	0
 2591 0641 00       		.byte	0
 2592 0642 00       		.byte	0
 2593 0643 00       		.byte	0
 2594 0644 00       		.byte	0
 2595 0645 00       		.byte	0
 2596 0646 00       		.byte	0
 2597 0647 00       		.byte	0
 2598 0648 00       		.byte	0
 2599 0649 00       		.byte	0
 2600 064a 00       		.byte	0
 2601 064b 00       		.byte	0
 2602 064c 00       		.byte	0
 2603 064d 00       		.byte	0
 2604 064e 00       		.byte	0
 2605 064f 00       		.byte	0
 2606 0650 00       		.byte	0
 2607 0651 00       		.byte	0
 2608 0652 00       		.byte	0
 2609 0653 00       		.byte	0
 2610 0654 00       		.byte	0
 2611 0655 00       		.byte	0
 2612 0656 00       		.byte	0
 2613 0657 00       		.byte	0
 2614 0658 00       		.byte	0
 2615 0659 00       		.byte	0
 2616 065a 00       		.byte	0
 2617 065b 00       		.byte	0
 2618 065c 00       		.byte	0
 2619 065d 00       		.byte	0
 2620 065e 00       		.byte	0
 2621 065f 00       		.byte	0
 2622 0660 00       		.byte	0
 2623 0661 00       		.byte	0
 2624 0662 00       		.byte	0
 2625 0663 00       		.byte	0
 2626 0664 00       		.byte	0
 2627 0665 00       		.byte	0
 2628 0666 00       		.byte	0
 2629 0667 00       		.byte	0
 2630 0668 00       		.byte	0
 2631 0669 00       		.byte	0
 2632 066a 00       		.byte	0
 2633 066b 00       		.byte	0
 2634 066c 00       		.byte	0
 2635 066d 00       		.byte	0
 2636 066e 00       		.byte	0
 2637 066f 00       		.byte	0
 2638 0670 00       		.byte	0
 2639 0671 00       		.byte	0
 2640 0672 00       		.byte	0
 2641 0673 00       		.byte	0
 2642 0674 00       		.byte	0
 2643 0675 00       		.byte	0
 2644 0676 00       		.byte	0
 2645 0677 00       		.byte	0
 2646              		.text
 2647              		.align	1
 2648              		.syntax unified
 2649              		.code	16
 2650              		.thumb_func
 2651              		.fpu softvfp
 2653              	graphic_ctrl_bit_set:
 2654              	.LFB18:
 2655              		.file 3 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/graphics.h"
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
 2656              		.loc 3 19 0
 2657              		.cfi_startproc
 2658              		@ args = 0, pretend = 0, frame = 16
 2659              		@ frame_needed = 1, uses_anonymous_args = 0
 2660 03c4 80B5     		push	{r7, lr}
 2661              		.cfi_def_cfa_offset 8
 2662              		.cfi_offset 7, -8
 2663              		.cfi_offset 14, -4
 2664 03c6 84B0     		sub	sp, sp, #16
 2665              		.cfi_def_cfa_offset 24
 2666 03c8 00AF     		add	r7, sp, #0
 2667              		.cfi_def_cfa_register 7
 2668 03ca 0200     		movs	r2, r0
 2669 03cc FB1D     		adds	r3, r7, #7
 2670 03ce 1A70     		strb	r2, [r3]
  20:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     unsigned char c;
  21:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     c = GPIO_E.odrLow;
 2671              		.loc 3 21 0
 2672 03d0 0C4A     		ldr	r2, .L47
 2673 03d2 0F21     		movs	r1, #15
 2674 03d4 7B18     		adds	r3, r7, r1
 2675 03d6 127D     		ldrb	r2, [r2, #20]
 2676 03d8 1A70     		strb	r2, [r3]
  22:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     c |= (~B_SELECT & x );
 2677              		.loc 3 22 0
 2678 03da FB1D     		adds	r3, r7, #7
 2679 03dc 1B78     		ldrb	r3, [r3]
 2680 03de 5BB2     		sxtb	r3, r3
 2681 03e0 0422     		movs	r2, #4
 2682 03e2 9343     		bics	r3, r2
 2683 03e4 5AB2     		sxtb	r2, r3
 2684 03e6 7B18     		adds	r3, r7, r1
 2685 03e8 1B78     		ldrb	r3, [r3]
 2686 03ea 5BB2     		sxtb	r3, r3
 2687 03ec 1343     		orrs	r3, r2
 2688 03ee 5AB2     		sxtb	r2, r3
 2689 03f0 7B18     		adds	r3, r7, r1
 2690 03f2 1A70     		strb	r2, [r3]
  23:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     GPIO_E.odrLow = c;
 2691              		.loc 3 23 0
 2692 03f4 034A     		ldr	r2, .L47
 2693 03f6 7B18     		adds	r3, r7, r1
 2694 03f8 1B78     		ldrb	r3, [r3]
 2695 03fa 1375     		strb	r3, [r2, #20]
  24:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 2696              		.loc 3 24 0
 2697 03fc C046     		nop
 2698 03fe BD46     		mov	sp, r7
 2699 0400 04B0     		add	sp, sp, #16
 2700              		@ sp needed
 2701 0402 80BD     		pop	{r7, pc}
 2702              	.L48:
 2703              		.align	2
 2704              	.L47:
 2705 0404 00100240 		.word	1073876992
 2706              		.cfi_endproc
 2707              	.LFE18:
 2709              		.align	1
 2710              		.syntax unified
 2711              		.code	16
 2712              		.thumb_func
 2713              		.fpu softvfp
 2715              	graphic_ctrl_bit_clear:
 2716              	.LFB19:
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static void graphic_ctrl_bit_clear(uint8_t x) {
 2717              		.loc 3 25 0
 2718              		.cfi_startproc
 2719              		@ args = 0, pretend = 0, frame = 16
 2720              		@ frame_needed = 1, uses_anonymous_args = 0
 2721 0408 80B5     		push	{r7, lr}
 2722              		.cfi_def_cfa_offset 8
 2723              		.cfi_offset 7, -8
 2724              		.cfi_offset 14, -4
 2725 040a 84B0     		sub	sp, sp, #16
 2726              		.cfi_def_cfa_offset 24
 2727 040c 00AF     		add	r7, sp, #0
 2728              		.cfi_def_cfa_register 7
 2729 040e 0200     		movs	r2, r0
 2730 0410 FB1D     		adds	r3, r7, #7
 2731 0412 1A70     		strb	r2, [r3]
  26:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     unsigned char c;
  27:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     c = GPIO_E.odrLow;
 2732              		.loc 3 27 0
 2733 0414 0F4A     		ldr	r2, .L50
 2734 0416 0F20     		movs	r0, #15
 2735 0418 3B18     		adds	r3, r7, r0
 2736 041a 127D     		ldrb	r2, [r2, #20]
 2737 041c 1A70     		strb	r2, [r3]
  28:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     c &= ~B_SELECT;
 2738              		.loc 3 28 0
 2739 041e 3B18     		adds	r3, r7, r0
 2740 0420 3A18     		adds	r2, r7, r0
 2741 0422 1278     		ldrb	r2, [r2]
 2742 0424 0421     		movs	r1, #4
 2743 0426 8A43     		bics	r2, r1
 2744 0428 1A70     		strb	r2, [r3]
  29:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     c &= ~x;
 2745              		.loc 3 29 0
 2746 042a FB1D     		adds	r3, r7, #7
 2747 042c 1B78     		ldrb	r3, [r3]
 2748 042e 5BB2     		sxtb	r3, r3
 2749 0430 DB43     		mvns	r3, r3
 2750 0432 5BB2     		sxtb	r3, r3
 2751 0434 3A18     		adds	r2, r7, r0
 2752 0436 1278     		ldrb	r2, [r2]
 2753 0438 52B2     		sxtb	r2, r2
 2754 043a 1340     		ands	r3, r2
 2755 043c 5AB2     		sxtb	r2, r3
 2756 043e 3B18     		adds	r3, r7, r0
 2757 0440 1A70     		strb	r2, [r3]
  30:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     GPIO_E.odrLow = c;
 2758              		.loc 3 30 0
 2759 0442 044A     		ldr	r2, .L50
 2760 0444 3B18     		adds	r3, r7, r0
 2761 0446 1B78     		ldrb	r3, [r3]
 2762 0448 1375     		strb	r3, [r2, #20]
  31:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 2763              		.loc 3 32 0
 2764 044a C046     		nop
 2765 044c BD46     		mov	sp, r7
 2766 044e 04B0     		add	sp, sp, #16
 2767              		@ sp needed
 2768 0450 80BD     		pop	{r7, pc}
 2769              	.L51:
 2770 0452 C046     		.align	2
 2771              	.L50:
 2772 0454 00100240 		.word	1073876992
 2773              		.cfi_endproc
 2774              	.LFE19:
 2776              		.align	1
 2777              		.syntax unified
 2778              		.code	16
 2779              		.thumb_func
 2780              		.fpu softvfp
 2782              	select_controller:
 2783              	.LFB20:
  33:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
  34:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static void select_controller(uint8_t controller){
 2784              		.loc 3 34 0
 2785              		.cfi_startproc
 2786              		@ args = 0, pretend = 0, frame = 8
 2787              		@ frame_needed = 1, uses_anonymous_args = 0
 2788 0458 80B5     		push	{r7, lr}
 2789              		.cfi_def_cfa_offset 8
 2790              		.cfi_offset 7, -8
 2791              		.cfi_offset 14, -4
 2792 045a 82B0     		sub	sp, sp, #8
 2793              		.cfi_def_cfa_offset 16
 2794 045c 00AF     		add	r7, sp, #0
 2795              		.cfi_def_cfa_register 7
 2796 045e 0200     		movs	r2, r0
 2797 0460 FB1D     		adds	r3, r7, #7
 2798 0462 1A70     		strb	r2, [r3]
  35:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     switch(controller){
 2799              		.loc 3 35 0
 2800 0464 FB1D     		adds	r3, r7, #7
 2801 0466 1B78     		ldrb	r3, [r3]
 2802 0468 082B     		cmp	r3, #8
 2803 046a 0CD0     		beq	.L54
 2804 046c 02DC     		bgt	.L55
 2805 046e 002B     		cmp	r3, #0
 2806 0470 05D0     		beq	.L56
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
 2807              		.loc 3 51 0
 2808 0472 1AE0     		b	.L59
 2809              	.L55:
  35:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     switch(controller){
 2810              		.loc 3 35 0
 2811 0474 102B     		cmp	r3, #16
 2812 0476 0DD0     		beq	.L57
 2813 0478 182B     		cmp	r3, #24
 2814 047a 12D0     		beq	.L58
 2815              		.loc 3 51 0
 2816 047c 15E0     		b	.L59
 2817              	.L56:
  37:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         break;
 2818              		.loc 3 37 0
 2819 047e 1820     		movs	r0, #24
 2820 0480 FFF7C2FF 		bl	graphic_ctrl_bit_clear
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         case B_CS1 :
 2821              		.loc 3 38 0
 2822 0484 11E0     		b	.L53
 2823              	.L54:
  40:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_ctrl_bit_clear(B_CS2);
 2824              		.loc 3 40 0
 2825 0486 0820     		movs	r0, #8
 2826 0488 FFF79CFF 		bl	graphic_ctrl_bit_set
  41:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         break;
 2827              		.loc 3 41 0
 2828 048c 1020     		movs	r0, #16
 2829 048e FFF7BBFF 		bl	graphic_ctrl_bit_clear
  42:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         case B_CS2 :
 2830              		.loc 3 42 0
 2831 0492 0AE0     		b	.L53
 2832              	.L57:
  44:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_ctrl_bit_clear(B_CS1);
 2833              		.loc 3 44 0
 2834 0494 1020     		movs	r0, #16
 2835 0496 FFF795FF 		bl	graphic_ctrl_bit_set
  45:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         break;
 2836              		.loc 3 45 0
 2837 049a 0820     		movs	r0, #8
 2838 049c FFF7B4FF 		bl	graphic_ctrl_bit_clear
  46:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         case B_CS1|B_CS2 :
 2839              		.loc 3 46 0
 2840 04a0 03E0     		b	.L53
 2841              	.L58:
  48:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         break;
 2842              		.loc 3 48 0
 2843 04a2 1820     		movs	r0, #24
 2844 04a4 FFF78EFF 		bl	graphic_ctrl_bit_set
  49:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     }
 2845              		.loc 3 49 0
 2846 04a8 C046     		nop
 2847              	.L53:
 2848              	.L59:
 2849              		.loc 3 51 0
 2850 04aa C046     		nop
 2851 04ac BD46     		mov	sp, r7
 2852 04ae 02B0     		add	sp, sp, #8
 2853              		@ sp needed
 2854 04b0 80BD     		pop	{r7, pc}
 2855              		.cfi_endproc
 2856              	.LFE20:
 2858              		.align	1
 2859              		.syntax unified
 2860              		.code	16
 2861              		.thumb_func
 2862              		.fpu softvfp
 2864              	graphic_wait_ready:
 2865              	.LFB21:
  52:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static void graphic_wait_ready(void) {
 2866              		.loc 3 52 0
 2867              		.cfi_startproc
 2868              		@ args = 0, pretend = 0, frame = 8
 2869              		@ frame_needed = 1, uses_anonymous_args = 0
 2870 04b2 80B5     		push	{r7, lr}
 2871              		.cfi_def_cfa_offset 8
 2872              		.cfi_offset 7, -8
 2873              		.cfi_offset 14, -4
 2874 04b4 82B0     		sub	sp, sp, #8
 2875              		.cfi_def_cfa_offset 16
 2876 04b6 00AF     		add	r7, sp, #0
 2877              		.cfi_def_cfa_register 7
  53:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     uint8_t c;
  54:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_E);
 2878              		.loc 3 54 0
 2879 04b8 4020     		movs	r0, #64
 2880 04ba FFF7A5FF 		bl	graphic_ctrl_bit_clear
  55:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     GPIO_E.moder = 0x00005555; // 15-8 inputs, 7-0 outputs
 2881              		.loc 3 55 0
 2882 04be 144B     		ldr	r3, .L66
 2883 04c0 144A     		ldr	r2, .L66+4
 2884 04c2 1A60     		str	r2, [r3]
  56:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_RS);
 2885              		.loc 3 56 0
 2886 04c4 0120     		movs	r0, #1
 2887 04c6 FFF79FFF 		bl	graphic_ctrl_bit_clear
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_set(B_RW);
 2888              		.loc 3 57 0
 2889 04ca 0220     		movs	r0, #2
 2890 04cc FFF77AFF 		bl	graphic_ctrl_bit_set
  58:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     delay_500ns();
 2891              		.loc 3 58 0
 2892 04d0 FFF7FEFF 		bl	delay_500ns
 2893              	.L63:
  59:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     while(1) {
  60:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_ctrl_bit_set(B_E);
 2894              		.loc 3 60 0
 2895 04d4 4020     		movs	r0, #64
 2896 04d6 FFF775FF 		bl	graphic_ctrl_bit_set
  61:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         delay_500ns();
 2897              		.loc 3 61 0
 2898 04da FFF7FEFF 		bl	delay_500ns
  62:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         c = GPIO_E.idrHigh & LCD_BUSY;
 2899              		.loc 3 62 0
 2900 04de 0C4B     		ldr	r3, .L66
 2901 04e0 5B7C     		ldrb	r3, [r3, #17]
 2902 04e2 DAB2     		uxtb	r2, r3
 2903 04e4 FB1D     		adds	r3, r7, #7
 2904 04e6 7F21     		movs	r1, #127
 2905 04e8 8A43     		bics	r2, r1
 2906 04ea 1A70     		strb	r2, [r3]
  63:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_ctrl_bit_clear(B_E);
 2907              		.loc 3 63 0
 2908 04ec 4020     		movs	r0, #64
 2909 04ee FFF78BFF 		bl	graphic_ctrl_bit_clear
  64:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         delay_500ns();
 2910              		.loc 3 64 0
 2911 04f2 FFF7FEFF 		bl	delay_500ns
  65:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         if( c == 0 ) break;
 2912              		.loc 3 65 0
 2913 04f6 FB1D     		adds	r3, r7, #7
 2914 04f8 1B78     		ldrb	r3, [r3]
 2915 04fa 002B     		cmp	r3, #0
 2916 04fc 00D0     		beq	.L65
  60:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         delay_500ns();
 2917              		.loc 3 60 0
 2918 04fe E9E7     		b	.L63
 2919              	.L65:
 2920              		.loc 3 65 0
 2921 0500 C046     		nop
  66:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     }
  67:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     GPIO_E.moder = 0x55555555; // 15-0 outputs
 2922              		.loc 3 67 0
 2923 0502 034B     		ldr	r3, .L66
 2924 0504 044A     		ldr	r2, .L66+8
 2925 0506 1A60     		str	r2, [r3]
  68:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 2926              		.loc 3 68 0
 2927 0508 C046     		nop
 2928 050a BD46     		mov	sp, r7
 2929 050c 02B0     		add	sp, sp, #8
 2930              		@ sp needed
 2931 050e 80BD     		pop	{r7, pc}
 2932              	.L67:
 2933              		.align	2
 2934              	.L66:
 2935 0510 00100240 		.word	1073876992
 2936 0514 55550000 		.word	21845
 2937 0518 55555555 		.word	1431655765
 2938              		.cfi_endproc
 2939              	.LFE21:
 2941              		.align	1
 2942              		.syntax unified
 2943              		.code	16
 2944              		.thumb_func
 2945              		.fpu softvfp
 2947              	graphic_read:
 2948              	.LFB22:
  69:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static uint8_t graphic_read(uint8_t controller) {
 2949              		.loc 3 69 0
 2950              		.cfi_startproc
 2951              		@ args = 0, pretend = 0, frame = 16
 2952              		@ frame_needed = 1, uses_anonymous_args = 0
 2953 051c 80B5     		push	{r7, lr}
 2954              		.cfi_def_cfa_offset 8
 2955              		.cfi_offset 7, -8
 2956              		.cfi_offset 14, -4
 2957 051e 84B0     		sub	sp, sp, #16
 2958              		.cfi_def_cfa_offset 24
 2959 0520 00AF     		add	r7, sp, #0
 2960              		.cfi_def_cfa_register 7
 2961 0522 0200     		movs	r2, r0
 2962 0524 FB1D     		adds	r3, r7, #7
 2963 0526 1A70     		strb	r2, [r3]
  70:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     uint8_t c;
  71:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_E);
 2964              		.loc 3 71 0
 2965 0528 4020     		movs	r0, #64
 2966 052a FFF76DFF 		bl	graphic_ctrl_bit_clear
  72:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     GPIO_E.moder = 0x00005555; // 15-8 inputs, 7-0 outputs
 2967              		.loc 3 72 0
 2968 052e 1C4B     		ldr	r3, .L72
 2969 0530 1C4A     		ldr	r2, .L72+4
 2970 0532 1A60     		str	r2, [r3]
  73:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_set(B_RS|B_RW);
 2971              		.loc 3 73 0
 2972 0534 0320     		movs	r0, #3
 2973 0536 FFF745FF 		bl	graphic_ctrl_bit_set
  74:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     select_controller(controller);
 2974              		.loc 3 74 0
 2975 053a FB1D     		adds	r3, r7, #7
 2976 053c 1B78     		ldrb	r3, [r3]
 2977 053e 1800     		movs	r0, r3
 2978 0540 FFF78AFF 		bl	select_controller
  75:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     delay_500ns();
 2979              		.loc 3 75 0
 2980 0544 FFF7FEFF 		bl	delay_500ns
  76:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_set(B_E);
 2981              		.loc 3 76 0
 2982 0548 4020     		movs	r0, #64
 2983 054a FFF73BFF 		bl	graphic_ctrl_bit_set
  77:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     delay_500ns();
 2984              		.loc 3 77 0
 2985 054e FFF7FEFF 		bl	delay_500ns
  78:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     c = GPIO_E.idrHigh;
 2986              		.loc 3 78 0
 2987 0552 134A     		ldr	r2, .L72
 2988 0554 0F23     		movs	r3, #15
 2989 0556 FB18     		adds	r3, r7, r3
 2990 0558 527C     		ldrb	r2, [r2, #17]
 2991 055a 1A70     		strb	r2, [r3]
  79:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_E);
 2992              		.loc 3 79 0
 2993 055c 4020     		movs	r0, #64
 2994 055e FFF753FF 		bl	graphic_ctrl_bit_clear
  80:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     GPIO_E.moder = 0x55555555; // 15-0 outputs
 2995              		.loc 3 80 0
 2996 0562 0F4B     		ldr	r3, .L72
 2997 0564 104A     		ldr	r2, .L72+8
 2998 0566 1A60     		str	r2, [r3]
  81:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     if( controller & B_CS1 ) {
 2999              		.loc 3 81 0
 3000 0568 FB1D     		adds	r3, r7, #7
 3001 056a 1B78     		ldrb	r3, [r3]
 3002 056c 0822     		movs	r2, #8
 3003 056e 1340     		ands	r3, r2
 3004 0570 04D0     		beq	.L69
  82:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         select_controller(B_CS1);
 3005              		.loc 3 82 0
 3006 0572 0820     		movs	r0, #8
 3007 0574 FFF770FF 		bl	select_controller
  83:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_wait_ready();
 3008              		.loc 3 83 0
 3009 0578 FFF79BFF 		bl	graphic_wait_ready
 3010              	.L69:
  84:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     }
  85:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     if( controller & B_CS2 ) {
 3011              		.loc 3 85 0
 3012 057c FB1D     		adds	r3, r7, #7
 3013 057e 1B78     		ldrb	r3, [r3]
 3014 0580 1022     		movs	r2, #16
 3015 0582 1340     		ands	r3, r2
 3016 0584 04D0     		beq	.L70
  86:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         select_controller(B_CS2);
 3017              		.loc 3 86 0
 3018 0586 1020     		movs	r0, #16
 3019 0588 FFF766FF 		bl	select_controller
  87:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_wait_ready();
 3020              		.loc 3 87 0
 3021 058c FFF791FF 		bl	graphic_wait_ready
 3022              	.L70:
  88:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     }
  89:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     return c;
 3023              		.loc 3 89 0
 3024 0590 0F23     		movs	r3, #15
 3025 0592 FB18     		adds	r3, r7, r3
 3026 0594 1B78     		ldrb	r3, [r3]
  90:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 3027              		.loc 3 90 0
 3028 0596 1800     		movs	r0, r3
 3029 0598 BD46     		mov	sp, r7
 3030 059a 04B0     		add	sp, sp, #16
 3031              		@ sp needed
 3032 059c 80BD     		pop	{r7, pc}
 3033              	.L73:
 3034 059e C046     		.align	2
 3035              	.L72:
 3036 05a0 00100240 		.word	1073876992
 3037 05a4 55550000 		.word	21845
 3038 05a8 55555555 		.word	1431655765
 3039              		.cfi_endproc
 3040              	.LFE22:
 3042              		.align	1
 3043              		.syntax unified
 3044              		.code	16
 3045              		.thumb_func
 3046              		.fpu softvfp
 3048              	graphic_read_data:
 3049              	.LFB23:
  91:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static uint8_t graphic_read_data(uint8_t controller) {
 3050              		.loc 3 91 0
 3051              		.cfi_startproc
 3052              		@ args = 0, pretend = 0, frame = 8
 3053              		@ frame_needed = 1, uses_anonymous_args = 0
 3054 05ac 80B5     		push	{r7, lr}
 3055              		.cfi_def_cfa_offset 8
 3056              		.cfi_offset 7, -8
 3057              		.cfi_offset 14, -4
 3058 05ae 82B0     		sub	sp, sp, #8
 3059              		.cfi_def_cfa_offset 16
 3060 05b0 00AF     		add	r7, sp, #0
 3061              		.cfi_def_cfa_register 7
 3062 05b2 0200     		movs	r2, r0
 3063 05b4 FB1D     		adds	r3, r7, #7
 3064 05b6 1A70     		strb	r2, [r3]
  92:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_read(controller);
 3065              		.loc 3 92 0
 3066 05b8 FB1D     		adds	r3, r7, #7
 3067 05ba 1B78     		ldrb	r3, [r3]
 3068 05bc 1800     		movs	r0, r3
 3069 05be FFF7ADFF 		bl	graphic_read
  93:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     return graphic_read(controller);
 3070              		.loc 3 93 0
 3071 05c2 FB1D     		adds	r3, r7, #7
 3072 05c4 1B78     		ldrb	r3, [r3]
 3073 05c6 1800     		movs	r0, r3
 3074 05c8 FFF7A8FF 		bl	graphic_read
 3075 05cc 0300     		movs	r3, r0
  94:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 3076              		.loc 3 94 0
 3077 05ce 1800     		movs	r0, r3
 3078 05d0 BD46     		mov	sp, r7
 3079 05d2 02B0     		add	sp, sp, #8
 3080              		@ sp needed
 3081 05d4 80BD     		pop	{r7, pc}
 3082              		.cfi_endproc
 3083              	.LFE23:
 3085              		.align	1
 3086              		.syntax unified
 3087              		.code	16
 3088              		.thumb_func
 3089              		.fpu softvfp
 3091              	graphic_write:
 3092              	.LFB24:
  95:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static void graphic_write(uint8_t value, uint8_t controller){
 3093              		.loc 3 95 0
 3094              		.cfi_startproc
 3095              		@ args = 0, pretend = 0, frame = 8
 3096              		@ frame_needed = 1, uses_anonymous_args = 0
 3097 05d6 80B5     		push	{r7, lr}
 3098              		.cfi_def_cfa_offset 8
 3099              		.cfi_offset 7, -8
 3100              		.cfi_offset 14, -4
 3101 05d8 82B0     		sub	sp, sp, #8
 3102              		.cfi_def_cfa_offset 16
 3103 05da 00AF     		add	r7, sp, #0
 3104              		.cfi_def_cfa_register 7
 3105 05dc 0200     		movs	r2, r0
 3106 05de FB1D     		adds	r3, r7, #7
 3107 05e0 1A70     		strb	r2, [r3]
 3108 05e2 BB1D     		adds	r3, r7, #6
 3109 05e4 0A1C     		adds	r2, r1, #0
 3110 05e6 1A70     		strb	r2, [r3]
  96:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     GPIO_E.odrHigh = value;
 3111              		.loc 3 96 0
 3112 05e8 184A     		ldr	r2, .L79
 3113 05ea FB1D     		adds	r3, r7, #7
 3114 05ec 1B78     		ldrb	r3, [r3]
 3115 05ee 5375     		strb	r3, [r2, #21]
  97:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     select_controller(controller);
 3116              		.loc 3 97 0
 3117 05f0 BB1D     		adds	r3, r7, #6
 3118 05f2 1B78     		ldrb	r3, [r3]
 3119 05f4 1800     		movs	r0, r3
 3120 05f6 FFF72FFF 		bl	select_controller
  98:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     delay_500ns();
 3121              		.loc 3 98 0
 3122 05fa FFF7FEFF 		bl	delay_500ns
  99:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_set(B_E);
 3123              		.loc 3 99 0
 3124 05fe 4020     		movs	r0, #64
 3125 0600 FFF7E0FE 		bl	graphic_ctrl_bit_set
 100:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     delay_500ns();
 3126              		.loc 3 100 0
 3127 0604 FFF7FEFF 		bl	delay_500ns
 101:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_E);
 3128              		.loc 3 101 0
 3129 0608 4020     		movs	r0, #64
 3130 060a FFF7FDFE 		bl	graphic_ctrl_bit_clear
 102:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     
 103:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     if (controller && B_CS1) {
 3131              		.loc 3 103 0
 3132 060e BB1D     		adds	r3, r7, #6
 3133 0610 1B78     		ldrb	r3, [r3]
 3134 0612 002B     		cmp	r3, #0
 3135 0614 04D0     		beq	.L77
 104:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             select_controller(B_CS1);
 3136              		.loc 3 104 0
 3137 0616 0820     		movs	r0, #8
 3138 0618 FFF71EFF 		bl	select_controller
 105:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             graphic_wait_ready();
 3139              		.loc 3 105 0
 3140 061c FFF749FF 		bl	graphic_wait_ready
 3141              	.L77:
 106:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     }
 107:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     
 108:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     if (controller && B_CS2) {
 3142              		.loc 3 108 0
 3143 0620 BB1D     		adds	r3, r7, #6
 3144 0622 1B78     		ldrb	r3, [r3]
 3145 0624 002B     		cmp	r3, #0
 3146 0626 04D0     		beq	.L78
 109:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             select_controller(B_CS2);
 3147              		.loc 3 109 0
 3148 0628 1020     		movs	r0, #16
 3149 062a FFF715FF 		bl	select_controller
 110:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             graphic_wait_ready();
 3150              		.loc 3 110 0
 3151 062e FFF740FF 		bl	graphic_wait_ready
 3152              	.L78:
 111:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     }
 112:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     
 113:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     GPIO_E.odrHigh = 0;
 3153              		.loc 3 113 0
 3154 0632 064B     		ldr	r3, .L79
 3155 0634 0022     		movs	r2, #0
 3156 0636 5A75     		strb	r2, [r3, #21]
 114:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         graphic_ctrl_bit_set(B_E);
 3157              		.loc 3 114 0
 3158 0638 4020     		movs	r0, #64
 3159 063a FFF7C3FE 		bl	graphic_ctrl_bit_set
 115:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         select_controller(0);
 3160              		.loc 3 115 0
 3161 063e 0020     		movs	r0, #0
 3162 0640 FFF70AFF 		bl	select_controller
 116:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     
 117:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****  
 118:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 3163              		.loc 3 118 0
 3164 0644 C046     		nop
 3165 0646 BD46     		mov	sp, r7
 3166 0648 02B0     		add	sp, sp, #8
 3167              		@ sp needed
 3168 064a 80BD     		pop	{r7, pc}
 3169              	.L80:
 3170              		.align	2
 3171              	.L79:
 3172 064c 00100240 		.word	1073876992
 3173              		.cfi_endproc
 3174              	.LFE24:
 3176              		.align	1
 3177              		.syntax unified
 3178              		.code	16
 3179              		.thumb_func
 3180              		.fpu softvfp
 3182              	graphic_write_command:
 3183              	.LFB25:
 119:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static void graphic_write_command(uint8_t command, uint8_t controller) {
 3184              		.loc 3 119 0
 3185              		.cfi_startproc
 3186              		@ args = 0, pretend = 0, frame = 8
 3187              		@ frame_needed = 1, uses_anonymous_args = 0
 3188 0650 80B5     		push	{r7, lr}
 3189              		.cfi_def_cfa_offset 8
 3190              		.cfi_offset 7, -8
 3191              		.cfi_offset 14, -4
 3192 0652 82B0     		sub	sp, sp, #8
 3193              		.cfi_def_cfa_offset 16
 3194 0654 00AF     		add	r7, sp, #0
 3195              		.cfi_def_cfa_register 7
 3196 0656 0200     		movs	r2, r0
 3197 0658 FB1D     		adds	r3, r7, #7
 3198 065a 1A70     		strb	r2, [r3]
 3199 065c BB1D     		adds	r3, r7, #6
 3200 065e 0A1C     		adds	r2, r1, #0
 3201 0660 1A70     		strb	r2, [r3]
 120:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_E);
 3202              		.loc 3 120 0
 3203 0662 4020     		movs	r0, #64
 3204 0664 FFF7D0FE 		bl	graphic_ctrl_bit_clear
 121:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     select_controller(controller);
 3205              		.loc 3 121 0
 3206 0668 BB1D     		adds	r3, r7, #6
 3207 066a 1B78     		ldrb	r3, [r3]
 3208 066c 1800     		movs	r0, r3
 3209 066e FFF7F3FE 		bl	select_controller
 122:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_RS);
 3210              		.loc 3 122 0
 3211 0672 0120     		movs	r0, #1
 3212 0674 FFF7C8FE 		bl	graphic_ctrl_bit_clear
 123:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_RW);
 3213              		.loc 3 123 0
 3214 0678 0220     		movs	r0, #2
 3215 067a FFF7C5FE 		bl	graphic_ctrl_bit_clear
 124:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_write(command, controller);
 3216              		.loc 3 124 0
 3217 067e BB1D     		adds	r3, r7, #6
 3218 0680 1A78     		ldrb	r2, [r3]
 3219 0682 FB1D     		adds	r3, r7, #7
 3220 0684 1B78     		ldrb	r3, [r3]
 3221 0686 1100     		movs	r1, r2
 3222 0688 1800     		movs	r0, r3
 3223 068a FFF7A4FF 		bl	graphic_write
 125:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 3224              		.loc 3 125 0
 3225 068e C046     		nop
 3226 0690 BD46     		mov	sp, r7
 3227 0692 02B0     		add	sp, sp, #8
 3228              		@ sp needed
 3229 0694 80BD     		pop	{r7, pc}
 3230              		.cfi_endproc
 3231              	.LFE25:
 3233              		.align	1
 3234              		.syntax unified
 3235              		.code	16
 3236              		.thumb_func
 3237              		.fpu softvfp
 3239              	graphic_write_data:
 3240              	.LFB26:
 126:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static void graphic_write_data(uint8_t data, uint8_t controller){
 3241              		.loc 3 126 0
 3242              		.cfi_startproc
 3243              		@ args = 0, pretend = 0, frame = 8
 3244              		@ frame_needed = 1, uses_anonymous_args = 0
 3245 0696 80B5     		push	{r7, lr}
 3246              		.cfi_def_cfa_offset 8
 3247              		.cfi_offset 7, -8
 3248              		.cfi_offset 14, -4
 3249 0698 82B0     		sub	sp, sp, #8
 3250              		.cfi_def_cfa_offset 16
 3251 069a 00AF     		add	r7, sp, #0
 3252              		.cfi_def_cfa_register 7
 3253 069c 0200     		movs	r2, r0
 3254 069e FB1D     		adds	r3, r7, #7
 3255 06a0 1A70     		strb	r2, [r3]
 3256 06a2 BB1D     		adds	r3, r7, #6
 3257 06a4 0A1C     		adds	r2, r1, #0
 3258 06a6 1A70     		strb	r2, [r3]
 127:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_E);
 3259              		.loc 3 127 0
 3260 06a8 4020     		movs	r0, #64
 3261 06aa FFF7ADFE 		bl	graphic_ctrl_bit_clear
 128:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     select_controller(controller);
 3262              		.loc 3 128 0
 3263 06ae BB1D     		adds	r3, r7, #6
 3264 06b0 1B78     		ldrb	r3, [r3]
 3265 06b2 1800     		movs	r0, r3
 3266 06b4 FFF7D0FE 		bl	select_controller
 129:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_set(B_RS);
 3267              		.loc 3 129 0
 3268 06b8 0120     		movs	r0, #1
 3269 06ba FFF783FE 		bl	graphic_ctrl_bit_set
 130:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_RW);
 3270              		.loc 3 130 0
 3271 06be 0220     		movs	r0, #2
 3272 06c0 FFF7A2FE 		bl	graphic_ctrl_bit_clear
 131:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_write(data, controller);
 3273              		.loc 3 131 0
 3274 06c4 BB1D     		adds	r3, r7, #6
 3275 06c6 1A78     		ldrb	r2, [r3]
 3276 06c8 FB1D     		adds	r3, r7, #7
 3277 06ca 1B78     		ldrb	r3, [r3]
 3278 06cc 1100     		movs	r1, r2
 3279 06ce 1800     		movs	r0, r3
 3280 06d0 FFF781FF 		bl	graphic_write
 132:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 3281              		.loc 3 132 0
 3282 06d4 C046     		nop
 3283 06d6 BD46     		mov	sp, r7
 3284 06d8 02B0     		add	sp, sp, #8
 3285              		@ sp needed
 3286 06da 80BD     		pop	{r7, pc}
 3287              		.cfi_endproc
 3288              	.LFE26:
 3290              		.align	1
 3291              		.global	graphic_clear_screen
 3292              		.syntax unified
 3293              		.code	16
 3294              		.thumb_func
 3295              		.fpu softvfp
 3297              	graphic_clear_screen:
 3298              	.LFB27:
 133:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** void graphic_clear_screen(void){
 3299              		.loc 3 133 0
 3300              		.cfi_startproc
 3301              		@ args = 0, pretend = 0, frame = 8
 3302              		@ frame_needed = 1, uses_anonymous_args = 0
 3303 06dc 80B5     		push	{r7, lr}
 3304              		.cfi_def_cfa_offset 8
 3305              		.cfi_offset 7, -8
 3306              		.cfi_offset 14, -4
 3307 06de 82B0     		sub	sp, sp, #8
 3308              		.cfi_def_cfa_offset 16
 3309 06e0 00AF     		add	r7, sp, #0
 3310              		.cfi_def_cfa_register 7
 3311              	.LBB3:
 134:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         for(int page = 0; page < 8; page++){
 3312              		.loc 3 134 0
 3313 06e2 0023     		movs	r3, #0
 3314 06e4 7B60     		str	r3, [r7, #4]
 3315 06e6 1EE0     		b	.L84
 3316              	.L87:
 135:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             graphic_write_command(LCD_SET_PAGE | page, B_CS1|B_CS2);
 3317              		.loc 3 135 0
 3318 06e8 7B68     		ldr	r3, [r7, #4]
 3319 06ea 5BB2     		sxtb	r3, r3
 3320 06ec 4822     		movs	r2, #72
 3321 06ee 5242     		rsbs	r2, r2, #0
 3322 06f0 1343     		orrs	r3, r2
 3323 06f2 5BB2     		sxtb	r3, r3
 3324 06f4 DBB2     		uxtb	r3, r3
 3325 06f6 1821     		movs	r1, #24
 3326 06f8 1800     		movs	r0, r3
 3327 06fa FFF7A9FF 		bl	graphic_write_command
 136:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             graphic_write_command(LCD_SET_ADD | 0, B_CS1|B_CS2);
 3328              		.loc 3 136 0
 3329 06fe 1821     		movs	r1, #24
 3330 0700 4020     		movs	r0, #64
 3331 0702 FFF7A5FF 		bl	graphic_write_command
 3332              	.LBB4:
 137:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             for (int add = 0; add < 64 ;add++){
 3333              		.loc 3 137 0
 3334 0706 0023     		movs	r3, #0
 3335 0708 3B60     		str	r3, [r7]
 3336 070a 06E0     		b	.L85
 3337              	.L86:
 138:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****                 graphic_write_data(0, B_CS1|B_CS2);
 3338              		.loc 3 138 0 discriminator 3
 3339 070c 1821     		movs	r1, #24
 3340 070e 0020     		movs	r0, #0
 3341 0710 FFF7C1FF 		bl	graphic_write_data
 137:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             for (int add = 0; add < 64 ;add++){
 3342              		.loc 3 137 0 discriminator 3
 3343 0714 3B68     		ldr	r3, [r7]
 3344 0716 0133     		adds	r3, r3, #1
 3345 0718 3B60     		str	r3, [r7]
 3346              	.L85:
 137:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             for (int add = 0; add < 64 ;add++){
 3347              		.loc 3 137 0 is_stmt 0 discriminator 1
 3348 071a 3B68     		ldr	r3, [r7]
 3349 071c 3F2B     		cmp	r3, #63
 3350 071e F5DD     		ble	.L86
 3351              	.LBE4:
 134:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             graphic_write_command(LCD_SET_PAGE | page, B_CS1|B_CS2);
 3352              		.loc 3 134 0 is_stmt 1 discriminator 2
 3353 0720 7B68     		ldr	r3, [r7, #4]
 3354 0722 0133     		adds	r3, r3, #1
 3355 0724 7B60     		str	r3, [r7, #4]
 3356              	.L84:
 134:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             graphic_write_command(LCD_SET_PAGE | page, B_CS1|B_CS2);
 3357              		.loc 3 134 0 is_stmt 0 discriminator 1
 3358 0726 7B68     		ldr	r3, [r7, #4]
 3359 0728 072B     		cmp	r3, #7
 3360 072a DDDD     		ble	.L87
 3361              	.LBE3:
 139:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****             }
 140:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****         }
 141:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 3362              		.loc 3 141 0 is_stmt 1
 3363 072c C046     		nop
 3364 072e BD46     		mov	sp, r7
 3365 0730 02B0     		add	sp, sp, #8
 3366              		@ sp needed
 3367 0732 80BD     		pop	{r7, pc}
 3368              		.cfi_endproc
 3369              	.LFE27:
 3371              		.align	1
 3372              		.global	graphic_initialize
 3373              		.syntax unified
 3374              		.code	16
 3375              		.thumb_func
 3376              		.fpu softvfp
 3378              	graphic_initialize:
 3379              	.LFB28:
 142:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 143:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** void graphic_initialize(void) {
 3380              		.loc 3 143 0
 3381              		.cfi_startproc
 3382              		@ args = 0, pretend = 0, frame = 0
 3383              		@ frame_needed = 1, uses_anonymous_args = 0
 3384 0734 80B5     		push	{r7, lr}
 3385              		.cfi_def_cfa_offset 8
 3386              		.cfi_offset 7, -8
 3387              		.cfi_offset 14, -4
 3388 0736 00AF     		add	r7, sp, #0
 3389              		.cfi_def_cfa_register 7
 144:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_set(B_E);
 3390              		.loc 3 144 0
 3391 0738 4020     		movs	r0, #64
 3392 073a FFF743FE 		bl	graphic_ctrl_bit_set
 145:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     delay_micro(10);
 3393              		.loc 3 145 0
 3394 073e 0A20     		movs	r0, #10
 3395 0740 FFF7FEFF 		bl	delay_micro
 146:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
 3396              		.loc 3 146 0
 3397 0744 7820     		movs	r0, #120
 3398 0746 FFF75FFE 		bl	graphic_ctrl_bit_clear
 147:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     delay_milli(30);
 3399              		.loc 3 147 0
 3400 074a 1E20     		movs	r0, #30
 3401 074c FFF7FEFF 		bl	delay_milli
 148:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_ctrl_bit_set(B_RST);
 3402              		.loc 3 148 0
 3403 0750 2020     		movs	r0, #32
 3404 0752 FFF737FE 		bl	graphic_ctrl_bit_set
 149:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     delay_milli(100);
 3405              		.loc 3 149 0
 3406 0756 6420     		movs	r0, #100
 3407 0758 FFF7FEFF 		bl	delay_milli
 150:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_write_command(LCD_OFF, B_CS1|B_CS2);
 3408              		.loc 3 150 0
 3409 075c 1821     		movs	r1, #24
 3410 075e 3E20     		movs	r0, #62
 3411 0760 FFF776FF 		bl	graphic_write_command
 151:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_write_command(LCD_ON, B_CS1|B_CS2);
 3412              		.loc 3 151 0
 3413 0764 1821     		movs	r1, #24
 3414 0766 3F20     		movs	r0, #63
 3415 0768 FFF772FF 		bl	graphic_write_command
 152:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_write_command(LCD_DISP_START, B_CS1|B_CS2);
 3416              		.loc 3 152 0
 3417 076c 1821     		movs	r1, #24
 3418 076e C020     		movs	r0, #192
 3419 0770 FFF76EFF 		bl	graphic_write_command
 153:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_write_command(LCD_SET_ADD, B_CS1|B_CS2);
 3420              		.loc 3 153 0
 3421 0774 1821     		movs	r1, #24
 3422 0776 4020     		movs	r0, #64
 3423 0778 FFF76AFF 		bl	graphic_write_command
 154:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     graphic_write_command(LCD_SET_PAGE, B_CS1|B_CS2);
 3424              		.loc 3 154 0
 3425 077c 1821     		movs	r1, #24
 3426 077e B820     		movs	r0, #184
 3427 0780 FFF766FF 		bl	graphic_write_command
 155:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h ****     select_controller(0);
 3428              		.loc 3 155 0
 3429 0784 0020     		movs	r0, #0
 3430 0786 FFF767FE 		bl	select_controller
 156:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 3431              		.loc 3 156 0
 3432 078a C046     		nop
 3433 078c BD46     		mov	sp, r7
 3434              		@ sp needed
 3435 078e 80BD     		pop	{r7, pc}
 3436              		.cfi_endproc
 3437              	.LFE28:
 3439              		.comm	backBuffer,1024,4
 3440              		.align	1
 3441              		.global	clear_backBuffer
 3442              		.syntax unified
 3443              		.code	16
 3444              		.thumb_func
 3445              		.fpu softvfp
 3447              	clear_backBuffer:
 3448              	.LFB29:
 157:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 158:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** uint8_t backBuffer[1024]; // 128 * 64 / 8
 159:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 160:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 161:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** void clear_backBuffer() {
 3449              		.loc 3 161 0
 3450              		.cfi_startproc
 3451              		@ args = 0, pretend = 0, frame = 8
 3452              		@ frame_needed = 1, uses_anonymous_args = 0
 3453 0790 80B5     		push	{r7, lr}
 3454              		.cfi_def_cfa_offset 8
 3455              		.cfi_offset 7, -8
 3456              		.cfi_offset 14, -4
 3457 0792 82B0     		sub	sp, sp, #8
 3458              		.cfi_def_cfa_offset 16
 3459 0794 00AF     		add	r7, sp, #0
 3460              		.cfi_def_cfa_register 7
 162:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	int i;
 163:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	for (i = 0; i < 1024; i++){
 3461              		.loc 3 163 0
 3462 0796 0023     		movs	r3, #0
 3463 0798 7B60     		str	r3, [r7, #4]
 3464 079a 07E0     		b	.L90
 3465              	.L91:
 164:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		backBuffer[i] = 0;
 3466              		.loc 3 164 0 discriminator 3
 3467 079c 074A     		ldr	r2, .L92
 3468 079e 7B68     		ldr	r3, [r7, #4]
 3469 07a0 D318     		adds	r3, r2, r3
 3470 07a2 0022     		movs	r2, #0
 3471 07a4 1A70     		strb	r2, [r3]
 163:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		backBuffer[i] = 0;
 3472              		.loc 3 163 0 discriminator 3
 3473 07a6 7B68     		ldr	r3, [r7, #4]
 3474 07a8 0133     		adds	r3, r3, #1
 3475 07aa 7B60     		str	r3, [r7, #4]
 3476              	.L90:
 163:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		backBuffer[i] = 0;
 3477              		.loc 3 163 0 is_stmt 0 discriminator 1
 3478 07ac 7B68     		ldr	r3, [r7, #4]
 3479 07ae 044A     		ldr	r2, .L92+4
 3480 07b0 9342     		cmp	r3, r2
 3481 07b2 F3DD     		ble	.L91
 165:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	}
 166:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 3482              		.loc 3 166 0 is_stmt 1
 3483 07b4 C046     		nop
 3484 07b6 BD46     		mov	sp, r7
 3485 07b8 02B0     		add	sp, sp, #8
 3486              		@ sp needed
 3487 07ba 80BD     		pop	{r7, pc}
 3488              	.L93:
 3489              		.align	2
 3490              	.L92:
 3491 07bc 00000000 		.word	backBuffer
 3492 07c0 FF030000 		.word	1023
 3493              		.cfi_endproc
 3494              	.LFE29:
 3496              		.align	1
 3497              		.syntax unified
 3498              		.code	16
 3499              		.thumb_func
 3500              		.fpu softvfp
 3502              	load_sprite:
 3503              	.LFB30:
 167:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 168:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** typedef struct {
 169:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	unsigned char width;
 170:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	unsigned char height;
 171:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	unsigned char* data;
 172:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** } sprite;
 173:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** static void load_sprite(sprite* s, unsigned char* data, int width, int height) {
 3504              		.loc 3 173 0
 3505              		.cfi_startproc
 3506              		@ args = 0, pretend = 0, frame = 16
 3507              		@ frame_needed = 1, uses_anonymous_args = 0
 3508 07c4 80B5     		push	{r7, lr}
 3509              		.cfi_def_cfa_offset 8
 3510              		.cfi_offset 7, -8
 3511              		.cfi_offset 14, -4
 3512 07c6 84B0     		sub	sp, sp, #16
 3513              		.cfi_def_cfa_offset 24
 3514 07c8 00AF     		add	r7, sp, #0
 3515              		.cfi_def_cfa_register 7
 3516 07ca F860     		str	r0, [r7, #12]
 3517 07cc B960     		str	r1, [r7, #8]
 3518 07ce 7A60     		str	r2, [r7, #4]
 3519 07d0 3B60     		str	r3, [r7]
 174:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	s->width = width;
 3520              		.loc 3 174 0
 3521 07d2 7B68     		ldr	r3, [r7, #4]
 3522 07d4 DAB2     		uxtb	r2, r3
 3523 07d6 FB68     		ldr	r3, [r7, #12]
 3524 07d8 1A70     		strb	r2, [r3]
 175:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	s->height = height;
 3525              		.loc 3 175 0
 3526 07da 3B68     		ldr	r3, [r7]
 3527 07dc DAB2     		uxtb	r2, r3
 3528 07de FB68     		ldr	r3, [r7, #12]
 3529 07e0 5A70     		strb	r2, [r3, #1]
 176:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	s->data = data;
 3530              		.loc 3 176 0
 3531 07e2 FB68     		ldr	r3, [r7, #12]
 3532 07e4 BA68     		ldr	r2, [r7, #8]
 3533 07e6 5A60     		str	r2, [r3, #4]
 177:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 3534              		.loc 3 177 0
 3535 07e8 C046     		nop
 3536 07ea BD46     		mov	sp, r7
 3537 07ec 04B0     		add	sp, sp, #16
 3538              		@ sp needed
 3539 07ee 80BD     		pop	{r7, pc}
 3540              		.cfi_endproc
 3541              	.LFE30:
 3543              		.align	1
 3544              		.global	draw_sprite
 3545              		.syntax unified
 3546              		.code	16
 3547              		.thumb_func
 3548              		.fpu softvfp
 3550              	draw_sprite:
 3551              	.LFB31:
 178:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 179:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** void draw_sprite(sprite* s, int x, int y) {
 3552              		.loc 3 179 0
 3553              		.cfi_startproc
 3554              		@ args = 0, pretend = 0, frame = 40
 3555              		@ frame_needed = 1, uses_anonymous_args = 0
 3556 07f0 80B5     		push	{r7, lr}
 3557              		.cfi_def_cfa_offset 8
 3558              		.cfi_offset 7, -8
 3559              		.cfi_offset 14, -4
 3560 07f2 8AB0     		sub	sp, sp, #40
 3561              		.cfi_def_cfa_offset 48
 3562 07f4 00AF     		add	r7, sp, #0
 3563              		.cfi_def_cfa_register 7
 3564 07f6 F860     		str	r0, [r7, #12]
 3565 07f8 B960     		str	r1, [r7, #8]
 3566 07fa 7A60     		str	r2, [r7, #4]
 180:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	int i,j,k, width_in_bytes;
 181:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	if (s->width % 8 == 0){
 3567              		.loc 3 181 0
 3568 07fc FB68     		ldr	r3, [r7, #12]
 3569 07fe 1B78     		ldrb	r3, [r3]
 3570 0800 0722     		movs	r2, #7
 3571 0802 1340     		ands	r3, r2
 3572 0804 DBB2     		uxtb	r3, r3
 3573 0806 002B     		cmp	r3, #0
 3574 0808 05D1     		bne	.L96
 182:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		width_in_bytes = s->width / 8;
 3575              		.loc 3 182 0
 3576 080a FB68     		ldr	r3, [r7, #12]
 3577 080c 1B78     		ldrb	r3, [r3]
 3578 080e DB08     		lsrs	r3, r3, #3
 3579 0810 DBB2     		uxtb	r3, r3
 3580 0812 BB61     		str	r3, [r7, #24]
 3581 0814 05E0     		b	.L97
 3582              	.L96:
 183:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	
 184:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	} else {
 185:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		width_in_bytes = s->width / 8 + 1;
 3583              		.loc 3 185 0
 3584 0816 FB68     		ldr	r3, [r7, #12]
 3585 0818 1B78     		ldrb	r3, [r3]
 3586 081a DB08     		lsrs	r3, r3, #3
 3587 081c DBB2     		uxtb	r3, r3
 3588 081e 0133     		adds	r3, r3, #1
 3589 0820 BB61     		str	r3, [r7, #24]
 3590              	.L97:
 186:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		
 187:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	}
 188:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	for (i = 0; i < s->height; i++) {
 3591              		.loc 3 188 0
 3592 0822 0023     		movs	r3, #0
 3593 0824 7B62     		str	r3, [r7, #36]
 3594 0826 38E0     		b	.L98
 3595              	.L104:
 189:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		for (j = 0; j < width_in_bytes; j++) {
 3596              		.loc 3 189 0
 3597 0828 0023     		movs	r3, #0
 3598 082a 3B62     		str	r3, [r7, #32]
 3599 082c 2EE0     		b	.L99
 3600              	.L103:
 3601              	.LBB5:
 190:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			unsigned char byte = s->data[i * width_in_bytes + j];
 3602              		.loc 3 190 0
 3603 082e FB68     		ldr	r3, [r7, #12]
 3604 0830 5B68     		ldr	r3, [r3, #4]
 3605 0832 7A6A     		ldr	r2, [r7, #36]
 3606 0834 B969     		ldr	r1, [r7, #24]
 3607 0836 5143     		muls	r1, r2
 3608 0838 3A6A     		ldr	r2, [r7, #32]
 3609 083a 8A18     		adds	r2, r1, r2
 3610 083c 9A18     		adds	r2, r3, r2
 3611 083e 1723     		movs	r3, #23
 3612 0840 FB18     		adds	r3, r7, r3
 3613 0842 1278     		ldrb	r2, [r2]
 3614 0844 1A70     		strb	r2, [r3]
 191:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			for (k =0; k < 8; k++) {
 3615              		.loc 3 191 0
 3616 0846 0023     		movs	r3, #0
 3617 0848 FB61     		str	r3, [r7, #28]
 3618 084a 19E0     		b	.L100
 3619              	.L102:
 192:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 				if (byte & (1 << k))
 3620              		.loc 3 192 0
 3621 084c 1723     		movs	r3, #23
 3622 084e FB18     		adds	r3, r7, r3
 3623 0850 1A78     		ldrb	r2, [r3]
 3624 0852 FB69     		ldr	r3, [r7, #28]
 3625 0854 1A41     		asrs	r2, r2, r3
 3626 0856 1300     		movs	r3, r2
 3627 0858 0122     		movs	r2, #1
 3628 085a 1340     		ands	r3, r2
 3629 085c 0DD0     		beq	.L101
 3630              	.LBB6:
 193:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 				pixel(8 * j + k + x + 1, i + y + 1);
 3631              		.loc 3 193 0
 3632 085e 3B6A     		ldr	r3, [r7, #32]
 3633 0860 DA00     		lsls	r2, r3, #3
 3634 0862 FB69     		ldr	r3, [r7, #28]
 3635 0864 D218     		adds	r2, r2, r3
 3636 0866 BB68     		ldr	r3, [r7, #8]
 3637 0868 D318     		adds	r3, r2, r3
 3638 086a 581C     		adds	r0, r3, #1
 3639 086c 7A6A     		ldr	r2, [r7, #36]
 3640 086e 7B68     		ldr	r3, [r7, #4]
 3641 0870 D318     		adds	r3, r2, r3
 3642 0872 0133     		adds	r3, r3, #1
 3643 0874 1900     		movs	r1, r3
 3644 0876 FFF7FEFF 		bl	pixel
 3645              	.L101:
 3646              	.LBE6:
 191:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			for (k =0; k < 8; k++) {
 3647              		.loc 3 191 0 discriminator 2
 3648 087a FB69     		ldr	r3, [r7, #28]
 3649 087c 0133     		adds	r3, r3, #1
 3650 087e FB61     		str	r3, [r7, #28]
 3651              	.L100:
 191:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			for (k =0; k < 8; k++) {
 3652              		.loc 3 191 0 is_stmt 0 discriminator 1
 3653 0880 FB69     		ldr	r3, [r7, #28]
 3654 0882 072B     		cmp	r3, #7
 3655 0884 E2DD     		ble	.L102
 3656              	.LBE5:
 189:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			unsigned char byte = s->data[i * width_in_bytes + j];
 3657              		.loc 3 189 0 is_stmt 1 discriminator 2
 3658 0886 3B6A     		ldr	r3, [r7, #32]
 3659 0888 0133     		adds	r3, r3, #1
 3660 088a 3B62     		str	r3, [r7, #32]
 3661              	.L99:
 189:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			unsigned char byte = s->data[i * width_in_bytes + j];
 3662              		.loc 3 189 0 is_stmt 0 discriminator 1
 3663 088c 3A6A     		ldr	r2, [r7, #32]
 3664 088e BB69     		ldr	r3, [r7, #24]
 3665 0890 9A42     		cmp	r2, r3
 3666 0892 CCDB     		blt	.L103
 188:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		for (j = 0; j < width_in_bytes; j++) {
 3667              		.loc 3 188 0 is_stmt 1 discriminator 2
 3668 0894 7B6A     		ldr	r3, [r7, #36]
 3669 0896 0133     		adds	r3, r3, #1
 3670 0898 7B62     		str	r3, [r7, #36]
 3671              	.L98:
 188:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		for (j = 0; j < width_in_bytes; j++) {
 3672              		.loc 3 188 0 is_stmt 0 discriminator 1
 3673 089a FB68     		ldr	r3, [r7, #12]
 3674 089c 5B78     		ldrb	r3, [r3, #1]
 3675 089e 1A00     		movs	r2, r3
 3676 08a0 7B6A     		ldr	r3, [r7, #36]
 3677 08a2 9342     		cmp	r3, r2
 3678 08a4 C0DB     		blt	.L104
 194:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			}
 195:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		}
 196:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	}
 197:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 3679              		.loc 3 197 0 is_stmt 1
 3680 08a6 C046     		nop
 3681 08a8 BD46     		mov	sp, r7
 3682 08aa 0AB0     		add	sp, sp, #40
 3683              		@ sp needed
 3684 08ac 80BD     		pop	{r7, pc}
 3685              		.cfi_endproc
 3686              	.LFE31:
 3688              		.align	1
 3689              		.global	graphic_draw_screen
 3690              		.syntax unified
 3691              		.code	16
 3692              		.thumb_func
 3693              		.fpu softvfp
 3695              	graphic_draw_screen:
 3696              	.LFB32:
 198:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 199:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 200:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** void graphic_draw_screen(void) {
 3697              		.loc 3 200 0
 3698              		.cfi_startproc
 3699              		@ args = 0, pretend = 0, frame = 16
 3700              		@ frame_needed = 1, uses_anonymous_args = 0
 3701 08ae 80B5     		push	{r7, lr}
 3702              		.cfi_def_cfa_offset 8
 3703              		.cfi_offset 7, -8
 3704              		.cfi_offset 14, -4
 3705 08b0 84B0     		sub	sp, sp, #16
 3706              		.cfi_def_cfa_offset 24
 3707 08b2 00AF     		add	r7, sp, #0
 3708              		.cfi_def_cfa_register 7
 201:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	uint8_t i, j, controller, c;
 202:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	unsigned int k = 0;
 3709              		.loc 3 202 0
 3710 08b4 0023     		movs	r3, #0
 3711 08b6 BB60     		str	r3, [r7, #8]
 203:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	for(c = 0; c < 2; c++) {
 3712              		.loc 3 203 0
 3713 08b8 0D23     		movs	r3, #13
 3714 08ba FB18     		adds	r3, r7, r3
 3715 08bc 0022     		movs	r2, #0
 3716 08be 1A70     		strb	r2, [r3]
 3717 08c0 4FE0     		b	.L106
 3718              	.L113:
 204:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		controller = (c == 0) ? B_CS1 : B_CS2;
 3719              		.loc 3 204 0
 3720 08c2 0D23     		movs	r3, #13
 3721 08c4 FB18     		adds	r3, r7, r3
 3722 08c6 1B78     		ldrb	r3, [r3]
 3723 08c8 002B     		cmp	r3, #0
 3724 08ca 01D1     		bne	.L107
 3725              		.loc 3 204 0 is_stmt 0 discriminator 1
 3726 08cc 0822     		movs	r2, #8
 3727 08ce 00E0     		b	.L108
 3728              	.L107:
 3729              		.loc 3 204 0 discriminator 2
 3730 08d0 1022     		movs	r2, #16
 3731              	.L108:
 3732              		.loc 3 204 0 discriminator 4
 3733 08d2 FB1D     		adds	r3, r7, #7
 3734 08d4 1A70     		strb	r2, [r3]
 205:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		for(j = 0; j < 8; j++) {
 3735              		.loc 3 205 0 is_stmt 1 discriminator 4
 3736 08d6 0E23     		movs	r3, #14
 3737 08d8 FB18     		adds	r3, r7, r3
 3738 08da 0022     		movs	r2, #0
 3739 08dc 1A70     		strb	r2, [r3]
 3740 08de 35E0     		b	.L109
 3741              	.L112:
 206:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			graphic_write_command(LCD_SET_PAGE | j, controller);
 3742              		.loc 3 206 0
 3743 08e0 0E23     		movs	r3, #14
 3744 08e2 FB18     		adds	r3, r7, r3
 3745 08e4 1B78     		ldrb	r3, [r3]
 3746 08e6 4822     		movs	r2, #72
 3747 08e8 5242     		rsbs	r2, r2, #0
 3748 08ea 1343     		orrs	r3, r2
 3749 08ec DAB2     		uxtb	r2, r3
 3750 08ee FB1D     		adds	r3, r7, #7
 3751 08f0 1B78     		ldrb	r3, [r3]
 3752 08f2 1900     		movs	r1, r3
 3753 08f4 1000     		movs	r0, r2
 3754 08f6 FFF7ABFE 		bl	graphic_write_command
 207:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			graphic_write_command(LCD_SET_ADD | 0, controller);
 3755              		.loc 3 207 0
 3756 08fa FB1D     		adds	r3, r7, #7
 3757 08fc 1B78     		ldrb	r3, [r3]
 3758 08fe 1900     		movs	r1, r3
 3759 0900 4020     		movs	r0, #64
 3760 0902 FFF7A5FE 		bl	graphic_write_command
 208:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			for(i = 0; i <= 63; i++, k++) {
 3761              		.loc 3 208 0
 3762 0906 0F23     		movs	r3, #15
 3763 0908 FB18     		adds	r3, r7, r3
 3764 090a 0022     		movs	r2, #0
 3765 090c 1A70     		strb	r2, [r3]
 3766 090e 12E0     		b	.L110
 3767              	.L111:
 209:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 				graphic_write_data(backBuffer[k], controller);
 3768              		.loc 3 209 0 discriminator 3
 3769 0910 184A     		ldr	r2, .L114
 3770 0912 BB68     		ldr	r3, [r7, #8]
 3771 0914 D318     		adds	r3, r2, r3
 3772 0916 1A78     		ldrb	r2, [r3]
 3773 0918 FB1D     		adds	r3, r7, #7
 3774 091a 1B78     		ldrb	r3, [r3]
 3775 091c 1900     		movs	r1, r3
 3776 091e 1000     		movs	r0, r2
 3777 0920 FFF7B9FE 		bl	graphic_write_data
 208:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			for(i = 0; i <= 63; i++, k++) {
 3778              		.loc 3 208 0 discriminator 3
 3779 0924 0F21     		movs	r1, #15
 3780 0926 7B18     		adds	r3, r7, r1
 3781 0928 1A78     		ldrb	r2, [r3]
 3782 092a 7B18     		adds	r3, r7, r1
 3783 092c 0132     		adds	r2, r2, #1
 3784 092e 1A70     		strb	r2, [r3]
 3785 0930 BB68     		ldr	r3, [r7, #8]
 3786 0932 0133     		adds	r3, r3, #1
 3787 0934 BB60     		str	r3, [r7, #8]
 3788              	.L110:
 208:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			for(i = 0; i <= 63; i++, k++) {
 3789              		.loc 3 208 0 is_stmt 0 discriminator 1
 3790 0936 0F23     		movs	r3, #15
 3791 0938 FB18     		adds	r3, r7, r3
 3792 093a 1B78     		ldrb	r3, [r3]
 3793 093c 3F2B     		cmp	r3, #63
 3794 093e E7D9     		bls	.L111
 205:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			graphic_write_command(LCD_SET_PAGE | j, controller);
 3795              		.loc 3 205 0 is_stmt 1 discriminator 2
 3796 0940 0E21     		movs	r1, #14
 3797 0942 7B18     		adds	r3, r7, r1
 3798 0944 1A78     		ldrb	r2, [r3]
 3799 0946 7B18     		adds	r3, r7, r1
 3800 0948 0132     		adds	r2, r2, #1
 3801 094a 1A70     		strb	r2, [r3]
 3802              	.L109:
 205:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			graphic_write_command(LCD_SET_PAGE | j, controller);
 3803              		.loc 3 205 0 is_stmt 0 discriminator 1
 3804 094c 0E23     		movs	r3, #14
 3805 094e FB18     		adds	r3, r7, r3
 3806 0950 1B78     		ldrb	r3, [r3]
 3807 0952 072B     		cmp	r3, #7
 3808 0954 C4D9     		bls	.L112
 203:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		controller = (c == 0) ? B_CS1 : B_CS2;
 3809              		.loc 3 203 0 is_stmt 1 discriminator 2
 3810 0956 0D21     		movs	r1, #13
 3811 0958 7B18     		adds	r3, r7, r1
 3812 095a 1A78     		ldrb	r2, [r3]
 3813 095c 7B18     		adds	r3, r7, r1
 3814 095e 0132     		adds	r2, r2, #1
 3815 0960 1A70     		strb	r2, [r3]
 3816              	.L106:
 203:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		controller = (c == 0) ? B_CS1 : B_CS2;
 3817              		.loc 3 203 0 is_stmt 0 discriminator 1
 3818 0962 0D23     		movs	r3, #13
 3819 0964 FB18     		adds	r3, r7, r3
 3820 0966 1B78     		ldrb	r3, [r3]
 3821 0968 012B     		cmp	r3, #1
 3822 096a AAD9     		bls	.L113
 210:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 			}
 211:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		}
 212:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	}
 213:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 3823              		.loc 3 213 0 is_stmt 1
 3824 096c C046     		nop
 3825 096e BD46     		mov	sp, r7
 3826 0970 04B0     		add	sp, sp, #16
 3827              		@ sp needed
 3828 0972 80BD     		pop	{r7, pc}
 3829              	.L115:
 3830              		.align	2
 3831              	.L114:
 3832 0974 00000000 		.word	backBuffer
 3833              		.cfi_endproc
 3834              	.LFE32:
 3836              		.align	1
 3837              		.global	pixel
 3838              		.syntax unified
 3839              		.code	16
 3840              		.thumb_func
 3841              		.fpu softvfp
 3843              	pixel:
 3844              	.LFB33:
 214:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 
 215:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** void pixel(int x, int y) {
 3845              		.loc 3 215 0
 3846              		.cfi_startproc
 3847              		@ args = 0, pretend = 0, frame = 16
 3848              		@ frame_needed = 1, uses_anonymous_args = 0
 3849 0978 80B5     		push	{r7, lr}
 3850              		.cfi_def_cfa_offset 8
 3851              		.cfi_offset 7, -8
 3852              		.cfi_offset 14, -4
 3853 097a 84B0     		sub	sp, sp, #16
 3854              		.cfi_def_cfa_offset 24
 3855 097c 00AF     		add	r7, sp, #0
 3856              		.cfi_def_cfa_register 7
 3857 097e 7860     		str	r0, [r7, #4]
 3858 0980 3960     		str	r1, [r7]
 216:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	uint8_t mask;
 217:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	int index = 0;
 3859              		.loc 3 217 0
 3860 0982 0023     		movs	r3, #0
 3861 0984 FB60     		str	r3, [r7, #12]
 218:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	if( (x > 128 ) || (x < 1) || (y > 64) || (y < 1) ) {
 3862              		.loc 3 218 0
 3863 0986 7B68     		ldr	r3, [r7, #4]
 3864 0988 802B     		cmp	r3, #128
 3865 098a 3DDC     		bgt	.L123
 3866              		.loc 3 218 0 is_stmt 0 discriminator 1
 3867 098c 7B68     		ldr	r3, [r7, #4]
 3868 098e 002B     		cmp	r3, #0
 3869 0990 3ADD     		ble	.L123
 3870              		.loc 3 218 0 discriminator 2
 3871 0992 3B68     		ldr	r3, [r7]
 3872 0994 402B     		cmp	r3, #64
 3873 0996 37DC     		bgt	.L123
 3874              		.loc 3 218 0 discriminator 3
 3875 0998 3B68     		ldr	r3, [r7]
 3876 099a 002B     		cmp	r3, #0
 3877 099c 34DD     		ble	.L123
 219:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		return;
 220:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	}
 221:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	mask = 1 << ((y-1)%8);
 3878              		.loc 3 221 0 is_stmt 1
 3879 099e 3B68     		ldr	r3, [r7]
 3880 09a0 013B     		subs	r3, r3, #1
 3881 09a2 1B4A     		ldr	r2, .L124
 3882 09a4 1340     		ands	r3, r2
 3883 09a6 04D5     		bpl	.L120
 3884 09a8 013B     		subs	r3, r3, #1
 3885 09aa 0822     		movs	r2, #8
 3886 09ac 5242     		rsbs	r2, r2, #0
 3887 09ae 1343     		orrs	r3, r2
 3888 09b0 0133     		adds	r3, r3, #1
 3889              	.L120:
 3890 09b2 1A00     		movs	r2, r3
 3891 09b4 0123     		movs	r3, #1
 3892 09b6 9340     		lsls	r3, r3, r2
 3893 09b8 1A00     		movs	r2, r3
 3894 09ba 0B23     		movs	r3, #11
 3895 09bc FB18     		adds	r3, r7, r3
 3896 09be 1A70     		strb	r2, [r3]
 222:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	if(x > 64) {
 3897              		.loc 3 222 0
 3898 09c0 7B68     		ldr	r3, [r7, #4]
 3899 09c2 402B     		cmp	r3, #64
 3900 09c4 05DD     		ble	.L121
 223:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		x -= 65;
 3901              		.loc 3 223 0
 3902 09c6 7B68     		ldr	r3, [r7, #4]
 3903 09c8 413B     		subs	r3, r3, #65
 3904 09ca 7B60     		str	r3, [r7, #4]
 224:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 		index = 512;
 3905              		.loc 3 224 0
 3906 09cc 8023     		movs	r3, #128
 3907 09ce 9B00     		lsls	r3, r3, #2
 3908 09d0 FB60     		str	r3, [r7, #12]
 3909              	.L121:
 225:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	}
 226:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	index += x + ((y-1)/8)*64;
 3910              		.loc 3 226 0
 3911 09d2 3B68     		ldr	r3, [r7]
 3912 09d4 013B     		subs	r3, r3, #1
 3913 09d6 002B     		cmp	r3, #0
 3914 09d8 00DA     		bge	.L122
 3915 09da 0733     		adds	r3, r3, #7
 3916              	.L122:
 3917 09dc DB10     		asrs	r3, r3, #3
 3918 09de 9A01     		lsls	r2, r3, #6
 3919 09e0 7B68     		ldr	r3, [r7, #4]
 3920 09e2 D318     		adds	r3, r2, r3
 3921 09e4 FA68     		ldr	r2, [r7, #12]
 3922 09e6 D318     		adds	r3, r2, r3
 3923 09e8 FB60     		str	r3, [r7, #12]
 227:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	backBuffer[index] |= mask;
 3924              		.loc 3 227 0
 3925 09ea 0A4A     		ldr	r2, .L124+4
 3926 09ec FB68     		ldr	r3, [r7, #12]
 3927 09ee D318     		adds	r3, r2, r3
 3928 09f0 1A78     		ldrb	r2, [r3]
 3929 09f2 0B23     		movs	r3, #11
 3930 09f4 FB18     		adds	r3, r7, r3
 3931 09f6 1B78     		ldrb	r3, [r3]
 3932 09f8 1343     		orrs	r3, r2
 3933 09fa D9B2     		uxtb	r1, r3
 3934 09fc 054A     		ldr	r2, .L124+4
 3935 09fe FB68     		ldr	r3, [r7, #12]
 3936 0a00 D318     		adds	r3, r2, r3
 3937 0a02 0A1C     		adds	r2, r1, #0
 3938 0a04 1A70     		strb	r2, [r3]
 3939 0a06 00E0     		b	.L116
 3940              	.L123:
 219:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** 	}
 3941              		.loc 3 219 0
 3942 0a08 C046     		nop
 3943              	.L116:
 228:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\graphics.h **** }
 3944              		.loc 3 228 0
 3945 0a0a BD46     		mov	sp, r7
 3946 0a0c 04B0     		add	sp, sp, #16
 3947              		@ sp needed
 3948 0a0e 80BD     		pop	{r7, pc}
 3949              	.L125:
 3950              		.align	2
 3951              	.L124:
 3952 0a10 07000080 		.word	-2147483641
 3953 0a14 00000000 		.word	backBuffer
 3954              		.cfi_endproc
 3955              	.LFE33:
 3957              		.global	ball_geometry
 3958              		.data
 3959              		.align	2
 3962              	ball_geometry:
 3963 0678 0C000000 		.word	12
 3964 067c 04000000 		.word	4
 3965 0680 04000000 		.word	4
 3966 0684 00       		.byte	0
 3967 0685 01       		.byte	1
 3968 0686 00       		.byte	0
 3969 0687 02       		.byte	2
 3970 0688 01       		.byte	1
 3971 0689 00       		.byte	0
 3972 068a 01       		.byte	1
 3973 068b 01       		.byte	1
 3974 068c 01       		.byte	1
 3975 068d 02       		.byte	2
 3976 068e 01       		.byte	1
 3977 068f 03       		.byte	3
 3978 0690 02       		.byte	2
 3979 0691 00       		.byte	0
 3980 0692 02       		.byte	2
 3981 0693 01       		.byte	1
 3982 0694 02       		.byte	2
 3983 0695 02       		.byte	2
 3984 0696 02       		.byte	2
 3985 0697 03       		.byte	3
 3986 0698 03       		.byte	3
 3987 0699 01       		.byte	1
 3988 069a 03       		.byte	3
 3989 069b 02       		.byte	2
 3990 069c 00000000 		.space	16
 3990      00000000 
 3990      00000000 
 3990      00000000 
 3991              		.text
 3992              		.align	1
 3993              		.global	set_object_speed
 3994              		.syntax unified
 3995              		.code	16
 3996              		.thumb_func
 3997              		.fpu softvfp
 3999              	set_object_speed:
 4000              	.LFB34:
 4001              		.file 4 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/geometry.h"
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
 4002              		.loc 4 51 0
 4003              		.cfi_startproc
 4004              		@ args = 0, pretend = 0, frame = 16
 4005              		@ frame_needed = 1, uses_anonymous_args = 0
 4006 0a18 80B5     		push	{r7, lr}
 4007              		.cfi_def_cfa_offset 8
 4008              		.cfi_offset 7, -8
 4009              		.cfi_offset 14, -4
 4010 0a1a 84B0     		sub	sp, sp, #16
 4011              		.cfi_def_cfa_offset 24
 4012 0a1c 00AF     		add	r7, sp, #0
 4013              		.cfi_def_cfa_register 7
 4014 0a1e F860     		str	r0, [r7, #12]
 4015 0a20 B960     		str	r1, [r7, #8]
 4016 0a22 7A60     		str	r2, [r7, #4]
  52:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     o->dirx = speedx;
 4017              		.loc 4 52 0
 4018 0a24 FB68     		ldr	r3, [r7, #12]
 4019 0a26 BA68     		ldr	r2, [r7, #8]
 4020 0a28 5A60     		str	r2, [r3, #4]
  53:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     o->diry = speedy;
 4021              		.loc 4 53 0
 4022 0a2a FB68     		ldr	r3, [r7, #12]
 4023 0a2c 7A68     		ldr	r2, [r7, #4]
 4024 0a2e 9A60     		str	r2, [r3, #8]
  54:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** }
 4025              		.loc 4 54 0
 4026 0a30 C046     		nop
 4027 0a32 BD46     		mov	sp, r7
 4028 0a34 04B0     		add	sp, sp, #16
 4029              		@ sp needed
 4030 0a36 80BD     		pop	{r7, pc}
 4031              		.cfi_endproc
 4032              	.LFE34:
 4034              		.align	1
 4035              		.global	draw_object
 4036              		.syntax unified
 4037              		.code	16
 4038              		.thumb_func
 4039              		.fpu softvfp
 4041              	draw_object:
 4042              	.LFB35:
  55:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** 
  56:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** void draw_object(POBJECT o) {
 4043              		.loc 4 56 0
 4044              		.cfi_startproc
 4045              		@ args = 0, pretend = 0, frame = 16
 4046              		@ frame_needed = 1, uses_anonymous_args = 0
 4047 0a38 80B5     		push	{r7, lr}
 4048              		.cfi_def_cfa_offset 8
 4049              		.cfi_offset 7, -8
 4050              		.cfi_offset 14, -4
 4051 0a3a 84B0     		sub	sp, sp, #16
 4052              		.cfi_def_cfa_offset 24
 4053 0a3c 00AF     		add	r7, sp, #0
 4054              		.cfi_def_cfa_register 7
 4055 0a3e 7860     		str	r0, [r7, #4]
 4056              	.LBB7:
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 4057              		.loc 4 57 0
 4058 0a40 0023     		movs	r3, #0
 4059 0a42 FB60     		str	r3, [r7, #12]
 4060 0a44 1BE0     		b	.L128
 4061              	.L129:
  58:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         pixel(o->posx+o->geo->px[i].x,o->posy+o->geo->px[i].y);
 4062              		.loc 4 58 0 discriminator 3
 4063 0a46 7B68     		ldr	r3, [r7, #4]
 4064 0a48 DA68     		ldr	r2, [r3, #12]
 4065 0a4a 7B68     		ldr	r3, [r7, #4]
 4066 0a4c 1968     		ldr	r1, [r3]
 4067 0a4e FB68     		ldr	r3, [r7, #12]
 4068 0a50 0433     		adds	r3, r3, #4
 4069 0a52 5B00     		lsls	r3, r3, #1
 4070 0a54 CB18     		adds	r3, r1, r3
 4071 0a56 0433     		adds	r3, r3, #4
 4072 0a58 1B78     		ldrb	r3, [r3]
 4073 0a5a D018     		adds	r0, r2, r3
 4074 0a5c 7B68     		ldr	r3, [r7, #4]
 4075 0a5e 1A69     		ldr	r2, [r3, #16]
 4076 0a60 7B68     		ldr	r3, [r7, #4]
 4077 0a62 1968     		ldr	r1, [r3]
 4078 0a64 FB68     		ldr	r3, [r7, #12]
 4079 0a66 0433     		adds	r3, r3, #4
 4080 0a68 5B00     		lsls	r3, r3, #1
 4081 0a6a CB18     		adds	r3, r1, r3
 4082 0a6c 0533     		adds	r3, r3, #5
 4083 0a6e 1B78     		ldrb	r3, [r3]
 4084 0a70 D318     		adds	r3, r2, r3
 4085 0a72 1900     		movs	r1, r3
 4086 0a74 FFF7FEFF 		bl	pixel
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 4087              		.loc 4 57 0 discriminator 3
 4088 0a78 FB68     		ldr	r3, [r7, #12]
 4089 0a7a 0133     		adds	r3, r3, #1
 4090 0a7c FB60     		str	r3, [r7, #12]
 4091              	.L128:
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 4092              		.loc 4 57 0 is_stmt 0 discriminator 1
 4093 0a7e 7B68     		ldr	r3, [r7, #4]
 4094 0a80 1B68     		ldr	r3, [r3]
 4095 0a82 1B68     		ldr	r3, [r3]
 4096 0a84 FA68     		ldr	r2, [r7, #12]
 4097 0a86 9A42     		cmp	r2, r3
 4098 0a88 DDDB     		blt	.L129
 4099              	.LBE7:
  59:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     }
  60:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** }
 4100              		.loc 4 60 0 is_stmt 1
 4101 0a8a C046     		nop
 4102 0a8c BD46     		mov	sp, r7
 4103 0a8e 04B0     		add	sp, sp, #16
 4104              		@ sp needed
 4105 0a90 80BD     		pop	{r7, pc}
 4106              		.cfi_endproc
 4107              	.LFE35:
 4109              		.align	1
 4110              		.global	move_object
 4111              		.syntax unified
 4112              		.code	16
 4113              		.thumb_func
 4114              		.fpu softvfp
 4116              	move_object:
 4117              	.LFB36:
  61:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** 
  62:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** void move_object(POBJECT o){
 4118              		.loc 4 62 0
 4119              		.cfi_startproc
 4120              		@ args = 0, pretend = 0, frame = 8
 4121              		@ frame_needed = 1, uses_anonymous_args = 0
 4122 0a92 80B5     		push	{r7, lr}
 4123              		.cfi_def_cfa_offset 8
 4124              		.cfi_offset 7, -8
 4125              		.cfi_offset 14, -4
 4126 0a94 82B0     		sub	sp, sp, #8
 4127              		.cfi_def_cfa_offset 16
 4128 0a96 00AF     		add	r7, sp, #0
 4129              		.cfi_def_cfa_register 7
 4130 0a98 7860     		str	r0, [r7, #4]
  63:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     clear_object(o);
 4131              		.loc 4 63 0
 4132 0a9a 7B68     		ldr	r3, [r7, #4]
 4133 0a9c 1800     		movs	r0, r3
 4134 0a9e FFF7FEFF 		bl	clear_object
  64:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     o->posx = o->posx+o->dirx;
 4135              		.loc 4 64 0
 4136 0aa2 7B68     		ldr	r3, [r7, #4]
 4137 0aa4 DA68     		ldr	r2, [r3, #12]
 4138 0aa6 7B68     		ldr	r3, [r7, #4]
 4139 0aa8 5B68     		ldr	r3, [r3, #4]
 4140 0aaa D218     		adds	r2, r2, r3
 4141 0aac 7B68     		ldr	r3, [r7, #4]
 4142 0aae DA60     		str	r2, [r3, #12]
  65:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     o->posy = o->posy+o->diry;
 4143              		.loc 4 65 0
 4144 0ab0 7B68     		ldr	r3, [r7, #4]
 4145 0ab2 1A69     		ldr	r2, [r3, #16]
 4146 0ab4 7B68     		ldr	r3, [r7, #4]
 4147 0ab6 9B68     		ldr	r3, [r3, #8]
 4148 0ab8 D218     		adds	r2, r2, r3
 4149 0aba 7B68     		ldr	r3, [r7, #4]
 4150 0abc 1A61     		str	r2, [r3, #16]
  66:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     if (o->posx < 1){
 4151              		.loc 4 66 0
 4152 0abe 7B68     		ldr	r3, [r7, #4]
 4153 0ac0 DB68     		ldr	r3, [r3, #12]
 4154 0ac2 002B     		cmp	r3, #0
 4155 0ac4 07DC     		bgt	.L131
  67:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->dirx *= -1;
 4156              		.loc 4 67 0
 4157 0ac6 7B68     		ldr	r3, [r7, #4]
 4158 0ac8 5B68     		ldr	r3, [r3, #4]
 4159 0aca 5A42     		rsbs	r2, r3, #0
 4160 0acc 7B68     		ldr	r3, [r7, #4]
 4161 0ace 5A60     		str	r2, [r3, #4]
  68:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->posx = 1;
 4162              		.loc 4 68 0
 4163 0ad0 7B68     		ldr	r3, [r7, #4]
 4164 0ad2 0122     		movs	r2, #1
 4165 0ad4 DA60     		str	r2, [r3, #12]
 4166              	.L131:
  69:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     }
  70:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     if (o->posx + o->geo->sizex > 128){
 4167              		.loc 4 70 0
 4168 0ad6 7B68     		ldr	r3, [r7, #4]
 4169 0ad8 DA68     		ldr	r2, [r3, #12]
 4170 0ada 7B68     		ldr	r3, [r7, #4]
 4171 0adc 1B68     		ldr	r3, [r3]
 4172 0ade 5B68     		ldr	r3, [r3, #4]
 4173 0ae0 D318     		adds	r3, r2, r3
 4174 0ae2 802B     		cmp	r3, #128
 4175 0ae4 0BDD     		ble	.L132
  71:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->dirx *= -1;
 4176              		.loc 4 71 0
 4177 0ae6 7B68     		ldr	r3, [r7, #4]
 4178 0ae8 5B68     		ldr	r3, [r3, #4]
 4179 0aea 5A42     		rsbs	r2, r3, #0
 4180 0aec 7B68     		ldr	r3, [r7, #4]
 4181 0aee 5A60     		str	r2, [r3, #4]
  72:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->posx = 128 - o->geo->sizex;
 4182              		.loc 4 72 0
 4183 0af0 7B68     		ldr	r3, [r7, #4]
 4184 0af2 1B68     		ldr	r3, [r3]
 4185 0af4 5B68     		ldr	r3, [r3, #4]
 4186 0af6 8022     		movs	r2, #128
 4187 0af8 D21A     		subs	r2, r2, r3
 4188 0afa 7B68     		ldr	r3, [r7, #4]
 4189 0afc DA60     		str	r2, [r3, #12]
 4190              	.L132:
  73:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     }
  74:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     
  75:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     if (o->posy < 1){
 4191              		.loc 4 75 0
 4192 0afe 7B68     		ldr	r3, [r7, #4]
 4193 0b00 1B69     		ldr	r3, [r3, #16]
 4194 0b02 002B     		cmp	r3, #0
 4195 0b04 07DC     		bgt	.L133
  76:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->diry *= -1;
 4196              		.loc 4 76 0
 4197 0b06 7B68     		ldr	r3, [r7, #4]
 4198 0b08 9B68     		ldr	r3, [r3, #8]
 4199 0b0a 5A42     		rsbs	r2, r3, #0
 4200 0b0c 7B68     		ldr	r3, [r7, #4]
 4201 0b0e 9A60     		str	r2, [r3, #8]
  77:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->posy = 1;
 4202              		.loc 4 77 0
 4203 0b10 7B68     		ldr	r3, [r7, #4]
 4204 0b12 0122     		movs	r2, #1
 4205 0b14 1A61     		str	r2, [r3, #16]
 4206              	.L133:
  78:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     }
  79:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     if (o->posy + o->geo->sizey > 64){
 4207              		.loc 4 79 0
 4208 0b16 7B68     		ldr	r3, [r7, #4]
 4209 0b18 1A69     		ldr	r2, [r3, #16]
 4210 0b1a 7B68     		ldr	r3, [r7, #4]
 4211 0b1c 1B68     		ldr	r3, [r3]
 4212 0b1e 9B68     		ldr	r3, [r3, #8]
 4213 0b20 D318     		adds	r3, r2, r3
 4214 0b22 402B     		cmp	r3, #64
 4215 0b24 0BDD     		ble	.L134
  80:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->diry *= -1;
 4216              		.loc 4 80 0
 4217 0b26 7B68     		ldr	r3, [r7, #4]
 4218 0b28 9B68     		ldr	r3, [r3, #8]
 4219 0b2a 5A42     		rsbs	r2, r3, #0
 4220 0b2c 7B68     		ldr	r3, [r7, #4]
 4221 0b2e 9A60     		str	r2, [r3, #8]
  81:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         o->posy = 64 - o->geo->sizey;
 4222              		.loc 4 81 0
 4223 0b30 7B68     		ldr	r3, [r7, #4]
 4224 0b32 1B68     		ldr	r3, [r3]
 4225 0b34 9B68     		ldr	r3, [r3, #8]
 4226 0b36 4022     		movs	r2, #64
 4227 0b38 D21A     		subs	r2, r2, r3
 4228 0b3a 7B68     		ldr	r3, [r7, #4]
 4229 0b3c 1A61     		str	r2, [r3, #16]
 4230              	.L134:
  82:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     }
  83:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     draw_object(o);
 4231              		.loc 4 83 0
 4232 0b3e 7B68     		ldr	r3, [r7, #4]
 4233 0b40 1800     		movs	r0, r3
 4234 0b42 FFF7FEFF 		bl	draw_object
  84:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** }
 4235              		.loc 4 84 0
 4236 0b46 C046     		nop
 4237 0b48 BD46     		mov	sp, r7
 4238 0b4a 02B0     		add	sp, sp, #8
 4239              		@ sp needed
 4240 0b4c 80BD     		pop	{r7, pc}
 4241              		.cfi_endproc
 4242              	.LFE36:
 4244              		.align	1
 4245              		.global	clear_object
 4246              		.syntax unified
 4247              		.code	16
 4248              		.thumb_func
 4249              		.fpu softvfp
 4251              	clear_object:
 4252              	.LFB37:
  85:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** 
  86:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** void clear_object(POBJECT o){
 4253              		.loc 4 86 0
 4254              		.cfi_startproc
 4255              		@ args = 0, pretend = 0, frame = 16
 4256              		@ frame_needed = 1, uses_anonymous_args = 0
 4257 0b4e 80B5     		push	{r7, lr}
 4258              		.cfi_def_cfa_offset 8
 4259              		.cfi_offset 7, -8
 4260              		.cfi_offset 14, -4
 4261 0b50 84B0     		sub	sp, sp, #16
 4262              		.cfi_def_cfa_offset 24
 4263 0b52 00AF     		add	r7, sp, #0
 4264              		.cfi_def_cfa_register 7
 4265 0b54 7860     		str	r0, [r7, #4]
 4266              	.LBB8:
  87:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 4267              		.loc 4 87 0
 4268 0b56 0023     		movs	r3, #0
 4269 0b58 FB60     		str	r3, [r7, #12]
 4270 0b5a 1BE0     		b	.L136
 4271              	.L137:
  88:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****         pixel(o->posx+o->geo->px[i].x,o->posy+o->geo->px[i].y);
 4272              		.loc 4 88 0 discriminator 3
 4273 0b5c 7B68     		ldr	r3, [r7, #4]
 4274 0b5e DA68     		ldr	r2, [r3, #12]
 4275 0b60 7B68     		ldr	r3, [r7, #4]
 4276 0b62 1968     		ldr	r1, [r3]
 4277 0b64 FB68     		ldr	r3, [r7, #12]
 4278 0b66 0433     		adds	r3, r3, #4
 4279 0b68 5B00     		lsls	r3, r3, #1
 4280 0b6a CB18     		adds	r3, r1, r3
 4281 0b6c 0433     		adds	r3, r3, #4
 4282 0b6e 1B78     		ldrb	r3, [r3]
 4283 0b70 D018     		adds	r0, r2, r3
 4284 0b72 7B68     		ldr	r3, [r7, #4]
 4285 0b74 1A69     		ldr	r2, [r3, #16]
 4286 0b76 7B68     		ldr	r3, [r7, #4]
 4287 0b78 1968     		ldr	r1, [r3]
 4288 0b7a FB68     		ldr	r3, [r7, #12]
 4289 0b7c 0433     		adds	r3, r3, #4
 4290 0b7e 5B00     		lsls	r3, r3, #1
 4291 0b80 CB18     		adds	r3, r1, r3
 4292 0b82 0533     		adds	r3, r3, #5
 4293 0b84 1B78     		ldrb	r3, [r3]
 4294 0b86 D318     		adds	r3, r2, r3
 4295 0b88 1900     		movs	r1, r3
 4296 0b8a FFF7FEFF 		bl	pixel
  87:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 4297              		.loc 4 87 0 discriminator 3
 4298 0b8e FB68     		ldr	r3, [r7, #12]
 4299 0b90 0133     		adds	r3, r3, #1
 4300 0b92 FB60     		str	r3, [r7, #12]
 4301              	.L136:
  87:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 4302              		.loc 4 87 0 is_stmt 0 discriminator 1
 4303 0b94 7B68     		ldr	r3, [r7, #4]
 4304 0b96 1B68     		ldr	r3, [r3]
 4305 0b98 1B68     		ldr	r3, [r3]
 4306 0b9a FA68     		ldr	r2, [r7, #12]
 4307 0b9c 9A42     		cmp	r2, r3
 4308 0b9e DDDB     		blt	.L137
 4309              	.LBE8:
  89:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h ****     }
  90:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\geometry.h **** }
 4310              		.loc 4 90 0 is_stmt 1
 4311 0ba0 C046     		nop
 4312 0ba2 BD46     		mov	sp, r7
 4313 0ba4 04B0     		add	sp, sp, #16
 4314              		@ sp needed
 4315 0ba6 80BD     		pop	{r7, pc}
 4316              		.cfi_endproc
 4317              	.LFE37:
 4319              		.align	1
 4320              		.global	activateRow
 4321              		.syntax unified
 4322              		.code	16
 4323              		.thumb_func
 4324              		.fpu softvfp
 4326              	activateRow:
 4327              	.LFB38:
 4328              		.file 5 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/keypad.h"
   1:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** #ifndef KEYPAD_H
   2:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** #define KEYPAD_H
   3:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** #include "gpio.h"
   4:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** 
   5:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** void activateRow(unsigned int row ){
 4329              		.loc 5 5 0
 4330              		.cfi_startproc
 4331              		@ args = 0, pretend = 0, frame = 8
 4332              		@ frame_needed = 1, uses_anonymous_args = 0
 4333 0ba8 80B5     		push	{r7, lr}
 4334              		.cfi_def_cfa_offset 8
 4335              		.cfi_offset 7, -8
 4336              		.cfi_offset 14, -4
 4337 0baa 82B0     		sub	sp, sp, #8
 4338              		.cfi_def_cfa_offset 16
 4339 0bac 00AF     		add	r7, sp, #0
 4340              		.cfi_def_cfa_register 7
 4341 0bae 7860     		str	r0, [r7, #4]
   6:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** /* Aktivera angiven rad hos tangentbordet, eller
   7:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** * deaktivera samtliga */
   8:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     switch( row ){
 4342              		.loc 5 8 0
 4343 0bb0 7B68     		ldr	r3, [r7, #4]
 4344 0bb2 042B     		cmp	r3, #4
 4345 0bb4 19D8     		bhi	.L146
 4346 0bb6 7B68     		ldr	r3, [r7, #4]
 4347 0bb8 9A00     		lsls	r2, r3, #2
 4348 0bba 0E4B     		ldr	r3, .L147
 4349 0bbc D318     		adds	r3, r2, r3
 4350 0bbe 1B68     		ldr	r3, [r3]
 4351 0bc0 9F46     		mov	pc, r3
 4352              		.section	.rodata
 4353              		.align	2
 4354              	.L141:
 4355 0000 E20B0000 		.word	.L140
 4356 0004 C20B0000 		.word	.L142
 4357 0008 CA0B0000 		.word	.L143
 4358 000c D20B0000 		.word	.L144
 4359 0010 DA0B0000 		.word	.L145
 4360              		.text
 4361              	.L142:
   9:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         case 1: GPIO_D.odrHigh = 0x10; break;
 4362              		.loc 5 9 0
 4363 0bc2 0D4B     		ldr	r3, .L147+4
 4364 0bc4 1022     		movs	r2, #16
 4365 0bc6 5A75     		strb	r2, [r3, #21]
 4366 0bc8 0FE0     		b	.L139
 4367              	.L143:
  10:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         case 2: GPIO_D.odrHigh = 0x20; break;
 4368              		.loc 5 10 0
 4369 0bca 0B4B     		ldr	r3, .L147+4
 4370 0bcc 2022     		movs	r2, #32
 4371 0bce 5A75     		strb	r2, [r3, #21]
 4372 0bd0 0BE0     		b	.L139
 4373              	.L144:
  11:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         case 3: GPIO_D.odrHigh = 0x40; break;
 4374              		.loc 5 11 0
 4375 0bd2 094B     		ldr	r3, .L147+4
 4376 0bd4 4022     		movs	r2, #64
 4377 0bd6 5A75     		strb	r2, [r3, #21]
 4378 0bd8 07E0     		b	.L139
 4379              	.L145:
  12:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         case 4: GPIO_D.odrHigh = 0x80; break;
 4380              		.loc 5 12 0
 4381 0bda 074B     		ldr	r3, .L147+4
 4382 0bdc 8022     		movs	r2, #128
 4383 0bde 5A75     		strb	r2, [r3, #21]
 4384 0be0 03E0     		b	.L139
 4385              	.L140:
  13:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         case 0: GPIO_D.odrHigh = 0x00; break;
 4386              		.loc 5 13 0
 4387 0be2 054B     		ldr	r3, .L147+4
 4388 0be4 0022     		movs	r2, #0
 4389 0be6 5A75     		strb	r2, [r3, #21]
 4390 0be8 C046     		nop
 4391              	.L139:
 4392              	.L146:
  14:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     }
  15:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** }
 4393              		.loc 5 15 0
 4394 0bea C046     		nop
 4395 0bec BD46     		mov	sp, r7
 4396 0bee 02B0     		add	sp, sp, #8
 4397              		@ sp needed
 4398 0bf0 80BD     		pop	{r7, pc}
 4399              	.L148:
 4400 0bf2 C046     		.align	2
 4401              	.L147:
 4402 0bf4 00000000 		.word	.L141
 4403 0bf8 000C0240 		.word	1073875968
 4404              		.cfi_endproc
 4405              	.LFE38:
 4407              		.align	1
 4408              		.global	readColumn
 4409              		.syntax unified
 4410              		.code	16
 4411              		.thumb_func
 4412              		.fpu softvfp
 4414              	readColumn:
 4415              	.LFB39:
  16:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** int readColumn(void) {
 4416              		.loc 5 16 0
 4417              		.cfi_startproc
 4418              		@ args = 0, pretend = 0, frame = 8
 4419              		@ frame_needed = 1, uses_anonymous_args = 0
 4420 0bfc 80B5     		push	{r7, lr}
 4421              		.cfi_def_cfa_offset 8
 4422              		.cfi_offset 7, -8
 4423              		.cfi_offset 14, -4
 4424 0bfe 82B0     		sub	sp, sp, #8
 4425              		.cfi_def_cfa_offset 16
 4426 0c00 00AF     		add	r7, sp, #0
 4427              		.cfi_def_cfa_register 7
  17:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     /* Om någon tangent (i aktiverad rad)
  18:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     * är nedtryckt, returnera dess kolumnnummer,
  19:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     * annars, returnera 0 */
  20:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     unsigned char c;
  21:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     c = GPIO_D.idrHigh;
 4428              		.loc 5 21 0
 4429 0c02 124A     		ldr	r2, .L155
 4430 0c04 FB1D     		adds	r3, r7, #7
 4431 0c06 527C     		ldrb	r2, [r2, #17]
 4432 0c08 1A70     		strb	r2, [r3]
  22:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     if ( c & 0x8 ) return 4;
 4433              		.loc 5 22 0
 4434 0c0a FB1D     		adds	r3, r7, #7
 4435 0c0c 1B78     		ldrb	r3, [r3]
 4436 0c0e 0822     		movs	r2, #8
 4437 0c10 1340     		ands	r3, r2
 4438 0c12 01D0     		beq	.L150
 4439              		.loc 5 22 0 is_stmt 0 discriminator 1
 4440 0c14 0423     		movs	r3, #4
 4441 0c16 15E0     		b	.L151
 4442              	.L150:
  23:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     if ( c & 0x4 ) return 3;
 4443              		.loc 5 23 0 is_stmt 1
 4444 0c18 FB1D     		adds	r3, r7, #7
 4445 0c1a 1B78     		ldrb	r3, [r3]
 4446 0c1c 0422     		movs	r2, #4
 4447 0c1e 1340     		ands	r3, r2
 4448 0c20 01D0     		beq	.L152
 4449              		.loc 5 23 0 is_stmt 0 discriminator 1
 4450 0c22 0323     		movs	r3, #3
 4451 0c24 0EE0     		b	.L151
 4452              	.L152:
  24:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     if ( c & 0x2 ) return 2;
 4453              		.loc 5 24 0 is_stmt 1
 4454 0c26 FB1D     		adds	r3, r7, #7
 4455 0c28 1B78     		ldrb	r3, [r3]
 4456 0c2a 0222     		movs	r2, #2
 4457 0c2c 1340     		ands	r3, r2
 4458 0c2e 01D0     		beq	.L153
 4459              		.loc 5 24 0 is_stmt 0 discriminator 1
 4460 0c30 0223     		movs	r3, #2
 4461 0c32 07E0     		b	.L151
 4462              	.L153:
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     if ( c & 0x1 ) return 1;
 4463              		.loc 5 25 0 is_stmt 1
 4464 0c34 FB1D     		adds	r3, r7, #7
 4465 0c36 1B78     		ldrb	r3, [r3]
 4466 0c38 0122     		movs	r2, #1
 4467 0c3a 1340     		ands	r3, r2
 4468 0c3c 01D0     		beq	.L154
 4469              		.loc 5 25 0 is_stmt 0 discriminator 1
 4470 0c3e 0123     		movs	r3, #1
 4471 0c40 00E0     		b	.L151
 4472              	.L154:
  26:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     return 0;
 4473              		.loc 5 26 0 is_stmt 1
 4474 0c42 0023     		movs	r3, #0
 4475              	.L151:
  27:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** }
 4476              		.loc 5 27 0
 4477 0c44 1800     		movs	r0, r3
 4478 0c46 BD46     		mov	sp, r7
 4479 0c48 02B0     		add	sp, sp, #8
 4480              		@ sp needed
 4481 0c4a 80BD     		pop	{r7, pc}
 4482              	.L156:
 4483              		.align	2
 4484              	.L155:
 4485 0c4c 000C0240 		.word	1073875968
 4486              		.cfi_endproc
 4487              	.LFE39:
 4489              		.section	.rodata
 4490              		.align	2
 4491              	.LC0:
 4492 0014 01       		.byte	1
 4493 0015 02       		.byte	2
 4494 0016 03       		.byte	3
 4495 0017 0A       		.byte	10
 4496 0018 04       		.byte	4
 4497 0019 05       		.byte	5
 4498 001a 06       		.byte	6
 4499 001b 0B       		.byte	11
 4500 001c 07       		.byte	7
 4501 001d 08       		.byte	8
 4502 001e 09       		.byte	9
 4503 001f 0C       		.byte	12
 4504 0020 0E       		.byte	14
 4505 0021 00       		.byte	0
 4506 0022 0F       		.byte	15
 4507 0023 0D       		.byte	13
 4508              		.text
 4509              		.align	1
 4510              		.global	keyb
 4511              		.syntax unified
 4512              		.code	16
 4513              		.thumb_func
 4514              		.fpu softvfp
 4516              	keyb:
 4517              	.LFB40:
  28:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** 
  29:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** unsigned char keyb( void ) {
 4518              		.loc 5 29 0
 4519              		.cfi_startproc
 4520              		@ args = 0, pretend = 0, frame = 24
 4521              		@ frame_needed = 1, uses_anonymous_args = 0
 4522 0c50 90B5     		push	{r4, r7, lr}
 4523              		.cfi_def_cfa_offset 12
 4524              		.cfi_offset 4, -12
 4525              		.cfi_offset 7, -8
 4526              		.cfi_offset 14, -4
 4527 0c52 87B0     		sub	sp, sp, #28
 4528              		.cfi_def_cfa_offset 40
 4529 0c54 00AF     		add	r7, sp, #0
 4530              		.cfi_def_cfa_register 7
  30:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     unsigned char key[]={1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
 4531              		.loc 5 30 0
 4532 0c56 3B00     		movs	r3, r7
 4533 0c58 164A     		ldr	r2, .L163
 4534 0c5a 13CA     		ldmia	r2!, {r0, r1, r4}
 4535 0c5c 13C3     		stmia	r3!, {r0, r1, r4}
 4536 0c5e 1268     		ldr	r2, [r2]
 4537 0c60 1A60     		str	r2, [r3]
  31:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     int row, col;
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     for (row=1; row <=4 ; row++ ) {
 4538              		.loc 5 32 0
 4539 0c62 0123     		movs	r3, #1
 4540 0c64 7B61     		str	r3, [r7, #20]
 4541 0c66 19E0     		b	.L158
 4542              	.L161:
  33:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         activateRow(row);
 4543              		.loc 5 33 0
 4544 0c68 7B69     		ldr	r3, [r7, #20]
 4545 0c6a 1800     		movs	r0, r3
 4546 0c6c FFF7FEFF 		bl	activateRow
  34:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         if(col = readColumn()) {
 4547              		.loc 5 34 0
 4548 0c70 FFF7FEFF 		bl	readColumn
 4549 0c74 0300     		movs	r3, r0
 4550 0c76 3B61     		str	r3, [r7, #16]
 4551 0c78 3B69     		ldr	r3, [r7, #16]
 4552 0c7a 002B     		cmp	r3, #0
 4553 0c7c 0BD0     		beq	.L159
  35:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****             activateRow(0);
 4554              		.loc 5 35 0
 4555 0c7e 0020     		movs	r0, #0
 4556 0c80 FFF7FEFF 		bl	activateRow
  36:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****             return key [4*(row-1)+(col-1)];
 4557              		.loc 5 36 0
 4558 0c84 7B69     		ldr	r3, [r7, #20]
 4559 0c86 013B     		subs	r3, r3, #1
 4560 0c88 9A00     		lsls	r2, r3, #2
 4561 0c8a 3B69     		ldr	r3, [r7, #16]
 4562 0c8c 013B     		subs	r3, r3, #1
 4563 0c8e D318     		adds	r3, r2, r3
 4564 0c90 3A00     		movs	r2, r7
 4565 0c92 D35C     		ldrb	r3, [r2, r3]
 4566 0c94 09E0     		b	.L162
 4567              	.L159:
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         activateRow(row);
 4568              		.loc 5 32 0 discriminator 2
 4569 0c96 7B69     		ldr	r3, [r7, #20]
 4570 0c98 0133     		adds	r3, r3, #1
 4571 0c9a 7B61     		str	r3, [r7, #20]
 4572              	.L158:
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         activateRow(row);
 4573              		.loc 5 32 0 is_stmt 0 discriminator 1
 4574 0c9c 7B69     		ldr	r3, [r7, #20]
 4575 0c9e 042B     		cmp	r3, #4
 4576 0ca0 E2DD     		ble	.L161
  37:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****         }
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     }
  39:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     activateRow(0);
 4577              		.loc 5 39 0 is_stmt 1
 4578 0ca2 0020     		movs	r0, #0
 4579 0ca4 FFF7FEFF 		bl	activateRow
  40:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h ****     return 0xFF;
 4580              		.loc 5 40 0
 4581 0ca8 FF23     		movs	r3, #255
 4582              	.L162:
  41:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\keypad.h **** }
 4583              		.loc 5 41 0 discriminator 1
 4584 0caa 1800     		movs	r0, r3
 4585 0cac BD46     		mov	sp, r7
 4586 0cae 07B0     		add	sp, sp, #28
 4587              		@ sp needed
 4588 0cb0 90BD     		pop	{r4, r7, pc}
 4589              	.L164:
 4590 0cb2 C046     		.align	2
 4591              	.L163:
 4592 0cb4 14000000 		.word	.LC0
 4593              		.cfi_endproc
 4594              	.LFE40:
 4596              		.data
 4597              		.align	2
 4600              	victory_bits:
 4601 06ac 00       		.byte	0
 4602 06ad 00       		.byte	0
 4603 06ae 00       		.byte	0
 4604 06af 00       		.byte	0
 4605 06b0 00       		.byte	0
 4606 06b1 00       		.byte	0
 4607 06b2 00       		.byte	0
 4608 06b3 00       		.byte	0
 4609 06b4 8E       		.byte	-114
 4610 06b5 F3       		.byte	-13
 4611 06b6 C1       		.byte	-63
 4612 06b7 E5       		.byte	-27
 4613 06b8 0F       		.byte	15
 4614 06b9 87       		.byte	-121
 4615 06ba 0F       		.byte	15
 4616 06bb 63       		.byte	99
 4617 06bc 04       		.byte	4
 4618 06bd 41       		.byte	65
 4619 06be 20       		.byte	32
 4620 06bf 26       		.byte	38
 4621 06c0 89       		.byte	-119
 4622 06c1 08       		.byte	8
 4623 06c2 11       		.byte	17
 4624 06c3 22       		.byte	34
 4625 06c4 8C       		.byte	-116
 4626 06c5 41       		.byte	65
 4627 06c6 10       		.byte	16
 4628 06c7 24       		.byte	36
 4629 06c8 49       		.byte	73
 4630 06c9 10       		.byte	16
 4631 06ca 21       		.byte	33
 4632 06cb 36       		.byte	54
 4633 06cc 88       		.byte	-120
 4634 06cd 40       		.byte	64
 4635 06ce 10       		.byte	16
 4636 06cf 20       		.byte	32
 4637 06d0 49       		.byte	73
 4638 06d1 10       		.byte	16
 4639 06d2 11       		.byte	17
 4640 06d3 1C       		.byte	28
 4641 06d4 D8       		.byte	-40
 4642 06d5 40       		.byte	64
 4643 06d6 10       		.byte	16
 4644 06d7 00       		.byte	0
 4645 06d8 41       		.byte	65
 4646 06d9 10       		.byte	16
 4647 06da 0F       		.byte	15
 4648 06db 08       		.byte	8
 4649 06dc 50       		.byte	80
 4650 06dd 40       		.byte	64
 4651 06de 10       		.byte	16
 4652 06df 00       		.byte	0
 4653 06e0 41       		.byte	65
 4654 06e1 10       		.byte	16
 4655 06e2 19       		.byte	25
 4656 06e3 08       		.byte	8
 4657 06e4 70       		.byte	112
 4658 06e5 40       		.byte	64
 4659 06e6 20       		.byte	32
 4660 06e7 04       		.byte	4
 4661 06e8 81       		.byte	-127
 4662 06e9 08       		.byte	8
 4663 06ea 31       		.byte	49
 4664 06eb 08       		.byte	8
 4665 06ec 20       		.byte	32
 4666 06ed F0       		.byte	-16
 4667 06ee C1       		.byte	-63
 4668 06ef C3       		.byte	-61
 4669 06f0 07       		.byte	7
 4670 06f1 87       		.byte	-121
 4671 06f2 63       		.byte	99
 4672 06f3 3E       		.byte	62
 4673 06f4 00       		.byte	0
 4674 06f5 00       		.byte	0
 4675 06f6 00       		.byte	0
 4676 06f7 00       		.byte	0
 4677 06f8 00       		.byte	0
 4678 06f9 00       		.byte	0
 4679 06fa 00       		.byte	0
 4680 06fb 00       		.byte	0
 4681              		.comm	grid,9,4
 4682              		.comm	gameState,1,1
 4683              		.comm	turn,1,1
 4684              		.comm	gameOver,1,1
 4685              		.comm	winner,4,4
 4686              		.global	circle
 4687              		.align	2
 4690              	circle:
 4691 06fc 14       		.byte	20
 4692 06fd 14       		.byte	20
 4693 06fe 0000     		.space	2
 4694 0700 00040000 		.word	circle_bits
 4695              		.global	cross
 4696              		.align	2
 4699              	cross:
 4700 0704 14       		.byte	20
 4701 0705 14       		.byte	20
 4702 0706 0000     		.space	2
 4703 0708 3C040000 		.word	cross_bits
 4704              		.global	big_circle
 4705              		.align	2
 4708              	big_circle:
 4709 070c 40       		.byte	64
 4710 070d 40       		.byte	64
 4711 070e 0000     		.space	2
 4712 0710 00000000 		.word	big_circle_bits
 4713              		.global	big_cross
 4714              		.align	2
 4717              	big_cross:
 4718 0714 40       		.byte	64
 4719 0715 40       		.byte	64
 4720 0716 0000     		.space	2
 4721 0718 00020000 		.word	big_cross_bits
 4722              		.global	victory
 4723              		.align	2
 4726              	victory:
 4727 071c 40       		.byte	64
 4728 071d 0A       		.byte	10
 4729 071e 0000     		.space	2
 4730 0720 AC060000 		.word	victory_bits
 4731              		.global	draw
 4732              		.align	2
 4735              	draw:
 4736 0724 40       		.byte	64
 4737 0725 40       		.byte	64
 4738 0726 0000     		.space	2
 4739 0728 78040000 		.word	draw_bits
 4740              		.align	2
 4743              	ball:
 4744 072c 00000000 		.word	ball_geometry
 4745 0730 00000000 		.word	0
 4746 0734 00000000 		.word	0
 4747 0738 0A000000 		.word	10
 4748 073c 0A000000 		.word	10
 4749 0740 00000000 		.word	draw_object
 4750 0744 00000000 		.word	move_object
 4751 0748 00000000 		.word	set_object_speed
 4752              		.text
 4753              		.align	1
 4754              		.global	drawgrid
 4755              		.syntax unified
 4756              		.code	16
 4757              		.thumb_func
 4758              		.fpu softvfp
 4760              	drawgrid:
 4761              	.LFB41:
 4762              		.file 6 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/startup.c"
   1:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** /*
   2:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****  * 	startup.c
   3:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****  *
   4:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****  */
   5:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "ascii_display.h"
   6:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "big_circle.xbm"
   7:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "big_cross.xbm"
   8:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "circle.xbm"
   9:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "cross.xbm"
  10:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "delay.h"
  11:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "draw.xbm"
  12:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "geometry.h"
  13:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "gpio.h"
  14:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "graphics.h"
  15:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "keypad.h"
  16:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #include "victory.xbm"
  17:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
  18:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** char grid[9];
  19:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** char gameState;
  20:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** char turn;
  21:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** char gameOver;
  22:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** char* winner;
  23:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** sprite circle = { circle_width, circle_height, circle_bits };
  24:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** sprite cross = { cross_width, cross_height, cross_bits };
  25:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
  26:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** sprite big_circle = { big_circle_width, big_circle_height, big_circle_bits };
  27:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** sprite big_cross = { big_cross_width, big_cross_height, big_cross_bits };
  28:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
  29:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** sprite victory = { victory_width, victory_height, victory_bits };
  30:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** sprite draw = { draw_width, draw_height, draw_bits };
  31:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
  32:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** static OBJECT ball = {
  33:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     &ball_geometry,  // geometry for a ball
  34:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     0, 0,            // move direction (x,y)
  35:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     10, 10,          // position (x,y)
  36:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     draw_object,     // draw method
  37:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     move_object,     // move method
  38:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     set_object_speed // set-speed method
  39:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** };
  40:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
  41:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** void drawgrid(void)
  42:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** {
 4763              		.loc 6 42 0
 4764              		.cfi_startproc
 4765              		@ args = 0, pretend = 0, frame = 8
 4766              		@ frame_needed = 1, uses_anonymous_args = 0
 4767 0cb8 80B5     		push	{r7, lr}
 4768              		.cfi_def_cfa_offset 8
 4769              		.cfi_offset 7, -8
 4770              		.cfi_offset 14, -4
 4771 0cba 82B0     		sub	sp, sp, #8
 4772              		.cfi_def_cfa_offset 16
 4773 0cbc 00AF     		add	r7, sp, #0
 4774              		.cfi_def_cfa_register 7
  43:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     unsigned i;
  44:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     for(i = 0; i < 64; i++) {
 4775              		.loc 6 44 0
 4776 0cbe 0023     		movs	r3, #0
 4777 0cc0 7B60     		str	r3, [r7, #4]
 4778 0cc2 07E0     		b	.L166
 4779              	.L167:
  45:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	pixel(i, 21);
 4780              		.loc 6 45 0 discriminator 3
 4781 0cc4 7B68     		ldr	r3, [r7, #4]
 4782 0cc6 1521     		movs	r1, #21
 4783 0cc8 1800     		movs	r0, r3
 4784 0cca FFF7FEFF 		bl	pixel
  44:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	pixel(i, 21);
 4785              		.loc 6 44 0 discriminator 3
 4786 0cce 7B68     		ldr	r3, [r7, #4]
 4787 0cd0 0133     		adds	r3, r3, #1
 4788 0cd2 7B60     		str	r3, [r7, #4]
 4789              	.L166:
  44:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	pixel(i, 21);
 4790              		.loc 6 44 0 is_stmt 0 discriminator 1
 4791 0cd4 7B68     		ldr	r3, [r7, #4]
 4792 0cd6 3F2B     		cmp	r3, #63
 4793 0cd8 F4D9     		bls	.L167
  46:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     }
  47:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     for(i = 0; i < 64; i++) {
 4794              		.loc 6 47 0 is_stmt 1
 4795 0cda 0023     		movs	r3, #0
 4796 0cdc 7B60     		str	r3, [r7, #4]
 4797 0cde 07E0     		b	.L168
 4798              	.L169:
  48:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	pixel(21, i);
 4799              		.loc 6 48 0 discriminator 3
 4800 0ce0 7B68     		ldr	r3, [r7, #4]
 4801 0ce2 1900     		movs	r1, r3
 4802 0ce4 1520     		movs	r0, #21
 4803 0ce6 FFF7FEFF 		bl	pixel
  47:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	pixel(21, i);
 4804              		.loc 6 47 0 discriminator 3
 4805 0cea 7B68     		ldr	r3, [r7, #4]
 4806 0cec 0133     		adds	r3, r3, #1
 4807 0cee 7B60     		str	r3, [r7, #4]
 4808              	.L168:
  47:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	pixel(21, i);
 4809              		.loc 6 47 0 is_stmt 0 discriminator 1
 4810 0cf0 7B68     		ldr	r3, [r7, #4]
 4811 0cf2 3F2B     		cmp	r3, #63
 4812 0cf4 F4D9     		bls	.L169
  49:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     }
  50:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     for(i = 0; i < 64; i++) {
 4813              		.loc 6 50 0 is_stmt 1
 4814 0cf6 0023     		movs	r3, #0
 4815 0cf8 7B60     		str	r3, [r7, #4]
 4816 0cfa 07E0     		b	.L170
 4817              	.L171:
  51:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	pixel(i, 43);
 4818              		.loc 6 51 0 discriminator 3
 4819 0cfc 7B68     		ldr	r3, [r7, #4]
 4820 0cfe 2B21     		movs	r1, #43
 4821 0d00 1800     		movs	r0, r3
 4822 0d02 FFF7FEFF 		bl	pixel
  50:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	pixel(i, 43);
 4823              		.loc 6 50 0 discriminator 3
 4824 0d06 7B68     		ldr	r3, [r7, #4]
 4825 0d08 0133     		adds	r3, r3, #1
 4826 0d0a 7B60     		str	r3, [r7, #4]
 4827              	.L170:
  50:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	pixel(i, 43);
 4828              		.loc 6 50 0 is_stmt 0 discriminator 1
 4829 0d0c 7B68     		ldr	r3, [r7, #4]
 4830 0d0e 3F2B     		cmp	r3, #63
 4831 0d10 F4D9     		bls	.L171
  52:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     }
  53:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     for(i = 0; i < 64; i++) {
 4832              		.loc 6 53 0 is_stmt 1
 4833 0d12 0023     		movs	r3, #0
 4834 0d14 7B60     		str	r3, [r7, #4]
 4835 0d16 07E0     		b	.L172
 4836              	.L173:
  54:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	pixel(43, i);
 4837              		.loc 6 54 0 discriminator 3
 4838 0d18 7B68     		ldr	r3, [r7, #4]
 4839 0d1a 1900     		movs	r1, r3
 4840 0d1c 2B20     		movs	r0, #43
 4841 0d1e FFF7FEFF 		bl	pixel
  53:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	pixel(43, i);
 4842              		.loc 6 53 0 discriminator 3
 4843 0d22 7B68     		ldr	r3, [r7, #4]
 4844 0d24 0133     		adds	r3, r3, #1
 4845 0d26 7B60     		str	r3, [r7, #4]
 4846              	.L172:
  53:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	pixel(43, i);
 4847              		.loc 6 53 0 is_stmt 0 discriminator 1
 4848 0d28 7B68     		ldr	r3, [r7, #4]
 4849 0d2a 3F2B     		cmp	r3, #63
 4850 0d2c F4D9     		bls	.L173
 4851              	.LBB9:
  55:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     }
  56:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     for(char i = 0; i < 9; i++) {
 4852              		.loc 6 57 0 is_stmt 1
 4853 0d2e FB1C     		adds	r3, r7, #3
 4854 0d30 0022     		movs	r2, #0
 4855 0d32 1A70     		strb	r2, [r3]
 4856 0d34 1DE0     		b	.L174
 4857              	.L177:
  58:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	if(grid[i] == 1) {
 4858              		.loc 6 58 0
 4859 0d36 FB1C     		adds	r3, r7, #3
 4860 0d38 1B78     		ldrb	r3, [r3]
 4861 0d3a 124A     		ldr	r2, .L178
 4862 0d3c D35C     		ldrb	r3, [r2, r3]
 4863 0d3e 012B     		cmp	r3, #1
 4864 0d40 06D1     		bne	.L175
 4865              	.LBB10:
  59:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    draw_in_grid(1, i);
 4866              		.loc 6 59 0
 4867 0d42 FB1C     		adds	r3, r7, #3
 4868 0d44 1B78     		ldrb	r3, [r3]
 4869 0d46 1900     		movs	r1, r3
 4870 0d48 0120     		movs	r0, #1
 4871 0d4a FFF7FEFF 		bl	draw_in_grid
 4872              	.LBE10:
 4873 0d4e 0BE0     		b	.L176
 4874              	.L175:
  60:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	} else if(grid[i] == 2) {
 4875              		.loc 6 60 0
 4876 0d50 FB1C     		adds	r3, r7, #3
 4877 0d52 1B78     		ldrb	r3, [r3]
 4878 0d54 0B4A     		ldr	r2, .L178
 4879 0d56 D35C     		ldrb	r3, [r2, r3]
 4880 0d58 022B     		cmp	r3, #2
 4881 0d5a 05D1     		bne	.L176
 4882              	.LBB11:
  61:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    draw_in_grid(2, i);
 4883              		.loc 6 61 0
 4884 0d5c FB1C     		adds	r3, r7, #3
 4885 0d5e 1B78     		ldrb	r3, [r3]
 4886 0d60 1900     		movs	r1, r3
 4887 0d62 0220     		movs	r0, #2
 4888 0d64 FFF7FEFF 		bl	draw_in_grid
 4889              	.L176:
 4890              	.LBE11:
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	if(grid[i] == 1) {
 4891              		.loc 6 57 0 discriminator 2
 4892 0d68 FB1C     		adds	r3, r7, #3
 4893 0d6a 1A78     		ldrb	r2, [r3]
 4894 0d6c FB1C     		adds	r3, r7, #3
 4895 0d6e 0132     		adds	r2, r2, #1
 4896 0d70 1A70     		strb	r2, [r3]
 4897              	.L174:
  57:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	if(grid[i] == 1) {
 4898              		.loc 6 57 0 is_stmt 0 discriminator 1
 4899 0d72 FB1C     		adds	r3, r7, #3
 4900 0d74 1B78     		ldrb	r3, [r3]
 4901 0d76 082B     		cmp	r3, #8
 4902 0d78 DDD9     		bls	.L177
 4903              	.LBE9:
  62:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	}
  63:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     }
  64:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** }
 4904              		.loc 6 64 0 is_stmt 1
 4905 0d7a C046     		nop
 4906 0d7c BD46     		mov	sp, r7
 4907 0d7e 02B0     		add	sp, sp, #8
 4908              		@ sp needed
 4909 0d80 80BD     		pop	{r7, pc}
 4910              	.L179:
 4911 0d82 C046     		.align	2
 4912              	.L178:
 4913 0d84 00000000 		.word	grid
 4914              		.cfi_endproc
 4915              	.LFE41:
 4917              		.align	1
 4918              		.global	draw_in_grid
 4919              		.syntax unified
 4920              		.code	16
 4921              		.thumb_func
 4922              		.fpu softvfp
 4924              	draw_in_grid:
 4925              	.LFB42:
  65:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** void draw_in_grid(char player, char i)
  66:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** {
 4926              		.loc 6 66 0
 4927              		.cfi_startproc
 4928              		@ args = 0, pretend = 0, frame = 16
 4929              		@ frame_needed = 1, uses_anonymous_args = 0
 4930 0d88 80B5     		push	{r7, lr}
 4931              		.cfi_def_cfa_offset 8
 4932              		.cfi_offset 7, -8
 4933              		.cfi_offset 14, -4
 4934 0d8a 84B0     		sub	sp, sp, #16
 4935              		.cfi_def_cfa_offset 24
 4936 0d8c 00AF     		add	r7, sp, #0
 4937              		.cfi_def_cfa_register 7
 4938 0d8e 0200     		movs	r2, r0
 4939 0d90 FB1D     		adds	r3, r7, #7
 4940 0d92 1A70     		strb	r2, [r3]
 4941 0d94 BB1D     		adds	r3, r7, #6
 4942 0d96 0A1C     		adds	r2, r1, #0
 4943 0d98 1A70     		strb	r2, [r3]
  67:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     char* s;
  68:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     if(player == 1) {
 4944              		.loc 6 68 0
 4945 0d9a FB1D     		adds	r3, r7, #7
 4946 0d9c 1B78     		ldrb	r3, [r3]
 4947 0d9e 012B     		cmp	r3, #1
 4948 0da0 02D1     		bne	.L181
  69:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	s = &cross;
 4949              		.loc 6 69 0
 4950 0da2 284B     		ldr	r3, .L195
 4951 0da4 FB60     		str	r3, [r7, #12]
 4952 0da6 01E0     		b	.L182
 4953              	.L181:
  70:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     } else {
  71:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	s = &circle;
 4954              		.loc 6 71 0
 4955 0da8 274B     		ldr	r3, .L195+4
 4956 0daa FB60     		str	r3, [r7, #12]
 4957              	.L182:
  72:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     }
  73:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     switch(i) {
 4958              		.loc 6 73 0
 4959 0dac BB1D     		adds	r3, r7, #6
 4960 0dae 1B78     		ldrb	r3, [r3]
 4961 0db0 082B     		cmp	r3, #8
 4962 0db2 43D8     		bhi	.L194
 4963 0db4 9A00     		lsls	r2, r3, #2
 4964 0db6 254B     		ldr	r3, .L195+8
 4965 0db8 D318     		adds	r3, r2, r3
 4966 0dba 1B68     		ldr	r3, [r3]
 4967 0dbc 9F46     		mov	pc, r3
 4968              		.section	.rodata
 4969              		.align	2
 4970              	.L185:
 4971 0024 BE0D0000 		.word	.L184
 4972 0028 CC0D0000 		.word	.L186
 4973 002c DA0D0000 		.word	.L187
 4974 0030 E80D0000 		.word	.L188
 4975 0034 F60D0000 		.word	.L189
 4976 0038 040E0000 		.word	.L190
 4977 003c 120E0000 		.word	.L191
 4978 0040 200E0000 		.word	.L192
 4979 0044 2E0E0000 		.word	.L193
 4980              		.text
 4981              	.L184:
  74:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     case 0:
  75:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	draw_sprite(s, 1, 1);
 4982              		.loc 6 75 0
 4983 0dbe FB68     		ldr	r3, [r7, #12]
 4984 0dc0 0122     		movs	r2, #1
 4985 0dc2 0121     		movs	r1, #1
 4986 0dc4 1800     		movs	r0, r3
 4987 0dc6 FFF7FEFF 		bl	draw_sprite
  76:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	break;
 4988              		.loc 6 76 0
 4989 0dca 37E0     		b	.L183
 4990              	.L186:
  77:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     case 1:
  78:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	draw_sprite(s, 22, 1);
 4991              		.loc 6 78 0
 4992 0dcc FB68     		ldr	r3, [r7, #12]
 4993 0dce 0122     		movs	r2, #1
 4994 0dd0 1621     		movs	r1, #22
 4995 0dd2 1800     		movs	r0, r3
 4996 0dd4 FFF7FEFF 		bl	draw_sprite
  79:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	break;
 4997              		.loc 6 79 0
 4998 0dd8 30E0     		b	.L183
 4999              	.L187:
  80:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     case 2:
  81:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	draw_sprite(s, 44, 1);
 5000              		.loc 6 81 0
 5001 0dda FB68     		ldr	r3, [r7, #12]
 5002 0ddc 0122     		movs	r2, #1
 5003 0dde 2C21     		movs	r1, #44
 5004 0de0 1800     		movs	r0, r3
 5005 0de2 FFF7FEFF 		bl	draw_sprite
  82:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	break;
 5006              		.loc 6 82 0
 5007 0de6 29E0     		b	.L183
 5008              	.L188:
  83:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     case 3:
  84:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	draw_sprite(s, 1, 22);
 5009              		.loc 6 84 0
 5010 0de8 FB68     		ldr	r3, [r7, #12]
 5011 0dea 1622     		movs	r2, #22
 5012 0dec 0121     		movs	r1, #1
 5013 0dee 1800     		movs	r0, r3
 5014 0df0 FFF7FEFF 		bl	draw_sprite
  85:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	break;
 5015              		.loc 6 85 0
 5016 0df4 22E0     		b	.L183
 5017              	.L189:
  86:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     case 4:
  87:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	draw_sprite(s, 22, 22);
 5018              		.loc 6 87 0
 5019 0df6 FB68     		ldr	r3, [r7, #12]
 5020 0df8 1622     		movs	r2, #22
 5021 0dfa 1621     		movs	r1, #22
 5022 0dfc 1800     		movs	r0, r3
 5023 0dfe FFF7FEFF 		bl	draw_sprite
  88:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	break;
 5024              		.loc 6 88 0
 5025 0e02 1BE0     		b	.L183
 5026              	.L190:
  89:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     case 5:
  90:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	draw_sprite(s, 44, 22);
 5027              		.loc 6 90 0
 5028 0e04 FB68     		ldr	r3, [r7, #12]
 5029 0e06 1622     		movs	r2, #22
 5030 0e08 2C21     		movs	r1, #44
 5031 0e0a 1800     		movs	r0, r3
 5032 0e0c FFF7FEFF 		bl	draw_sprite
  91:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	break;
 5033              		.loc 6 91 0
 5034 0e10 14E0     		b	.L183
 5035              	.L191:
  92:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     case 6:
  93:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	draw_sprite(s, 1, 44);
 5036              		.loc 6 93 0
 5037 0e12 FB68     		ldr	r3, [r7, #12]
 5038 0e14 2C22     		movs	r2, #44
 5039 0e16 0121     		movs	r1, #1
 5040 0e18 1800     		movs	r0, r3
 5041 0e1a FFF7FEFF 		bl	draw_sprite
  94:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	break;
 5042              		.loc 6 94 0
 5043 0e1e 0DE0     		b	.L183
 5044              	.L192:
  95:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     case 7:
  96:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	draw_sprite(s, 22, 44);
 5045              		.loc 6 96 0
 5046 0e20 FB68     		ldr	r3, [r7, #12]
 5047 0e22 2C22     		movs	r2, #44
 5048 0e24 1621     		movs	r1, #22
 5049 0e26 1800     		movs	r0, r3
 5050 0e28 FFF7FEFF 		bl	draw_sprite
  97:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	break;
 5051              		.loc 6 97 0
 5052 0e2c 06E0     		b	.L183
 5053              	.L193:
  98:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     case 8:
  99:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	draw_sprite(s, 44, 44);
 5054              		.loc 6 99 0
 5055 0e2e FB68     		ldr	r3, [r7, #12]
 5056 0e30 2C22     		movs	r2, #44
 5057 0e32 2C21     		movs	r1, #44
 5058 0e34 1800     		movs	r0, r3
 5059 0e36 FFF7FEFF 		bl	draw_sprite
 100:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	break;
 5060              		.loc 6 100 0
 5061 0e3a C046     		nop
 5062              	.L183:
 5063              	.L194:
 101:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     }
 102:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** }
 5064              		.loc 6 102 0
 5065 0e3c C046     		nop
 5066 0e3e BD46     		mov	sp, r7
 5067 0e40 04B0     		add	sp, sp, #16
 5068              		@ sp needed
 5069 0e42 80BD     		pop	{r7, pc}
 5070              	.L196:
 5071              		.align	2
 5072              	.L195:
 5073 0e44 00000000 		.word	cross
 5074 0e48 00000000 		.word	circle
 5075 0e4c 24000000 		.word	.L185
 5076              		.cfi_endproc
 5077              	.LFE42:
 5079              		.section	.start_section,"ax",%progbits
 5080              		.align	1
 5081              		.global	startup
 5082              		.syntax unified
 5083              		.code	16
 5084              		.thumb_func
 5085              		.fpu softvfp
 5087              	startup:
 5088              	.LFB43:
 103:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** void startup(void) __attribute__((naked)) __attribute__((section(".start_section")));
 104:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
 105:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** void startup(void)
 106:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** {
 5089              		.loc 6 106 0
 5090              		.cfi_startproc
 5091              		@ Naked Function: prologue and epilogue provided by programmer.
 5092              		@ args = 0, pretend = 0, frame = 0
 5093              		@ frame_needed = 1, uses_anonymous_args = 0
 107:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     __asm volatile(" LDR R0,=0x2001C000\n" /* set stack */
 5094              		.loc 6 107 0
 5095              		.syntax divided
 5096              	@ 107 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/startup.c" 1
 5097 0000 0248     		 LDR R0,=0x2001C000
 5098 0002 8546     	 MOV SP,R0
 5099 0004 FFF7FEFF 	 BL main
 5100 0008 FEE7     	.L1: B .L1
 5101              	
 5102              	@ 0 "" 2
 108:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****                    " MOV SP,R0\n"
 109:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****                    " BL main\n"   /* call main */
 110:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****                    ".L1: B .L1\n" /* never return */
 111:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     );
 112:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** }
 5103              		.loc 6 112 0
 5104              		.thumb
 5105              		.syntax unified
 5106 000a C046     		nop
 5107              		.cfi_endproc
 5108              	.LFE43:
 5110              		.text
 5111              		.align	1
 5112              		.global	init_app
 5113              		.syntax unified
 5114              		.code	16
 5115              		.thumb_func
 5116              		.fpu softvfp
 5118              	init_app:
 5119              	.LFB44:
 113:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
 114:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** void init_app()
 115:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** {
 5120              		.loc 6 115 0
 5121              		.cfi_startproc
 5122              		@ args = 0, pretend = 0, frame = 0
 5123              		@ frame_needed = 1, uses_anonymous_args = 0
 5124 0e50 80B5     		push	{r7, lr}
 5125              		.cfi_def_cfa_offset 8
 5126              		.cfi_offset 7, -8
 5127              		.cfi_offset 14, -4
 5128 0e52 00AF     		add	r7, sp, #0
 5129              		.cfi_def_cfa_register 7
 116:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #ifdef USBDM
 117:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     *((unsigned long*)0x40023830) = 0x18;
 118:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     __asm volatile(" LDR R0,=0x08000209\n BLX R0 \n");
 119:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #endif
 120:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     GPIO_E.moder = 0x55555555;
 5130              		.loc 6 120 0
 5131 0e54 044B     		ldr	r3, .L199
 5132 0e56 054A     		ldr	r2, .L199+4
 5133 0e58 1A60     		str	r2, [r3]
 121:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     GPIO_D.moder = 0x55000000;
 5134              		.loc 6 121 0
 5135 0e5a 054B     		ldr	r3, .L199+8
 5136 0e5c AA22     		movs	r2, #170
 5137 0e5e D205     		lsls	r2, r2, #23
 5138 0e60 1A60     		str	r2, [r3]
 122:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     // gameState = 1;
 123:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** }
 5139              		.loc 6 123 0
 5140 0e62 C046     		nop
 5141 0e64 BD46     		mov	sp, r7
 5142              		@ sp needed
 5143 0e66 80BD     		pop	{r7, pc}
 5144              	.L200:
 5145              		.align	2
 5146              	.L199:
 5147 0e68 00100240 		.word	1073876992
 5148 0e6c 55555555 		.word	1431655765
 5149 0e70 000C0240 		.word	1073875968
 5150              		.cfi_endproc
 5151              	.LFE44:
 5153              		.align	1
 5154              		.global	ascii_write_string
 5155              		.syntax unified
 5156              		.code	16
 5157              		.thumb_func
 5158              		.fpu softvfp
 5160              	ascii_write_string:
 5161              	.LFB45:
 124:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
 125:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** void ascii_write_string(char text[], char point, char row)
 126:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** {
 5162              		.loc 6 126 0
 5163              		.cfi_startproc
 5164              		@ args = 0, pretend = 0, frame = 16
 5165              		@ frame_needed = 1, uses_anonymous_args = 0
 5166 0e74 80B5     		push	{r7, lr}
 5167              		.cfi_def_cfa_offset 8
 5168              		.cfi_offset 7, -8
 5169              		.cfi_offset 14, -4
 5170 0e76 84B0     		sub	sp, sp, #16
 5171              		.cfi_def_cfa_offset 24
 5172 0e78 00AF     		add	r7, sp, #0
 5173              		.cfi_def_cfa_register 7
 5174 0e7a 7860     		str	r0, [r7, #4]
 5175 0e7c 0800     		movs	r0, r1
 5176 0e7e 1100     		movs	r1, r2
 5177 0e80 FB1C     		adds	r3, r7, #3
 5178 0e82 021C     		adds	r2, r0, #0
 5179 0e84 1A70     		strb	r2, [r3]
 5180 0e86 BB1C     		adds	r3, r7, #2
 5181 0e88 0A1C     		adds	r2, r1, #0
 5182 0e8a 1A70     		strb	r2, [r3]
 127:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     char* s;
 128:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     s = text;
 5183              		.loc 6 128 0
 5184 0e8c 7B68     		ldr	r3, [r7, #4]
 5185 0e8e FB60     		str	r3, [r7, #12]
 129:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     ascii_gotoxy(1, row);
 5186              		.loc 6 129 0
 5187 0e90 BB1C     		adds	r3, r7, #2
 5188 0e92 1B78     		ldrb	r3, [r3]
 5189 0e94 1900     		movs	r1, r3
 5190 0e96 0120     		movs	r0, #1
 5191 0e98 FFF7FEFF 		bl	ascii_gotoxy
 130:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     while(*s) {
 5192              		.loc 6 130 0
 5193 0e9c 06E0     		b	.L202
 5194              	.L203:
 131:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	ascii_write_char(*s++);
 5195              		.loc 6 131 0
 5196 0e9e FB68     		ldr	r3, [r7, #12]
 5197 0ea0 5A1C     		adds	r2, r3, #1
 5198 0ea2 FA60     		str	r2, [r7, #12]
 5199 0ea4 1B78     		ldrb	r3, [r3]
 5200 0ea6 1800     		movs	r0, r3
 5201 0ea8 FFF7FEFF 		bl	ascii_write_char
 5202              	.L202:
 130:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     while(*s) {
 5203              		.loc 6 130 0
 5204 0eac FB68     		ldr	r3, [r7, #12]
 5205 0eae 1B78     		ldrb	r3, [r3]
 5206 0eb0 002B     		cmp	r3, #0
 5207 0eb2 F4D1     		bne	.L203
 132:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     }
 133:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     ascii_write_char('0' + point);
 5208              		.loc 6 133 0
 5209 0eb4 FB1C     		adds	r3, r7, #3
 5210 0eb6 1B78     		ldrb	r3, [r3]
 5211 0eb8 3033     		adds	r3, r3, #48
 5212 0eba DBB2     		uxtb	r3, r3
 5213 0ebc 1800     		movs	r0, r3
 5214 0ebe FFF7FEFF 		bl	ascii_write_char
 134:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** }
 5215              		.loc 6 134 0
 5216 0ec2 C046     		nop
 5217 0ec4 BD46     		mov	sp, r7
 5218 0ec6 04B0     		add	sp, sp, #16
 5219              		@ sp needed
 5220 0ec8 80BD     		pop	{r7, pc}
 5221              		.cfi_endproc
 5222              	.LFE45:
 5224              		.align	1
 5225              		.global	write_symbol
 5226              		.syntax unified
 5227              		.code	16
 5228              		.thumb_func
 5229              		.fpu softvfp
 5231              	write_symbol:
 5232              	.LFB46:
 135:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** void write_symbol(char c)
 136:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** {
 5233              		.loc 6 136 0
 5234              		.cfi_startproc
 5235              		@ args = 0, pretend = 0, frame = 16
 5236              		@ frame_needed = 1, uses_anonymous_args = 0
 5237 0eca 80B5     		push	{r7, lr}
 5238              		.cfi_def_cfa_offset 8
 5239              		.cfi_offset 7, -8
 5240              		.cfi_offset 14, -4
 5241 0ecc 84B0     		sub	sp, sp, #16
 5242              		.cfi_def_cfa_offset 24
 5243 0ece 00AF     		add	r7, sp, #0
 5244              		.cfi_def_cfa_register 7
 5245 0ed0 0200     		movs	r2, r0
 5246 0ed2 FB1D     		adds	r3, r7, #7
 5247 0ed4 1A70     		strb	r2, [r3]
 137:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     char current = grid[c - 1];
 5248              		.loc 6 137 0
 5249 0ed6 FB1D     		adds	r3, r7, #7
 5250 0ed8 1B78     		ldrb	r3, [r3]
 5251 0eda 5A1E     		subs	r2, r3, #1
 5252 0edc 0F20     		movs	r0, #15
 5253 0ede 3B18     		adds	r3, r7, r0
 5254 0ee0 0A49     		ldr	r1, .L207
 5255 0ee2 8A5C     		ldrb	r2, [r1, r2]
 5256 0ee4 1A70     		strb	r2, [r3]
 138:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     if(current == 0) {
 5257              		.loc 6 138 0
 5258 0ee6 3B18     		adds	r3, r7, r0
 5259 0ee8 1B78     		ldrb	r3, [r3]
 5260 0eea 002B     		cmp	r3, #0
 5261 0eec 09D1     		bne	.L206
 139:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	grid[c - 1] = gameState;
 5262              		.loc 6 139 0
 5263 0eee FB1D     		adds	r3, r7, #7
 5264 0ef0 1B78     		ldrb	r3, [r3]
 5265 0ef2 013B     		subs	r3, r3, #1
 5266 0ef4 064A     		ldr	r2, .L207+4
 5267 0ef6 1178     		ldrb	r1, [r2]
 5268 0ef8 044A     		ldr	r2, .L207
 5269 0efa D154     		strb	r1, [r2, r3]
 140:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	turn = 1;
 5270              		.loc 6 140 0
 5271 0efc 054B     		ldr	r3, .L207+8
 5272 0efe 0122     		movs	r2, #1
 5273 0f00 1A70     		strb	r2, [r3]
 5274              	.L206:
 141:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     }
 142:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** }
 5275              		.loc 6 142 0
 5276 0f02 C046     		nop
 5277 0f04 BD46     		mov	sp, r7
 5278 0f06 04B0     		add	sp, sp, #16
 5279              		@ sp needed
 5280 0f08 80BD     		pop	{r7, pc}
 5281              	.L208:
 5282 0f0a C046     		.align	2
 5283              	.L207:
 5284 0f0c 00000000 		.word	grid
 5285 0f10 00000000 		.word	gameState
 5286 0f14 00000000 		.word	turn
 5287              		.cfi_endproc
 5288              	.LFE46:
 5290              		.align	1
 5291              		.global	checkWin
 5292              		.syntax unified
 5293              		.code	16
 5294              		.thumb_func
 5295              		.fpu softvfp
 5297              	checkWin:
 5298              	.LFB47:
 143:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** char checkWin(char player)
 144:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** {
 5299              		.loc 6 144 0
 5300              		.cfi_startproc
 5301              		@ args = 0, pretend = 0, frame = 16
 5302              		@ frame_needed = 1, uses_anonymous_args = 0
 5303 0f18 80B5     		push	{r7, lr}
 5304              		.cfi_def_cfa_offset 8
 5305              		.cfi_offset 7, -8
 5306              		.cfi_offset 14, -4
 5307 0f1a 84B0     		sub	sp, sp, #16
 5308              		.cfi_def_cfa_offset 24
 5309 0f1c 00AF     		add	r7, sp, #0
 5310              		.cfi_def_cfa_register 7
 5311 0f1e 0200     		movs	r2, r0
 5312 0f20 FB1D     		adds	r3, r7, #7
 5313 0f22 1A70     		strb	r2, [r3]
 145:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     // cols
 146:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	char win = 0;
 5314              		.loc 6 146 0
 5315 0f24 0F23     		movs	r3, #15
 5316 0f26 FB18     		adds	r3, r7, r3
 5317 0f28 0022     		movs	r2, #0
 5318 0f2a 1A70     		strb	r2, [r3]
 5319              	.LBB12:
 147:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     for(char i = 0; i < 3; i++) {
 5320              		.loc 6 147 0
 5321 0f2c 0E23     		movs	r3, #14
 5322 0f2e FB18     		adds	r3, r7, r3
 5323 0f30 0022     		movs	r2, #0
 5324 0f32 1A70     		strb	r2, [r3]
 5325 0f34 35E0     		b	.L210
 5326              	.L216:
 148:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	win = win || (grid[i] == player && grid[3 + i] == player && grid[6 + i] == player);
 5327              		.loc 6 148 0
 5328 0f36 0F23     		movs	r3, #15
 5329 0f38 FB18     		adds	r3, r7, r3
 5330 0f3a 1B78     		ldrb	r3, [r3]
 5331 0f3c 002B     		cmp	r3, #0
 5332 0f3e 1CD1     		bne	.L211
 5333              		.loc 6 148 0 is_stmt 0 discriminator 2
 5334 0f40 0E23     		movs	r3, #14
 5335 0f42 FB18     		adds	r3, r7, r3
 5336 0f44 1B78     		ldrb	r3, [r3]
 5337 0f46 564A     		ldr	r2, .L227
 5338 0f48 D35C     		ldrb	r3, [r2, r3]
 5339 0f4a FA1D     		adds	r2, r7, #7
 5340 0f4c 1278     		ldrb	r2, [r2]
 5341 0f4e 9A42     		cmp	r2, r3
 5342 0f50 15D1     		bne	.L212
 5343              		.loc 6 148 0 discriminator 3
 5344 0f52 0E23     		movs	r3, #14
 5345 0f54 FB18     		adds	r3, r7, r3
 5346 0f56 1B78     		ldrb	r3, [r3]
 5347 0f58 0333     		adds	r3, r3, #3
 5348 0f5a 514A     		ldr	r2, .L227
 5349 0f5c D35C     		ldrb	r3, [r2, r3]
 5350 0f5e FA1D     		adds	r2, r7, #7
 5351 0f60 1278     		ldrb	r2, [r2]
 5352 0f62 9A42     		cmp	r2, r3
 5353 0f64 0BD1     		bne	.L212
 5354              		.loc 6 148 0 discriminator 5
 5355 0f66 0E23     		movs	r3, #14
 5356 0f68 FB18     		adds	r3, r7, r3
 5357 0f6a 1B78     		ldrb	r3, [r3]
 5358 0f6c 0633     		adds	r3, r3, #6
 5359 0f6e 4C4A     		ldr	r2, .L227
 5360 0f70 D35C     		ldrb	r3, [r2, r3]
 5361 0f72 FA1D     		adds	r2, r7, #7
 5362 0f74 1278     		ldrb	r2, [r2]
 5363 0f76 9A42     		cmp	r2, r3
 5364 0f78 01D1     		bne	.L212
 5365              	.L211:
 5366              		.loc 6 148 0 discriminator 7
 5367 0f7a 0122     		movs	r2, #1
 5368 0f7c 00E0     		b	.L213
 5369              	.L212:
 5370              		.loc 6 148 0 discriminator 8
 5371 0f7e 0022     		movs	r2, #0
 5372              	.L213:
 5373              		.loc 6 148 0 discriminator 10
 5374 0f80 0F21     		movs	r1, #15
 5375 0f82 7B18     		adds	r3, r7, r1
 5376 0f84 1A70     		strb	r2, [r3]
 149:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	if(win) {
 5377              		.loc 6 149 0 is_stmt 1 discriminator 10
 5378 0f86 7B18     		adds	r3, r7, r1
 5379 0f88 1B78     		ldrb	r3, [r3]
 5380 0f8a 002B     		cmp	r3, #0
 5381 0f8c 03D0     		beq	.L214
 150:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    return win;
 5382              		.loc 6 150 0
 5383 0f8e 0F23     		movs	r3, #15
 5384 0f90 FB18     		adds	r3, r7, r3
 5385 0f92 1B78     		ldrb	r3, [r3]
 5386 0f94 7FE0     		b	.L215
 5387              	.L214:
 147:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	win = win || (grid[i] == player && grid[3 + i] == player && grid[6 + i] == player);
 5388              		.loc 6 147 0 discriminator 2
 5389 0f96 0E21     		movs	r1, #14
 5390 0f98 7B18     		adds	r3, r7, r1
 5391 0f9a 1A78     		ldrb	r2, [r3]
 5392 0f9c 7B18     		adds	r3, r7, r1
 5393 0f9e 0132     		adds	r2, r2, #1
 5394 0fa0 1A70     		strb	r2, [r3]
 5395              	.L210:
 147:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	win = win || (grid[i] == player && grid[3 + i] == player && grid[6 + i] == player);
 5396              		.loc 6 147 0 is_stmt 0 discriminator 1
 5397 0fa2 0E23     		movs	r3, #14
 5398 0fa4 FB18     		adds	r3, r7, r3
 5399 0fa6 1B78     		ldrb	r3, [r3]
 5400 0fa8 022B     		cmp	r3, #2
 5401 0faa C4D9     		bls	.L216
 5402              	.LBE12:
 5403              	.LBB13:
 151:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	}
 152:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     }
 153:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     // rows
 154:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     for(char i = 0; i < 3; i++) {
 5404              		.loc 6 154 0 is_stmt 1
 5405 0fac 0D23     		movs	r3, #13
 5406 0fae FB18     		adds	r3, r7, r3
 5407 0fb0 0022     		movs	r2, #0
 5408 0fb2 1A70     		strb	r2, [r3]
 5409 0fb4 3EE0     		b	.L217
 5410              	.L222:
 155:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	win = win || (grid[3 * i] == player && grid[3 * i + 1] == player && grid[3 * i + 2] == player);
 5411              		.loc 6 155 0
 5412 0fb6 0F23     		movs	r3, #15
 5413 0fb8 FB18     		adds	r3, r7, r3
 5414 0fba 1B78     		ldrb	r3, [r3]
 5415 0fbc 002B     		cmp	r3, #0
 5416 0fbe 25D1     		bne	.L218
 5417              		.loc 6 155 0 is_stmt 0 discriminator 2
 5418 0fc0 0D23     		movs	r3, #13
 5419 0fc2 FB18     		adds	r3, r7, r3
 5420 0fc4 1A78     		ldrb	r2, [r3]
 5421 0fc6 1300     		movs	r3, r2
 5422 0fc8 5B00     		lsls	r3, r3, #1
 5423 0fca 9B18     		adds	r3, r3, r2
 5424 0fcc 344A     		ldr	r2, .L227
 5425 0fce D35C     		ldrb	r3, [r2, r3]
 5426 0fd0 FA1D     		adds	r2, r7, #7
 5427 0fd2 1278     		ldrb	r2, [r2]
 5428 0fd4 9A42     		cmp	r2, r3
 5429 0fd6 1BD1     		bne	.L219
 5430              		.loc 6 155 0 discriminator 3
 5431 0fd8 0D23     		movs	r3, #13
 5432 0fda FB18     		adds	r3, r7, r3
 5433 0fdc 1A78     		ldrb	r2, [r3]
 5434 0fde 1300     		movs	r3, r2
 5435 0fe0 5B00     		lsls	r3, r3, #1
 5436 0fe2 9B18     		adds	r3, r3, r2
 5437 0fe4 0133     		adds	r3, r3, #1
 5438 0fe6 2E4A     		ldr	r2, .L227
 5439 0fe8 D35C     		ldrb	r3, [r2, r3]
 5440 0fea FA1D     		adds	r2, r7, #7
 5441 0fec 1278     		ldrb	r2, [r2]
 5442 0fee 9A42     		cmp	r2, r3
 5443 0ff0 0ED1     		bne	.L219
 5444              		.loc 6 155 0 discriminator 5
 5445 0ff2 0D23     		movs	r3, #13
 5446 0ff4 FB18     		adds	r3, r7, r3
 5447 0ff6 1A78     		ldrb	r2, [r3]
 5448 0ff8 1300     		movs	r3, r2
 5449 0ffa 5B00     		lsls	r3, r3, #1
 5450 0ffc 9B18     		adds	r3, r3, r2
 5451 0ffe 0233     		adds	r3, r3, #2
 5452 1000 274A     		ldr	r2, .L227
 5453 1002 D35C     		ldrb	r3, [r2, r3]
 5454 1004 FA1D     		adds	r2, r7, #7
 5455 1006 1278     		ldrb	r2, [r2]
 5456 1008 9A42     		cmp	r2, r3
 5457 100a 01D1     		bne	.L219
 5458              	.L218:
 5459              		.loc 6 155 0 discriminator 7
 5460 100c 0122     		movs	r2, #1
 5461 100e 00E0     		b	.L220
 5462              	.L219:
 5463              		.loc 6 155 0 discriminator 8
 5464 1010 0022     		movs	r2, #0
 5465              	.L220:
 5466              		.loc 6 155 0 discriminator 10
 5467 1012 0F21     		movs	r1, #15
 5468 1014 7B18     		adds	r3, r7, r1
 5469 1016 1A70     		strb	r2, [r3]
 156:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	if(win) {
 5470              		.loc 6 156 0 is_stmt 1 discriminator 10
 5471 1018 7B18     		adds	r3, r7, r1
 5472 101a 1B78     		ldrb	r3, [r3]
 5473 101c 002B     		cmp	r3, #0
 5474 101e 03D0     		beq	.L221
 157:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    return win;
 5475              		.loc 6 157 0
 5476 1020 0F23     		movs	r3, #15
 5477 1022 FB18     		adds	r3, r7, r3
 5478 1024 1B78     		ldrb	r3, [r3]
 5479 1026 36E0     		b	.L215
 5480              	.L221:
 154:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	win = win || (grid[3 * i] == player && grid[3 * i + 1] == player && grid[3 * i + 2] == player);
 5481              		.loc 6 154 0 discriminator 2
 5482 1028 0D21     		movs	r1, #13
 5483 102a 7B18     		adds	r3, r7, r1
 5484 102c 1A78     		ldrb	r2, [r3]
 5485 102e 7B18     		adds	r3, r7, r1
 5486 1030 0132     		adds	r2, r2, #1
 5487 1032 1A70     		strb	r2, [r3]
 5488              	.L217:
 154:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	win = win || (grid[3 * i] == player && grid[3 * i + 1] == player && grid[3 * i + 2] == player);
 5489              		.loc 6 154 0 is_stmt 0 discriminator 1
 5490 1034 0D23     		movs	r3, #13
 5491 1036 FB18     		adds	r3, r7, r3
 5492 1038 1B78     		ldrb	r3, [r3]
 5493 103a 022B     		cmp	r3, #2
 5494 103c BBD9     		bls	.L222
 5495              	.LBE13:
 158:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	}
 159:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     }
 160:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     // diags
 161:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     win = (grid[0] == player && grid[4] == player && grid[8] == player) ||
 5496              		.loc 6 161 0 is_stmt 1
 5497 103e 184B     		ldr	r3, .L227
 5498 1040 1B78     		ldrb	r3, [r3]
 5499 1042 FA1D     		adds	r2, r7, #7
 5500 1044 1278     		ldrb	r2, [r2]
 5501 1046 9A42     		cmp	r2, r3
 5502 1048 0BD1     		bne	.L223
 5503              		.loc 6 161 0 is_stmt 0 discriminator 1
 5504 104a 154B     		ldr	r3, .L227
 5505 104c 1B79     		ldrb	r3, [r3, #4]
 5506 104e FA1D     		adds	r2, r7, #7
 5507 1050 1278     		ldrb	r2, [r2]
 5508 1052 9A42     		cmp	r2, r3
 5509 1054 05D1     		bne	.L223
 5510              		.loc 6 161 0 discriminator 3
 5511 1056 124B     		ldr	r3, .L227
 5512 1058 1B7A     		ldrb	r3, [r3, #8]
 5513 105a FA1D     		adds	r2, r7, #7
 5514 105c 1278     		ldrb	r2, [r2]
 5515 105e 9A42     		cmp	r2, r3
 5516 1060 11D0     		beq	.L224
 5517              	.L223:
 162:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****         (grid[2] == player && grid[4] == player && grid[6] == player);
 5518              		.loc 6 162 0 is_stmt 1 discriminator 6
 5519 1062 0F4B     		ldr	r3, .L227
 5520 1064 9B78     		ldrb	r3, [r3, #2]
 161:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****         (grid[2] == player && grid[4] == player && grid[6] == player);
 5521              		.loc 6 161 0 discriminator 6
 5522 1066 FA1D     		adds	r2, r7, #7
 5523 1068 1278     		ldrb	r2, [r2]
 5524 106a 9A42     		cmp	r2, r3
 5525 106c 0DD1     		bne	.L225
 5526              		.loc 6 162 0
 5527 106e 0C4B     		ldr	r3, .L227
 5528 1070 1B79     		ldrb	r3, [r3, #4]
 5529 1072 FA1D     		adds	r2, r7, #7
 5530 1074 1278     		ldrb	r2, [r2]
 5531 1076 9A42     		cmp	r2, r3
 5532 1078 07D1     		bne	.L225
 5533              		.loc 6 162 0 is_stmt 0 discriminator 1
 5534 107a 094B     		ldr	r3, .L227
 5535 107c 9B79     		ldrb	r3, [r3, #6]
 5536 107e FA1D     		adds	r2, r7, #7
 5537 1080 1278     		ldrb	r2, [r2]
 5538 1082 9A42     		cmp	r2, r3
 5539 1084 01D1     		bne	.L225
 5540              	.L224:
 161:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****         (grid[2] == player && grid[4] == player && grid[6] == player);
 5541              		.loc 6 161 0 is_stmt 1 discriminator 5
 5542 1086 0122     		movs	r2, #1
 5543 1088 00E0     		b	.L226
 5544              	.L225:
 161:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****         (grid[2] == player && grid[4] == player && grid[6] == player);
 5545              		.loc 6 161 0 is_stmt 0 discriminator 7
 5546 108a 0022     		movs	r2, #0
 5547              	.L226:
 161:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****         (grid[2] == player && grid[4] == player && grid[6] == player);
 5548              		.loc 6 161 0 discriminator 9
 5549 108c 0F21     		movs	r1, #15
 5550 108e 7B18     		adds	r3, r7, r1
 5551 1090 1A70     		strb	r2, [r3]
 163:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     return win;
 5552              		.loc 6 163 0 is_stmt 1 discriminator 9
 5553 1092 7B18     		adds	r3, r7, r1
 5554 1094 1B78     		ldrb	r3, [r3]
 5555              	.L215:
 164:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** }
 5556              		.loc 6 164 0
 5557 1096 1800     		movs	r0, r3
 5558 1098 BD46     		mov	sp, r7
 5559 109a 04B0     		add	sp, sp, #16
 5560              		@ sp needed
 5561 109c 80BD     		pop	{r7, pc}
 5562              	.L228:
 5563 109e C046     		.align	2
 5564              	.L227:
 5565 10a0 00000000 		.word	grid
 5566              		.cfi_endproc
 5567              	.LFE47:
 5569              		.section	.rodata
 5570              		.align	2
 5571              	.LC1:
 5572 0048 02       		.byte	2
 5573 0049 02       		.byte	2
 5574 004a 00       		.byte	0
 5575 004b 00       		.byte	0
 5576 004c 00       		.byte	0
 5577 004d 00       		.byte	0
 5578 004e 00       		.byte	0
 5579 004f 00       		.byte	0
 5580 0050 00       		.byte	0
 5581              		.text
 5582              		.align	1
 5583              		.global	main
 5584              		.syntax unified
 5585              		.code	16
 5586              		.thumb_func
 5587              		.fpu softvfp
 5589              	main:
 5590              	.LFB48:
 165:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
 166:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** void main(void)
 167:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** {
 5591              		.loc 6 167 0
 5592              		.cfi_startproc
 5593              		@ args = 0, pretend = 0, frame = 56
 5594              		@ frame_needed = 1, uses_anonymous_args = 0
 5595 10a4 B0B5     		push	{r4, r5, r7, lr}
 5596              		.cfi_def_cfa_offset 16
 5597              		.cfi_offset 4, -16
 5598              		.cfi_offset 5, -12
 5599              		.cfi_offset 7, -8
 5600              		.cfi_offset 14, -4
 5601 10a6 8EB0     		sub	sp, sp, #56
 5602              		.cfi_def_cfa_offset 72
 5603 10a8 00AF     		add	r7, sp, #0
 5604              		.cfi_def_cfa_register 7
 168:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
 169:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     char c;
 170:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     gameState = 2;
 5605              		.loc 6 170 0
 5606 10aa A04B     		ldr	r3, .L257
 5607 10ac 0222     		movs	r2, #2
 5608 10ae 1A70     		strb	r2, [r3]
 171:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	gameOver = 0;
 5609              		.loc 6 171 0
 5610 10b0 9F4B     		ldr	r3, .L257+4
 5611 10b2 0022     		movs	r2, #0
 5612 10b4 1A70     		strb	r2, [r3]
 172:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     //char g[9] = { 1, 2, 1, 1, 2, 1, 2, 1, 2 };
 173:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	char g[9] = {2 ,2 ,0 ,0 ,0 ,0 ,0, 0, 0};
 5613              		.loc 6 173 0
 5614 10b6 0C23     		movs	r3, #12
 5615 10b8 FB18     		adds	r3, r7, r3
 5616 10ba 9E4A     		ldr	r2, .L257+8
 5617 10bc 03CA     		ldmia	r2!, {r0, r1}
 5618 10be 03C3     		stmia	r3!, {r0, r1}
 5619 10c0 1278     		ldrb	r2, [r2]
 5620 10c2 1A70     		strb	r2, [r3]
 5621              	.LBB14:
 174:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     for(char i = 0; i < 9; i++) {
 5622              		.loc 6 174 0
 5623 10c4 3723     		movs	r3, #55
 5624 10c6 FB18     		adds	r3, r7, r3
 5625 10c8 0022     		movs	r2, #0
 5626 10ca 1A70     		strb	r2, [r3]
 5627 10cc 0EE0     		b	.L230
 5628              	.L231:
 175:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	grid[i] = g[i];
 5629              		.loc 6 175 0 discriminator 3
 5630 10ce 3720     		movs	r0, #55
 5631 10d0 3B18     		adds	r3, r7, r0
 5632 10d2 1A78     		ldrb	r2, [r3]
 5633 10d4 3B18     		adds	r3, r7, r0
 5634 10d6 1B78     		ldrb	r3, [r3]
 5635 10d8 0C21     		movs	r1, #12
 5636 10da 7918     		adds	r1, r7, r1
 5637 10dc 895C     		ldrb	r1, [r1, r2]
 5638 10de 964A     		ldr	r2, .L257+12
 5639 10e0 D154     		strb	r1, [r2, r3]
 174:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     for(char i = 0; i < 9; i++) {
 5640              		.loc 6 174 0 discriminator 3
 5641 10e2 3B18     		adds	r3, r7, r0
 5642 10e4 1A78     		ldrb	r2, [r3]
 5643 10e6 3B18     		adds	r3, r7, r0
 5644 10e8 0132     		adds	r2, r2, #1
 5645 10ea 1A70     		strb	r2, [r3]
 5646              	.L230:
 174:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     for(char i = 0; i < 9; i++) {
 5647              		.loc 6 174 0 is_stmt 0 discriminator 1
 5648 10ec 3723     		movs	r3, #55
 5649 10ee FB18     		adds	r3, r7, r3
 5650 10f0 1B78     		ldrb	r3, [r3]
 5651 10f2 082B     		cmp	r3, #8
 5652 10f4 EBD9     		bls	.L231
 5653              	.LBE14:
 176:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     }
 177:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     init_app();
 5654              		.loc 6 177 0 is_stmt 1
 5655 10f6 FFF7FEFF 		bl	init_app
 178:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     graphic_initialize();
 5656              		.loc 6 178 0
 5657 10fa FFF7FEFF 		bl	graphic_initialize
 179:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #ifndef SIMULATOR
 180:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     graphic_clear_screen();
 181:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** #endif
 182:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
 183:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     int xPoints = 0;
 5658              		.loc 6 183 0
 5659 10fe 0023     		movs	r3, #0
 5660 1100 3B63     		str	r3, [r7, #48]
 184:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     int oPoints = 0;
 5661              		.loc 6 184 0
 5662 1102 0023     		movs	r3, #0
 5663 1104 FB62     		str	r3, [r7, #44]
 185:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     char O[] = "O: ";
 5664              		.loc 6 185 0
 5665 1106 0823     		movs	r3, #8
 5666 1108 FB18     		adds	r3, r7, r3
 5667 110a 8C4A     		ldr	r2, .L257+16
 5668 110c 1A60     		str	r2, [r3]
 186:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     char X[] = "X: ";
 5669              		.loc 6 186 0
 5670 110e 3B1D     		adds	r3, r7, #4
 5671 1110 8B4A     		ldr	r2, .L257+20
 5672 1112 1A60     		str	r2, [r3]
 187:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     ascii_init();
 5673              		.loc 6 187 0
 5674 1114 FFF7FEFF 		bl	ascii_init
 5675              	.L256:
 5676              	.LBB15:
 188:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
 189:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     // drawgrid();
 190:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c ****     while(1) {
 191:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	turn = 0;
 5677              		.loc 6 191 0
 5678 1118 8A4B     		ldr	r3, .L257+24
 5679 111a 0022     		movs	r2, #0
 5680 111c 1A70     		strb	r2, [r3]
 192:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	clear_backBuffer();
 5681              		.loc 6 192 0
 5682 111e FFF7FEFF 		bl	clear_backBuffer
 193:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	// draw_sprite(&draw,)
 194:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	c = keyb();
 5683              		.loc 6 194 0
 5684 1122 1B23     		movs	r3, #27
 5685 1124 FC18     		adds	r4, r7, r3
 5686 1126 FFF7FEFF 		bl	keyb
 5687 112a 0300     		movs	r3, r0
 5688 112c 2370     		strb	r3, [r4]
 195:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	if (!gameOver){
 5689              		.loc 6 195 0
 5690 112e 804B     		ldr	r3, .L257+4
 5691 1130 1B78     		ldrb	r3, [r3]
 5692 1132 002B     		cmp	r3, #0
 5693 1134 0AD1     		bne	.L232
 196:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	if(c >= 0 && c <= 9) {
 5694              		.loc 6 196 0
 5695 1136 1B23     		movs	r3, #27
 5696 1138 FB18     		adds	r3, r7, r3
 5697 113a 1B78     		ldrb	r3, [r3]
 5698 113c 092B     		cmp	r3, #9
 5699 113e 05D8     		bhi	.L232
 197:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		write_symbol(c);
 5700              		.loc 6 197 0
 5701 1140 1B23     		movs	r3, #27
 5702 1142 FB18     		adds	r3, r7, r3
 5703 1144 1B78     		ldrb	r3, [r3]
 5704 1146 1800     		movs	r0, r3
 5705 1148 FFF7FEFF 		bl	write_symbol
 5706              	.L232:
 198:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    }
 199:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	}
 200:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	
 201:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	char xWin = checkWin(1);
 5707              		.loc 6 201 0
 5708 114c 1A25     		movs	r5, #26
 5709 114e 7C19     		adds	r4, r7, r5
 5710 1150 0120     		movs	r0, #1
 5711 1152 FFF7FEFF 		bl	checkWin
 5712 1156 0300     		movs	r3, r0
 5713 1158 2370     		strb	r3, [r4]
 202:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	char oWin = checkWin(2);
 5714              		.loc 6 202 0
 5715 115a 1923     		movs	r3, #25
 5716 115c FC18     		adds	r4, r7, r3
 5717 115e 0220     		movs	r0, #2
 5718 1160 FFF7FEFF 		bl	checkWin
 5719 1164 0300     		movs	r3, r0
 5720 1166 2370     		strb	r3, [r4]
 203:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	char win = xWin || oWin;
 5721              		.loc 6 203 0
 5722 1168 7B19     		adds	r3, r7, r5
 5723 116a 1B78     		ldrb	r3, [r3]
 5724 116c 002B     		cmp	r3, #0
 5725 116e 04D1     		bne	.L233
 5726              		.loc 6 203 0 is_stmt 0 discriminator 2
 5727 1170 1923     		movs	r3, #25
 5728 1172 FB18     		adds	r3, r7, r3
 5729 1174 1B78     		ldrb	r3, [r3]
 5730 1176 002B     		cmp	r3, #0
 5731 1178 01D0     		beq	.L234
 5732              	.L233:
 5733              		.loc 6 203 0 discriminator 3
 5734 117a 0122     		movs	r2, #1
 5735 117c 00E0     		b	.L235
 5736              	.L234:
 5737              		.loc 6 203 0 discriminator 4
 5738 117e 0022     		movs	r2, #0
 5739              	.L235:
 5740              		.loc 6 203 0 discriminator 6
 5741 1180 1821     		movs	r1, #24
 5742 1182 7B18     		adds	r3, r7, r1
 5743 1184 1A70     		strb	r2, [r3]
 204:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	if(!win) {
 5744              		.loc 6 204 0 is_stmt 1 discriminator 6
 5745 1186 7B18     		adds	r3, r7, r1
 5746 1188 1B78     		ldrb	r3, [r3]
 5747 118a 002B     		cmp	r3, #0
 5748 118c 4BD1     		bne	.L236
 5749              	.LBB16:
 205:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    if(turn) {
 5750              		.loc 6 205 0
 5751 118e 6D4B     		ldr	r3, .L257+24
 5752 1190 1B78     		ldrb	r3, [r3]
 5753 1192 002B     		cmp	r3, #0
 5754 1194 0AD0     		beq	.L237
 206:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		if(gameState == 1) {
 5755              		.loc 6 206 0
 5756 1196 654B     		ldr	r3, .L257
 5757 1198 1B78     		ldrb	r3, [r3]
 5758 119a 012B     		cmp	r3, #1
 5759 119c 03D1     		bne	.L238
 207:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		    gameState = 2;
 5760              		.loc 6 207 0
 5761 119e 634B     		ldr	r3, .L257
 5762 11a0 0222     		movs	r2, #2
 5763 11a2 1A70     		strb	r2, [r3]
 5764 11a4 02E0     		b	.L237
 5765              	.L238:
 208:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		} else {
 209:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		    gameState = 1;
 5766              		.loc 6 209 0
 5767 11a6 614B     		ldr	r3, .L257
 5768 11a8 0122     		movs	r2, #1
 5769 11aa 1A70     		strb	r2, [r3]
 5770              	.L237:
 5771              	.LBB17:
 210:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		}
 211:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    }
 212:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    char isFull;
 213:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    for(int i = 0; i < 9; ++i) {
 5772              		.loc 6 213 0
 5773 11ac 0023     		movs	r3, #0
 5774 11ae 7B62     		str	r3, [r7, #36]
 5775 11b0 13E0     		b	.L239
 5776              	.L242:
 214:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		isFull = isFull && !(grid[i] == 0);
 5777              		.loc 6 214 0
 5778 11b2 2B23     		movs	r3, #43
 5779 11b4 FB18     		adds	r3, r7, r3
 5780 11b6 1B78     		ldrb	r3, [r3]
 5781 11b8 002B     		cmp	r3, #0
 5782 11ba 07D0     		beq	.L240
 5783              		.loc 6 214 0 is_stmt 0 discriminator 1
 5784 11bc 5E4A     		ldr	r2, .L257+12
 5785 11be 7B6A     		ldr	r3, [r7, #36]
 5786 11c0 D318     		adds	r3, r2, r3
 5787 11c2 1B78     		ldrb	r3, [r3]
 5788 11c4 002B     		cmp	r3, #0
 5789 11c6 01D0     		beq	.L240
 5790              		.loc 6 214 0 discriminator 3
 5791 11c8 0122     		movs	r2, #1
 5792 11ca 00E0     		b	.L241
 5793              	.L240:
 5794              		.loc 6 214 0 discriminator 4
 5795 11cc 0022     		movs	r2, #0
 5796              	.L241:
 5797              		.loc 6 214 0 discriminator 6
 5798 11ce 2B23     		movs	r3, #43
 5799 11d0 FB18     		adds	r3, r7, r3
 5800 11d2 1A70     		strb	r2, [r3]
 213:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		isFull = isFull && !(grid[i] == 0);
 5801              		.loc 6 213 0 is_stmt 1 discriminator 6
 5802 11d4 7B6A     		ldr	r3, [r7, #36]
 5803 11d6 0133     		adds	r3, r3, #1
 5804 11d8 7B62     		str	r3, [r7, #36]
 5805              	.L239:
 213:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		isFull = isFull && !(grid[i] == 0);
 5806              		.loc 6 213 0 is_stmt 0 discriminator 2
 5807 11da 7B6A     		ldr	r3, [r7, #36]
 5808 11dc 082B     		cmp	r3, #8
 5809 11de E8DD     		ble	.L242
 5810              	.LBE17:
 215:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    }
 216:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    if(isFull && !win) {
 5811              		.loc 6 216 0 is_stmt 1
 5812 11e0 2B23     		movs	r3, #43
 5813 11e2 FB18     		adds	r3, r7, r3
 5814 11e4 1B78     		ldrb	r3, [r3]
 5815 11e6 002B     		cmp	r3, #0
 5816 11e8 0BD0     		beq	.L243
 5817              		.loc 6 216 0 is_stmt 0 discriminator 1
 5818 11ea 1823     		movs	r3, #24
 5819 11ec FB18     		adds	r3, r7, r3
 5820 11ee 1B78     		ldrb	r3, [r3]
 5821 11f0 002B     		cmp	r3, #0
 5822 11f2 06D1     		bne	.L243
 217:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		draw_sprite(&draw, 64, 1);
 5823              		.loc 6 217 0 is_stmt 1
 5824 11f4 544B     		ldr	r3, .L257+28
 5825 11f6 0122     		movs	r2, #1
 5826 11f8 4021     		movs	r1, #64
 5827 11fa 1800     		movs	r0, r3
 5828 11fc FFF7FEFF 		bl	draw_sprite
 5829 1200 45E0     		b	.L246
 5830              	.L243:
 218:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    } else {
 219:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		if(gameState == 1) {
 5831              		.loc 6 219 0
 5832 1202 4A4B     		ldr	r3, .L257
 5833 1204 1B78     		ldrb	r3, [r3]
 5834 1206 012B     		cmp	r3, #1
 5835 1208 06D1     		bne	.L245
 220:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		    draw_sprite(&big_cross, 64, 1);
 5836              		.loc 6 220 0
 5837 120a 504B     		ldr	r3, .L257+32
 5838 120c 0122     		movs	r2, #1
 5839 120e 4021     		movs	r1, #64
 5840 1210 1800     		movs	r0, r3
 5841 1212 FFF7FEFF 		bl	draw_sprite
 5842 1216 3AE0     		b	.L246
 5843              	.L245:
 221:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		} else {
 222:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		    draw_sprite(&big_circle, 64, 1);
 5844              		.loc 6 222 0
 5845 1218 4D4B     		ldr	r3, .L257+36
 5846 121a 0122     		movs	r2, #1
 5847 121c 4021     		movs	r1, #64
 5848 121e 1800     		movs	r0, r3
 5849 1220 FFF7FEFF 		bl	draw_sprite
 5850 1224 33E0     		b	.L246
 5851              	.L236:
 5852              	.LBE16:
 223:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		}
 224:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    }
 225:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
 226:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	} else if (!gameOver) {
 5853              		.loc 6 226 0
 5854 1226 424B     		ldr	r3, .L257+4
 5855 1228 1B78     		ldrb	r3, [r3]
 5856 122a 002B     		cmp	r3, #0
 5857 122c 22D1     		bne	.L247
 227:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    
 228:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    if(xWin) {
 5858              		.loc 6 228 0
 5859 122e 1A23     		movs	r3, #26
 5860 1230 FB18     		adds	r3, r7, r3
 5861 1232 1B78     		ldrb	r3, [r3]
 5862 1234 002B     		cmp	r3, #0
 5863 1236 06D0     		beq	.L248
 229:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		winner = &cross;
 5864              		.loc 6 229 0
 5865 1238 464B     		ldr	r3, .L257+40
 5866 123a 474A     		ldr	r2, .L257+44
 5867 123c 1A60     		str	r2, [r3]
 230:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		xPoints = xPoints + 1;
 5868              		.loc 6 230 0
 5869 123e 3B6B     		ldr	r3, [r7, #48]
 5870 1240 0133     		adds	r3, r3, #1
 5871 1242 3B63     		str	r3, [r7, #48]
 5872 1244 05E0     		b	.L249
 5873              	.L248:
 231:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    } else {
 232:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		winner = &circle;
 5874              		.loc 6 232 0
 5875 1246 434B     		ldr	r3, .L257+40
 5876 1248 444A     		ldr	r2, .L257+48
 5877 124a 1A60     		str	r2, [r3]
 233:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		oPoints = oPoints + 1;
 5878              		.loc 6 233 0
 5879 124c FB6A     		ldr	r3, [r7, #44]
 5880 124e 0133     		adds	r3, r3, #1
 5881 1250 FB62     		str	r3, [r7, #44]
 5882              	.L249:
 234:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    }
 235:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    draw_sprite(winner, 86, 8);
 5883              		.loc 6 235 0
 5884 1252 404B     		ldr	r3, .L257+40
 5885 1254 1B68     		ldr	r3, [r3]
 5886 1256 0822     		movs	r2, #8
 5887 1258 5621     		movs	r1, #86
 5888 125a 1800     		movs	r0, r3
 5889 125c FFF7FEFF 		bl	draw_sprite
 236:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    draw_sprite(&victory, 64, 32);
 5890              		.loc 6 236 0
 5891 1260 3F4B     		ldr	r3, .L257+52
 5892 1262 2022     		movs	r2, #32
 5893 1264 4021     		movs	r1, #64
 5894 1266 1800     		movs	r0, r3
 5895 1268 FFF7FEFF 		bl	draw_sprite
 237:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		gameOver = 1;
 5896              		.loc 6 237 0
 5897 126c 304B     		ldr	r3, .L257+4
 5898 126e 0122     		movs	r2, #1
 5899 1270 1A70     		strb	r2, [r3]
 5900 1272 0CE0     		b	.L246
 5901              	.L247:
 238:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	} else {
 239:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		draw_sprite(winner, 86, 8);
 5902              		.loc 6 239 0
 5903 1274 374B     		ldr	r3, .L257+40
 5904 1276 1B68     		ldr	r3, [r3]
 5905 1278 0822     		movs	r2, #8
 5906 127a 5621     		movs	r1, #86
 5907 127c 1800     		movs	r0, r3
 5908 127e FFF7FEFF 		bl	draw_sprite
 240:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    draw_sprite(&victory, 64, 32);
 5909              		.loc 6 240 0
 5910 1282 374B     		ldr	r3, .L257+52
 5911 1284 2022     		movs	r2, #32
 5912 1286 4021     		movs	r1, #64
 5913 1288 1800     		movs	r0, r3
 5914 128a FFF7FEFF 		bl	draw_sprite
 5915              	.L246:
 241:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	}
 242:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	drawgrid();
 5916              		.loc 6 242 0
 5917 128e FFF7FEFF 		bl	drawgrid
 243:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	if(c == 10) {
 5918              		.loc 6 243 0
 5919 1292 1B23     		movs	r3, #27
 5920 1294 FB18     		adds	r3, r7, r3
 5921 1296 1B78     		ldrb	r3, [r3]
 5922 1298 0A2B     		cmp	r3, #10
 5923 129a 14D1     		bne	.L250
 244:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    win = 0;
 5924              		.loc 6 244 0
 5925 129c 1823     		movs	r3, #24
 5926 129e FB18     		adds	r3, r7, r3
 5927 12a0 0022     		movs	r2, #0
 5928 12a2 1A70     		strb	r2, [r3]
 5929              	.LBB18:
 245:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    for(int i = 0; i < 9; i++) {
 5930              		.loc 6 245 0
 5931 12a4 0023     		movs	r3, #0
 5932 12a6 3B62     		str	r3, [r7, #32]
 5933 12a8 07E0     		b	.L251
 5934              	.L252:
 246:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		grid[i] = 0;
 5935              		.loc 6 246 0 discriminator 3
 5936 12aa 234A     		ldr	r2, .L257+12
 5937 12ac 3B6A     		ldr	r3, [r7, #32]
 5938 12ae D318     		adds	r3, r2, r3
 5939 12b0 0022     		movs	r2, #0
 5940 12b2 1A70     		strb	r2, [r3]
 245:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    for(int i = 0; i < 9; i++) {
 5941              		.loc 6 245 0 discriminator 3
 5942 12b4 3B6A     		ldr	r3, [r7, #32]
 5943 12b6 0133     		adds	r3, r3, #1
 5944 12b8 3B62     		str	r3, [r7, #32]
 5945              	.L251:
 245:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    for(int i = 0; i < 9; i++) {
 5946              		.loc 6 245 0 is_stmt 0 discriminator 1
 5947 12ba 3B6A     		ldr	r3, [r7, #32]
 5948 12bc 082B     		cmp	r3, #8
 5949 12be F4DD     		ble	.L252
 5950              	.LBE18:
 247:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    }
 248:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		gameOver = 0;
 5951              		.loc 6 248 0 is_stmt 1
 5952 12c0 1B4B     		ldr	r3, .L257+4
 5953 12c2 0022     		movs	r2, #0
 5954 12c4 1A70     		strb	r2, [r3]
 5955              	.L250:
 249:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	}
 250:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 
 251:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	if(c == 11) {
 5956              		.loc 6 251 0
 5957 12c6 1B23     		movs	r3, #27
 5958 12c8 FB18     		adds	r3, r7, r3
 5959 12ca 1B78     		ldrb	r3, [r3]
 5960 12cc 0B2B     		cmp	r3, #11
 5961 12ce 18D1     		bne	.L253
 252:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    win = 0;
 5962              		.loc 6 252 0
 5963 12d0 1823     		movs	r3, #24
 5964 12d2 FB18     		adds	r3, r7, r3
 5965 12d4 0022     		movs	r2, #0
 5966 12d6 1A70     		strb	r2, [r3]
 253:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    xPoints = 0;
 5967              		.loc 6 253 0
 5968 12d8 0023     		movs	r3, #0
 5969 12da 3B63     		str	r3, [r7, #48]
 254:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    oPoints = 0;
 5970              		.loc 6 254 0
 5971 12dc 0023     		movs	r3, #0
 5972 12de FB62     		str	r3, [r7, #44]
 5973              	.LBB19:
 255:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    for(int i = 0; i < 9; i++) {
 5974              		.loc 6 255 0
 5975 12e0 0023     		movs	r3, #0
 5976 12e2 FB61     		str	r3, [r7, #28]
 5977 12e4 07E0     		b	.L254
 5978              	.L255:
 256:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		grid[i] = 0;
 5979              		.loc 6 256 0 discriminator 3
 5980 12e6 144A     		ldr	r2, .L257+12
 5981 12e8 FB69     		ldr	r3, [r7, #28]
 5982 12ea D318     		adds	r3, r2, r3
 5983 12ec 0022     		movs	r2, #0
 5984 12ee 1A70     		strb	r2, [r3]
 255:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    for(int i = 0; i < 9; i++) {
 5985              		.loc 6 255 0 discriminator 3
 5986 12f0 FB69     		ldr	r3, [r7, #28]
 5987 12f2 0133     		adds	r3, r3, #1
 5988 12f4 FB61     		str	r3, [r7, #28]
 5989              	.L254:
 255:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    for(int i = 0; i < 9; i++) {
 5990              		.loc 6 255 0 is_stmt 0 discriminator 1
 5991 12f6 FB69     		ldr	r3, [r7, #28]
 5992 12f8 082B     		cmp	r3, #8
 5993 12fa F4DD     		ble	.L255
 5994              	.LBE19:
 257:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	    }
 258:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 		gameOver = 0;
 5995              		.loc 6 258 0 is_stmt 1
 5996 12fc 0C4B     		ldr	r3, .L257+4
 5997 12fe 0022     		movs	r2, #0
 5998 1300 1A70     		strb	r2, [r3]
 5999              	.L253:
 259:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	}
 260:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	ascii_write_string(X, xPoints, 1);
 6000              		.loc 6 260 0
 6001 1302 3B6B     		ldr	r3, [r7, #48]
 6002 1304 D9B2     		uxtb	r1, r3
 6003 1306 3B1D     		adds	r3, r7, #4
 6004 1308 0122     		movs	r2, #1
 6005 130a 1800     		movs	r0, r3
 6006 130c FFF7FEFF 		bl	ascii_write_string
 261:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	ascii_write_string(O, oPoints, 2);
 6007              		.loc 6 261 0
 6008 1310 FB6A     		ldr	r3, [r7, #44]
 6009 1312 D9B2     		uxtb	r1, r3
 6010 1314 0823     		movs	r3, #8
 6011 1316 FB18     		adds	r3, r7, r3
 6012 1318 0222     		movs	r2, #2
 6013 131a 1800     		movs	r0, r3
 6014 131c FFF7FEFF 		bl	ascii_write_string
 262:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	delay_milli(40);
 6015              		.loc 6 262 0
 6016 1320 2820     		movs	r0, #40
 6017 1322 FFF7FEFF 		bl	delay_milli
 263:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	graphic_draw_screen();
 6018              		.loc 6 263 0
 6019 1326 FFF7FEFF 		bl	graphic_draw_screen
 6020              	.LBE15:
 190:C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe\startup.c **** 	turn = 0;
 6021              		.loc 6 190 0
 6022 132a F5E6     		b	.L256
 6023              	.L258:
 6024              		.align	2
 6025              	.L257:
 6026 132c 00000000 		.word	gameState
 6027 1330 00000000 		.word	gameOver
 6028 1334 48000000 		.word	.LC1
 6029 1338 00000000 		.word	grid
 6030 133c 4F3A2000 		.word	2112079
 6031 1340 583A2000 		.word	2112088
 6032 1344 00000000 		.word	turn
 6033 1348 00000000 		.word	draw
 6034 134c 00000000 		.word	big_cross
 6035 1350 00000000 		.word	big_circle
 6036 1354 00000000 		.word	winner
 6037 1358 00000000 		.word	cross
 6038 135c 00000000 		.word	circle
 6039 1360 00000000 		.word	victory
 6040              		.cfi_endproc
 6041              	.LFE48:
 6043              	.Letext0:
 6044              		.file 7 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\machine\\_default_types.h"
 6045              		.file 8 "c:\\cseapp\\codelite\\tools\\gcc-arm\\arm-none-eabi\\include\\sys\\_stdint.h"
 6046              		.file 9 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/gpio.h"
 6047              		.file 10 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/big_circle.xbm"
 6048              		.file 11 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/big_cross.xbm"
 6049              		.file 12 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/circle.xbm"
 6050              		.file 13 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/cross.xbm"
 6051              		.file 14 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/draw.xbm"
 6052              		.file 15 "C:/Users/adamt/Documents/IT/Maskinprog/DAT017/mop/tic_tac_toe/victory.xbm"
