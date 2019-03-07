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
  24              		.file 1 "/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h"
   1:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** #ifndef ASCII_DISPLAY_H
   2:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** #define ASCII_DISPLAY_H
   3:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** #include "gpio.h"
   4:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** 
   5:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** #define B_E 0x40 /* Enable-signal */
   6:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** #define B_SELECT 4 /* Select ASCII-display */
   7:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** #define B_RW 2 /* 0=Write, 1=Read */
   8:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** #define B_RS 1 /* 0=Control, 1=Data */
   9:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** 
  10:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** void ascii_ctrl_bit_set( unsigned char x ) {
  25              		.loc 1 10 44
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
  11:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     unsigned char c;
  12:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     c = GPIO_E.odrLow;
  40              		.loc 1 12 9
  41 000c 0B4A     		ldr	r2, .L2
  42              		.loc 1 12 7
  43 000e 0F21     		movs	r1, #15
  44 0010 7B18     		adds	r3, r7, r1
  45 0012 127D     		ldrb	r2, [r2, #20]
  46 0014 1A70     		strb	r2, [r3]
  13:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     c |= ( B_SELECT | x );
  47              		.loc 1 13 7
  48 0016 FA1D     		adds	r2, r7, #7
  49 0018 7B18     		adds	r3, r7, r1
  50 001a 1278     		ldrb	r2, [r2]
  51 001c 1B78     		ldrb	r3, [r3]
  52 001e 1343     		orrs	r3, r2
  53 0020 DAB2     		uxtb	r2, r3
  54 0022 0800     		movs	r0, r1
  55 0024 7B18     		adds	r3, r7, r1
  56 0026 0421     		movs	r1, #4
  57 0028 0A43     		orrs	r2, r1
  58 002a 1A70     		strb	r2, [r3]
  14:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     GPIO_E.odrLow = c;
  59              		.loc 1 14 5
  60 002c 034A     		ldr	r2, .L2
  61              		.loc 1 14 19
  62 002e 3B18     		adds	r3, r7, r0
  63 0030 1B78     		ldrb	r3, [r3]
  64 0032 1375     		strb	r3, [r2, #20]
  15:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** }
  65              		.loc 1 15 1
  66 0034 C046     		nop
  67 0036 BD46     		mov	sp, r7
  68 0038 04B0     		add	sp, sp, #16
  69              		@ sp needed
  70 003a 80BD     		pop	{r7, pc}
  71              	.L3:
  72              		.align	2
  73              	.L2:
  74 003c 00100240 		.word	1073876992
  75              		.cfi_endproc
  76              	.LFE0:
  78              		.align	1
  79              		.global	ascii_ctrl_bit_clear
  80              		.syntax unified
  81              		.code	16
  82              		.thumb_func
  83              		.fpu softvfp
  85              	ascii_ctrl_bit_clear:
  86              	.LFB1:
  16:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** void ascii_ctrl_bit_clear( unsigned char x ) {
  87              		.loc 1 16 46
  88              		.cfi_startproc
  89              		@ args = 0, pretend = 0, frame = 16
  90              		@ frame_needed = 1, uses_anonymous_args = 0
  91 0040 80B5     		push	{r7, lr}
  92              		.cfi_def_cfa_offset 8
  93              		.cfi_offset 7, -8
  94              		.cfi_offset 14, -4
  95 0042 84B0     		sub	sp, sp, #16
  96              		.cfi_def_cfa_offset 24
  97 0044 00AF     		add	r7, sp, #0
  98              		.cfi_def_cfa_register 7
  99 0046 0200     		movs	r2, r0
 100 0048 FB1D     		adds	r3, r7, #7
 101 004a 1A70     		strb	r2, [r3]
  17:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     unsigned char c;
  18:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     c = GPIO_E.odrLow;
 102              		.loc 1 18 9
 103 004c 0D4A     		ldr	r2, .L5
 104              		.loc 1 18 7
 105 004e 0F21     		movs	r1, #15
 106 0050 7B18     		adds	r3, r7, r1
 107 0052 127D     		ldrb	r2, [r2, #20]
 108 0054 1A70     		strb	r2, [r3]
  19:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     c &= ( B_SELECT | ~x );
 109              		.loc 1 19 21
 110 0056 FB1D     		adds	r3, r7, #7
 111 0058 1B78     		ldrb	r3, [r3]
 112 005a 5BB2     		sxtb	r3, r3
 113 005c DB43     		mvns	r3, r3
 114 005e 5BB2     		sxtb	r3, r3
 115 0060 0422     		movs	r2, #4
 116 0062 1343     		orrs	r3, r2
 117 0064 5BB2     		sxtb	r3, r3
 118              		.loc 1 19 7
 119 0066 7A18     		adds	r2, r7, r1
 120 0068 1278     		ldrb	r2, [r2]
 121 006a 52B2     		sxtb	r2, r2
 122 006c 1340     		ands	r3, r2
 123 006e 5AB2     		sxtb	r2, r3
 124 0070 7B18     		adds	r3, r7, r1
 125 0072 1A70     		strb	r2, [r3]
  20:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     GPIO_E.odrLow = c;
 126              		.loc 1 20 5
 127 0074 034A     		ldr	r2, .L5
 128              		.loc 1 20 19
 129 0076 7B18     		adds	r3, r7, r1
 130 0078 1B78     		ldrb	r3, [r3]
 131 007a 1375     		strb	r3, [r2, #20]
  21:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** }
 132              		.loc 1 21 1
 133 007c C046     		nop
 134 007e BD46     		mov	sp, r7
 135 0080 04B0     		add	sp, sp, #16
 136              		@ sp needed
 137 0082 80BD     		pop	{r7, pc}
 138              	.L6:
 139              		.align	2
 140              	.L5:
 141 0084 00100240 		.word	1073876992
 142              		.cfi_endproc
 143              	.LFE1:
 145              		.align	1
 146              		.global	ascii_write_controller
 147              		.syntax unified
 148              		.code	16
 149              		.thumb_func
 150              		.fpu softvfp
 152              	ascii_write_controller:
 153              	.LFB2:
  22:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** 
  23:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** void ascii_write_controller( unsigned char c ) {
 154              		.loc 1 23 48
 155              		.cfi_startproc
 156              		@ args = 0, pretend = 0, frame = 8
 157              		@ frame_needed = 1, uses_anonymous_args = 0
 158 0088 80B5     		push	{r7, lr}
 159              		.cfi_def_cfa_offset 8
 160              		.cfi_offset 7, -8
 161              		.cfi_offset 14, -4
 162 008a 82B0     		sub	sp, sp, #8
 163              		.cfi_def_cfa_offset 16
 164 008c 00AF     		add	r7, sp, #0
 165              		.cfi_def_cfa_register 7
 166 008e 0200     		movs	r2, r0
 167 0090 FB1D     		adds	r3, r7, #7
 168 0092 1A70     		strb	r2, [r3]
  24:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     ascii_ctrl_bit_set( B_E );
 169              		.loc 1 24 5
 170 0094 4020     		movs	r0, #64
 171 0096 FFF7FEFF 		bl	ascii_ctrl_bit_set
  25:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     GPIO_E.odrHigh = c;
 172              		.loc 1 25 5
 173 009a 064A     		ldr	r2, .L8
 174              		.loc 1 25 20
 175 009c FB1D     		adds	r3, r7, #7
 176 009e 1B78     		ldrb	r3, [r3]
 177 00a0 5375     		strb	r3, [r2, #21]
  26:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     ascii_ctrl_bit_clear( B_E );
 178              		.loc 1 26 5
 179 00a2 4020     		movs	r0, #64
 180 00a4 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  27:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     delay_250ns();
 181              		.loc 1 27 5
 182 00a8 FFF7FEFF 		bl	delay_250ns
  28:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** }
 183              		.loc 1 28 1
 184 00ac C046     		nop
 185 00ae BD46     		mov	sp, r7
 186 00b0 02B0     		add	sp, sp, #8
 187              		@ sp needed
 188 00b2 80BD     		pop	{r7, pc}
 189              	.L9:
 190              		.align	2
 191              	.L8:
 192 00b4 00100240 		.word	1073876992
 193              		.cfi_endproc
 194              	.LFE2:
 196              		.align	1
 197              		.global	ascii_read_controller
 198              		.syntax unified
 199              		.code	16
 200              		.thumb_func
 201              		.fpu softvfp
 203              	ascii_read_controller:
 204              	.LFB3:
  29:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** unsigned char ascii_read_controller( void ) {
 205              		.loc 1 29 45
 206              		.cfi_startproc
 207              		@ args = 0, pretend = 0, frame = 8
 208              		@ frame_needed = 1, uses_anonymous_args = 0
 209 00b8 80B5     		push	{r7, lr}
 210              		.cfi_def_cfa_offset 8
 211              		.cfi_offset 7, -8
 212              		.cfi_offset 14, -4
 213 00ba 82B0     		sub	sp, sp, #8
 214              		.cfi_def_cfa_offset 16
 215 00bc 00AF     		add	r7, sp, #0
 216              		.cfi_def_cfa_register 7
  30:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     unsigned char c;
  31:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     ascii_ctrl_bit_set( B_E );
 217              		.loc 1 31 5
 218 00be 4020     		movs	r0, #64
 219 00c0 FFF7FEFF 		bl	ascii_ctrl_bit_set
  32:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     delay_250ns();
 220              		.loc 1 32 5
 221 00c4 FFF7FEFF 		bl	delay_250ns
  33:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     delay_250ns();
 222              		.loc 1 33 5
 223 00c8 FFF7FEFF 		bl	delay_250ns
  34:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     c = GPIO_E.idrHigh;
 224              		.loc 1 34 9
 225 00cc 064A     		ldr	r2, .L12
 226              		.loc 1 34 7
 227 00ce FB1D     		adds	r3, r7, #7
 228 00d0 527C     		ldrb	r2, [r2, #17]
 229 00d2 1A70     		strb	r2, [r3]
  35:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     ascii_ctrl_bit_clear( B_E );
 230              		.loc 1 35 5
 231 00d4 4020     		movs	r0, #64
 232 00d6 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  36:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     return c;
 233              		.loc 1 36 12
 234 00da FB1D     		adds	r3, r7, #7
 235 00dc 1B78     		ldrb	r3, [r3]
  37:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** }
 236              		.loc 1 37 1
 237 00de 1800     		movs	r0, r3
 238 00e0 BD46     		mov	sp, r7
 239 00e2 02B0     		add	sp, sp, #8
 240              		@ sp needed
 241 00e4 80BD     		pop	{r7, pc}
 242              	.L13:
 243 00e6 C046     		.align	2
 244              	.L12:
 245 00e8 00100240 		.word	1073876992
 246              		.cfi_endproc
 247              	.LFE3:
 249              		.align	1
 250              		.global	ascii_read_status
 251              		.syntax unified
 252              		.code	16
 253              		.thumb_func
 254              		.fpu softvfp
 256              	ascii_read_status:
 257              	.LFB4:
  38:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** unsigned char ascii_read_status() {
 258              		.loc 1 38 35
 259              		.cfi_startproc
 260              		@ args = 0, pretend = 0, frame = 8
 261              		@ frame_needed = 1, uses_anonymous_args = 0
 262 00ec 90B5     		push	{r4, r7, lr}
 263              		.cfi_def_cfa_offset 12
 264              		.cfi_offset 4, -12
 265              		.cfi_offset 7, -8
 266              		.cfi_offset 14, -4
 267 00ee 83B0     		sub	sp, sp, #12
 268              		.cfi_def_cfa_offset 24
 269 00f0 00AF     		add	r7, sp, #0
 270              		.cfi_def_cfa_register 7
  39:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     unsigned char c;
  40:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     GPIO_E.moder = 0x00005555;
 271              		.loc 1 40 5
 272 00f2 0B4B     		ldr	r3, .L16
 273              		.loc 1 40 18
 274 00f4 0B4A     		ldr	r2, .L16+4
 275 00f6 1A60     		str	r2, [r3]
  41:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     ascii_ctrl_bit_set( B_RW );
 276              		.loc 1 41 5
 277 00f8 0220     		movs	r0, #2
 278 00fa FFF7FEFF 		bl	ascii_ctrl_bit_set
  42:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     ascii_ctrl_bit_clear( B_RS );
 279              		.loc 1 42 5
 280 00fe 0120     		movs	r0, #1
 281 0100 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  43:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     c = ascii_read_controller( );
 282              		.loc 1 43 9
 283 0104 FC1D     		adds	r4, r7, #7
 284 0106 FFF7FEFF 		bl	ascii_read_controller
 285 010a 0300     		movs	r3, r0
 286 010c 2370     		strb	r3, [r4]
  44:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     GPIO_E.moder = 0x55555555;
 287              		.loc 1 44 5
 288 010e 044B     		ldr	r3, .L16
 289              		.loc 1 44 18
 290 0110 054A     		ldr	r2, .L16+8
 291 0112 1A60     		str	r2, [r3]
  45:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     return c;
 292              		.loc 1 45 12
 293 0114 FB1D     		adds	r3, r7, #7
 294 0116 1B78     		ldrb	r3, [r3]
  46:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** }
 295              		.loc 1 46 1
 296 0118 1800     		movs	r0, r3
 297 011a BD46     		mov	sp, r7
 298 011c 03B0     		add	sp, sp, #12
 299              		@ sp needed
 300 011e 90BD     		pop	{r4, r7, pc}
 301              	.L17:
 302              		.align	2
 303              	.L16:
 304 0120 00100240 		.word	1073876992
 305 0124 55550000 		.word	21845
 306 0128 55555555 		.word	1431655765
 307              		.cfi_endproc
 308              	.LFE4:
 310              		.align	1
 311              		.global	ascii_write_cmd
 312              		.syntax unified
 313              		.code	16
 314              		.thumb_func
 315              		.fpu softvfp
 317              	ascii_write_cmd:
 318              	.LFB5:
  47:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** 
  48:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** void ascii_write_cmd(unsigned char command) {
 319              		.loc 1 48 45
 320              		.cfi_startproc
 321              		@ args = 0, pretend = 0, frame = 8
 322              		@ frame_needed = 1, uses_anonymous_args = 0
 323 012c 80B5     		push	{r7, lr}
 324              		.cfi_def_cfa_offset 8
 325              		.cfi_offset 7, -8
 326              		.cfi_offset 14, -4
 327 012e 82B0     		sub	sp, sp, #8
 328              		.cfi_def_cfa_offset 16
 329 0130 00AF     		add	r7, sp, #0
 330              		.cfi_def_cfa_register 7
 331 0132 0200     		movs	r2, r0
 332 0134 FB1D     		adds	r3, r7, #7
 333 0136 1A70     		strb	r2, [r3]
  49:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     ascii_ctrl_bit_clear(B_RS);
 334              		.loc 1 49 5
 335 0138 0120     		movs	r0, #1
 336 013a FFF7FEFF 		bl	ascii_ctrl_bit_clear
  50:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     ascii_ctrl_bit_clear(B_RW);
 337              		.loc 1 50 5
 338 013e 0220     		movs	r0, #2
 339 0140 FFF7FEFF 		bl	ascii_ctrl_bit_clear
  51:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     ascii_write_controller(command);
 340              		.loc 1 51 5
 341 0144 FB1D     		adds	r3, r7, #7
 342 0146 1B78     		ldrb	r3, [r3]
 343 0148 1800     		movs	r0, r3
 344 014a FFF7FEFF 		bl	ascii_write_controller
  52:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** }
 345              		.loc 1 52 1
 346 014e C046     		nop
 347 0150 BD46     		mov	sp, r7
 348 0152 02B0     		add	sp, sp, #8
 349              		@ sp needed
 350 0154 80BD     		pop	{r7, pc}
 351              		.cfi_endproc
 352              	.LFE5:
 354              		.align	1
 355              		.global	ascii_write_data
 356              		.syntax unified
 357              		.code	16
 358              		.thumb_func
 359              		.fpu softvfp
 361              	ascii_write_data:
 362              	.LFB6:
  53:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** 
  54:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** void ascii_write_data(unsigned char data) {
 363              		.loc 1 54 43
 364              		.cfi_startproc
 365              		@ args = 0, pretend = 0, frame = 8
 366              		@ frame_needed = 1, uses_anonymous_args = 0
 367 0156 80B5     		push	{r7, lr}
 368              		.cfi_def_cfa_offset 8
 369              		.cfi_offset 7, -8
 370              		.cfi_offset 14, -4
 371 0158 82B0     		sub	sp, sp, #8
 372              		.cfi_def_cfa_offset 16
 373 015a 00AF     		add	r7, sp, #0
 374              		.cfi_def_cfa_register 7
 375 015c 0200     		movs	r2, r0
 376 015e FB1D     		adds	r3, r7, #7
 377 0160 1A70     		strb	r2, [r3]
  55:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     ascii_ctrl_bit_set(B_RS);
 378              		.loc 1 55 5
 379 0162 0120     		movs	r0, #1
 380 0164 FFF7FEFF 		bl	ascii_ctrl_bit_set
  56:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     ascii_ctrl_bit_clear(B_RW);
 381              		.loc 1 56 5
 382 0168 0220     		movs	r0, #2
 383 016a FFF7FEFF 		bl	ascii_ctrl_bit_clear
  57:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     ascii_write_controller(data);
 384              		.loc 1 57 5
 385 016e FB1D     		adds	r3, r7, #7
 386 0170 1B78     		ldrb	r3, [r3]
 387 0172 1800     		movs	r0, r3
 388 0174 FFF7FEFF 		bl	ascii_write_controller
  58:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** }
 389              		.loc 1 58 1
 390 0178 C046     		nop
 391 017a BD46     		mov	sp, r7
 392 017c 02B0     		add	sp, sp, #8
 393              		@ sp needed
 394 017e 80BD     		pop	{r7, pc}
 395              		.cfi_endproc
 396              	.LFE6:
 398              		.align	1
 399              		.global	ascii_write_char
 400              		.syntax unified
 401              		.code	16
 402              		.thumb_func
 403              		.fpu softvfp
 405              	ascii_write_char:
 406              	.LFB7:
  59:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** 
  60:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** void ascii_write_char(unsigned char c) {
 407              		.loc 1 60 40
 408              		.cfi_startproc
 409              		@ args = 0, pretend = 0, frame = 8
 410              		@ frame_needed = 1, uses_anonymous_args = 0
 411 0180 80B5     		push	{r7, lr}
 412              		.cfi_def_cfa_offset 8
 413              		.cfi_offset 7, -8
 414              		.cfi_offset 14, -4
 415 0182 82B0     		sub	sp, sp, #8
 416              		.cfi_def_cfa_offset 16
 417 0184 00AF     		add	r7, sp, #0
 418              		.cfi_def_cfa_register 7
 419 0186 0200     		movs	r2, r0
 420 0188 FB1D     		adds	r3, r7, #7
 421 018a 1A70     		strb	r2, [r3]
  61:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     while((ascii_read_status() & 0x80) == 0x80) {}
 422              		.loc 1 61 10
 423 018c C046     		nop
 424              	.L21:
 425              		.loc 1 61 12 discriminator 1
 426 018e FFF7FEFF 		bl	ascii_read_status
 427 0192 0300     		movs	r3, r0
 428              		.loc 1 61 32 discriminator 1
 429 0194 1A00     		movs	r2, r3
 430 0196 8023     		movs	r3, #128
 431 0198 1340     		ands	r3, r2
 432              		.loc 1 61 10 discriminator 1
 433 019a 802B     		cmp	r3, #128
 434 019c F7D0     		beq	.L21
  62:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     delay_micro(8);
 435              		.loc 1 62 5
 436 019e 0820     		movs	r0, #8
 437 01a0 FFF7FEFF 		bl	delay_micro
  63:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     ascii_write_data(c);
 438              		.loc 1 63 5
 439 01a4 FB1D     		adds	r3, r7, #7
 440 01a6 1B78     		ldrb	r3, [r3]
 441 01a8 1800     		movs	r0, r3
 442 01aa FFF7FEFF 		bl	ascii_write_data
  64:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     delay_micro(50);
 443              		.loc 1 64 5
 444 01ae 3220     		movs	r0, #50
 445 01b0 FFF7FEFF 		bl	delay_micro
  65:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** }
 446              		.loc 1 65 1
 447 01b4 C046     		nop
 448 01b6 BD46     		mov	sp, r7
 449 01b8 02B0     		add	sp, sp, #8
 450              		@ sp needed
 451 01ba 80BD     		pop	{r7, pc}
 452              		.cfi_endproc
 453              	.LFE7:
 455              		.align	1
 456              		.global	ascii_gotoxy
 457              		.syntax unified
 458              		.code	16
 459              		.thumb_func
 460              		.fpu softvfp
 462              	ascii_gotoxy:
 463              	.LFB8:
  66:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** 
  67:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** void ascii_gotoxy(int row, int column){
 464              		.loc 1 67 39
 465              		.cfi_startproc
 466              		@ args = 0, pretend = 0, frame = 16
 467              		@ frame_needed = 1, uses_anonymous_args = 0
 468 01bc 80B5     		push	{r7, lr}
 469              		.cfi_def_cfa_offset 8
 470              		.cfi_offset 7, -8
 471              		.cfi_offset 14, -4
 472 01be 84B0     		sub	sp, sp, #16
 473              		.cfi_def_cfa_offset 24
 474 01c0 00AF     		add	r7, sp, #0
 475              		.cfi_def_cfa_register 7
 476 01c2 7860     		str	r0, [r7, #4]
 477 01c4 3960     		str	r1, [r7]
  68:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** 	while((ascii_read_status() & 0x80) == 0x80) 
 478              		.loc 1 68 7
 479 01c6 02E0     		b	.L23
 480              	.L24:
 481              	.LBB2:
  69:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** 	delay_micro(8);
 482              		.loc 1 69 2
 483 01c8 0820     		movs	r0, #8
 484 01ca FFF7FEFF 		bl	delay_micro
 485              	.L23:
 486              	.LBE2:
  68:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** 	while((ascii_read_status() & 0x80) == 0x80) 
 487              		.loc 1 68 9
 488 01ce FFF7FEFF 		bl	ascii_read_status
 489 01d2 0300     		movs	r3, r0
  68:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** 	while((ascii_read_status() & 0x80) == 0x80) 
 490              		.loc 1 68 29
 491 01d4 1A00     		movs	r2, r3
 492 01d6 8023     		movs	r3, #128
 493 01d8 1340     		ands	r3, r2
  68:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** 	while((ascii_read_status() & 0x80) == 0x80) 
 494              		.loc 1 68 7
 495 01da 802B     		cmp	r3, #128
 496 01dc F4D0     		beq	.L24
  70:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     unsigned char address = row-1;
 497              		.loc 1 70 32
 498 01de 7B68     		ldr	r3, [r7, #4]
 499 01e0 DAB2     		uxtb	r2, r3
 500              		.loc 1 70 19
 501 01e2 0F21     		movs	r1, #15
 502 01e4 7B18     		adds	r3, r7, r1
 503 01e6 013A     		subs	r2, r2, #1
 504 01e8 1A70     		strb	r2, [r3]
  71:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     if (column == 2){
 505              		.loc 1 71 8
 506 01ea 3B68     		ldr	r3, [r7]
 507 01ec 022B     		cmp	r3, #2
 508 01ee 04D1     		bne	.L25
  72:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****         address += 0x40;
 509              		.loc 1 72 17
 510 01f0 7B18     		adds	r3, r7, r1
 511 01f2 7A18     		adds	r2, r7, r1
 512 01f4 1278     		ldrb	r2, [r2]
 513 01f6 4032     		adds	r2, r2, #64
 514 01f8 1A70     		strb	r2, [r3]
 515              	.L25:
  73:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     }
  74:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     ascii_write_cmd((0x80 | address));
 516              		.loc 1 74 5
 517 01fa 0F23     		movs	r3, #15
 518 01fc FB18     		adds	r3, r7, r3
 519 01fe 1B78     		ldrb	r3, [r3]
 520 0200 8022     		movs	r2, #128
 521 0202 5242     		rsbs	r2, r2, #0
 522 0204 1343     		orrs	r3, r2
 523 0206 DBB2     		uxtb	r3, r3
 524 0208 1800     		movs	r0, r3
 525 020a FFF7FEFF 		bl	ascii_write_cmd
  75:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** }
 526              		.loc 1 75 1
 527 020e C046     		nop
 528 0210 BD46     		mov	sp, r7
 529 0212 04B0     		add	sp, sp, #16
 530              		@ sp needed
 531 0214 80BD     		pop	{r7, pc}
 532              		.cfi_endproc
 533              	.LFE8:
 535              		.align	1
 536              		.global	function_set
 537              		.syntax unified
 538              		.code	16
 539              		.thumb_func
 540              		.fpu softvfp
 542              	function_set:
 543              	.LFB9:
  76:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** void function_set(){
 544              		.loc 1 76 20
 545              		.cfi_startproc
 546              		@ args = 0, pretend = 0, frame = 0
 547              		@ frame_needed = 1, uses_anonymous_args = 0
 548 0216 80B5     		push	{r7, lr}
 549              		.cfi_def_cfa_offset 8
 550              		.cfi_offset 7, -8
 551              		.cfi_offset 14, -4
 552 0218 00AF     		add	r7, sp, #0
 553              		.cfi_def_cfa_register 7
  77:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     while((ascii_read_status() & 0x80) == 0x80) {}
 554              		.loc 1 77 10
 555 021a C046     		nop
 556              	.L27:
 557              		.loc 1 77 12 discriminator 1
 558 021c FFF7FEFF 		bl	ascii_read_status
 559 0220 0300     		movs	r3, r0
 560              		.loc 1 77 32 discriminator 1
 561 0222 1A00     		movs	r2, r3
 562 0224 8023     		movs	r3, #128
 563 0226 1340     		ands	r3, r2
 564              		.loc 1 77 10 discriminator 1
 565 0228 802B     		cmp	r3, #128
 566 022a F7D0     		beq	.L27
  78:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     delay_micro(8);
 567              		.loc 1 78 5
 568 022c 0820     		movs	r0, #8
 569 022e FFF7FEFF 		bl	delay_micro
  79:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     ascii_write_cmd(0b111000); // 2 rader 2x8 tecken
 570              		.loc 1 79 5
 571 0232 3820     		movs	r0, #56
 572 0234 FFF7FEFF 		bl	ascii_write_cmd
  80:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     delay_micro(50);
 573              		.loc 1 80 5
 574 0238 3220     		movs	r0, #50
 575 023a FFF7FEFF 		bl	delay_micro
  81:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** }
 576              		.loc 1 81 1
 577 023e C046     		nop
 578 0240 BD46     		mov	sp, r7
 579              		@ sp needed
 580 0242 80BD     		pop	{r7, pc}
 581              		.cfi_endproc
 582              	.LFE9:
 584              		.align	1
 585              		.global	display_control
 586              		.syntax unified
 587              		.code	16
 588              		.thumb_func
 589              		.fpu softvfp
 591              	display_control:
 592              	.LFB10:
  82:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** void display_control(){
 593              		.loc 1 82 23
 594              		.cfi_startproc
 595              		@ args = 0, pretend = 0, frame = 0
 596              		@ frame_needed = 1, uses_anonymous_args = 0
 597 0244 80B5     		push	{r7, lr}
 598              		.cfi_def_cfa_offset 8
 599              		.cfi_offset 7, -8
 600              		.cfi_offset 14, -4
 601 0246 00AF     		add	r7, sp, #0
 602              		.cfi_def_cfa_register 7
  83:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     while((ascii_read_status() & 0x80) == 0x80) {}
 603              		.loc 1 83 10
 604 0248 C046     		nop
 605              	.L29:
 606              		.loc 1 83 12 discriminator 1
 607 024a FFF7FEFF 		bl	ascii_read_status
 608 024e 0300     		movs	r3, r0
 609              		.loc 1 83 32 discriminator 1
 610 0250 1A00     		movs	r2, r3
 611 0252 8023     		movs	r3, #128
 612 0254 1340     		ands	r3, r2
 613              		.loc 1 83 10 discriminator 1
 614 0256 802B     		cmp	r3, #128
 615 0258 F7D0     		beq	.L29
  84:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     delay_micro(8);
 616              		.loc 1 84 5
 617 025a 0820     		movs	r0, #8
 618 025c FFF7FEFF 		bl	delay_micro
  85:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     ascii_write_cmd(0b1110);
 619              		.loc 1 85 5
 620 0260 0E20     		movs	r0, #14
 621 0262 FFF7FEFF 		bl	ascii_write_cmd
  86:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     delay_micro(50);
 622              		.loc 1 86 5
 623 0266 3220     		movs	r0, #50
 624 0268 FFF7FEFF 		bl	delay_micro
  87:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** 
  88:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** }
 625              		.loc 1 88 1
 626 026c C046     		nop
 627 026e BD46     		mov	sp, r7
 628              		@ sp needed
 629 0270 80BD     		pop	{r7, pc}
 630              		.cfi_endproc
 631              	.LFE10:
 633              		.align	1
 634              		.global	entry_mode
 635              		.syntax unified
 636              		.code	16
 637              		.thumb_func
 638              		.fpu softvfp
 640              	entry_mode:
 641              	.LFB11:
  89:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** void entry_mode(){
 642              		.loc 1 89 18
 643              		.cfi_startproc
 644              		@ args = 0, pretend = 0, frame = 0
 645              		@ frame_needed = 1, uses_anonymous_args = 0
 646 0272 80B5     		push	{r7, lr}
 647              		.cfi_def_cfa_offset 8
 648              		.cfi_offset 7, -8
 649              		.cfi_offset 14, -4
 650 0274 00AF     		add	r7, sp, #0
 651              		.cfi_def_cfa_register 7
  90:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     while((ascii_read_status() & 0x80) == 0x80) {}
 652              		.loc 1 90 10
 653 0276 C046     		nop
 654              	.L31:
 655              		.loc 1 90 12 discriminator 1
 656 0278 FFF7FEFF 		bl	ascii_read_status
 657 027c 0300     		movs	r3, r0
 658              		.loc 1 90 32 discriminator 1
 659 027e 1A00     		movs	r2, r3
 660 0280 8023     		movs	r3, #128
 661 0282 1340     		ands	r3, r2
 662              		.loc 1 90 10 discriminator 1
 663 0284 802B     		cmp	r3, #128
 664 0286 F7D0     		beq	.L31
  91:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     delay_micro(8);
 665              		.loc 1 91 5
 666 0288 0820     		movs	r0, #8
 667 028a FFF7FEFF 		bl	delay_micro
  92:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     ascii_write_cmd(0b110);
 668              		.loc 1 92 5
 669 028e 0620     		movs	r0, #6
 670 0290 FFF7FEFF 		bl	ascii_write_cmd
  93:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     delay_micro(50);
 671              		.loc 1 93 5
 672 0294 3220     		movs	r0, #50
 673 0296 FFF7FEFF 		bl	delay_micro
  94:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** }
 674              		.loc 1 94 1
 675 029a C046     		nop
 676 029c BD46     		mov	sp, r7
 677              		@ sp needed
 678 029e 80BD     		pop	{r7, pc}
 679              		.cfi_endproc
 680              	.LFE11:
 682              		.align	1
 683              		.global	clear_display
 684              		.syntax unified
 685              		.code	16
 686              		.thumb_func
 687              		.fpu softvfp
 689              	clear_display:
 690              	.LFB12:
  95:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** void clear_display() {
 691              		.loc 1 95 22
 692              		.cfi_startproc
 693              		@ args = 0, pretend = 0, frame = 0
 694              		@ frame_needed = 1, uses_anonymous_args = 0
 695 02a0 80B5     		push	{r7, lr}
 696              		.cfi_def_cfa_offset 8
 697              		.cfi_offset 7, -8
 698              		.cfi_offset 14, -4
 699 02a2 00AF     		add	r7, sp, #0
 700              		.cfi_def_cfa_register 7
  96:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     while((ascii_read_status() & 0x80) == 0x80) {}
 701              		.loc 1 96 10
 702 02a4 C046     		nop
 703              	.L33:
 704              		.loc 1 96 12 discriminator 1
 705 02a6 FFF7FEFF 		bl	ascii_read_status
 706 02aa 0300     		movs	r3, r0
 707              		.loc 1 96 32 discriminator 1
 708 02ac 1A00     		movs	r2, r3
 709 02ae 8023     		movs	r3, #128
 710 02b0 1340     		ands	r3, r2
 711              		.loc 1 96 10 discriminator 1
 712 02b2 802B     		cmp	r3, #128
 713 02b4 F7D0     		beq	.L33
  97:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     delay_micro(8);
 714              		.loc 1 97 5
 715 02b6 0820     		movs	r0, #8
 716 02b8 FFF7FEFF 		bl	delay_micro
  98:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     ascii_write_cmd(1);
 717              		.loc 1 98 5
 718 02bc 0120     		movs	r0, #1
 719 02be FFF7FEFF 		bl	ascii_write_cmd
  99:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     delay_milli(2);
 720              		.loc 1 99 5
 721 02c2 0220     		movs	r0, #2
 722 02c4 FFF7FEFF 		bl	delay_milli
 100:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** }
 723              		.loc 1 100 1
 724 02c8 C046     		nop
 725 02ca BD46     		mov	sp, r7
 726              		@ sp needed
 727 02cc 80BD     		pop	{r7, pc}
 728              		.cfi_endproc
 729              	.LFE12:
 731              		.align	1
 732              		.global	ascii_init
 733              		.syntax unified
 734              		.code	16
 735              		.thumb_func
 736              		.fpu softvfp
 738              	ascii_init:
 739              	.LFB13:
 101:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** void ascii_init(){
 740              		.loc 1 101 18
 741              		.cfi_startproc
 742              		@ args = 0, pretend = 0, frame = 0
 743              		@ frame_needed = 1, uses_anonymous_args = 0
 744 02ce 80B5     		push	{r7, lr}
 745              		.cfi_def_cfa_offset 8
 746              		.cfi_offset 7, -8
 747              		.cfi_offset 14, -4
 748 02d0 00AF     		add	r7, sp, #0
 749              		.cfi_def_cfa_register 7
 102:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     function_set(); 
 750              		.loc 1 102 5
 751 02d2 FFF7FEFF 		bl	function_set
 103:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     display_control();
 752              		.loc 1 103 5
 753 02d6 FFF7FEFF 		bl	display_control
 104:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     entry_mode();
 754              		.loc 1 104 5
 755 02da FFF7FEFF 		bl	entry_mode
 105:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h ****     clear_display();
 756              		.loc 1 105 5
 757 02de FFF7FEFF 		bl	clear_display
 106:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/ascii_display.h **** }
 758              		.loc 1 106 1
 759 02e2 C046     		nop
 760 02e4 BD46     		mov	sp, r7
 761              		@ sp needed
 762 02e6 80BD     		pop	{r7, pc}
 763              		.cfi_endproc
 764              	.LFE13:
 766              		.align	1
 767              		.syntax unified
 768              		.code	16
 769              		.thumb_func
 770              		.fpu softvfp
 772              	graphic_ctrl_bit_set:
 773              	.LFB14:
 774              		.file 2 "/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h"
   1:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** #ifndef GRAPHICS_H
   2:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** #define GRAPHICS_H
   3:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** #include "gpio.h"
   4:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** #define B_E 0x40 // Enable
   5:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** #define B_RST 0x20 // Reset
   6:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** #define B_CS2 0x10 // Controller Select 2
   7:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** #define B_CS1 8 // Controller Select 1
   8:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** #define B_SELECT 4 // 0 Graphics, 1 ASCII
   9:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** #define B_RW 2 // 0 Write, 1 Read
  10:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** #define B_RS 1 // 0 Command, 1 Data
  11:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 
  12:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** #define LCD_ON 0x3F // Display on
  13:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** #define LCD_OFF 0x3E // Display off
  14:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** #define LCD_SET_ADD 0x40 // Set horizontal coordinate
  15:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** #define LCD_SET_PAGE 0xB8 // Set vertical coordinate
  16:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** #define LCD_DISP_START 0xC0 // Start address
  17:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** #define LCD_BUSY 0x80 // Read busy status
  18:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 
  19:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** static void graphic_ctrl_bit_set(uint8_t x) {
 775              		.loc 2 19 45
 776              		.cfi_startproc
 777              		@ args = 0, pretend = 0, frame = 16
 778              		@ frame_needed = 1, uses_anonymous_args = 0
 779 02e8 80B5     		push	{r7, lr}
 780              		.cfi_def_cfa_offset 8
 781              		.cfi_offset 7, -8
 782              		.cfi_offset 14, -4
 783 02ea 84B0     		sub	sp, sp, #16
 784              		.cfi_def_cfa_offset 24
 785 02ec 00AF     		add	r7, sp, #0
 786              		.cfi_def_cfa_register 7
 787 02ee 0200     		movs	r2, r0
 788 02f0 FB1D     		adds	r3, r7, #7
 789 02f2 1A70     		strb	r2, [r3]
  20:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     unsigned char c;
  21:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     c = GPIO_E.odrLow;
 790              		.loc 2 21 9
 791 02f4 0C4A     		ldr	r2, .L36
 792              		.loc 2 21 7
 793 02f6 0F21     		movs	r1, #15
 794 02f8 7B18     		adds	r3, r7, r1
 795 02fa 127D     		ldrb	r2, [r2, #20]
 796 02fc 1A70     		strb	r2, [r3]
  22:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     c |= (~B_SELECT & x );
 797              		.loc 2 22 21
 798 02fe FB1D     		adds	r3, r7, #7
 799 0300 1B78     		ldrb	r3, [r3]
 800 0302 5BB2     		sxtb	r3, r3
 801 0304 0422     		movs	r2, #4
 802 0306 9343     		bics	r3, r2
 803 0308 5AB2     		sxtb	r2, r3
 804              		.loc 2 22 7
 805 030a 7B18     		adds	r3, r7, r1
 806 030c 1B78     		ldrb	r3, [r3]
 807 030e 5BB2     		sxtb	r3, r3
 808 0310 1343     		orrs	r3, r2
 809 0312 5AB2     		sxtb	r2, r3
 810 0314 7B18     		adds	r3, r7, r1
 811 0316 1A70     		strb	r2, [r3]
  23:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     GPIO_E.odrLow = c;
 812              		.loc 2 23 5
 813 0318 034A     		ldr	r2, .L36
 814              		.loc 2 23 19
 815 031a 7B18     		adds	r3, r7, r1
 816 031c 1B78     		ldrb	r3, [r3]
 817 031e 1375     		strb	r3, [r2, #20]
  24:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** }
 818              		.loc 2 24 1
 819 0320 C046     		nop
 820 0322 BD46     		mov	sp, r7
 821 0324 04B0     		add	sp, sp, #16
 822              		@ sp needed
 823 0326 80BD     		pop	{r7, pc}
 824              	.L37:
 825              		.align	2
 826              	.L36:
 827 0328 00100240 		.word	1073876992
 828              		.cfi_endproc
 829              	.LFE14:
 831              		.align	1
 832              		.syntax unified
 833              		.code	16
 834              		.thumb_func
 835              		.fpu softvfp
 837              	graphic_ctrl_bit_clear:
 838              	.LFB15:
  25:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** static void graphic_ctrl_bit_clear(uint8_t x) {
 839              		.loc 2 25 47
 840              		.cfi_startproc
 841              		@ args = 0, pretend = 0, frame = 16
 842              		@ frame_needed = 1, uses_anonymous_args = 0
 843 032c 80B5     		push	{r7, lr}
 844              		.cfi_def_cfa_offset 8
 845              		.cfi_offset 7, -8
 846              		.cfi_offset 14, -4
 847 032e 84B0     		sub	sp, sp, #16
 848              		.cfi_def_cfa_offset 24
 849 0330 00AF     		add	r7, sp, #0
 850              		.cfi_def_cfa_register 7
 851 0332 0200     		movs	r2, r0
 852 0334 FB1D     		adds	r3, r7, #7
 853 0336 1A70     		strb	r2, [r3]
  26:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     unsigned char c;
  27:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     c = GPIO_E.odrLow;
 854              		.loc 2 27 9
 855 0338 0F4A     		ldr	r2, .L39
 856              		.loc 2 27 7
 857 033a 0F20     		movs	r0, #15
 858 033c 3B18     		adds	r3, r7, r0
 859 033e 127D     		ldrb	r2, [r2, #20]
 860 0340 1A70     		strb	r2, [r3]
  28:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     c &= ~B_SELECT;
 861              		.loc 2 28 7
 862 0342 3B18     		adds	r3, r7, r0
 863 0344 3A18     		adds	r2, r7, r0
 864 0346 1278     		ldrb	r2, [r2]
 865 0348 0421     		movs	r1, #4
 866 034a 8A43     		bics	r2, r1
 867 034c 1A70     		strb	r2, [r3]
  29:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     c &= ~x;
 868              		.loc 2 29 7
 869 034e FB1D     		adds	r3, r7, #7
 870 0350 1B78     		ldrb	r3, [r3]
 871 0352 5BB2     		sxtb	r3, r3
 872 0354 DB43     		mvns	r3, r3
 873 0356 5BB2     		sxtb	r3, r3
 874 0358 3A18     		adds	r2, r7, r0
 875 035a 1278     		ldrb	r2, [r2]
 876 035c 52B2     		sxtb	r2, r2
 877 035e 1340     		ands	r3, r2
 878 0360 5AB2     		sxtb	r2, r3
 879 0362 3B18     		adds	r3, r7, r0
 880 0364 1A70     		strb	r2, [r3]
  30:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     GPIO_E.odrLow = c;
 881              		.loc 2 30 5
 882 0366 044A     		ldr	r2, .L39
 883              		.loc 2 30 19
 884 0368 3B18     		adds	r3, r7, r0
 885 036a 1B78     		ldrb	r3, [r3]
 886 036c 1375     		strb	r3, [r2, #20]
  31:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 
  32:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** }
 887              		.loc 2 32 1
 888 036e C046     		nop
 889 0370 BD46     		mov	sp, r7
 890 0372 04B0     		add	sp, sp, #16
 891              		@ sp needed
 892 0374 80BD     		pop	{r7, pc}
 893              	.L40:
 894 0376 C046     		.align	2
 895              	.L39:
 896 0378 00100240 		.word	1073876992
 897              		.cfi_endproc
 898              	.LFE15:
 900              		.align	1
 901              		.syntax unified
 902              		.code	16
 903              		.thumb_func
 904              		.fpu softvfp
 906              	select_controller:
 907              	.LFB16:
  33:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 
  34:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** static void select_controller(uint8_t controller){
 908              		.loc 2 34 50
 909              		.cfi_startproc
 910              		@ args = 0, pretend = 0, frame = 8
 911              		@ frame_needed = 1, uses_anonymous_args = 0
 912 037c 80B5     		push	{r7, lr}
 913              		.cfi_def_cfa_offset 8
 914              		.cfi_offset 7, -8
 915              		.cfi_offset 14, -4
 916 037e 82B0     		sub	sp, sp, #8
 917              		.cfi_def_cfa_offset 16
 918 0380 00AF     		add	r7, sp, #0
 919              		.cfi_def_cfa_register 7
 920 0382 0200     		movs	r2, r0
 921 0384 FB1D     		adds	r3, r7, #7
 922 0386 1A70     		strb	r2, [r3]
  35:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     switch(controller){
 923              		.loc 2 35 5
 924 0388 FB1D     		adds	r3, r7, #7
 925 038a 1B78     		ldrb	r3, [r3]
 926 038c 082B     		cmp	r3, #8
 927 038e 0CD0     		beq	.L42
 928 0390 02DC     		bgt	.L43
 929 0392 002B     		cmp	r3, #0
 930 0394 05D0     		beq	.L44
  36:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         case 0:
  37:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         graphic_ctrl_bit_clear(B_CS1|B_CS2);
  38:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         break;
  39:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         case B_CS1 :
  40:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         graphic_ctrl_bit_set(B_CS1);
  41:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         graphic_ctrl_bit_clear(B_CS2);
  42:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         break;
  43:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         case B_CS2 :
  44:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         graphic_ctrl_bit_set(B_CS2);
  45:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         graphic_ctrl_bit_clear(B_CS1);
  46:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         break;
  47:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         case B_CS1|B_CS2 :
  48:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         graphic_ctrl_bit_set(B_CS1|B_CS2);
  49:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         break;
  50:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     }
  51:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** }
 931              		.loc 2 51 1
 932 0396 1AE0     		b	.L48
 933              	.L43:
  35:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     switch(controller){
 934              		.loc 2 35 5
 935 0398 102B     		cmp	r3, #16
 936 039a 0DD0     		beq	.L46
 937 039c 182B     		cmp	r3, #24
 938 039e 12D0     		beq	.L47
 939              		.loc 2 51 1
 940 03a0 15E0     		b	.L48
 941              	.L44:
  37:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         break;
 942              		.loc 2 37 9
 943 03a2 1820     		movs	r0, #24
 944 03a4 FFF7C2FF 		bl	graphic_ctrl_bit_clear
  38:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         case B_CS1 :
 945              		.loc 2 38 9
 946 03a8 11E0     		b	.L45
 947              	.L42:
  40:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         graphic_ctrl_bit_clear(B_CS2);
 948              		.loc 2 40 9
 949 03aa 0820     		movs	r0, #8
 950 03ac FFF79CFF 		bl	graphic_ctrl_bit_set
  41:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         break;
 951              		.loc 2 41 9
 952 03b0 1020     		movs	r0, #16
 953 03b2 FFF7BBFF 		bl	graphic_ctrl_bit_clear
  42:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         case B_CS2 :
 954              		.loc 2 42 9
 955 03b6 0AE0     		b	.L45
 956              	.L46:
  44:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         graphic_ctrl_bit_clear(B_CS1);
 957              		.loc 2 44 9
 958 03b8 1020     		movs	r0, #16
 959 03ba FFF795FF 		bl	graphic_ctrl_bit_set
  45:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         break;
 960              		.loc 2 45 9
 961 03be 0820     		movs	r0, #8
 962 03c0 FFF7B4FF 		bl	graphic_ctrl_bit_clear
  46:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         case B_CS1|B_CS2 :
 963              		.loc 2 46 9
 964 03c4 03E0     		b	.L45
 965              	.L47:
  48:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         break;
 966              		.loc 2 48 9
 967 03c6 1820     		movs	r0, #24
 968 03c8 FFF78EFF 		bl	graphic_ctrl_bit_set
  49:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     }
 969              		.loc 2 49 9
 970 03cc C046     		nop
 971              	.L45:
 972              	.L48:
 973              		.loc 2 51 1
 974 03ce C046     		nop
 975 03d0 BD46     		mov	sp, r7
 976 03d2 02B0     		add	sp, sp, #8
 977              		@ sp needed
 978 03d4 80BD     		pop	{r7, pc}
 979              		.cfi_endproc
 980              	.LFE16:
 982              		.align	1
 983              		.syntax unified
 984              		.code	16
 985              		.thumb_func
 986              		.fpu softvfp
 988              	graphic_wait_ready:
 989              	.LFB17:
  52:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** static void graphic_wait_ready(void) {
 990              		.loc 2 52 38
 991              		.cfi_startproc
 992              		@ args = 0, pretend = 0, frame = 8
 993              		@ frame_needed = 1, uses_anonymous_args = 0
 994 03d6 80B5     		push	{r7, lr}
 995              		.cfi_def_cfa_offset 8
 996              		.cfi_offset 7, -8
 997              		.cfi_offset 14, -4
 998 03d8 82B0     		sub	sp, sp, #8
 999              		.cfi_def_cfa_offset 16
 1000 03da 00AF     		add	r7, sp, #0
 1001              		.cfi_def_cfa_register 7
  53:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     uint8_t c;
  54:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_ctrl_bit_clear(B_E);
 1002              		.loc 2 54 5
 1003 03dc 4020     		movs	r0, #64
 1004 03de FFF7A5FF 		bl	graphic_ctrl_bit_clear
  55:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     GPIO_E.moder = 0x00005555; // 15-8 inputs, 7-0 outputs
 1005              		.loc 2 55 5
 1006 03e2 144B     		ldr	r3, .L55
 1007              		.loc 2 55 18
 1008 03e4 144A     		ldr	r2, .L55+4
 1009 03e6 1A60     		str	r2, [r3]
  56:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_ctrl_bit_clear(B_RS);
 1010              		.loc 2 56 5
 1011 03e8 0120     		movs	r0, #1
 1012 03ea FFF79FFF 		bl	graphic_ctrl_bit_clear
  57:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_ctrl_bit_set(B_RW);
 1013              		.loc 2 57 5
 1014 03ee 0220     		movs	r0, #2
 1015 03f0 FFF77AFF 		bl	graphic_ctrl_bit_set
  58:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     delay_500ns();
 1016              		.loc 2 58 5
 1017 03f4 FFF7FEFF 		bl	delay_500ns
 1018              	.L52:
  59:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     while(1) {
  60:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         graphic_ctrl_bit_set(B_E);
 1019              		.loc 2 60 9
 1020 03f8 4020     		movs	r0, #64
 1021 03fa FFF775FF 		bl	graphic_ctrl_bit_set
  61:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         delay_500ns();
 1022              		.loc 2 61 9
 1023 03fe FFF7FEFF 		bl	delay_500ns
  62:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         c = GPIO_E.idrHigh & LCD_BUSY;
 1024              		.loc 2 62 13
 1025 0402 0C4B     		ldr	r3, .L55
 1026              		.loc 2 62 19
 1027 0404 5B7C     		ldrb	r3, [r3, #17]
 1028 0406 DAB2     		uxtb	r2, r3
 1029              		.loc 2 62 11
 1030 0408 FB1D     		adds	r3, r7, #7
 1031 040a 7F21     		movs	r1, #127
 1032 040c 8A43     		bics	r2, r1
 1033 040e 1A70     		strb	r2, [r3]
  63:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         graphic_ctrl_bit_clear(B_E);
 1034              		.loc 2 63 9
 1035 0410 4020     		movs	r0, #64
 1036 0412 FFF78BFF 		bl	graphic_ctrl_bit_clear
  64:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         delay_500ns();
 1037              		.loc 2 64 9
 1038 0416 FFF7FEFF 		bl	delay_500ns
  65:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         if( c == 0 ) break;
 1039              		.loc 2 65 11
 1040 041a FB1D     		adds	r3, r7, #7
 1041 041c 1B78     		ldrb	r3, [r3]
 1042 041e 002B     		cmp	r3, #0
 1043 0420 00D0     		beq	.L54
  60:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         delay_500ns();
 1044              		.loc 2 60 9
 1045 0422 E9E7     		b	.L52
 1046              	.L54:
 1047              		.loc 2 65 9
 1048 0424 C046     		nop
  66:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     }
  67:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     GPIO_E.moder = 0x55555555; // 15-0 outputs
 1049              		.loc 2 67 5
 1050 0426 034B     		ldr	r3, .L55
 1051              		.loc 2 67 18
 1052 0428 044A     		ldr	r2, .L55+8
 1053 042a 1A60     		str	r2, [r3]
  68:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** }
 1054              		.loc 2 68 1
 1055 042c C046     		nop
 1056 042e BD46     		mov	sp, r7
 1057 0430 02B0     		add	sp, sp, #8
 1058              		@ sp needed
 1059 0432 80BD     		pop	{r7, pc}
 1060              	.L56:
 1061              		.align	2
 1062              	.L55:
 1063 0434 00100240 		.word	1073876992
 1064 0438 55550000 		.word	21845
 1065 043c 55555555 		.word	1431655765
 1066              		.cfi_endproc
 1067              	.LFE17:
 1069              		.align	1
 1070              		.syntax unified
 1071              		.code	16
 1072              		.thumb_func
 1073              		.fpu softvfp
 1075              	graphic_read:
 1076              	.LFB18:
  69:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** static uint8_t graphic_read(uint8_t controller) {
 1077              		.loc 2 69 49
 1078              		.cfi_startproc
 1079              		@ args = 0, pretend = 0, frame = 16
 1080              		@ frame_needed = 1, uses_anonymous_args = 0
 1081 0440 80B5     		push	{r7, lr}
 1082              		.cfi_def_cfa_offset 8
 1083              		.cfi_offset 7, -8
 1084              		.cfi_offset 14, -4
 1085 0442 84B0     		sub	sp, sp, #16
 1086              		.cfi_def_cfa_offset 24
 1087 0444 00AF     		add	r7, sp, #0
 1088              		.cfi_def_cfa_register 7
 1089 0446 0200     		movs	r2, r0
 1090 0448 FB1D     		adds	r3, r7, #7
 1091 044a 1A70     		strb	r2, [r3]
  70:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     uint8_t c;
  71:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_ctrl_bit_clear(B_E);
 1092              		.loc 2 71 5
 1093 044c 4020     		movs	r0, #64
 1094 044e FFF76DFF 		bl	graphic_ctrl_bit_clear
  72:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     GPIO_E.moder = 0x00005555; // 15-8 inputs, 7-0 outputs
 1095              		.loc 2 72 5
 1096 0452 1C4B     		ldr	r3, .L61
 1097              		.loc 2 72 18
 1098 0454 1C4A     		ldr	r2, .L61+4
 1099 0456 1A60     		str	r2, [r3]
  73:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_ctrl_bit_set(B_RS|B_RW);
 1100              		.loc 2 73 5
 1101 0458 0320     		movs	r0, #3
 1102 045a FFF745FF 		bl	graphic_ctrl_bit_set
  74:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     select_controller(controller);
 1103              		.loc 2 74 5
 1104 045e FB1D     		adds	r3, r7, #7
 1105 0460 1B78     		ldrb	r3, [r3]
 1106 0462 1800     		movs	r0, r3
 1107 0464 FFF78AFF 		bl	select_controller
  75:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     delay_500ns();
 1108              		.loc 2 75 5
 1109 0468 FFF7FEFF 		bl	delay_500ns
  76:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_ctrl_bit_set(B_E);
 1110              		.loc 2 76 5
 1111 046c 4020     		movs	r0, #64
 1112 046e FFF73BFF 		bl	graphic_ctrl_bit_set
  77:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     delay_500ns();
 1113              		.loc 2 77 5
 1114 0472 FFF7FEFF 		bl	delay_500ns
  78:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     c = GPIO_E.idrHigh;
 1115              		.loc 2 78 9
 1116 0476 134A     		ldr	r2, .L61
 1117              		.loc 2 78 7
 1118 0478 0F23     		movs	r3, #15
 1119 047a FB18     		adds	r3, r7, r3
 1120 047c 527C     		ldrb	r2, [r2, #17]
 1121 047e 1A70     		strb	r2, [r3]
  79:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_ctrl_bit_clear(B_E);
 1122              		.loc 2 79 5
 1123 0480 4020     		movs	r0, #64
 1124 0482 FFF753FF 		bl	graphic_ctrl_bit_clear
  80:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     GPIO_E.moder = 0x55555555; // 15-0 outputs
 1125              		.loc 2 80 5
 1126 0486 0F4B     		ldr	r3, .L61
 1127              		.loc 2 80 18
 1128 0488 104A     		ldr	r2, .L61+8
 1129 048a 1A60     		str	r2, [r3]
  81:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     if( controller & B_CS1 ) {
 1130              		.loc 2 81 20
 1131 048c FB1D     		adds	r3, r7, #7
 1132 048e 1B78     		ldrb	r3, [r3]
 1133 0490 0822     		movs	r2, #8
 1134 0492 1340     		ands	r3, r2
 1135              		.loc 2 81 7
 1136 0494 04D0     		beq	.L58
  82:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         select_controller(B_CS1);
 1137              		.loc 2 82 9
 1138 0496 0820     		movs	r0, #8
 1139 0498 FFF770FF 		bl	select_controller
  83:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         graphic_wait_ready();
 1140              		.loc 2 83 9
 1141 049c FFF79BFF 		bl	graphic_wait_ready
 1142              	.L58:
  84:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     }
  85:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     if( controller & B_CS2 ) {
 1143              		.loc 2 85 20
 1144 04a0 FB1D     		adds	r3, r7, #7
 1145 04a2 1B78     		ldrb	r3, [r3]
 1146 04a4 1022     		movs	r2, #16
 1147 04a6 1340     		ands	r3, r2
 1148              		.loc 2 85 7
 1149 04a8 04D0     		beq	.L59
  86:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         select_controller(B_CS2);
 1150              		.loc 2 86 9
 1151 04aa 1020     		movs	r0, #16
 1152 04ac FFF766FF 		bl	select_controller
  87:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         graphic_wait_ready();
 1153              		.loc 2 87 9
 1154 04b0 FFF791FF 		bl	graphic_wait_ready
 1155              	.L59:
  88:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     }
  89:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     return c;
 1156              		.loc 2 89 12
 1157 04b4 0F23     		movs	r3, #15
 1158 04b6 FB18     		adds	r3, r7, r3
 1159 04b8 1B78     		ldrb	r3, [r3]
  90:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** }
 1160              		.loc 2 90 1
 1161 04ba 1800     		movs	r0, r3
 1162 04bc BD46     		mov	sp, r7
 1163 04be 04B0     		add	sp, sp, #16
 1164              		@ sp needed
 1165 04c0 80BD     		pop	{r7, pc}
 1166              	.L62:
 1167 04c2 C046     		.align	2
 1168              	.L61:
 1169 04c4 00100240 		.word	1073876992
 1170 04c8 55550000 		.word	21845
 1171 04cc 55555555 		.word	1431655765
 1172              		.cfi_endproc
 1173              	.LFE18:
 1175              		.align	1
 1176              		.syntax unified
 1177              		.code	16
 1178              		.thumb_func
 1179              		.fpu softvfp
 1181              	graphic_read_data:
 1182              	.LFB19:
  91:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** static uint8_t graphic_read_data(uint8_t controller) {
 1183              		.loc 2 91 54
 1184              		.cfi_startproc
 1185              		@ args = 0, pretend = 0, frame = 8
 1186              		@ frame_needed = 1, uses_anonymous_args = 0
 1187 04d0 80B5     		push	{r7, lr}
 1188              		.cfi_def_cfa_offset 8
 1189              		.cfi_offset 7, -8
 1190              		.cfi_offset 14, -4
 1191 04d2 82B0     		sub	sp, sp, #8
 1192              		.cfi_def_cfa_offset 16
 1193 04d4 00AF     		add	r7, sp, #0
 1194              		.cfi_def_cfa_register 7
 1195 04d6 0200     		movs	r2, r0
 1196 04d8 FB1D     		adds	r3, r7, #7
 1197 04da 1A70     		strb	r2, [r3]
  92:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_read(controller);
 1198              		.loc 2 92 5
 1199 04dc FB1D     		adds	r3, r7, #7
 1200 04de 1B78     		ldrb	r3, [r3]
 1201 04e0 1800     		movs	r0, r3
 1202 04e2 FFF7ADFF 		bl	graphic_read
  93:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     return graphic_read(controller);
 1203              		.loc 2 93 12
 1204 04e6 FB1D     		adds	r3, r7, #7
 1205 04e8 1B78     		ldrb	r3, [r3]
 1206 04ea 1800     		movs	r0, r3
 1207 04ec FFF7A8FF 		bl	graphic_read
 1208 04f0 0300     		movs	r3, r0
  94:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** }
 1209              		.loc 2 94 1
 1210 04f2 1800     		movs	r0, r3
 1211 04f4 BD46     		mov	sp, r7
 1212 04f6 02B0     		add	sp, sp, #8
 1213              		@ sp needed
 1214 04f8 80BD     		pop	{r7, pc}
 1215              		.cfi_endproc
 1216              	.LFE19:
 1218              		.align	1
 1219              		.syntax unified
 1220              		.code	16
 1221              		.thumb_func
 1222              		.fpu softvfp
 1224              	graphic_write:
 1225              	.LFB20:
  95:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** static void graphic_write(uint8_t value, uint8_t controller){
 1226              		.loc 2 95 61
 1227              		.cfi_startproc
 1228              		@ args = 0, pretend = 0, frame = 8
 1229              		@ frame_needed = 1, uses_anonymous_args = 0
 1230 04fa 80B5     		push	{r7, lr}
 1231              		.cfi_def_cfa_offset 8
 1232              		.cfi_offset 7, -8
 1233              		.cfi_offset 14, -4
 1234 04fc 82B0     		sub	sp, sp, #8
 1235              		.cfi_def_cfa_offset 16
 1236 04fe 00AF     		add	r7, sp, #0
 1237              		.cfi_def_cfa_register 7
 1238 0500 0200     		movs	r2, r0
 1239 0502 FB1D     		adds	r3, r7, #7
 1240 0504 1A70     		strb	r2, [r3]
 1241 0506 BB1D     		adds	r3, r7, #6
 1242 0508 0A1C     		adds	r2, r1, #0
 1243 050a 1A70     		strb	r2, [r3]
  96:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     GPIO_E.odrHigh = value;
 1244              		.loc 2 96 5
 1245 050c 184A     		ldr	r2, .L68
 1246              		.loc 2 96 20
 1247 050e FB1D     		adds	r3, r7, #7
 1248 0510 1B78     		ldrb	r3, [r3]
 1249 0512 5375     		strb	r3, [r2, #21]
  97:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     select_controller(controller);
 1250              		.loc 2 97 5
 1251 0514 BB1D     		adds	r3, r7, #6
 1252 0516 1B78     		ldrb	r3, [r3]
 1253 0518 1800     		movs	r0, r3
 1254 051a FFF72FFF 		bl	select_controller
  98:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     delay_500ns();
 1255              		.loc 2 98 5
 1256 051e FFF7FEFF 		bl	delay_500ns
  99:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_ctrl_bit_set(B_E);
 1257              		.loc 2 99 5
 1258 0522 4020     		movs	r0, #64
 1259 0524 FFF7E0FE 		bl	graphic_ctrl_bit_set
 100:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     delay_500ns();
 1260              		.loc 2 100 5
 1261 0528 FFF7FEFF 		bl	delay_500ns
 101:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_ctrl_bit_clear(B_E);
 1262              		.loc 2 101 5
 1263 052c 4020     		movs	r0, #64
 1264 052e FFF7FDFE 		bl	graphic_ctrl_bit_clear
 102:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     
 103:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     if (controller && B_CS1) {
 1265              		.loc 2 103 8
 1266 0532 BB1D     		adds	r3, r7, #6
 1267 0534 1B78     		ldrb	r3, [r3]
 1268 0536 002B     		cmp	r3, #0
 1269 0538 04D0     		beq	.L66
 104:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****             select_controller(B_CS1);
 1270              		.loc 2 104 13
 1271 053a 0820     		movs	r0, #8
 1272 053c FFF71EFF 		bl	select_controller
 105:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****             graphic_wait_ready();
 1273              		.loc 2 105 13
 1274 0540 FFF749FF 		bl	graphic_wait_ready
 1275              	.L66:
 106:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     }
 107:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     
 108:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     if (controller && B_CS2) {
 1276              		.loc 2 108 8
 1277 0544 BB1D     		adds	r3, r7, #6
 1278 0546 1B78     		ldrb	r3, [r3]
 1279 0548 002B     		cmp	r3, #0
 1280 054a 04D0     		beq	.L67
 109:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****             select_controller(B_CS2);
 1281              		.loc 2 109 13
 1282 054c 1020     		movs	r0, #16
 1283 054e FFF715FF 		bl	select_controller
 110:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****             graphic_wait_ready();
 1284              		.loc 2 110 13
 1285 0552 FFF740FF 		bl	graphic_wait_ready
 1286              	.L67:
 111:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     }
 112:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     
 113:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     GPIO_E.odrHigh = 0;
 1287              		.loc 2 113 5
 1288 0556 064B     		ldr	r3, .L68
 1289              		.loc 2 113 20
 1290 0558 0022     		movs	r2, #0
 1291 055a 5A75     		strb	r2, [r3, #21]
 114:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         graphic_ctrl_bit_set(B_E);
 1292              		.loc 2 114 9
 1293 055c 4020     		movs	r0, #64
 1294 055e FFF7C3FE 		bl	graphic_ctrl_bit_set
 115:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         select_controller(0);
 1295              		.loc 2 115 9
 1296 0562 0020     		movs	r0, #0
 1297 0564 FFF70AFF 		bl	select_controller
 116:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     
 117:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****  
 118:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** }
 1298              		.loc 2 118 1
 1299 0568 C046     		nop
 1300 056a BD46     		mov	sp, r7
 1301 056c 02B0     		add	sp, sp, #8
 1302              		@ sp needed
 1303 056e 80BD     		pop	{r7, pc}
 1304              	.L69:
 1305              		.align	2
 1306              	.L68:
 1307 0570 00100240 		.word	1073876992
 1308              		.cfi_endproc
 1309              	.LFE20:
 1311              		.align	1
 1312              		.syntax unified
 1313              		.code	16
 1314              		.thumb_func
 1315              		.fpu softvfp
 1317              	graphic_write_command:
 1318              	.LFB21:
 119:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** static void graphic_write_command(uint8_t command, uint8_t controller) {
 1319              		.loc 2 119 72
 1320              		.cfi_startproc
 1321              		@ args = 0, pretend = 0, frame = 8
 1322              		@ frame_needed = 1, uses_anonymous_args = 0
 1323 0574 80B5     		push	{r7, lr}
 1324              		.cfi_def_cfa_offset 8
 1325              		.cfi_offset 7, -8
 1326              		.cfi_offset 14, -4
 1327 0576 82B0     		sub	sp, sp, #8
 1328              		.cfi_def_cfa_offset 16
 1329 0578 00AF     		add	r7, sp, #0
 1330              		.cfi_def_cfa_register 7
 1331 057a 0200     		movs	r2, r0
 1332 057c FB1D     		adds	r3, r7, #7
 1333 057e 1A70     		strb	r2, [r3]
 1334 0580 BB1D     		adds	r3, r7, #6
 1335 0582 0A1C     		adds	r2, r1, #0
 1336 0584 1A70     		strb	r2, [r3]
 120:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_ctrl_bit_clear(B_E);
 1337              		.loc 2 120 5
 1338 0586 4020     		movs	r0, #64
 1339 0588 FFF7D0FE 		bl	graphic_ctrl_bit_clear
 121:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     select_controller(controller);
 1340              		.loc 2 121 5
 1341 058c BB1D     		adds	r3, r7, #6
 1342 058e 1B78     		ldrb	r3, [r3]
 1343 0590 1800     		movs	r0, r3
 1344 0592 FFF7F3FE 		bl	select_controller
 122:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_ctrl_bit_clear(B_RS);
 1345              		.loc 2 122 5
 1346 0596 0120     		movs	r0, #1
 1347 0598 FFF7C8FE 		bl	graphic_ctrl_bit_clear
 123:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_ctrl_bit_clear(B_RW);
 1348              		.loc 2 123 5
 1349 059c 0220     		movs	r0, #2
 1350 059e FFF7C5FE 		bl	graphic_ctrl_bit_clear
 124:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_write(command, controller);
 1351              		.loc 2 124 5
 1352 05a2 BB1D     		adds	r3, r7, #6
 1353 05a4 1A78     		ldrb	r2, [r3]
 1354 05a6 FB1D     		adds	r3, r7, #7
 1355 05a8 1B78     		ldrb	r3, [r3]
 1356 05aa 1100     		movs	r1, r2
 1357 05ac 1800     		movs	r0, r3
 1358 05ae FFF7A4FF 		bl	graphic_write
 125:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** }
 1359              		.loc 2 125 1
 1360 05b2 C046     		nop
 1361 05b4 BD46     		mov	sp, r7
 1362 05b6 02B0     		add	sp, sp, #8
 1363              		@ sp needed
 1364 05b8 80BD     		pop	{r7, pc}
 1365              		.cfi_endproc
 1366              	.LFE21:
 1368              		.align	1
 1369              		.syntax unified
 1370              		.code	16
 1371              		.thumb_func
 1372              		.fpu softvfp
 1374              	graphic_write_data:
 1375              	.LFB22:
 126:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** static void graphic_write_data(uint8_t data, uint8_t controller){
 1376              		.loc 2 126 65
 1377              		.cfi_startproc
 1378              		@ args = 0, pretend = 0, frame = 8
 1379              		@ frame_needed = 1, uses_anonymous_args = 0
 1380 05ba 80B5     		push	{r7, lr}
 1381              		.cfi_def_cfa_offset 8
 1382              		.cfi_offset 7, -8
 1383              		.cfi_offset 14, -4
 1384 05bc 82B0     		sub	sp, sp, #8
 1385              		.cfi_def_cfa_offset 16
 1386 05be 00AF     		add	r7, sp, #0
 1387              		.cfi_def_cfa_register 7
 1388 05c0 0200     		movs	r2, r0
 1389 05c2 FB1D     		adds	r3, r7, #7
 1390 05c4 1A70     		strb	r2, [r3]
 1391 05c6 BB1D     		adds	r3, r7, #6
 1392 05c8 0A1C     		adds	r2, r1, #0
 1393 05ca 1A70     		strb	r2, [r3]
 127:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_ctrl_bit_clear(B_E);
 1394              		.loc 2 127 5
 1395 05cc 4020     		movs	r0, #64
 1396 05ce FFF7ADFE 		bl	graphic_ctrl_bit_clear
 128:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     select_controller(controller);
 1397              		.loc 2 128 5
 1398 05d2 BB1D     		adds	r3, r7, #6
 1399 05d4 1B78     		ldrb	r3, [r3]
 1400 05d6 1800     		movs	r0, r3
 1401 05d8 FFF7D0FE 		bl	select_controller
 129:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_ctrl_bit_set(B_RS);
 1402              		.loc 2 129 5
 1403 05dc 0120     		movs	r0, #1
 1404 05de FFF783FE 		bl	graphic_ctrl_bit_set
 130:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_ctrl_bit_clear(B_RW);
 1405              		.loc 2 130 5
 1406 05e2 0220     		movs	r0, #2
 1407 05e4 FFF7A2FE 		bl	graphic_ctrl_bit_clear
 131:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_write(data, controller);
 1408              		.loc 2 131 5
 1409 05e8 BB1D     		adds	r3, r7, #6
 1410 05ea 1A78     		ldrb	r2, [r3]
 1411 05ec FB1D     		adds	r3, r7, #7
 1412 05ee 1B78     		ldrb	r3, [r3]
 1413 05f0 1100     		movs	r1, r2
 1414 05f2 1800     		movs	r0, r3
 1415 05f4 FFF781FF 		bl	graphic_write
 132:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** }
 1416              		.loc 2 132 1
 1417 05f8 C046     		nop
 1418 05fa BD46     		mov	sp, r7
 1419 05fc 02B0     		add	sp, sp, #8
 1420              		@ sp needed
 1421 05fe 80BD     		pop	{r7, pc}
 1422              		.cfi_endproc
 1423              	.LFE22:
 1425              		.align	1
 1426              		.global	graphic_clear_screen
 1427              		.syntax unified
 1428              		.code	16
 1429              		.thumb_func
 1430              		.fpu softvfp
 1432              	graphic_clear_screen:
 1433              	.LFB23:
 133:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** void graphic_clear_screen(void){
 1434              		.loc 2 133 32
 1435              		.cfi_startproc
 1436              		@ args = 0, pretend = 0, frame = 8
 1437              		@ frame_needed = 1, uses_anonymous_args = 0
 1438 0600 80B5     		push	{r7, lr}
 1439              		.cfi_def_cfa_offset 8
 1440              		.cfi_offset 7, -8
 1441              		.cfi_offset 14, -4
 1442 0602 82B0     		sub	sp, sp, #8
 1443              		.cfi_def_cfa_offset 16
 1444 0604 00AF     		add	r7, sp, #0
 1445              		.cfi_def_cfa_register 7
 1446              	.LBB3:
 134:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         for(int page = 0; page < 8; page++){
 1447              		.loc 2 134 17
 1448 0606 0023     		movs	r3, #0
 1449 0608 7B60     		str	r3, [r7, #4]
 1450              		.loc 2 134 9
 1451 060a 1EE0     		b	.L73
 1452              	.L76:
 135:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****             graphic_write_command(LCD_SET_PAGE | page, B_CS1|B_CS2);
 1453              		.loc 2 135 48
 1454 060c 7B68     		ldr	r3, [r7, #4]
 1455 060e 5BB2     		sxtb	r3, r3
 1456 0610 4822     		movs	r2, #72
 1457 0612 5242     		rsbs	r2, r2, #0
 1458 0614 1343     		orrs	r3, r2
 1459 0616 5BB2     		sxtb	r3, r3
 1460              		.loc 2 135 13
 1461 0618 DBB2     		uxtb	r3, r3
 1462 061a 1821     		movs	r1, #24
 1463 061c 1800     		movs	r0, r3
 1464 061e FFF7A9FF 		bl	graphic_write_command
 136:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****             graphic_write_command(LCD_SET_ADD | 0, B_CS1|B_CS2);
 1465              		.loc 2 136 13
 1466 0622 1821     		movs	r1, #24
 1467 0624 4020     		movs	r0, #64
 1468 0626 FFF7A5FF 		bl	graphic_write_command
 1469              	.LBB4:
 137:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****             for (int add = 0; add < 64 ;add++){
 1470              		.loc 2 137 22
 1471 062a 0023     		movs	r3, #0
 1472 062c 3B60     		str	r3, [r7]
 1473              		.loc 2 137 13
 1474 062e 06E0     		b	.L74
 1475              	.L75:
 138:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****                 graphic_write_data(0, B_CS1|B_CS2);
 1476              		.loc 2 138 17 discriminator 3
 1477 0630 1821     		movs	r1, #24
 1478 0632 0020     		movs	r0, #0
 1479 0634 FFF7C1FF 		bl	graphic_write_data
 137:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****             for (int add = 0; add < 64 ;add++){
 1480              		.loc 2 137 44 discriminator 3
 1481 0638 3B68     		ldr	r3, [r7]
 1482 063a 0133     		adds	r3, r3, #1
 1483 063c 3B60     		str	r3, [r7]
 1484              	.L74:
 137:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****             for (int add = 0; add < 64 ;add++){
 1485              		.loc 2 137 13 discriminator 1
 1486 063e 3B68     		ldr	r3, [r7]
 1487 0640 3F2B     		cmp	r3, #63
 1488 0642 F5DD     		ble	.L75
 1489              	.LBE4:
 134:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****             graphic_write_command(LCD_SET_PAGE | page, B_CS1|B_CS2);
 1490              		.loc 2 134 41 discriminator 2
 1491 0644 7B68     		ldr	r3, [r7, #4]
 1492 0646 0133     		adds	r3, r3, #1
 1493 0648 7B60     		str	r3, [r7, #4]
 1494              	.L73:
 134:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****             graphic_write_command(LCD_SET_PAGE | page, B_CS1|B_CS2);
 1495              		.loc 2 134 9 discriminator 1
 1496 064a 7B68     		ldr	r3, [r7, #4]
 1497 064c 072B     		cmp	r3, #7
 1498 064e DDDD     		ble	.L76
 1499              	.LBE3:
 139:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****             }
 140:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****         }
 141:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** }
 1500              		.loc 2 141 1
 1501 0650 C046     		nop
 1502 0652 BD46     		mov	sp, r7
 1503 0654 02B0     		add	sp, sp, #8
 1504              		@ sp needed
 1505 0656 80BD     		pop	{r7, pc}
 1506              		.cfi_endproc
 1507              	.LFE23:
 1509              		.align	1
 1510              		.global	graphic_initialize
 1511              		.syntax unified
 1512              		.code	16
 1513              		.thumb_func
 1514              		.fpu softvfp
 1516              	graphic_initialize:
 1517              	.LFB24:
 142:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 
 143:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** void graphic_initialize(void) {
 1518              		.loc 2 143 31
 1519              		.cfi_startproc
 1520              		@ args = 0, pretend = 0, frame = 0
 1521              		@ frame_needed = 1, uses_anonymous_args = 0
 1522 0658 80B5     		push	{r7, lr}
 1523              		.cfi_def_cfa_offset 8
 1524              		.cfi_offset 7, -8
 1525              		.cfi_offset 14, -4
 1526 065a 00AF     		add	r7, sp, #0
 1527              		.cfi_def_cfa_register 7
 144:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_ctrl_bit_set(B_E);
 1528              		.loc 2 144 5
 1529 065c 4020     		movs	r0, #64
 1530 065e FFF743FE 		bl	graphic_ctrl_bit_set
 145:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     delay_micro(10);
 1531              		.loc 2 145 5
 1532 0662 0A20     		movs	r0, #10
 1533 0664 FFF7FEFF 		bl	delay_micro
 146:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_ctrl_bit_clear(B_CS1|B_CS2|B_RST|B_E);
 1534              		.loc 2 146 5
 1535 0668 7820     		movs	r0, #120
 1536 066a FFF75FFE 		bl	graphic_ctrl_bit_clear
 147:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     delay_milli(30);
 1537              		.loc 2 147 5
 1538 066e 1E20     		movs	r0, #30
 1539 0670 FFF7FEFF 		bl	delay_milli
 148:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_ctrl_bit_set(B_RST);
 1540              		.loc 2 148 5
 1541 0674 2020     		movs	r0, #32
 1542 0676 FFF737FE 		bl	graphic_ctrl_bit_set
 149:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     delay_milli(100);
 1543              		.loc 2 149 5
 1544 067a 6420     		movs	r0, #100
 1545 067c FFF7FEFF 		bl	delay_milli
 150:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_write_command(LCD_OFF, B_CS1|B_CS2);
 1546              		.loc 2 150 5
 1547 0680 1821     		movs	r1, #24
 1548 0682 3E20     		movs	r0, #62
 1549 0684 FFF776FF 		bl	graphic_write_command
 151:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_write_command(LCD_ON, B_CS1|B_CS2);
 1550              		.loc 2 151 5
 1551 0688 1821     		movs	r1, #24
 1552 068a 3F20     		movs	r0, #63
 1553 068c FFF772FF 		bl	graphic_write_command
 152:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_write_command(LCD_DISP_START, B_CS1|B_CS2);
 1554              		.loc 2 152 5
 1555 0690 1821     		movs	r1, #24
 1556 0692 C020     		movs	r0, #192
 1557 0694 FFF76EFF 		bl	graphic_write_command
 153:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_write_command(LCD_SET_ADD, B_CS1|B_CS2);
 1558              		.loc 2 153 5
 1559 0698 1821     		movs	r1, #24
 1560 069a 4020     		movs	r0, #64
 1561 069c FFF76AFF 		bl	graphic_write_command
 154:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     graphic_write_command(LCD_SET_PAGE, B_CS1|B_CS2);
 1562              		.loc 2 154 5
 1563 06a0 1821     		movs	r1, #24
 1564 06a2 B820     		movs	r0, #184
 1565 06a4 FFF766FF 		bl	graphic_write_command
 155:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h ****     select_controller(0);
 1566              		.loc 2 155 5
 1567 06a8 0020     		movs	r0, #0
 1568 06aa FFF767FE 		bl	select_controller
 156:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** }
 1569              		.loc 2 156 1
 1570 06ae C046     		nop
 1571 06b0 BD46     		mov	sp, r7
 1572              		@ sp needed
 1573 06b2 80BD     		pop	{r7, pc}
 1574              		.cfi_endproc
 1575              	.LFE24:
 1577              		.comm	backBuffer,1024,4
 1578              		.align	1
 1579              		.global	clear_backBuffer
 1580              		.syntax unified
 1581              		.code	16
 1582              		.thumb_func
 1583              		.fpu softvfp
 1585              	clear_backBuffer:
 1586              	.LFB25:
 157:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 
 158:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** uint8_t backBuffer[1024]; // 128 * 64 / 8
 159:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 
 160:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 
 161:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** void clear_backBuffer() {
 1587              		.loc 2 161 25
 1588              		.cfi_startproc
 1589              		@ args = 0, pretend = 0, frame = 8
 1590              		@ frame_needed = 1, uses_anonymous_args = 0
 1591 06b4 80B5     		push	{r7, lr}
 1592              		.cfi_def_cfa_offset 8
 1593              		.cfi_offset 7, -8
 1594              		.cfi_offset 14, -4
 1595 06b6 82B0     		sub	sp, sp, #8
 1596              		.cfi_def_cfa_offset 16
 1597 06b8 00AF     		add	r7, sp, #0
 1598              		.cfi_def_cfa_register 7
 162:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	int i;
 163:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	for (i = 0; i < 1024; i++){
 1599              		.loc 2 163 9
 1600 06ba 0023     		movs	r3, #0
 1601 06bc 7B60     		str	r3, [r7, #4]
 1602              		.loc 2 163 2
 1603 06be 07E0     		b	.L79
 1604              	.L80:
 164:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		backBuffer[i] = 0;
 1605              		.loc 2 164 17 discriminator 3
 1606 06c0 074A     		ldr	r2, .L81
 1607 06c2 7B68     		ldr	r3, [r7, #4]
 1608 06c4 D318     		adds	r3, r2, r3
 1609 06c6 0022     		movs	r2, #0
 1610 06c8 1A70     		strb	r2, [r3]
 163:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		backBuffer[i] = 0;
 1611              		.loc 2 163 25 discriminator 3
 1612 06ca 7B68     		ldr	r3, [r7, #4]
 1613 06cc 0133     		adds	r3, r3, #1
 1614 06ce 7B60     		str	r3, [r7, #4]
 1615              	.L79:
 163:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		backBuffer[i] = 0;
 1616              		.loc 2 163 2 discriminator 1
 1617 06d0 7B68     		ldr	r3, [r7, #4]
 1618 06d2 044A     		ldr	r2, .L81+4
 1619 06d4 9342     		cmp	r3, r2
 1620 06d6 F3DD     		ble	.L80
 165:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	}
 166:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** }
 1621              		.loc 2 166 1
 1622 06d8 C046     		nop
 1623 06da BD46     		mov	sp, r7
 1624 06dc 02B0     		add	sp, sp, #8
 1625              		@ sp needed
 1626 06de 80BD     		pop	{r7, pc}
 1627              	.L82:
 1628              		.align	2
 1629              	.L81:
 1630 06e0 00000000 		.word	backBuffer
 1631 06e4 FF030000 		.word	1023
 1632              		.cfi_endproc
 1633              	.LFE25:
 1635              		.align	1
 1636              		.global	graphic_draw_screen
 1637              		.syntax unified
 1638              		.code	16
 1639              		.thumb_func
 1640              		.fpu softvfp
 1642              	graphic_draw_screen:
 1643              	.LFB26:
 167:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 
 168:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 
 169:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** void graphic_draw_screen(void) {
 1644              		.loc 2 169 32
 1645              		.cfi_startproc
 1646              		@ args = 0, pretend = 0, frame = 16
 1647              		@ frame_needed = 1, uses_anonymous_args = 0
 1648 06e8 80B5     		push	{r7, lr}
 1649              		.cfi_def_cfa_offset 8
 1650              		.cfi_offset 7, -8
 1651              		.cfi_offset 14, -4
 1652 06ea 84B0     		sub	sp, sp, #16
 1653              		.cfi_def_cfa_offset 24
 1654 06ec 00AF     		add	r7, sp, #0
 1655              		.cfi_def_cfa_register 7
 170:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	uint8_t i, j, controller, c;
 171:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	unsigned int k = 0;
 1656              		.loc 2 171 15
 1657 06ee 0023     		movs	r3, #0
 1658 06f0 BB60     		str	r3, [r7, #8]
 172:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	for(c = 0; c < 2; c++) {
 1659              		.loc 2 172 8
 1660 06f2 0D23     		movs	r3, #13
 1661 06f4 FB18     		adds	r3, r7, r3
 1662 06f6 0022     		movs	r2, #0
 1663 06f8 1A70     		strb	r2, [r3]
 1664              		.loc 2 172 2
 1665 06fa 4FE0     		b	.L84
 1666              	.L91:
 173:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		controller = (c == 0) ? B_CS1 : B_CS2;
 1667              		.loc 2 173 14
 1668 06fc 0D23     		movs	r3, #13
 1669 06fe FB18     		adds	r3, r7, r3
 1670 0700 1B78     		ldrb	r3, [r3]
 1671 0702 002B     		cmp	r3, #0
 1672 0704 01D1     		bne	.L85
 1673              		.loc 2 173 14 is_stmt 0 discriminator 1
 1674 0706 0822     		movs	r2, #8
 1675 0708 00E0     		b	.L86
 1676              	.L85:
 1677              		.loc 2 173 14 discriminator 2
 1678 070a 1022     		movs	r2, #16
 1679              	.L86:
 1680              		.loc 2 173 14 discriminator 4
 1681 070c FB1D     		adds	r3, r7, #7
 1682 070e 1A70     		strb	r2, [r3]
 174:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		for(j = 0; j < 8; j++) {
 1683              		.loc 2 174 9 is_stmt 1 discriminator 4
 1684 0710 0E23     		movs	r3, #14
 1685 0712 FB18     		adds	r3, r7, r3
 1686 0714 0022     		movs	r2, #0
 1687 0716 1A70     		strb	r2, [r3]
 1688              		.loc 2 174 3 discriminator 4
 1689 0718 35E0     		b	.L87
 1690              	.L90:
 175:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			graphic_write_command(LCD_SET_PAGE | j, controller);
 1691              		.loc 2 175 4
 1692 071a 0E23     		movs	r3, #14
 1693 071c FB18     		adds	r3, r7, r3
 1694 071e 1B78     		ldrb	r3, [r3]
 1695 0720 4822     		movs	r2, #72
 1696 0722 5242     		rsbs	r2, r2, #0
 1697 0724 1343     		orrs	r3, r2
 1698 0726 DAB2     		uxtb	r2, r3
 1699 0728 FB1D     		adds	r3, r7, #7
 1700 072a 1B78     		ldrb	r3, [r3]
 1701 072c 1900     		movs	r1, r3
 1702 072e 1000     		movs	r0, r2
 1703 0730 FFF720FF 		bl	graphic_write_command
 176:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			graphic_write_command(LCD_SET_ADD | 0, controller);
 1704              		.loc 2 176 4
 1705 0734 FB1D     		adds	r3, r7, #7
 1706 0736 1B78     		ldrb	r3, [r3]
 1707 0738 1900     		movs	r1, r3
 1708 073a 4020     		movs	r0, #64
 1709 073c FFF71AFF 		bl	graphic_write_command
 177:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			for(i = 0; i <= 63; i++, k++) {
 1710              		.loc 2 177 10
 1711 0740 0F23     		movs	r3, #15
 1712 0742 FB18     		adds	r3, r7, r3
 1713 0744 0022     		movs	r2, #0
 1714 0746 1A70     		strb	r2, [r3]
 1715              		.loc 2 177 4
 1716 0748 12E0     		b	.L88
 1717              	.L89:
 178:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 				graphic_write_data(backBuffer[k], controller);
 1718              		.loc 2 178 5 discriminator 3
 1719 074a 194A     		ldr	r2, .L92
 1720 074c BB68     		ldr	r3, [r7, #8]
 1721 074e D318     		adds	r3, r2, r3
 1722 0750 1A78     		ldrb	r2, [r3]
 1723 0752 FB1D     		adds	r3, r7, #7
 1724 0754 1B78     		ldrb	r3, [r3]
 1725 0756 1900     		movs	r1, r3
 1726 0758 1000     		movs	r0, r2
 1727 075a FFF72EFF 		bl	graphic_write_data
 177:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			for(i = 0; i <= 63; i++, k++) {
 1728              		.loc 2 177 25 discriminator 3
 1729 075e 0F21     		movs	r1, #15
 1730 0760 7B18     		adds	r3, r7, r1
 1731 0762 1A78     		ldrb	r2, [r3]
 1732 0764 7B18     		adds	r3, r7, r1
 1733 0766 0132     		adds	r2, r2, #1
 1734 0768 1A70     		strb	r2, [r3]
 177:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			for(i = 0; i <= 63; i++, k++) {
 1735              		.loc 2 177 30 discriminator 3
 1736 076a BB68     		ldr	r3, [r7, #8]
 1737 076c 0133     		adds	r3, r3, #1
 1738 076e BB60     		str	r3, [r7, #8]
 1739              	.L88:
 177:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			for(i = 0; i <= 63; i++, k++) {
 1740              		.loc 2 177 4 discriminator 1
 1741 0770 0F23     		movs	r3, #15
 1742 0772 FB18     		adds	r3, r7, r3
 1743 0774 1B78     		ldrb	r3, [r3]
 1744 0776 3F2B     		cmp	r3, #63
 1745 0778 E7D9     		bls	.L89
 174:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			graphic_write_command(LCD_SET_PAGE | j, controller);
 1746              		.loc 2 174 22 discriminator 2
 1747 077a 0E21     		movs	r1, #14
 1748 077c 7B18     		adds	r3, r7, r1
 1749 077e 1A78     		ldrb	r2, [r3]
 1750 0780 7B18     		adds	r3, r7, r1
 1751 0782 0132     		adds	r2, r2, #1
 1752 0784 1A70     		strb	r2, [r3]
 1753              	.L87:
 174:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			graphic_write_command(LCD_SET_PAGE | j, controller);
 1754              		.loc 2 174 3 discriminator 1
 1755 0786 0E23     		movs	r3, #14
 1756 0788 FB18     		adds	r3, r7, r3
 1757 078a 1B78     		ldrb	r3, [r3]
 1758 078c 072B     		cmp	r3, #7
 1759 078e C4D9     		bls	.L90
 172:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		controller = (c == 0) ? B_CS1 : B_CS2;
 1760              		.loc 2 172 21 discriminator 2
 1761 0790 0D21     		movs	r1, #13
 1762 0792 7B18     		adds	r3, r7, r1
 1763 0794 1A78     		ldrb	r2, [r3]
 1764 0796 7B18     		adds	r3, r7, r1
 1765 0798 0132     		adds	r2, r2, #1
 1766 079a 1A70     		strb	r2, [r3]
 1767              	.L84:
 172:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		controller = (c == 0) ? B_CS1 : B_CS2;
 1768              		.loc 2 172 2 discriminator 1
 1769 079c 0D23     		movs	r3, #13
 1770 079e FB18     		adds	r3, r7, r3
 1771 07a0 1B78     		ldrb	r3, [r3]
 1772 07a2 012B     		cmp	r3, #1
 1773 07a4 AAD9     		bls	.L91
 179:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			}
 180:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		}
 181:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	}
 182:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** }
 1774              		.loc 2 182 1
 1775 07a6 C046     		nop
 1776 07a8 BD46     		mov	sp, r7
 1777 07aa 04B0     		add	sp, sp, #16
 1778              		@ sp needed
 1779 07ac 80BD     		pop	{r7, pc}
 1780              	.L93:
 1781 07ae C046     		.align	2
 1782              	.L92:
 1783 07b0 00000000 		.word	backBuffer
 1784              		.cfi_endproc
 1785              	.LFE26:
 1787              		.align	1
 1788              		.global	pixel
 1789              		.syntax unified
 1790              		.code	16
 1791              		.thumb_func
 1792              		.fpu softvfp
 1794              	pixel:
 1795              	.LFB27:
 183:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 
 184:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** void pixel(int x, int y) {
 1796              		.loc 2 184 26
 1797              		.cfi_startproc
 1798              		@ args = 0, pretend = 0, frame = 16
 1799              		@ frame_needed = 1, uses_anonymous_args = 0
 1800 07b4 80B5     		push	{r7, lr}
 1801              		.cfi_def_cfa_offset 8
 1802              		.cfi_offset 7, -8
 1803              		.cfi_offset 14, -4
 1804 07b6 84B0     		sub	sp, sp, #16
 1805              		.cfi_def_cfa_offset 24
 1806 07b8 00AF     		add	r7, sp, #0
 1807              		.cfi_def_cfa_register 7
 1808 07ba 7860     		str	r0, [r7, #4]
 1809 07bc 3960     		str	r1, [r7]
 185:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	uint8_t mask;
 186:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	int index = 0;
 1810              		.loc 2 186 6
 1811 07be 0023     		movs	r3, #0
 1812 07c0 FB60     		str	r3, [r7, #12]
 187:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	if( (x > 128 ) || (x < 1) || (y > 64) || (y < 1) ) {
 1813              		.loc 2 187 4
 1814 07c2 7B68     		ldr	r3, [r7, #4]
 1815 07c4 802B     		cmp	r3, #128
 1816 07c6 3DDC     		bgt	.L101
 1817              		.loc 2 187 17 discriminator 1
 1818 07c8 7B68     		ldr	r3, [r7, #4]
 1819 07ca 002B     		cmp	r3, #0
 1820 07cc 3ADD     		ble	.L101
 1821              		.loc 2 187 28 discriminator 2
 1822 07ce 3B68     		ldr	r3, [r7]
 1823 07d0 402B     		cmp	r3, #64
 1824 07d2 37DC     		bgt	.L101
 1825              		.loc 2 187 40 discriminator 3
 1826 07d4 3B68     		ldr	r3, [r7]
 1827 07d6 002B     		cmp	r3, #0
 1828 07d8 34DD     		ble	.L101
 188:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		return;
 189:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	}
 190:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	mask = 1 << ((y-1)%8);
 1829              		.loc 2 190 17
 1830 07da 3B68     		ldr	r3, [r7]
 1831 07dc 013B     		subs	r3, r3, #1
 1832              		.loc 2 190 20
 1833 07de 1B4A     		ldr	r2, .L102
 1834 07e0 1340     		ands	r3, r2
 1835 07e2 04D5     		bpl	.L98
 1836 07e4 013B     		subs	r3, r3, #1
 1837 07e6 0822     		movs	r2, #8
 1838 07e8 5242     		rsbs	r2, r2, #0
 1839 07ea 1343     		orrs	r3, r2
 1840 07ec 0133     		adds	r3, r3, #1
 1841              	.L98:
 1842 07ee 1A00     		movs	r2, r3
 1843              		.loc 2 190 11
 1844 07f0 0123     		movs	r3, #1
 1845 07f2 9340     		lsls	r3, r3, r2
 1846 07f4 1A00     		movs	r2, r3
 1847              		.loc 2 190 7
 1848 07f6 0B23     		movs	r3, #11
 1849 07f8 FB18     		adds	r3, r7, r3
 1850 07fa 1A70     		strb	r2, [r3]
 191:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	if(x > 64) {
 1851              		.loc 2 191 4
 1852 07fc 7B68     		ldr	r3, [r7, #4]
 1853 07fe 402B     		cmp	r3, #64
 1854 0800 05DD     		ble	.L99
 192:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		x -= 65;
 1855              		.loc 2 192 5
 1856 0802 7B68     		ldr	r3, [r7, #4]
 1857 0804 413B     		subs	r3, r3, #65
 1858 0806 7B60     		str	r3, [r7, #4]
 193:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		index = 512;
 1859              		.loc 2 193 9
 1860 0808 8023     		movs	r3, #128
 1861 080a 9B00     		lsls	r3, r3, #2
 1862 080c FB60     		str	r3, [r7, #12]
 1863              	.L99:
 194:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	}
 195:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	index += x + ((y-1)/8)*64;
 1864              		.loc 2 195 18
 1865 080e 3B68     		ldr	r3, [r7]
 1866 0810 013B     		subs	r3, r3, #1
 1867              		.loc 2 195 21
 1868 0812 002B     		cmp	r3, #0
 1869 0814 00DA     		bge	.L100
 1870 0816 0733     		adds	r3, r3, #7
 1871              	.L100:
 1872 0818 DB10     		asrs	r3, r3, #3
 1873              		.loc 2 195 24
 1874 081a 9A01     		lsls	r2, r3, #6
 1875              		.loc 2 195 13
 1876 081c 7B68     		ldr	r3, [r7, #4]
 1877 081e D318     		adds	r3, r2, r3
 1878              		.loc 2 195 8
 1879 0820 FA68     		ldr	r2, [r7, #12]
 1880 0822 D318     		adds	r3, r2, r3
 1881 0824 FB60     		str	r3, [r7, #12]
 196:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	backBuffer[index] |= mask;
 1882              		.loc 2 196 20
 1883 0826 0A4A     		ldr	r2, .L102+4
 1884 0828 FB68     		ldr	r3, [r7, #12]
 1885 082a D318     		adds	r3, r2, r3
 1886 082c 1A78     		ldrb	r2, [r3]
 1887 082e 0B23     		movs	r3, #11
 1888 0830 FB18     		adds	r3, r7, r3
 1889 0832 1B78     		ldrb	r3, [r3]
 1890 0834 1343     		orrs	r3, r2
 1891 0836 D9B2     		uxtb	r1, r3
 1892 0838 054A     		ldr	r2, .L102+4
 1893 083a FB68     		ldr	r3, [r7, #12]
 1894 083c D318     		adds	r3, r2, r3
 1895 083e 0A1C     		adds	r2, r1, #0
 1896 0840 1A70     		strb	r2, [r3]
 1897 0842 00E0     		b	.L94
 1898              	.L101:
 188:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	}
 1899              		.loc 2 188 3
 1900 0844 C046     		nop
 1901              	.L94:
 197:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** }
 1902              		.loc 2 197 1
 1903 0846 BD46     		mov	sp, r7
 1904 0848 04B0     		add	sp, sp, #16
 1905              		@ sp needed
 1906 084a 80BD     		pop	{r7, pc}
 1907              	.L103:
 1908              		.align	2
 1909              	.L102:
 1910 084c 07000080 		.word	-2147483641
 1911 0850 00000000 		.word	backBuffer
 1912              		.cfi_endproc
 1913              	.LFE27:
 1915              		.global	ball_geometry
 1916              		.data
 1917              		.align	2
 1920              	ball_geometry:
 1921 0000 0C000000 		.word	12
 1922 0004 04000000 		.word	4
 1923 0008 04000000 		.word	4
 1924 000c 00       		.byte	0
 1925 000d 01       		.byte	1
 1926 000e 00       		.byte	0
 1927 000f 02       		.byte	2
 1928 0010 01       		.byte	1
 1929 0011 00       		.byte	0
 1930 0012 01       		.byte	1
 1931 0013 01       		.byte	1
 1932 0014 01       		.byte	1
 1933 0015 02       		.byte	2
 1934 0016 01       		.byte	1
 1935 0017 03       		.byte	3
 1936 0018 02       		.byte	2
 1937 0019 00       		.byte	0
 1938 001a 02       		.byte	2
 1939 001b 01       		.byte	1
 1940 001c 02       		.byte	2
 1941 001d 02       		.byte	2
 1942 001e 02       		.byte	2
 1943 001f 03       		.byte	3
 1944 0020 03       		.byte	3
 1945 0021 01       		.byte	1
 1946 0022 03       		.byte	3
 1947 0023 02       		.byte	2
 1948 0024 00000000 		.space	16
 1948      00000000 
 1948      00000000 
 1948      00000000 
 1949              		.text
 1950              		.align	1
 1951              		.global	set_object_speed
 1952              		.syntax unified
 1953              		.code	16
 1954              		.thumb_func
 1955              		.fpu softvfp
 1957              	set_object_speed:
 1958              	.LFB28:
 1959              		.file 3 "/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h"
   1:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** #ifndef GEOMETRY_H
   2:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** #define GEOMETRY_H
   3:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** #include "graphics.h";
   4:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** typedef struct tPoint{
   5:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     unsigned char x;
   6:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     unsigned char y;
   7:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** } POINT;
   8:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** 
   9:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** #define MAX_POINTS 20
  10:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** typedef struct tGeometry{
  11:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     int numpoints;
  12:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     int sizex;
  13:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     int sizey;
  14:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     POINT px[ MAX_POINTS ];
  15:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** } GEOMETRY, *PGEOMETRY;
  16:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** 
  17:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** GEOMETRY ball_geometry = {
  18:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     12, 4, 4,
  19:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     { // POINT px[20]
  20:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         {0,1}, // px[...]
  21:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         {0,2},
  22:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         {1,0},
  23:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         {1,1},
  24:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         {1,2},
  25:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         {1,3},
  26:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         {2,0},
  27:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         {2,1},
  28:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         {2,2},
  29:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         {2,3},
  30:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         {3,1},
  31:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         {3,2} // Incomplete initialization
  32:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     } // (12 of 20)
  33:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** };
  34:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** typedef struct tObj {
  35:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     PGEOMETRY geo;
  36:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     int dirx,diry;
  37:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     int posx,posy;
  38:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     void (* draw ) (struct tObj *);
  39:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     void (* move ) (struct tObj *);
  40:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     void (* set_speed ) (struct tObj *, int, int);
  41:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** } OBJECT, *POBJECT;
  42:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** 
  43:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** void set_object_speed (POBJECT o, int speedx, int speedy);
  44:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** 
  45:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** void draw_object(POBJECT o);
  46:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** 
  47:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** void move_object(POBJECT o);
  48:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** 
  49:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** void clear_object(POBJECT o);
  50:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** 
  51:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** void set_object_speed (POBJECT o, int speedx, int speedy){
 1960              		.loc 3 51 58
 1961              		.cfi_startproc
 1962              		@ args = 0, pretend = 0, frame = 16
 1963              		@ frame_needed = 1, uses_anonymous_args = 0
 1964 0854 80B5     		push	{r7, lr}
 1965              		.cfi_def_cfa_offset 8
 1966              		.cfi_offset 7, -8
 1967              		.cfi_offset 14, -4
 1968 0856 84B0     		sub	sp, sp, #16
 1969              		.cfi_def_cfa_offset 24
 1970 0858 00AF     		add	r7, sp, #0
 1971              		.cfi_def_cfa_register 7
 1972 085a F860     		str	r0, [r7, #12]
 1973 085c B960     		str	r1, [r7, #8]
 1974 085e 7A60     		str	r2, [r7, #4]
  52:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     o->dirx = speedx;
 1975              		.loc 3 52 13
 1976 0860 FB68     		ldr	r3, [r7, #12]
 1977 0862 BA68     		ldr	r2, [r7, #8]
 1978 0864 5A60     		str	r2, [r3, #4]
  53:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     o->diry = speedy;
 1979              		.loc 3 53 13
 1980 0866 FB68     		ldr	r3, [r7, #12]
 1981 0868 7A68     		ldr	r2, [r7, #4]
 1982 086a 9A60     		str	r2, [r3, #8]
  54:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** }
 1983              		.loc 3 54 1
 1984 086c C046     		nop
 1985 086e BD46     		mov	sp, r7
 1986 0870 04B0     		add	sp, sp, #16
 1987              		@ sp needed
 1988 0872 80BD     		pop	{r7, pc}
 1989              		.cfi_endproc
 1990              	.LFE28:
 1992              		.align	1
 1993              		.global	draw_object
 1994              		.syntax unified
 1995              		.code	16
 1996              		.thumb_func
 1997              		.fpu softvfp
 1999              	draw_object:
 2000              	.LFB29:
  55:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** 
  56:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** void draw_object(POBJECT o) {
 2001              		.loc 3 56 29
 2002              		.cfi_startproc
 2003              		@ args = 0, pretend = 0, frame = 16
 2004              		@ frame_needed = 1, uses_anonymous_args = 0
 2005 0874 80B5     		push	{r7, lr}
 2006              		.cfi_def_cfa_offset 8
 2007              		.cfi_offset 7, -8
 2008              		.cfi_offset 14, -4
 2009 0876 84B0     		sub	sp, sp, #16
 2010              		.cfi_def_cfa_offset 24
 2011 0878 00AF     		add	r7, sp, #0
 2012              		.cfi_def_cfa_register 7
 2013 087a 7860     		str	r0, [r7, #4]
 2014              	.LBB5:
  57:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2015              		.loc 3 57 14
 2016 087c 0023     		movs	r3, #0
 2017 087e FB60     		str	r3, [r7, #12]
 2018              		.loc 3 57 5
 2019 0880 1BE0     		b	.L106
 2020              	.L107:
  58:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         pixel(o->posx+o->geo->px[i].x,o->posy+o->geo->px[i].y);
 2021              		.loc 3 58 16 discriminator 3
 2022 0882 7B68     		ldr	r3, [r7, #4]
 2023 0884 DA68     		ldr	r2, [r3, #12]
 2024              		.loc 3 58 24 discriminator 3
 2025 0886 7B68     		ldr	r3, [r7, #4]
 2026 0888 1968     		ldr	r1, [r3]
 2027              		.loc 3 58 36 discriminator 3
 2028 088a FB68     		ldr	r3, [r7, #12]
 2029 088c 0433     		adds	r3, r3, #4
 2030 088e 5B00     		lsls	r3, r3, #1
 2031 0890 CB18     		adds	r3, r1, r3
 2032 0892 0433     		adds	r3, r3, #4
 2033 0894 1B78     		ldrb	r3, [r3]
 2034              		.loc 3 58 9 discriminator 3
 2035 0896 D018     		adds	r0, r2, r3
 2036              		.loc 3 58 40 discriminator 3
 2037 0898 7B68     		ldr	r3, [r7, #4]
 2038 089a 1A69     		ldr	r2, [r3, #16]
 2039              		.loc 3 58 48 discriminator 3
 2040 089c 7B68     		ldr	r3, [r7, #4]
 2041 089e 1968     		ldr	r1, [r3]
 2042              		.loc 3 58 60 discriminator 3
 2043 08a0 FB68     		ldr	r3, [r7, #12]
 2044 08a2 0433     		adds	r3, r3, #4
 2045 08a4 5B00     		lsls	r3, r3, #1
 2046 08a6 CB18     		adds	r3, r1, r3
 2047 08a8 0533     		adds	r3, r3, #5
 2048 08aa 1B78     		ldrb	r3, [r3]
 2049              		.loc 3 58 9 discriminator 3
 2050 08ac D318     		adds	r3, r2, r3
 2051 08ae 1900     		movs	r1, r3
 2052 08b0 FFF7FEFF 		bl	pixel
  57:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2053              		.loc 3 57 44 discriminator 3
 2054 08b4 FB68     		ldr	r3, [r7, #12]
 2055 08b6 0133     		adds	r3, r3, #1
 2056 08b8 FB60     		str	r3, [r7, #12]
 2057              	.L106:
  57:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2058              		.loc 3 57 25 discriminator 1
 2059 08ba 7B68     		ldr	r3, [r7, #4]
 2060 08bc 1B68     		ldr	r3, [r3]
  57:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2061              		.loc 3 57 30 discriminator 1
 2062 08be 1B68     		ldr	r3, [r3]
  57:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2063              		.loc 3 57 5 discriminator 1
 2064 08c0 FA68     		ldr	r2, [r7, #12]
 2065 08c2 9A42     		cmp	r2, r3
 2066 08c4 DDDB     		blt	.L107
 2067              	.LBE5:
  59:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     }
  60:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** }
 2068              		.loc 3 60 1
 2069 08c6 C046     		nop
 2070 08c8 BD46     		mov	sp, r7
 2071 08ca 04B0     		add	sp, sp, #16
 2072              		@ sp needed
 2073 08cc 80BD     		pop	{r7, pc}
 2074              		.cfi_endproc
 2075              	.LFE29:
 2077              		.align	1
 2078              		.global	move_object
 2079              		.syntax unified
 2080              		.code	16
 2081              		.thumb_func
 2082              		.fpu softvfp
 2084              	move_object:
 2085              	.LFB30:
  61:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** 
  62:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** void move_object(POBJECT o){
 2086              		.loc 3 62 28
 2087              		.cfi_startproc
 2088              		@ args = 0, pretend = 0, frame = 8
 2089              		@ frame_needed = 1, uses_anonymous_args = 0
 2090 08ce 80B5     		push	{r7, lr}
 2091              		.cfi_def_cfa_offset 8
 2092              		.cfi_offset 7, -8
 2093              		.cfi_offset 14, -4
 2094 08d0 82B0     		sub	sp, sp, #8
 2095              		.cfi_def_cfa_offset 16
 2096 08d2 00AF     		add	r7, sp, #0
 2097              		.cfi_def_cfa_register 7
 2098 08d4 7860     		str	r0, [r7, #4]
  63:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     clear_object(o);
 2099              		.loc 3 63 5
 2100 08d6 7B68     		ldr	r3, [r7, #4]
 2101 08d8 1800     		movs	r0, r3
 2102 08da FFF7FEFF 		bl	clear_object
  64:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     o->posx = o->posx+o->dirx;
 2103              		.loc 3 64 16
 2104 08de 7B68     		ldr	r3, [r7, #4]
 2105 08e0 DA68     		ldr	r2, [r3, #12]
 2106              		.loc 3 64 24
 2107 08e2 7B68     		ldr	r3, [r7, #4]
 2108 08e4 5B68     		ldr	r3, [r3, #4]
 2109              		.loc 3 64 22
 2110 08e6 D218     		adds	r2, r2, r3
 2111              		.loc 3 64 13
 2112 08e8 7B68     		ldr	r3, [r7, #4]
 2113 08ea DA60     		str	r2, [r3, #12]
  65:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     o->posy = o->posy+o->diry;
 2114              		.loc 3 65 16
 2115 08ec 7B68     		ldr	r3, [r7, #4]
 2116 08ee 1A69     		ldr	r2, [r3, #16]
 2117              		.loc 3 65 24
 2118 08f0 7B68     		ldr	r3, [r7, #4]
 2119 08f2 9B68     		ldr	r3, [r3, #8]
 2120              		.loc 3 65 22
 2121 08f4 D218     		adds	r2, r2, r3
 2122              		.loc 3 65 13
 2123 08f6 7B68     		ldr	r3, [r7, #4]
 2124 08f8 1A61     		str	r2, [r3, #16]
  66:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     if (o->posx < 1){
 2125              		.loc 3 66 10
 2126 08fa 7B68     		ldr	r3, [r7, #4]
 2127 08fc DB68     		ldr	r3, [r3, #12]
 2128              		.loc 3 66 8
 2129 08fe 002B     		cmp	r3, #0
 2130 0900 07DC     		bgt	.L109
  67:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         o->dirx *= -1;
 2131              		.loc 3 67 17
 2132 0902 7B68     		ldr	r3, [r7, #4]
 2133 0904 5B68     		ldr	r3, [r3, #4]
 2134 0906 5A42     		rsbs	r2, r3, #0
 2135 0908 7B68     		ldr	r3, [r7, #4]
 2136 090a 5A60     		str	r2, [r3, #4]
  68:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         o->posx = 1;
 2137              		.loc 3 68 17
 2138 090c 7B68     		ldr	r3, [r7, #4]
 2139 090e 0122     		movs	r2, #1
 2140 0910 DA60     		str	r2, [r3, #12]
 2141              	.L109:
  69:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     }
  70:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     if (o->posx + o->geo->sizex > 128){
 2142              		.loc 3 70 10
 2143 0912 7B68     		ldr	r3, [r7, #4]
 2144 0914 DA68     		ldr	r2, [r3, #12]
 2145              		.loc 3 70 20
 2146 0916 7B68     		ldr	r3, [r7, #4]
 2147 0918 1B68     		ldr	r3, [r3]
 2148              		.loc 3 70 25
 2149 091a 5B68     		ldr	r3, [r3, #4]
 2150              		.loc 3 70 17
 2151 091c D318     		adds	r3, r2, r3
 2152              		.loc 3 70 8
 2153 091e 802B     		cmp	r3, #128
 2154 0920 0BDD     		ble	.L110
  71:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         o->dirx *= -1;
 2155              		.loc 3 71 17
 2156 0922 7B68     		ldr	r3, [r7, #4]
 2157 0924 5B68     		ldr	r3, [r3, #4]
 2158 0926 5A42     		rsbs	r2, r3, #0
 2159 0928 7B68     		ldr	r3, [r7, #4]
 2160 092a 5A60     		str	r2, [r3, #4]
  72:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         o->posx = 128 - o->geo->sizex;
 2161              		.loc 3 72 26
 2162 092c 7B68     		ldr	r3, [r7, #4]
 2163 092e 1B68     		ldr	r3, [r3]
 2164              		.loc 3 72 31
 2165 0930 5B68     		ldr	r3, [r3, #4]
 2166              		.loc 3 72 23
 2167 0932 8022     		movs	r2, #128
 2168 0934 D21A     		subs	r2, r2, r3
 2169              		.loc 3 72 17
 2170 0936 7B68     		ldr	r3, [r7, #4]
 2171 0938 DA60     		str	r2, [r3, #12]
 2172              	.L110:
  73:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     }
  74:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     
  75:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     if (o->posy < 1){
 2173              		.loc 3 75 10
 2174 093a 7B68     		ldr	r3, [r7, #4]
 2175 093c 1B69     		ldr	r3, [r3, #16]
 2176              		.loc 3 75 8
 2177 093e 002B     		cmp	r3, #0
 2178 0940 07DC     		bgt	.L111
  76:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         o->diry *= -1;
 2179              		.loc 3 76 17
 2180 0942 7B68     		ldr	r3, [r7, #4]
 2181 0944 9B68     		ldr	r3, [r3, #8]
 2182 0946 5A42     		rsbs	r2, r3, #0
 2183 0948 7B68     		ldr	r3, [r7, #4]
 2184 094a 9A60     		str	r2, [r3, #8]
  77:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         o->posy = 1;
 2185              		.loc 3 77 17
 2186 094c 7B68     		ldr	r3, [r7, #4]
 2187 094e 0122     		movs	r2, #1
 2188 0950 1A61     		str	r2, [r3, #16]
 2189              	.L111:
  78:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     }
  79:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     if (o->posy + o->geo->sizey > 64){
 2190              		.loc 3 79 10
 2191 0952 7B68     		ldr	r3, [r7, #4]
 2192 0954 1A69     		ldr	r2, [r3, #16]
 2193              		.loc 3 79 20
 2194 0956 7B68     		ldr	r3, [r7, #4]
 2195 0958 1B68     		ldr	r3, [r3]
 2196              		.loc 3 79 25
 2197 095a 9B68     		ldr	r3, [r3, #8]
 2198              		.loc 3 79 17
 2199 095c D318     		adds	r3, r2, r3
 2200              		.loc 3 79 8
 2201 095e 402B     		cmp	r3, #64
 2202 0960 0BDD     		ble	.L112
  80:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         o->diry *= -1;
 2203              		.loc 3 80 17
 2204 0962 7B68     		ldr	r3, [r7, #4]
 2205 0964 9B68     		ldr	r3, [r3, #8]
 2206 0966 5A42     		rsbs	r2, r3, #0
 2207 0968 7B68     		ldr	r3, [r7, #4]
 2208 096a 9A60     		str	r2, [r3, #8]
  81:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         o->posy = 64 - o->geo->sizey;
 2209              		.loc 3 81 25
 2210 096c 7B68     		ldr	r3, [r7, #4]
 2211 096e 1B68     		ldr	r3, [r3]
 2212              		.loc 3 81 30
 2213 0970 9B68     		ldr	r3, [r3, #8]
 2214              		.loc 3 81 22
 2215 0972 4022     		movs	r2, #64
 2216 0974 D21A     		subs	r2, r2, r3
 2217              		.loc 3 81 17
 2218 0976 7B68     		ldr	r3, [r7, #4]
 2219 0978 1A61     		str	r2, [r3, #16]
 2220              	.L112:
  82:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     }
  83:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     draw_object(o);
 2221              		.loc 3 83 5
 2222 097a 7B68     		ldr	r3, [r7, #4]
 2223 097c 1800     		movs	r0, r3
 2224 097e FFF7FEFF 		bl	draw_object
  84:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** }
 2225              		.loc 3 84 1
 2226 0982 C046     		nop
 2227 0984 BD46     		mov	sp, r7
 2228 0986 02B0     		add	sp, sp, #8
 2229              		@ sp needed
 2230 0988 80BD     		pop	{r7, pc}
 2231              		.cfi_endproc
 2232              	.LFE30:
 2234              		.align	1
 2235              		.global	clear_object
 2236              		.syntax unified
 2237              		.code	16
 2238              		.thumb_func
 2239              		.fpu softvfp
 2241              	clear_object:
 2242              	.LFB31:
  85:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** 
  86:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** void clear_object(POBJECT o){
 2243              		.loc 3 86 29
 2244              		.cfi_startproc
 2245              		@ args = 0, pretend = 0, frame = 16
 2246              		@ frame_needed = 1, uses_anonymous_args = 0
 2247 098a 80B5     		push	{r7, lr}
 2248              		.cfi_def_cfa_offset 8
 2249              		.cfi_offset 7, -8
 2250              		.cfi_offset 14, -4
 2251 098c 84B0     		sub	sp, sp, #16
 2252              		.cfi_def_cfa_offset 24
 2253 098e 00AF     		add	r7, sp, #0
 2254              		.cfi_def_cfa_register 7
 2255 0990 7860     		str	r0, [r7, #4]
 2256              	.LBB6:
  87:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2257              		.loc 3 87 14
 2258 0992 0023     		movs	r3, #0
 2259 0994 FB60     		str	r3, [r7, #12]
 2260              		.loc 3 87 5
 2261 0996 1BE0     		b	.L114
 2262              	.L115:
  88:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         pixel(o->posx+o->geo->px[i].x,o->posy+o->geo->px[i].y);
 2263              		.loc 3 88 16 discriminator 3
 2264 0998 7B68     		ldr	r3, [r7, #4]
 2265 099a DA68     		ldr	r2, [r3, #12]
 2266              		.loc 3 88 24 discriminator 3
 2267 099c 7B68     		ldr	r3, [r7, #4]
 2268 099e 1968     		ldr	r1, [r3]
 2269              		.loc 3 88 36 discriminator 3
 2270 09a0 FB68     		ldr	r3, [r7, #12]
 2271 09a2 0433     		adds	r3, r3, #4
 2272 09a4 5B00     		lsls	r3, r3, #1
 2273 09a6 CB18     		adds	r3, r1, r3
 2274 09a8 0433     		adds	r3, r3, #4
 2275 09aa 1B78     		ldrb	r3, [r3]
 2276              		.loc 3 88 9 discriminator 3
 2277 09ac D018     		adds	r0, r2, r3
 2278              		.loc 3 88 40 discriminator 3
 2279 09ae 7B68     		ldr	r3, [r7, #4]
 2280 09b0 1A69     		ldr	r2, [r3, #16]
 2281              		.loc 3 88 48 discriminator 3
 2282 09b2 7B68     		ldr	r3, [r7, #4]
 2283 09b4 1968     		ldr	r1, [r3]
 2284              		.loc 3 88 60 discriminator 3
 2285 09b6 FB68     		ldr	r3, [r7, #12]
 2286 09b8 0433     		adds	r3, r3, #4
 2287 09ba 5B00     		lsls	r3, r3, #1
 2288 09bc CB18     		adds	r3, r1, r3
 2289 09be 0533     		adds	r3, r3, #5
 2290 09c0 1B78     		ldrb	r3, [r3]
 2291              		.loc 3 88 9 discriminator 3
 2292 09c2 D318     		adds	r3, r2, r3
 2293 09c4 1900     		movs	r1, r3
 2294 09c6 FFF7FEFF 		bl	pixel
  87:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2295              		.loc 3 87 44 discriminator 3
 2296 09ca FB68     		ldr	r3, [r7, #12]
 2297 09cc 0133     		adds	r3, r3, #1
 2298 09ce FB60     		str	r3, [r7, #12]
 2299              	.L114:
  87:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2300              		.loc 3 87 25 discriminator 1
 2301 09d0 7B68     		ldr	r3, [r7, #4]
 2302 09d2 1B68     		ldr	r3, [r3]
  87:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2303              		.loc 3 87 30 discriminator 1
 2304 09d4 1B68     		ldr	r3, [r3]
  87:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2305              		.loc 3 87 5 discriminator 1
 2306 09d6 FA68     		ldr	r2, [r7, #12]
 2307 09d8 9A42     		cmp	r2, r3
 2308 09da DDDB     		blt	.L115
 2309              	.LBE6:
  89:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     }
  90:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** }
 2310              		.loc 3 90 1
 2311 09dc C046     		nop
 2312 09de BD46     		mov	sp, r7
 2313 09e0 04B0     		add	sp, sp, #16
 2314              		@ sp needed
 2315 09e2 80BD     		pop	{r7, pc}
 2316              		.cfi_endproc
 2317              	.LFE31:
 2319              		.align	1
 2320              		.global	delay_250ns
 2321              		.syntax unified
 2322              		.code	16
 2323              		.thumb_func
 2324              		.fpu softvfp
 2326              	delay_250ns:
 2327              	.LFB32:
 2328              		.file 4 "/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h"
   1:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** #ifndef DELAY_H
   2:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** #define DELAY_H
   3:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** 
   4:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** #define STK_CTRL ((volatile unsigned int *)(0xE000E010))
   5:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** #define STK_LOAD ((volatile unsigned int *)(0xE000E014))
   6:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** #define STK_VAL ((volatile unsigned int *)(0xE000E018))
   7:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** void delay_250ns( void ) {
 2329              		.loc 4 7 26
 2330              		.cfi_startproc
 2331              		@ args = 0, pretend = 0, frame = 0
 2332              		@ frame_needed = 1, uses_anonymous_args = 0
 2333 09e4 80B5     		push	{r7, lr}
 2334              		.cfi_def_cfa_offset 8
 2335              		.cfi_offset 7, -8
 2336              		.cfi_offset 14, -4
 2337 09e6 00AF     		add	r7, sp, #0
 2338              		.cfi_def_cfa_register 7
   8:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     /* SystemCoreClock = 168000000 */
   9:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     *STK_CTRL = 0;
 2339              		.loc 4 9 5
 2340 09e8 0C4B     		ldr	r3, .L118
 2341              		.loc 4 9 15
 2342 09ea 0022     		movs	r2, #0
 2343 09ec 1A60     		str	r2, [r3]
  10:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     *STK_LOAD = ( (168/4) -1 );
 2344              		.loc 4 10 5
 2345 09ee 0C4B     		ldr	r3, .L118+4
 2346              		.loc 4 10 15
 2347 09f0 2922     		movs	r2, #41
 2348 09f2 1A60     		str	r2, [r3]
  11:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     *STK_VAL = 0;
 2349              		.loc 4 11 5
 2350 09f4 0B4B     		ldr	r3, .L118+8
 2351              		.loc 4 11 14
 2352 09f6 0022     		movs	r2, #0
 2353 09f8 1A60     		str	r2, [r3]
  12:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     *STK_CTRL = 5;
 2354              		.loc 4 12 5
 2355 09fa 084B     		ldr	r3, .L118
 2356              		.loc 4 12 15
 2357 09fc 0522     		movs	r2, #5
 2358 09fe 1A60     		str	r2, [r3]
  13:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     while( (*STK_CTRL & 0x10000 )== 0 );
 2359              		.loc 4 13 10
 2360 0a00 C046     		nop
 2361              	.L117:
 2362              		.loc 4 13 13 discriminator 1
 2363 0a02 064B     		ldr	r3, .L118
 2364 0a04 1A68     		ldr	r2, [r3]
 2365              		.loc 4 13 23 discriminator 1
 2366 0a06 8023     		movs	r3, #128
 2367 0a08 5B02     		lsls	r3, r3, #9
 2368 0a0a 1340     		ands	r3, r2
 2369              		.loc 4 13 10 discriminator 1
 2370 0a0c F9D0     		beq	.L117
  14:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         *STK_CTRL = 0;
 2371              		.loc 4 14 9
 2372 0a0e 034B     		ldr	r3, .L118
 2373              		.loc 4 14 19
 2374 0a10 0022     		movs	r2, #0
 2375 0a12 1A60     		str	r2, [r3]
  15:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** }
 2376              		.loc 4 15 1
 2377 0a14 C046     		nop
 2378 0a16 BD46     		mov	sp, r7
 2379              		@ sp needed
 2380 0a18 80BD     		pop	{r7, pc}
 2381              	.L119:
 2382 0a1a C046     		.align	2
 2383              	.L118:
 2384 0a1c 10E000E0 		.word	-536813552
 2385 0a20 14E000E0 		.word	-536813548
 2386 0a24 18E000E0 		.word	-536813544
 2387              		.cfi_endproc
 2388              	.LFE32:
 2390              		.align	1
 2391              		.global	delay_500ns
 2392              		.syntax unified
 2393              		.code	16
 2394              		.thumb_func
 2395              		.fpu softvfp
 2397              	delay_500ns:
 2398              	.LFB33:
  16:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** void delay_500ns( void) {
 2399              		.loc 4 16 25
 2400              		.cfi_startproc
 2401              		@ args = 0, pretend = 0, frame = 0
 2402              		@ frame_needed = 1, uses_anonymous_args = 0
 2403 0a28 80B5     		push	{r7, lr}
 2404              		.cfi_def_cfa_offset 8
 2405              		.cfi_offset 7, -8
 2406              		.cfi_offset 14, -4
 2407 0a2a 00AF     		add	r7, sp, #0
 2408              		.cfi_def_cfa_register 7
  17:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     delay_250ns();
 2409              		.loc 4 17 5
 2410 0a2c FFF7FEFF 		bl	delay_250ns
  18:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     delay_250ns();
 2411              		.loc 4 18 5
 2412 0a30 FFF7FEFF 		bl	delay_250ns
  19:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** }
 2413              		.loc 4 19 1
 2414 0a34 C046     		nop
 2415 0a36 BD46     		mov	sp, r7
 2416              		@ sp needed
 2417 0a38 80BD     		pop	{r7, pc}
 2418              		.cfi_endproc
 2419              	.LFE33:
 2421              		.global	__aeabi_uidiv
 2422              		.align	1
 2423              		.global	delay_micro
 2424              		.syntax unified
 2425              		.code	16
 2426              		.thumb_func
 2427              		.fpu softvfp
 2429              	delay_micro:
 2430              	.LFB34:
  20:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** void delay_micro(unsigned int us) {
 2431              		.loc 4 20 35
 2432              		.cfi_startproc
 2433              		@ args = 0, pretend = 0, frame = 8
 2434              		@ frame_needed = 1, uses_anonymous_args = 0
 2435 0a3a 80B5     		push	{r7, lr}
 2436              		.cfi_def_cfa_offset 8
 2437              		.cfi_offset 7, -8
 2438              		.cfi_offset 14, -4
 2439 0a3c 82B0     		sub	sp, sp, #8
 2440              		.cfi_def_cfa_offset 16
 2441 0a3e 00AF     		add	r7, sp, #0
 2442              		.cfi_def_cfa_register 7
 2443 0a40 7860     		str	r0, [r7, #4]
  21:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** #ifdef SIMULATOR
  22:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     us = us / 1000;
 2444              		.loc 4 22 8
 2445 0a42 7A68     		ldr	r2, [r7, #4]
 2446 0a44 FA23     		movs	r3, #250
 2447 0a46 9900     		lsls	r1, r3, #2
 2448 0a48 1000     		movs	r0, r2
 2449 0a4a FFF7FEFF 		bl	__aeabi_uidiv
 2450              	.LVL0:
 2451 0a4e 0300     		movs	r3, r0
 2452 0a50 7B60     		str	r3, [r7, #4]
  23:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     us++;
 2453              		.loc 4 23 7
 2454 0a52 7B68     		ldr	r3, [r7, #4]
 2455 0a54 0133     		adds	r3, r3, #1
 2456 0a56 7B60     		str	r3, [r7, #4]
  24:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** #endif
  25:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     while( us > 0 ) {
 2457              		.loc 4 25 10
 2458 0a58 0AE0     		b	.L122
 2459              	.L123:
  26:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         delay_250ns();
 2460              		.loc 4 26 9
 2461 0a5a FFF7FEFF 		bl	delay_250ns
  27:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         delay_250ns();
 2462              		.loc 4 27 9
 2463 0a5e FFF7FEFF 		bl	delay_250ns
  28:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         delay_250ns();
 2464              		.loc 4 28 9
 2465 0a62 FFF7FEFF 		bl	delay_250ns
  29:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         delay_250ns();
 2466              		.loc 4 29 9
 2467 0a66 FFF7FEFF 		bl	delay_250ns
  30:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         us--;
 2468              		.loc 4 30 11
 2469 0a6a 7B68     		ldr	r3, [r7, #4]
 2470 0a6c 013B     		subs	r3, r3, #1
 2471 0a6e 7B60     		str	r3, [r7, #4]
 2472              	.L122:
  25:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         delay_250ns();
 2473              		.loc 4 25 10
 2474 0a70 7B68     		ldr	r3, [r7, #4]
 2475 0a72 002B     		cmp	r3, #0
 2476 0a74 F1D1     		bne	.L123
  31:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     }
  32:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** }
 2477              		.loc 4 32 1
 2478 0a76 C046     		nop
 2479 0a78 BD46     		mov	sp, r7
 2480 0a7a 02B0     		add	sp, sp, #8
 2481              		@ sp needed
 2482 0a7c 80BD     		pop	{r7, pc}
 2483              		.cfi_endproc
 2484              	.LFE34:
 2486              		.align	1
 2487              		.global	delay_milli
 2488              		.syntax unified
 2489              		.code	16
 2490              		.thumb_func
 2491              		.fpu softvfp
 2493              	delay_milli:
 2494              	.LFB35:
  33:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** void delay_milli(unsigned int ms){
 2495              		.loc 4 33 34
 2496              		.cfi_startproc
 2497              		@ args = 0, pretend = 0, frame = 8
 2498              		@ frame_needed = 1, uses_anonymous_args = 0
 2499 0a7e 80B5     		push	{r7, lr}
 2500              		.cfi_def_cfa_offset 8
 2501              		.cfi_offset 7, -8
 2502              		.cfi_offset 14, -4
 2503 0a80 82B0     		sub	sp, sp, #8
 2504              		.cfi_def_cfa_offset 16
 2505 0a82 00AF     		add	r7, sp, #0
 2506              		.cfi_def_cfa_register 7
 2507 0a84 7860     		str	r0, [r7, #4]
  34:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** #ifdef SIMULATOR
  35:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     ms = ms / 1000;
 2508              		.loc 4 35 8
 2509 0a86 7A68     		ldr	r2, [r7, #4]
 2510 0a88 FA23     		movs	r3, #250
 2511 0a8a 9900     		lsls	r1, r3, #2
 2512 0a8c 1000     		movs	r0, r2
 2513 0a8e FFF7FEFF 		bl	__aeabi_uidiv
 2514              	.LVL1:
 2515 0a92 0300     		movs	r3, r0
 2516 0a94 7B60     		str	r3, [r7, #4]
  36:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     ms++;
 2517              		.loc 4 36 7
 2518 0a96 7B68     		ldr	r3, [r7, #4]
 2519 0a98 0133     		adds	r3, r3, #1
 2520 0a9a 7B60     		str	r3, [r7, #4]
  37:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** #endif
  38:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     while( ms > 0 ) {
 2521              		.loc 4 38 10
 2522 0a9c 07E0     		b	.L125
 2523              	.L126:
  39:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         delay_micro(1000);
 2524              		.loc 4 39 9
 2525 0a9e FA23     		movs	r3, #250
 2526 0aa0 9B00     		lsls	r3, r3, #2
 2527 0aa2 1800     		movs	r0, r3
 2528 0aa4 FFF7FEFF 		bl	delay_micro
  40:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         ms--;
 2529              		.loc 4 40 11
 2530 0aa8 7B68     		ldr	r3, [r7, #4]
 2531 0aaa 013B     		subs	r3, r3, #1
 2532 0aac 7B60     		str	r3, [r7, #4]
 2533              	.L125:
  38:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         delay_micro(1000);
 2534              		.loc 4 38 10
 2535 0aae 7B68     		ldr	r3, [r7, #4]
 2536 0ab0 002B     		cmp	r3, #0
 2537 0ab2 F4D1     		bne	.L126
  41:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     }
  42:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** }
 2538              		.loc 4 42 1
 2539 0ab4 C046     		nop
 2540 0ab6 BD46     		mov	sp, r7
 2541 0ab8 02B0     		add	sp, sp, #8
 2542              		@ sp needed
 2543 0aba 80BD     		pop	{r7, pc}
 2544              		.cfi_endproc
 2545              	.LFE35:
 2547              		.align	1
 2548              		.global	activateRow
 2549              		.syntax unified
 2550              		.code	16
 2551              		.thumb_func
 2552              		.fpu softvfp
 2554              	activateRow:
 2555              	.LFB36:
 2556              		.file 5 "/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h"
   1:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** #ifndef KEYPAD_H
   2:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** #define KEYPAD_H
   3:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** #include "gpio.h"
   4:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** 
   5:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** void activateRow(unsigned int row ){
 2557              		.loc 5 5 36
 2558              		.cfi_startproc
 2559              		@ args = 0, pretend = 0, frame = 8
 2560              		@ frame_needed = 1, uses_anonymous_args = 0
 2561 0abc 80B5     		push	{r7, lr}
 2562              		.cfi_def_cfa_offset 8
 2563              		.cfi_offset 7, -8
 2564              		.cfi_offset 14, -4
 2565 0abe 82B0     		sub	sp, sp, #8
 2566              		.cfi_def_cfa_offset 16
 2567 0ac0 00AF     		add	r7, sp, #0
 2568              		.cfi_def_cfa_register 7
 2569 0ac2 7860     		str	r0, [r7, #4]
   6:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** /* Aktivera angiven rad hos tangentbordet, eller
   7:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** * deaktivera samtliga */
   8:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     switch( row ){
 2570              		.loc 5 8 5
 2571 0ac4 7B68     		ldr	r3, [r7, #4]
 2572 0ac6 042B     		cmp	r3, #4
 2573 0ac8 19D8     		bhi	.L135
 2574 0aca 7B68     		ldr	r3, [r7, #4]
 2575 0acc 9A00     		lsls	r2, r3, #2
 2576 0ace 0E4B     		ldr	r3, .L136
 2577 0ad0 D318     		adds	r3, r2, r3
 2578 0ad2 1B68     		ldr	r3, [r3]
 2579 0ad4 9F46     		mov	pc, r3
 2580              		.section	.rodata
 2581              		.align	2
 2582              	.L130:
 2583 0000 F60A0000 		.word	.L134
 2584 0004 D60A0000 		.word	.L133
 2585 0008 DE0A0000 		.word	.L132
 2586 000c E60A0000 		.word	.L131
 2587 0010 EE0A0000 		.word	.L129
 2588              		.text
 2589              	.L133:
   9:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         case 1: GPIO_D.odrHigh = 0x10; break;
 2590              		.loc 5 9 17
 2591 0ad6 0D4B     		ldr	r3, .L136+4
 2592              		.loc 5 9 32
 2593 0ad8 1022     		movs	r2, #16
 2594 0ada 5A75     		strb	r2, [r3, #21]
 2595              		.loc 5 9 9
 2596 0adc 0FE0     		b	.L128
 2597              	.L132:
  10:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         case 2: GPIO_D.odrHigh = 0x20; break;
 2598              		.loc 5 10 17
 2599 0ade 0B4B     		ldr	r3, .L136+4
 2600              		.loc 5 10 32
 2601 0ae0 2022     		movs	r2, #32
 2602 0ae2 5A75     		strb	r2, [r3, #21]
 2603              		.loc 5 10 9
 2604 0ae4 0BE0     		b	.L128
 2605              	.L131:
  11:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         case 3: GPIO_D.odrHigh = 0x40; break;
 2606              		.loc 5 11 17
 2607 0ae6 094B     		ldr	r3, .L136+4
 2608              		.loc 5 11 32
 2609 0ae8 4022     		movs	r2, #64
 2610 0aea 5A75     		strb	r2, [r3, #21]
 2611              		.loc 5 11 9
 2612 0aec 07E0     		b	.L128
 2613              	.L129:
  12:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         case 4: GPIO_D.odrHigh = 0x80; break;
 2614              		.loc 5 12 17
 2615 0aee 074B     		ldr	r3, .L136+4
 2616              		.loc 5 12 32
 2617 0af0 8022     		movs	r2, #128
 2618 0af2 5A75     		strb	r2, [r3, #21]
 2619              		.loc 5 12 9
 2620 0af4 03E0     		b	.L128
 2621              	.L134:
  13:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         case 0: GPIO_D.odrHigh = 0x00; break;
 2622              		.loc 5 13 17
 2623 0af6 054B     		ldr	r3, .L136+4
 2624              		.loc 5 13 32
 2625 0af8 0022     		movs	r2, #0
 2626 0afa 5A75     		strb	r2, [r3, #21]
 2627              		.loc 5 13 9
 2628 0afc C046     		nop
 2629              	.L128:
 2630              	.L135:
  14:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     }
  15:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** }
 2631              		.loc 5 15 1
 2632 0afe C046     		nop
 2633 0b00 BD46     		mov	sp, r7
 2634 0b02 02B0     		add	sp, sp, #8
 2635              		@ sp needed
 2636 0b04 80BD     		pop	{r7, pc}
 2637              	.L137:
 2638 0b06 C046     		.align	2
 2639              	.L136:
 2640 0b08 00000000 		.word	.L130
 2641 0b0c 000C0240 		.word	1073875968
 2642              		.cfi_endproc
 2643              	.LFE36:
 2645              		.align	1
 2646              		.global	readColumn
 2647              		.syntax unified
 2648              		.code	16
 2649              		.thumb_func
 2650              		.fpu softvfp
 2652              	readColumn:
 2653              	.LFB37:
  16:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** int readColumn(void) {
 2654              		.loc 5 16 22
 2655              		.cfi_startproc
 2656              		@ args = 0, pretend = 0, frame = 8
 2657              		@ frame_needed = 1, uses_anonymous_args = 0
 2658 0b10 80B5     		push	{r7, lr}
 2659              		.cfi_def_cfa_offset 8
 2660              		.cfi_offset 7, -8
 2661              		.cfi_offset 14, -4
 2662 0b12 82B0     		sub	sp, sp, #8
 2663              		.cfi_def_cfa_offset 16
 2664 0b14 00AF     		add	r7, sp, #0
 2665              		.cfi_def_cfa_register 7
  17:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     /* Om någon tangent (i aktiverad rad)
  18:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     * är nedtryckt, returnera dess kolumnnummer,
  19:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     * annars, returnera 0 */
  20:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     unsigned char c;
  21:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     c = GPIO_D.idrHigh;
 2666              		.loc 5 21 9
 2667 0b16 124A     		ldr	r2, .L144
 2668              		.loc 5 21 7
 2669 0b18 FB1D     		adds	r3, r7, #7
 2670 0b1a 527C     		ldrb	r2, [r2, #17]
 2671 0b1c 1A70     		strb	r2, [r3]
  22:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     if ( c & 0x8 ) return 4;
 2672              		.loc 5 22 12
 2673 0b1e FB1D     		adds	r3, r7, #7
 2674 0b20 1B78     		ldrb	r3, [r3]
 2675 0b22 0822     		movs	r2, #8
 2676 0b24 1340     		ands	r3, r2
 2677              		.loc 5 22 8
 2678 0b26 01D0     		beq	.L139
 2679              		.loc 5 22 27 discriminator 1
 2680 0b28 0423     		movs	r3, #4
 2681 0b2a 15E0     		b	.L140
 2682              	.L139:
  23:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     if ( c & 0x4 ) return 3;
 2683              		.loc 5 23 12
 2684 0b2c FB1D     		adds	r3, r7, #7
 2685 0b2e 1B78     		ldrb	r3, [r3]
 2686 0b30 0422     		movs	r2, #4
 2687 0b32 1340     		ands	r3, r2
 2688              		.loc 5 23 8
 2689 0b34 01D0     		beq	.L141
 2690              		.loc 5 23 27 discriminator 1
 2691 0b36 0323     		movs	r3, #3
 2692 0b38 0EE0     		b	.L140
 2693              	.L141:
  24:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     if ( c & 0x2 ) return 2;
 2694              		.loc 5 24 12
 2695 0b3a FB1D     		adds	r3, r7, #7
 2696 0b3c 1B78     		ldrb	r3, [r3]
 2697 0b3e 0222     		movs	r2, #2
 2698 0b40 1340     		ands	r3, r2
 2699              		.loc 5 24 8
 2700 0b42 01D0     		beq	.L142
 2701              		.loc 5 24 27 discriminator 1
 2702 0b44 0223     		movs	r3, #2
 2703 0b46 07E0     		b	.L140
 2704              	.L142:
  25:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     if ( c & 0x1 ) return 1;
 2705              		.loc 5 25 12
 2706 0b48 FB1D     		adds	r3, r7, #7
 2707 0b4a 1B78     		ldrb	r3, [r3]
 2708 0b4c 0122     		movs	r2, #1
 2709 0b4e 1340     		ands	r3, r2
 2710              		.loc 5 25 8
 2711 0b50 01D0     		beq	.L143
 2712              		.loc 5 25 27 discriminator 1
 2713 0b52 0123     		movs	r3, #1
 2714 0b54 00E0     		b	.L140
 2715              	.L143:
  26:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     return 0;
 2716              		.loc 5 26 12
 2717 0b56 0023     		movs	r3, #0
 2718              	.L140:
  27:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** }
 2719              		.loc 5 27 1
 2720 0b58 1800     		movs	r0, r3
 2721 0b5a BD46     		mov	sp, r7
 2722 0b5c 02B0     		add	sp, sp, #8
 2723              		@ sp needed
 2724 0b5e 80BD     		pop	{r7, pc}
 2725              	.L145:
 2726              		.align	2
 2727              	.L144:
 2728 0b60 000C0240 		.word	1073875968
 2729              		.cfi_endproc
 2730              	.LFE37:
 2732              		.section	.rodata
 2733              		.align	2
 2734              	.LC0:
 2735 0014 01       		.byte	1
 2736 0015 02       		.byte	2
 2737 0016 03       		.byte	3
 2738 0017 0A       		.byte	10
 2739 0018 04       		.byte	4
 2740 0019 05       		.byte	5
 2741 001a 06       		.byte	6
 2742 001b 0B       		.byte	11
 2743 001c 07       		.byte	7
 2744 001d 08       		.byte	8
 2745 001e 09       		.byte	9
 2746 001f 0C       		.byte	12
 2747 0020 0E       		.byte	14
 2748 0021 00       		.byte	0
 2749 0022 0F       		.byte	15
 2750 0023 0D       		.byte	13
 2751              		.text
 2752              		.align	1
 2753              		.global	keyb
 2754              		.syntax unified
 2755              		.code	16
 2756              		.thumb_func
 2757              		.fpu softvfp
 2759              	keyb:
 2760              	.LFB38:
  28:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** 
  29:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** unsigned char keyb( void ) {
 2761              		.loc 5 29 28
 2762              		.cfi_startproc
 2763              		@ args = 0, pretend = 0, frame = 24
 2764              		@ frame_needed = 1, uses_anonymous_args = 0
 2765 0b64 90B5     		push	{r4, r7, lr}
 2766              		.cfi_def_cfa_offset 12
 2767              		.cfi_offset 4, -12
 2768              		.cfi_offset 7, -8
 2769              		.cfi_offset 14, -4
 2770 0b66 87B0     		sub	sp, sp, #28
 2771              		.cfi_def_cfa_offset 40
 2772 0b68 00AF     		add	r7, sp, #0
 2773              		.cfi_def_cfa_register 7
  30:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     unsigned char key[]={1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
 2774              		.loc 5 30 19
 2775 0b6a 3B00     		movs	r3, r7
 2776 0b6c 164A     		ldr	r2, .L152
 2777 0b6e 13CA     		ldmia	r2!, {r0, r1, r4}
 2778 0b70 13C3     		stmia	r3!, {r0, r1, r4}
 2779 0b72 1268     		ldr	r2, [r2]
 2780 0b74 1A60     		str	r2, [r3]
  31:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     int row, col;
  32:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     for (row=1; row <=4 ; row++ ) {
 2781              		.loc 5 32 13
 2782 0b76 0123     		movs	r3, #1
 2783 0b78 7B61     		str	r3, [r7, #20]
 2784              		.loc 5 32 5
 2785 0b7a 19E0     		b	.L147
 2786              	.L150:
  33:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         activateRow(row);
 2787              		.loc 5 33 9
 2788 0b7c 7B69     		ldr	r3, [r7, #20]
 2789 0b7e 1800     		movs	r0, r3
 2790 0b80 FFF7FEFF 		bl	activateRow
  34:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         if(col = readColumn()) {
 2791              		.loc 5 34 18
 2792 0b84 FFF7FEFF 		bl	readColumn
 2793 0b88 0300     		movs	r3, r0
 2794 0b8a 3B61     		str	r3, [r7, #16]
 2795              		.loc 5 34 11
 2796 0b8c 3B69     		ldr	r3, [r7, #16]
 2797 0b8e 002B     		cmp	r3, #0
 2798 0b90 0BD0     		beq	.L148
  35:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****             activateRow(0);
 2799              		.loc 5 35 13
 2800 0b92 0020     		movs	r0, #0
 2801 0b94 FFF7FEFF 		bl	activateRow
  36:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****             return key [4*(row-1)+(col-1)];
 2802              		.loc 5 36 31
 2803 0b98 7B69     		ldr	r3, [r7, #20]
 2804 0b9a 013B     		subs	r3, r3, #1
 2805              		.loc 5 36 26
 2806 0b9c 9A00     		lsls	r2, r3, #2
 2807              		.loc 5 36 39
 2808 0b9e 3B69     		ldr	r3, [r7, #16]
 2809 0ba0 013B     		subs	r3, r3, #1
 2810              		.loc 5 36 34
 2811 0ba2 D318     		adds	r3, r2, r3
 2812              		.loc 5 36 24
 2813 0ba4 3A00     		movs	r2, r7
 2814 0ba6 D35C     		ldrb	r3, [r2, r3]
 2815 0ba8 09E0     		b	.L151
 2816              	.L148:
  32:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         activateRow(row);
 2817              		.loc 5 32 30 discriminator 2
 2818 0baa 7B69     		ldr	r3, [r7, #20]
 2819 0bac 0133     		adds	r3, r3, #1
 2820 0bae 7B61     		str	r3, [r7, #20]
 2821              	.L147:
  32:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         activateRow(row);
 2822              		.loc 5 32 5 discriminator 1
 2823 0bb0 7B69     		ldr	r3, [r7, #20]
 2824 0bb2 042B     		cmp	r3, #4
 2825 0bb4 E2DD     		ble	.L150
  37:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         }
  38:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     }
  39:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     activateRow(0);
 2826              		.loc 5 39 5
 2827 0bb6 0020     		movs	r0, #0
 2828 0bb8 FFF7FEFF 		bl	activateRow
  40:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     return 0xFF;
 2829              		.loc 5 40 12
 2830 0bbc FF23     		movs	r3, #255
 2831              	.L151:
  41:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** }
 2832              		.loc 5 41 1 discriminator 1
 2833 0bbe 1800     		movs	r0, r3
 2834 0bc0 BD46     		mov	sp, r7
 2835 0bc2 07B0     		add	sp, sp, #28
 2836              		@ sp needed
 2837 0bc4 90BD     		pop	{r4, r7, pc}
 2838              	.L153:
 2839 0bc6 C046     		.align	2
 2840              	.L152:
 2841 0bc8 14000000 		.word	.LC0
 2842              		.cfi_endproc
 2843              	.LFE38:
 2845              		.comm	grid,9,4
 2846              		.comm	gameState,1,1
 2847              		.data
 2848              		.align	2
 2851              	ball:
 2852 0034 00000000 		.word	ball_geometry
 2853 0038 00000000 		.word	0
 2854 003c 00000000 		.word	0
 2855 0040 0A000000 		.word	10
 2856 0044 0A000000 		.word	10
 2857 0048 00000000 		.word	draw_object
 2858 004c 00000000 		.word	move_object
 2859 0050 00000000 		.word	set_object_speed
 2860              		.text
 2861              		.align	1
 2862              		.global	drawgrid
 2863              		.syntax unified
 2864              		.code	16
 2865              		.thumb_func
 2866              		.fpu softvfp
 2868              	drawgrid:
 2869              	.LFB39:
 2870              		.file 6 "/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c"
   1:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** /*
   2:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****  * 	startup.c
   3:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****  *
   4:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****  */
   5:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** #include "ascii_display.h"
   6:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** #include "geometry.h"
   7:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** #include "delay.h"
   8:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** #include "gpio.h"
   9:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** #include "graphics.h"
  10:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** #include "keypad.h"
  11:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** char grid[9];
  12:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** char gameState;
  13:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** static OBJECT ball = {
  14:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     &ball_geometry,  // geometry for a ball
  15:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     0, 0,            // move direction (x,y)
  16:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     10, 10,          // position (x,y)
  17:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     draw_object,     // draw method
  18:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     move_object,     // move method
  19:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     set_object_speed // set-speed method
  20:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** };
  21:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** 
  22:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** void drawgrid(void)
  23:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** {
 2871              		.loc 6 23 1
 2872              		.cfi_startproc
 2873              		@ args = 0, pretend = 0, frame = 8
 2874              		@ frame_needed = 1, uses_anonymous_args = 0
 2875 0bcc 80B5     		push	{r7, lr}
 2876              		.cfi_def_cfa_offset 8
 2877              		.cfi_offset 7, -8
 2878              		.cfi_offset 14, -4
 2879 0bce 82B0     		sub	sp, sp, #8
 2880              		.cfi_def_cfa_offset 16
 2881 0bd0 00AF     		add	r7, sp, #0
 2882              		.cfi_def_cfa_register 7
  24:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     unsigned i;
  25:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     for(i = 0; i < 64; i++) {
 2883              		.loc 6 25 11
 2884 0bd2 0023     		movs	r3, #0
 2885 0bd4 7B60     		str	r3, [r7, #4]
 2886              		.loc 6 25 5
 2887 0bd6 07E0     		b	.L155
 2888              	.L156:
  26:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(i, 21);
 2889              		.loc 6 26 9 discriminator 3
 2890 0bd8 7B68     		ldr	r3, [r7, #4]
 2891 0bda 1521     		movs	r1, #21
 2892 0bdc 1800     		movs	r0, r3
 2893 0bde FFF7FEFF 		bl	pixel
  25:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(i, 21);
 2894              		.loc 6 25 25 discriminator 3
 2895 0be2 7B68     		ldr	r3, [r7, #4]
 2896 0be4 0133     		adds	r3, r3, #1
 2897 0be6 7B60     		str	r3, [r7, #4]
 2898              	.L155:
  25:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(i, 21);
 2899              		.loc 6 25 5 discriminator 1
 2900 0be8 7B68     		ldr	r3, [r7, #4]
 2901 0bea 3F2B     		cmp	r3, #63
 2902 0bec F4D9     		bls	.L156
  27:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     }
  28:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     for(i = 0; i < 64; i++) {
 2903              		.loc 6 28 11
 2904 0bee 0023     		movs	r3, #0
 2905 0bf0 7B60     		str	r3, [r7, #4]
 2906              		.loc 6 28 5
 2907 0bf2 07E0     		b	.L157
 2908              	.L158:
  29:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(21, i);
 2909              		.loc 6 29 9 discriminator 3
 2910 0bf4 7B68     		ldr	r3, [r7, #4]
 2911 0bf6 1900     		movs	r1, r3
 2912 0bf8 1520     		movs	r0, #21
 2913 0bfa FFF7FEFF 		bl	pixel
  28:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(21, i);
 2914              		.loc 6 28 25 discriminator 3
 2915 0bfe 7B68     		ldr	r3, [r7, #4]
 2916 0c00 0133     		adds	r3, r3, #1
 2917 0c02 7B60     		str	r3, [r7, #4]
 2918              	.L157:
  28:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(21, i);
 2919              		.loc 6 28 5 discriminator 1
 2920 0c04 7B68     		ldr	r3, [r7, #4]
 2921 0c06 3F2B     		cmp	r3, #63
 2922 0c08 F4D9     		bls	.L158
  30:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     }
  31:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     for(i = 0; i < 64; i++) {
 2923              		.loc 6 31 11
 2924 0c0a 0023     		movs	r3, #0
 2925 0c0c 7B60     		str	r3, [r7, #4]
 2926              		.loc 6 31 5
 2927 0c0e 07E0     		b	.L159
 2928              	.L160:
  32:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(i, 43);
 2929              		.loc 6 32 9 discriminator 3
 2930 0c10 7B68     		ldr	r3, [r7, #4]
 2931 0c12 2B21     		movs	r1, #43
 2932 0c14 1800     		movs	r0, r3
 2933 0c16 FFF7FEFF 		bl	pixel
  31:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(i, 43);
 2934              		.loc 6 31 25 discriminator 3
 2935 0c1a 7B68     		ldr	r3, [r7, #4]
 2936 0c1c 0133     		adds	r3, r3, #1
 2937 0c1e 7B60     		str	r3, [r7, #4]
 2938              	.L159:
  31:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(i, 43);
 2939              		.loc 6 31 5 discriminator 1
 2940 0c20 7B68     		ldr	r3, [r7, #4]
 2941 0c22 3F2B     		cmp	r3, #63
 2942 0c24 F4D9     		bls	.L160
  33:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     }
  34:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     for(i = 0; i < 64; i++) {
 2943              		.loc 6 34 11
 2944 0c26 0023     		movs	r3, #0
 2945 0c28 7B60     		str	r3, [r7, #4]
 2946              		.loc 6 34 5
 2947 0c2a 07E0     		b	.L161
 2948              	.L162:
  35:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(43, i);
 2949              		.loc 6 35 9 discriminator 3
 2950 0c2c 7B68     		ldr	r3, [r7, #4]
 2951 0c2e 1900     		movs	r1, r3
 2952 0c30 2B20     		movs	r0, #43
 2953 0c32 FFF7FEFF 		bl	pixel
  34:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(43, i);
 2954              		.loc 6 34 25 discriminator 3
 2955 0c36 7B68     		ldr	r3, [r7, #4]
 2956 0c38 0133     		adds	r3, r3, #1
 2957 0c3a 7B60     		str	r3, [r7, #4]
 2958              	.L161:
  34:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(43, i);
 2959              		.loc 6 34 5 discriminator 1
 2960 0c3c 7B68     		ldr	r3, [r7, #4]
 2961 0c3e 3F2B     		cmp	r3, #63
 2962 0c40 F4D9     		bls	.L162
  36:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     }
  37:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** }
 2963              		.loc 6 37 1
 2964 0c42 C046     		nop
 2965 0c44 BD46     		mov	sp, r7
 2966 0c46 02B0     		add	sp, sp, #8
 2967              		@ sp needed
 2968 0c48 80BD     		pop	{r7, pc}
 2969              		.cfi_endproc
 2970              	.LFE39:
 2972              		.section	.start_section,"ax",%progbits
 2973              		.align	1
 2974              		.global	startup
 2975              		.syntax unified
 2976              		.code	16
 2977              		.thumb_func
 2978              		.fpu softvfp
 2980              	startup:
 2981              	.LFB40:
  38:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** 
  39:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** void startup(void) __attribute__((naked)) __attribute__((section(".start_section")));
  40:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** 
  41:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** void startup(void)
  42:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** {
 2982              		.loc 6 42 1
 2983              		.cfi_startproc
 2984              		@ Naked Function: prologue and epilogue provided by programmer.
 2985              		@ args = 0, pretend = 0, frame = 0
 2986              		@ frame_needed = 1, uses_anonymous_args = 0
  43:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     __asm volatile(" LDR R0,=0x2001C000\n" /* set stack */
 2987              		.loc 6 43 5
 2988              		.syntax divided
 2989              	@ 43 "/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c" 1
 2990 0000 0248     		 LDR R0,=0x2001C000
 2991 0002 8546     	 MOV SP,R0
 2992 0004 FFF7FEFF 	 BL main
 2993 0008 FEE7     	.L1: B .L1
 2994              	
 2995              	@ 0 "" 2
  44:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****                    " MOV SP,R0\n"
  45:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****                    " BL main\n"   /* call main */
  46:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****                    ".L1: B .L1\n" /* never return */
  47:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         );
  48:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** }
 2996              		.loc 6 48 1
 2997              		.thumb
 2998              		.syntax unified
 2999 000a C046     		nop
 3000              		.cfi_endproc
 3001              	.LFE40:
 3003              		.text
 3004              		.align	1
 3005              		.global	init_app
 3006              		.syntax unified
 3007              		.code	16
 3008              		.thumb_func
 3009              		.fpu softvfp
 3011              	init_app:
 3012              	.LFB41:
  49:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** 
  50:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** void init_app()
  51:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** {
 3013              		.loc 6 51 1
 3014              		.cfi_startproc
 3015              		@ args = 0, pretend = 0, frame = 0
 3016              		@ frame_needed = 1, uses_anonymous_args = 0
 3017 0c4a 80B5     		push	{r7, lr}
 3018              		.cfi_def_cfa_offset 8
 3019              		.cfi_offset 7, -8
 3020              		.cfi_offset 14, -4
 3021 0c4c 00AF     		add	r7, sp, #0
 3022              		.cfi_def_cfa_register 7
  52:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** #ifdef USBDM
  53:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     *((unsigned long*)0x40023830) = 0x18;
  54:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     __asm volatile(" LDR R0,=0x08000209\n BLX R0 \n");
  55:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** #endif
  56:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     GPIO_E.moder = 0x55555555;
 3023              		.loc 6 56 5
 3024 0c4e 044B     		ldr	r3, .L165
 3025              		.loc 6 56 18
 3026 0c50 044A     		ldr	r2, .L165+4
 3027 0c52 1A60     		str	r2, [r3]
  57:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     gameState = 1;
 3028              		.loc 6 57 15
 3029 0c54 044B     		ldr	r3, .L165+8
 3030 0c56 0122     		movs	r2, #1
 3031 0c58 1A70     		strb	r2, [r3]
  58:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** }
 3032              		.loc 6 58 1
 3033 0c5a C046     		nop
 3034 0c5c BD46     		mov	sp, r7
 3035              		@ sp needed
 3036 0c5e 80BD     		pop	{r7, pc}
 3037              	.L166:
 3038              		.align	2
 3039              	.L165:
 3040 0c60 00100240 		.word	1073876992
 3041 0c64 55555555 		.word	1431655765
 3042 0c68 00000000 		.word	gameState
 3043              		.cfi_endproc
 3044              	.LFE41:
 3046              		.align	1
 3047              		.global	ascii_write_string
 3048              		.syntax unified
 3049              		.code	16
 3050              		.thumb_func
 3051              		.fpu softvfp
 3053              	ascii_write_string:
 3054              	.LFB42:
  59:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** 
  60:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** void ascii_write_string(char text[], char point, char row)
  61:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** {
 3055              		.loc 6 61 1
 3056              		.cfi_startproc
 3057              		@ args = 0, pretend = 0, frame = 16
 3058              		@ frame_needed = 1, uses_anonymous_args = 0
 3059 0c6c 80B5     		push	{r7, lr}
 3060              		.cfi_def_cfa_offset 8
 3061              		.cfi_offset 7, -8
 3062              		.cfi_offset 14, -4
 3063 0c6e 84B0     		sub	sp, sp, #16
 3064              		.cfi_def_cfa_offset 24
 3065 0c70 00AF     		add	r7, sp, #0
 3066              		.cfi_def_cfa_register 7
 3067 0c72 7860     		str	r0, [r7, #4]
 3068 0c74 0800     		movs	r0, r1
 3069 0c76 1100     		movs	r1, r2
 3070 0c78 FB1C     		adds	r3, r7, #3
 3071 0c7a 021C     		adds	r2, r0, #0
 3072 0c7c 1A70     		strb	r2, [r3]
 3073 0c7e BB1C     		adds	r3, r7, #2
 3074 0c80 0A1C     		adds	r2, r1, #0
 3075 0c82 1A70     		strb	r2, [r3]
  62:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     char* s;
  63:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     s = text;
 3076              		.loc 6 63 7
 3077 0c84 7B68     		ldr	r3, [r7, #4]
 3078 0c86 FB60     		str	r3, [r7, #12]
  64:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     ascii_gotoxy(1, row);
 3079              		.loc 6 64 5
 3080 0c88 BB1C     		adds	r3, r7, #2
 3081 0c8a 1B78     		ldrb	r3, [r3]
 3082 0c8c 1900     		movs	r1, r3
 3083 0c8e 0120     		movs	r0, #1
 3084 0c90 FFF7FEFF 		bl	ascii_gotoxy
  65:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     while(*s) {
 3085              		.loc 6 65 10
 3086 0c94 06E0     		b	.L168
 3087              	.L169:
  66:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         ascii_write_char(*s++);
 3088              		.loc 6 66 28
 3089 0c96 FB68     		ldr	r3, [r7, #12]
 3090 0c98 5A1C     		adds	r2, r3, #1
 3091 0c9a FA60     		str	r2, [r7, #12]
 3092              		.loc 6 66 9
 3093 0c9c 1B78     		ldrb	r3, [r3]
 3094 0c9e 1800     		movs	r0, r3
 3095 0ca0 FFF7FEFF 		bl	ascii_write_char
 3096              	.L168:
  65:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     while(*s) {
 3097              		.loc 6 65 11
 3098 0ca4 FB68     		ldr	r3, [r7, #12]
 3099 0ca6 1B78     		ldrb	r3, [r3]
  65:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     while(*s) {
 3100              		.loc 6 65 10
 3101 0ca8 002B     		cmp	r3, #0
 3102 0caa F4D1     		bne	.L169
  67:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     }
  68:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     ascii_write_char(point);
 3103              		.loc 6 68 5
 3104 0cac FB1C     		adds	r3, r7, #3
 3105 0cae 1B78     		ldrb	r3, [r3]
 3106 0cb0 1800     		movs	r0, r3
 3107 0cb2 FFF7FEFF 		bl	ascii_write_char
  69:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** }
 3108              		.loc 6 69 1
 3109 0cb6 C046     		nop
 3110 0cb8 BD46     		mov	sp, r7
 3111 0cba 04B0     		add	sp, sp, #16
 3112              		@ sp needed
 3113 0cbc 80BD     		pop	{r7, pc}
 3114              		.cfi_endproc
 3115              	.LFE42:
 3117              		.align	1
 3118              		.global	write_symbol
 3119              		.syntax unified
 3120              		.code	16
 3121              		.thumb_func
 3122              		.fpu softvfp
 3124              	write_symbol:
 3125              	.LFB43:
  70:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** void write_symbol(char c) {
 3126              		.loc 6 70 27
 3127              		.cfi_startproc
 3128              		@ args = 0, pretend = 0, frame = 16
 3129              		@ frame_needed = 1, uses_anonymous_args = 0
 3130 0cbe 80B5     		push	{r7, lr}
 3131              		.cfi_def_cfa_offset 8
 3132              		.cfi_offset 7, -8
 3133              		.cfi_offset 14, -4
 3134 0cc0 84B0     		sub	sp, sp, #16
 3135              		.cfi_def_cfa_offset 24
 3136 0cc2 00AF     		add	r7, sp, #0
 3137              		.cfi_def_cfa_register 7
 3138 0cc4 0200     		movs	r2, r0
 3139 0cc6 FB1D     		adds	r3, r7, #7
 3140 0cc8 1A70     		strb	r2, [r3]
  71:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     char current = grid[c];
 3141              		.loc 6 71 24
 3142 0cca FB1D     		adds	r3, r7, #7
 3143 0ccc 1A78     		ldrb	r2, [r3]
 3144              		.loc 6 71 10
 3145 0cce 0F20     		movs	r0, #15
 3146 0cd0 3B18     		adds	r3, r7, r0
 3147 0cd2 0849     		ldr	r1, .L173
 3148 0cd4 8A5C     		ldrb	r2, [r1, r2]
 3149 0cd6 1A70     		strb	r2, [r3]
  72:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     if (current == 0){
 3150              		.loc 6 72 8
 3151 0cd8 3B18     		adds	r3, r7, r0
 3152 0cda 1B78     		ldrb	r3, [r3]
 3153 0cdc 002B     		cmp	r3, #0
 3154 0cde 05D1     		bne	.L172
  73:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         grid[c] = gameState;
 3155              		.loc 6 73 13
 3156 0ce0 FB1D     		adds	r3, r7, #7
 3157 0ce2 1B78     		ldrb	r3, [r3]
 3158              		.loc 6 73 17
 3159 0ce4 044A     		ldr	r2, .L173+4
 3160 0ce6 1178     		ldrb	r1, [r2]
 3161 0ce8 024A     		ldr	r2, .L173
 3162 0cea D154     		strb	r1, [r2, r3]
 3163              	.L172:
  74:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     }   
  75:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** }
 3164              		.loc 6 75 1
 3165 0cec C046     		nop
 3166 0cee BD46     		mov	sp, r7
 3167 0cf0 04B0     		add	sp, sp, #16
 3168              		@ sp needed
 3169 0cf2 80BD     		pop	{r7, pc}
 3170              	.L174:
 3171              		.align	2
 3172              	.L173:
 3173 0cf4 00000000 		.word	grid
 3174 0cf8 00000000 		.word	gameState
 3175              		.cfi_endproc
 3176              	.LFE43:
 3178              		.align	1
 3179              		.global	main
 3180              		.syntax unified
 3181              		.code	16
 3182              		.thumb_func
 3183              		.fpu softvfp
 3185              	main:
 3186              	.LFB44:
  76:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** 
  77:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** void main(void)
  78:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** {
 3187              		.loc 6 78 1
 3188              		.cfi_startproc
 3189              		@ args = 0, pretend = 0, frame = 16
 3190              		@ frame_needed = 1, uses_anonymous_args = 0
 3191 0cfc F0B5     		push	{r4, r5, r6, r7, lr}
 3192              		.cfi_def_cfa_offset 20
 3193              		.cfi_offset 4, -20
 3194              		.cfi_offset 5, -16
 3195              		.cfi_offset 6, -12
 3196              		.cfi_offset 7, -8
 3197              		.cfi_offset 14, -4
 3198 0cfe 85B0     		sub	sp, sp, #20
 3199              		.cfi_def_cfa_offset 40
 3200 0d00 00AF     		add	r7, sp, #0
 3201              		.cfi_def_cfa_register 7
  79:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     unsigned i;
  80:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     char c;
  81:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     
  82:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     init_app();
 3202              		.loc 6 82 5
 3203 0d02 FFF7FEFF 		bl	init_app
  83:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     graphic_initialize();
 3204              		.loc 6 83 5
 3205 0d06 FFF7FEFF 		bl	graphic_initialize
  84:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** #ifndef SIMULATOR
  85:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     graphic_clear_screen();
  86:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** #endif
  87:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     
  88:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     char xPoints = 0;
 3206              		.loc 6 88 10
 3207 0d0a 0F24     		movs	r4, #15
 3208 0d0c 3B19     		adds	r3, r7, r4
 3209 0d0e 0022     		movs	r2, #0
 3210 0d10 1A70     		strb	r2, [r3]
  89:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     char oPoints = 0;
 3211              		.loc 6 89 10
 3212 0d12 0E25     		movs	r5, #14
 3213 0d14 7B19     		adds	r3, r7, r5
 3214 0d16 0022     		movs	r2, #0
 3215 0d18 1A70     		strb	r2, [r3]
  90:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     char O[] = "O: ";
 3216              		.loc 6 90 10
 3217 0d1a 0826     		movs	r6, #8
 3218 0d1c BB19     		adds	r3, r7, r6
 3219 0d1e 1C4A     		ldr	r2, .L179
 3220 0d20 1A60     		str	r2, [r3]
  91:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     char X[] = "X: ";
 3221              		.loc 6 91 10
 3222 0d22 3B1D     		adds	r3, r7, #4
 3223 0d24 1B4A     		ldr	r2, .L179+4
 3224 0d26 1A60     		str	r2, [r3]
  92:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     ascii_init();
 3225              		.loc 6 92 5
 3226 0d28 FFF7FEFF 		bl	ascii_init
  93:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     ascii_write_string(X, xPoints, 1);
 3227              		.loc 6 93 5
 3228 0d2c 3B19     		adds	r3, r7, r4
 3229 0d2e 1978     		ldrb	r1, [r3]
 3230 0d30 3B1D     		adds	r3, r7, #4
 3231 0d32 0122     		movs	r2, #1
 3232 0d34 1800     		movs	r0, r3
 3233 0d36 FFF7FEFF 		bl	ascii_write_string
  94:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     ascii_write_string(O, oPoints, 2);
 3234              		.loc 6 94 5
 3235 0d3a 7B19     		adds	r3, r7, r5
 3236 0d3c 1978     		ldrb	r1, [r3]
 3237 0d3e BB19     		adds	r3, r7, r6
 3238 0d40 0222     		movs	r2, #2
 3239 0d42 1800     		movs	r0, r3
 3240 0d44 FFF7FEFF 		bl	ascii_write_string
  95:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** 
  96:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     drawgrid();
 3241              		.loc 6 96 5
 3242 0d48 FFF7FEFF 		bl	drawgrid
 3243              	.L178:
  97:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     while(1) {
  98:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         clear_backBuffer();
 3244              		.loc 6 98 9
 3245 0d4c FFF7FEFF 		bl	clear_backBuffer
  99:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         c = keyb();
 3246              		.loc 6 99 13
 3247 0d50 0D25     		movs	r5, #13
 3248 0d52 7C19     		adds	r4, r7, r5
 3249 0d54 FFF7FEFF 		bl	keyb
 3250 0d58 0300     		movs	r3, r0
 3251 0d5a 2370     		strb	r3, [r4]
 100:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         if(c >= 0 && c <= 9) {
 3252              		.loc 6 100 11
 3253 0d5c 7B19     		adds	r3, r7, r5
 3254 0d5e 1B78     		ldrb	r3, [r3]
 3255 0d60 092B     		cmp	r3, #9
 3256 0d62 0FD8     		bhi	.L176
 101:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****             write_symbol(c);
 3257              		.loc 6 101 13
 3258 0d64 7B19     		adds	r3, r7, r5
 3259 0d66 1B78     		ldrb	r3, [r3]
 3260 0d68 1800     		movs	r0, r3
 3261 0d6a FFF7FEFF 		bl	write_symbol
 102:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****             if (gameState == 1) {
 3262              		.loc 6 102 27
 3263 0d6e 0A4B     		ldr	r3, .L179+8
 3264 0d70 1B78     		ldrb	r3, [r3]
 3265              		.loc 6 102 16
 3266 0d72 012B     		cmp	r3, #1
 3267 0d74 03D1     		bne	.L177
 103:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****                 gameState = 2;
 3268              		.loc 6 103 27
 3269 0d76 084B     		ldr	r3, .L179+8
 3270 0d78 0222     		movs	r2, #2
 3271 0d7a 1A70     		strb	r2, [r3]
 3272 0d7c 02E0     		b	.L176
 3273              	.L177:
 104:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****             } else {
 105:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****                 gameState = 1;
 3274              		.loc 6 105 27
 3275 0d7e 064B     		ldr	r3, .L179+8
 3276 0d80 0122     		movs	r2, #1
 3277 0d82 1A70     		strb	r2, [r3]
 3278              	.L176:
 106:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****             }
 107:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         }
 108:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         drawgrid();
 3279              		.loc 6 108 9
 3280 0d84 FFF7FEFF 		bl	drawgrid
 109:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         graphic_draw_screen();
 3281              		.loc 6 109 9
 3282 0d88 FFF7FEFF 		bl	graphic_draw_screen
  98:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         c = keyb();
 3283              		.loc 6 98 9
 3284 0d8c DEE7     		b	.L178
 3285              	.L180:
 3286 0d8e C046     		.align	2
 3287              	.L179:
 3288 0d90 4F3A2000 		.word	2112079
 3289 0d94 583A2000 		.word	2112088
 3290 0d98 00000000 		.word	gameState
 3291              		.cfi_endproc
 3292              	.LFE44:
 3294              	.Letext0:
 3295              		.file 7 "/Users/krulla/Downloads/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_
 3296              		.file 8 "/Users/krulla/Downloads/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_stdi
 3297              		.file 9 "/Users/krulla/chalmers/dat017/mop/tic_tac_toe/gpio.h"
