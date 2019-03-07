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
 1636              		.syntax unified
 1637              		.code	16
 1638              		.thumb_func
 1639              		.fpu softvfp
 1641              	load_sprite:
 1642              	.LFB26:
 167:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 
 168:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** typedef struct {
 169:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	unsigned char width;
 170:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	unsigned char height;
 171:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	unsigned char* data;
 172:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** } sprite;
 173:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** static void load_sprite(sprite* s, unsigned char* data, int width, int height) {
 1643              		.loc 2 173 80
 1644              		.cfi_startproc
 1645              		@ args = 0, pretend = 0, frame = 16
 1646              		@ frame_needed = 1, uses_anonymous_args = 0
 1647 06e8 80B5     		push	{r7, lr}
 1648              		.cfi_def_cfa_offset 8
 1649              		.cfi_offset 7, -8
 1650              		.cfi_offset 14, -4
 1651 06ea 84B0     		sub	sp, sp, #16
 1652              		.cfi_def_cfa_offset 24
 1653 06ec 00AF     		add	r7, sp, #0
 1654              		.cfi_def_cfa_register 7
 1655 06ee F860     		str	r0, [r7, #12]
 1656 06f0 B960     		str	r1, [r7, #8]
 1657 06f2 7A60     		str	r2, [r7, #4]
 1658 06f4 3B60     		str	r3, [r7]
 174:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	s->width = width;
 1659              		.loc 2 174 11
 1660 06f6 7B68     		ldr	r3, [r7, #4]
 1661 06f8 DAB2     		uxtb	r2, r3
 1662 06fa FB68     		ldr	r3, [r7, #12]
 1663 06fc 1A70     		strb	r2, [r3]
 175:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	s->height = height;
 1664              		.loc 2 175 12
 1665 06fe 3B68     		ldr	r3, [r7]
 1666 0700 DAB2     		uxtb	r2, r3
 1667 0702 FB68     		ldr	r3, [r7, #12]
 1668 0704 5A70     		strb	r2, [r3, #1]
 176:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	s->data = data;
 1669              		.loc 2 176 10
 1670 0706 FB68     		ldr	r3, [r7, #12]
 1671 0708 BA68     		ldr	r2, [r7, #8]
 1672 070a 5A60     		str	r2, [r3, #4]
 177:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** }
 1673              		.loc 2 177 1
 1674 070c C046     		nop
 1675 070e BD46     		mov	sp, r7
 1676 0710 04B0     		add	sp, sp, #16
 1677              		@ sp needed
 1678 0712 80BD     		pop	{r7, pc}
 1679              		.cfi_endproc
 1680              	.LFE26:
 1682              		.align	1
 1683              		.global	draw_sprite
 1684              		.syntax unified
 1685              		.code	16
 1686              		.thumb_func
 1687              		.fpu softvfp
 1689              	draw_sprite:
 1690              	.LFB27:
 178:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 
 179:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** void draw_sprite(sprite* s, int x, int y) {
 1691              		.loc 2 179 43
 1692              		.cfi_startproc
 1693              		@ args = 0, pretend = 0, frame = 40
 1694              		@ frame_needed = 1, uses_anonymous_args = 0
 1695 0714 80B5     		push	{r7, lr}
 1696              		.cfi_def_cfa_offset 8
 1697              		.cfi_offset 7, -8
 1698              		.cfi_offset 14, -4
 1699 0716 8AB0     		sub	sp, sp, #40
 1700              		.cfi_def_cfa_offset 48
 1701 0718 00AF     		add	r7, sp, #0
 1702              		.cfi_def_cfa_register 7
 1703 071a F860     		str	r0, [r7, #12]
 1704 071c B960     		str	r1, [r7, #8]
 1705 071e 7A60     		str	r2, [r7, #4]
 180:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	int i,j,k, width_in_bytes;
 181:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	if (s->width % 8 == 0){
 1706              		.loc 2 181 7
 1707 0720 FB68     		ldr	r3, [r7, #12]
 1708 0722 1B78     		ldrb	r3, [r3]
 1709              		.loc 2 181 19
 1710 0724 0722     		movs	r2, #7
 1711 0726 1340     		ands	r3, r2
 1712 0728 DBB2     		uxtb	r3, r3
 1713              		.loc 2 181 5
 1714 072a 002B     		cmp	r3, #0
 1715 072c 05D1     		bne	.L85
 182:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		width_in_bytes = s->width / 8;
 1716              		.loc 2 182 21
 1717 072e FB68     		ldr	r3, [r7, #12]
 1718 0730 1B78     		ldrb	r3, [r3]
 1719              		.loc 2 182 29
 1720 0732 DB08     		lsrs	r3, r3, #3
 1721 0734 DBB2     		uxtb	r3, r3
 1722              		.loc 2 182 18
 1723 0736 BB61     		str	r3, [r7, #24]
 1724 0738 05E0     		b	.L86
 1725              	.L85:
 183:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	
 184:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	} else {
 185:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		width_in_bytes = s->width / 8 + 1;
 1726              		.loc 2 185 21
 1727 073a FB68     		ldr	r3, [r7, #12]
 1728 073c 1B78     		ldrb	r3, [r3]
 1729              		.loc 2 185 29
 1730 073e DB08     		lsrs	r3, r3, #3
 1731 0740 DBB2     		uxtb	r3, r3
 1732              		.loc 2 185 18
 1733 0742 0133     		adds	r3, r3, #1
 1734 0744 BB61     		str	r3, [r7, #24]
 1735              	.L86:
 186:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		
 187:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	}
 188:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	for (i = 0; i < s->height; i++) {
 1736              		.loc 2 188 9
 1737 0746 0023     		movs	r3, #0
 1738 0748 7B62     		str	r3, [r7, #36]
 1739              		.loc 2 188 2
 1740 074a 38E0     		b	.L87
 1741              	.L93:
 189:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		for (j = 0; j < width_in_bytes; j++) {
 1742              		.loc 2 189 10
 1743 074c 0023     		movs	r3, #0
 1744 074e 3B62     		str	r3, [r7, #32]
 1745              		.loc 2 189 3
 1746 0750 2EE0     		b	.L88
 1747              	.L92:
 1748              	.LBB5:
 190:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			unsigned char byte = s->data[i * width_in_bytes + j];
 1749              		.loc 2 190 26
 1750 0752 FB68     		ldr	r3, [r7, #12]
 1751 0754 5B68     		ldr	r3, [r3, #4]
 1752              		.loc 2 190 35
 1753 0756 7A6A     		ldr	r2, [r7, #36]
 1754 0758 B969     		ldr	r1, [r7, #24]
 1755 075a 5143     		muls	r1, r2
 1756              		.loc 2 190 52
 1757 075c 3A6A     		ldr	r2, [r7, #32]
 1758 075e 8A18     		adds	r2, r1, r2
 1759              		.loc 2 190 32
 1760 0760 9A18     		adds	r2, r3, r2
 1761              		.loc 2 190 18
 1762 0762 1723     		movs	r3, #23
 1763 0764 FB18     		adds	r3, r7, r3
 1764 0766 1278     		ldrb	r2, [r2]
 1765 0768 1A70     		strb	r2, [r3]
 191:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			for (k =0; k < 8; k++) {
 1766              		.loc 2 191 11
 1767 076a 0023     		movs	r3, #0
 1768 076c FB61     		str	r3, [r7, #28]
 1769              		.loc 2 191 4
 1770 076e 19E0     		b	.L89
 1771              	.L91:
 192:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 				if (byte & (1 << k))
 1772              		.loc 2 192 9
 1773 0770 1723     		movs	r3, #23
 1774 0772 FB18     		adds	r3, r7, r3
 1775 0774 1A78     		ldrb	r2, [r3]
 1776 0776 FB69     		ldr	r3, [r7, #28]
 1777 0778 1A41     		asrs	r2, r2, r3
 1778 077a 1300     		movs	r3, r2
 1779 077c 0122     		movs	r2, #1
 1780 077e 1340     		ands	r3, r2
 1781              		.loc 2 192 8
 1782 0780 0DD0     		beq	.L90
 1783              	.LBB6:
 193:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 				pixel(8 * j + k + x + 1, i + y + 1);
 1784              		.loc 2 193 13
 1785 0782 3B6A     		ldr	r3, [r7, #32]
 1786 0784 DA00     		lsls	r2, r3, #3
 1787              		.loc 2 193 17
 1788 0786 FB69     		ldr	r3, [r7, #28]
 1789 0788 D218     		adds	r2, r2, r3
 1790              		.loc 2 193 21
 1791 078a BB68     		ldr	r3, [r7, #8]
 1792 078c D318     		adds	r3, r2, r3
 1793              		.loc 2 193 5
 1794 078e 581C     		adds	r0, r3, #1
 1795              		.loc 2 193 32
 1796 0790 7A6A     		ldr	r2, [r7, #36]
 1797 0792 7B68     		ldr	r3, [r7, #4]
 1798 0794 D318     		adds	r3, r2, r3
 1799              		.loc 2 193 5
 1800 0796 0133     		adds	r3, r3, #1
 1801 0798 1900     		movs	r1, r3
 1802 079a FFF7FEFF 		bl	pixel
 1803              	.L90:
 1804              	.LBE6:
 191:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			for (k =0; k < 8; k++) {
 1805              		.loc 2 191 23 discriminator 2
 1806 079e FB69     		ldr	r3, [r7, #28]
 1807 07a0 0133     		adds	r3, r3, #1
 1808 07a2 FB61     		str	r3, [r7, #28]
 1809              	.L89:
 191:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			for (k =0; k < 8; k++) {
 1810              		.loc 2 191 4 discriminator 1
 1811 07a4 FB69     		ldr	r3, [r7, #28]
 1812 07a6 072B     		cmp	r3, #7
 1813 07a8 E2DD     		ble	.L91
 1814              	.LBE5:
 189:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			unsigned char byte = s->data[i * width_in_bytes + j];
 1815              		.loc 2 189 36 discriminator 2
 1816 07aa 3B6A     		ldr	r3, [r7, #32]
 1817 07ac 0133     		adds	r3, r3, #1
 1818 07ae 3B62     		str	r3, [r7, #32]
 1819              	.L88:
 189:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			unsigned char byte = s->data[i * width_in_bytes + j];
 1820              		.loc 2 189 3 discriminator 1
 1821 07b0 3A6A     		ldr	r2, [r7, #32]
 1822 07b2 BB69     		ldr	r3, [r7, #24]
 1823 07b4 9A42     		cmp	r2, r3
 1824 07b6 CCDB     		blt	.L92
 188:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		for (j = 0; j < width_in_bytes; j++) {
 1825              		.loc 2 188 30 discriminator 2
 1826 07b8 7B6A     		ldr	r3, [r7, #36]
 1827 07ba 0133     		adds	r3, r3, #1
 1828 07bc 7B62     		str	r3, [r7, #36]
 1829              	.L87:
 188:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		for (j = 0; j < width_in_bytes; j++) {
 1830              		.loc 2 188 19 discriminator 1
 1831 07be FB68     		ldr	r3, [r7, #12]
 1832 07c0 5B78     		ldrb	r3, [r3, #1]
 1833 07c2 1A00     		movs	r2, r3
 188:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		for (j = 0; j < width_in_bytes; j++) {
 1834              		.loc 2 188 2 discriminator 1
 1835 07c4 7B6A     		ldr	r3, [r7, #36]
 1836 07c6 9342     		cmp	r3, r2
 1837 07c8 C0DB     		blt	.L93
 194:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			}
 195:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		}
 196:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	}
 197:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** }
 1838              		.loc 2 197 1
 1839 07ca C046     		nop
 1840 07cc BD46     		mov	sp, r7
 1841 07ce 0AB0     		add	sp, sp, #40
 1842              		@ sp needed
 1843 07d0 80BD     		pop	{r7, pc}
 1844              		.cfi_endproc
 1845              	.LFE27:
 1847              		.align	1
 1848              		.global	graphic_draw_screen
 1849              		.syntax unified
 1850              		.code	16
 1851              		.thumb_func
 1852              		.fpu softvfp
 1854              	graphic_draw_screen:
 1855              	.LFB28:
 198:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 
 199:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 
 200:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** void graphic_draw_screen(void) {
 1856              		.loc 2 200 32
 1857              		.cfi_startproc
 1858              		@ args = 0, pretend = 0, frame = 16
 1859              		@ frame_needed = 1, uses_anonymous_args = 0
 1860 07d2 80B5     		push	{r7, lr}
 1861              		.cfi_def_cfa_offset 8
 1862              		.cfi_offset 7, -8
 1863              		.cfi_offset 14, -4
 1864 07d4 84B0     		sub	sp, sp, #16
 1865              		.cfi_def_cfa_offset 24
 1866 07d6 00AF     		add	r7, sp, #0
 1867              		.cfi_def_cfa_register 7
 201:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	uint8_t i, j, controller, c;
 202:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	unsigned int k = 0;
 1868              		.loc 2 202 15
 1869 07d8 0023     		movs	r3, #0
 1870 07da BB60     		str	r3, [r7, #8]
 203:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	for(c = 0; c < 2; c++) {
 1871              		.loc 2 203 8
 1872 07dc 0D23     		movs	r3, #13
 1873 07de FB18     		adds	r3, r7, r3
 1874 07e0 0022     		movs	r2, #0
 1875 07e2 1A70     		strb	r2, [r3]
 1876              		.loc 2 203 2
 1877 07e4 4FE0     		b	.L95
 1878              	.L102:
 204:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		controller = (c == 0) ? B_CS1 : B_CS2;
 1879              		.loc 2 204 14
 1880 07e6 0D23     		movs	r3, #13
 1881 07e8 FB18     		adds	r3, r7, r3
 1882 07ea 1B78     		ldrb	r3, [r3]
 1883 07ec 002B     		cmp	r3, #0
 1884 07ee 01D1     		bne	.L96
 1885              		.loc 2 204 14 is_stmt 0 discriminator 1
 1886 07f0 0822     		movs	r2, #8
 1887 07f2 00E0     		b	.L97
 1888              	.L96:
 1889              		.loc 2 204 14 discriminator 2
 1890 07f4 1022     		movs	r2, #16
 1891              	.L97:
 1892              		.loc 2 204 14 discriminator 4
 1893 07f6 FB1D     		adds	r3, r7, #7
 1894 07f8 1A70     		strb	r2, [r3]
 205:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		for(j = 0; j < 8; j++) {
 1895              		.loc 2 205 9 is_stmt 1 discriminator 4
 1896 07fa 0E23     		movs	r3, #14
 1897 07fc FB18     		adds	r3, r7, r3
 1898 07fe 0022     		movs	r2, #0
 1899 0800 1A70     		strb	r2, [r3]
 1900              		.loc 2 205 3 discriminator 4
 1901 0802 35E0     		b	.L98
 1902              	.L101:
 206:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			graphic_write_command(LCD_SET_PAGE | j, controller);
 1903              		.loc 2 206 4
 1904 0804 0E23     		movs	r3, #14
 1905 0806 FB18     		adds	r3, r7, r3
 1906 0808 1B78     		ldrb	r3, [r3]
 1907 080a 4822     		movs	r2, #72
 1908 080c 5242     		rsbs	r2, r2, #0
 1909 080e 1343     		orrs	r3, r2
 1910 0810 DAB2     		uxtb	r2, r3
 1911 0812 FB1D     		adds	r3, r7, #7
 1912 0814 1B78     		ldrb	r3, [r3]
 1913 0816 1900     		movs	r1, r3
 1914 0818 1000     		movs	r0, r2
 1915 081a FFF7ABFE 		bl	graphic_write_command
 207:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			graphic_write_command(LCD_SET_ADD | 0, controller);
 1916              		.loc 2 207 4
 1917 081e FB1D     		adds	r3, r7, #7
 1918 0820 1B78     		ldrb	r3, [r3]
 1919 0822 1900     		movs	r1, r3
 1920 0824 4020     		movs	r0, #64
 1921 0826 FFF7A5FE 		bl	graphic_write_command
 208:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			for(i = 0; i <= 63; i++, k++) {
 1922              		.loc 2 208 10
 1923 082a 0F23     		movs	r3, #15
 1924 082c FB18     		adds	r3, r7, r3
 1925 082e 0022     		movs	r2, #0
 1926 0830 1A70     		strb	r2, [r3]
 1927              		.loc 2 208 4
 1928 0832 12E0     		b	.L99
 1929              	.L100:
 209:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 				graphic_write_data(backBuffer[k], controller);
 1930              		.loc 2 209 5 discriminator 3
 1931 0834 184A     		ldr	r2, .L103
 1932 0836 BB68     		ldr	r3, [r7, #8]
 1933 0838 D318     		adds	r3, r2, r3
 1934 083a 1A78     		ldrb	r2, [r3]
 1935 083c FB1D     		adds	r3, r7, #7
 1936 083e 1B78     		ldrb	r3, [r3]
 1937 0840 1900     		movs	r1, r3
 1938 0842 1000     		movs	r0, r2
 1939 0844 FFF7B9FE 		bl	graphic_write_data
 208:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			for(i = 0; i <= 63; i++, k++) {
 1940              		.loc 2 208 25 discriminator 3
 1941 0848 0F21     		movs	r1, #15
 1942 084a 7B18     		adds	r3, r7, r1
 1943 084c 1A78     		ldrb	r2, [r3]
 1944 084e 7B18     		adds	r3, r7, r1
 1945 0850 0132     		adds	r2, r2, #1
 1946 0852 1A70     		strb	r2, [r3]
 208:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			for(i = 0; i <= 63; i++, k++) {
 1947              		.loc 2 208 30 discriminator 3
 1948 0854 BB68     		ldr	r3, [r7, #8]
 1949 0856 0133     		adds	r3, r3, #1
 1950 0858 BB60     		str	r3, [r7, #8]
 1951              	.L99:
 208:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			for(i = 0; i <= 63; i++, k++) {
 1952              		.loc 2 208 4 discriminator 1
 1953 085a 0F23     		movs	r3, #15
 1954 085c FB18     		adds	r3, r7, r3
 1955 085e 1B78     		ldrb	r3, [r3]
 1956 0860 3F2B     		cmp	r3, #63
 1957 0862 E7D9     		bls	.L100
 205:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			graphic_write_command(LCD_SET_PAGE | j, controller);
 1958              		.loc 2 205 22 discriminator 2
 1959 0864 0E21     		movs	r1, #14
 1960 0866 7B18     		adds	r3, r7, r1
 1961 0868 1A78     		ldrb	r2, [r3]
 1962 086a 7B18     		adds	r3, r7, r1
 1963 086c 0132     		adds	r2, r2, #1
 1964 086e 1A70     		strb	r2, [r3]
 1965              	.L98:
 205:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			graphic_write_command(LCD_SET_PAGE | j, controller);
 1966              		.loc 2 205 3 discriminator 1
 1967 0870 0E23     		movs	r3, #14
 1968 0872 FB18     		adds	r3, r7, r3
 1969 0874 1B78     		ldrb	r3, [r3]
 1970 0876 072B     		cmp	r3, #7
 1971 0878 C4D9     		bls	.L101
 203:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		controller = (c == 0) ? B_CS1 : B_CS2;
 1972              		.loc 2 203 21 discriminator 2
 1973 087a 0D21     		movs	r1, #13
 1974 087c 7B18     		adds	r3, r7, r1
 1975 087e 1A78     		ldrb	r2, [r3]
 1976 0880 7B18     		adds	r3, r7, r1
 1977 0882 0132     		adds	r2, r2, #1
 1978 0884 1A70     		strb	r2, [r3]
 1979              	.L95:
 203:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		controller = (c == 0) ? B_CS1 : B_CS2;
 1980              		.loc 2 203 2 discriminator 1
 1981 0886 0D23     		movs	r3, #13
 1982 0888 FB18     		adds	r3, r7, r3
 1983 088a 1B78     		ldrb	r3, [r3]
 1984 088c 012B     		cmp	r3, #1
 1985 088e AAD9     		bls	.L102
 210:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 			}
 211:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		}
 212:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	}
 213:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** }
 1986              		.loc 2 213 1
 1987 0890 C046     		nop
 1988 0892 BD46     		mov	sp, r7
 1989 0894 04B0     		add	sp, sp, #16
 1990              		@ sp needed
 1991 0896 80BD     		pop	{r7, pc}
 1992              	.L104:
 1993              		.align	2
 1994              	.L103:
 1995 0898 00000000 		.word	backBuffer
 1996              		.cfi_endproc
 1997              	.LFE28:
 1999              		.align	1
 2000              		.global	pixel
 2001              		.syntax unified
 2002              		.code	16
 2003              		.thumb_func
 2004              		.fpu softvfp
 2006              	pixel:
 2007              	.LFB29:
 214:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 
 215:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** void pixel(int x, int y) {
 2008              		.loc 2 215 26
 2009              		.cfi_startproc
 2010              		@ args = 0, pretend = 0, frame = 16
 2011              		@ frame_needed = 1, uses_anonymous_args = 0
 2012 089c 80B5     		push	{r7, lr}
 2013              		.cfi_def_cfa_offset 8
 2014              		.cfi_offset 7, -8
 2015              		.cfi_offset 14, -4
 2016 089e 84B0     		sub	sp, sp, #16
 2017              		.cfi_def_cfa_offset 24
 2018 08a0 00AF     		add	r7, sp, #0
 2019              		.cfi_def_cfa_register 7
 2020 08a2 7860     		str	r0, [r7, #4]
 2021 08a4 3960     		str	r1, [r7]
 216:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	uint8_t mask;
 217:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	int index = 0;
 2022              		.loc 2 217 6
 2023 08a6 0023     		movs	r3, #0
 2024 08a8 FB60     		str	r3, [r7, #12]
 218:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	if( (x > 128 ) || (x < 1) || (y > 64) || (y < 1) ) {
 2025              		.loc 2 218 4
 2026 08aa 7B68     		ldr	r3, [r7, #4]
 2027 08ac 802B     		cmp	r3, #128
 2028 08ae 3DDC     		bgt	.L112
 2029              		.loc 2 218 17 discriminator 1
 2030 08b0 7B68     		ldr	r3, [r7, #4]
 2031 08b2 002B     		cmp	r3, #0
 2032 08b4 3ADD     		ble	.L112
 2033              		.loc 2 218 28 discriminator 2
 2034 08b6 3B68     		ldr	r3, [r7]
 2035 08b8 402B     		cmp	r3, #64
 2036 08ba 37DC     		bgt	.L112
 2037              		.loc 2 218 40 discriminator 3
 2038 08bc 3B68     		ldr	r3, [r7]
 2039 08be 002B     		cmp	r3, #0
 2040 08c0 34DD     		ble	.L112
 219:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		return;
 220:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	}
 221:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	mask = 1 << ((y-1)%8);
 2041              		.loc 2 221 17
 2042 08c2 3B68     		ldr	r3, [r7]
 2043 08c4 013B     		subs	r3, r3, #1
 2044              		.loc 2 221 20
 2045 08c6 1B4A     		ldr	r2, .L113
 2046 08c8 1340     		ands	r3, r2
 2047 08ca 04D5     		bpl	.L109
 2048 08cc 013B     		subs	r3, r3, #1
 2049 08ce 0822     		movs	r2, #8
 2050 08d0 5242     		rsbs	r2, r2, #0
 2051 08d2 1343     		orrs	r3, r2
 2052 08d4 0133     		adds	r3, r3, #1
 2053              	.L109:
 2054 08d6 1A00     		movs	r2, r3
 2055              		.loc 2 221 11
 2056 08d8 0123     		movs	r3, #1
 2057 08da 9340     		lsls	r3, r3, r2
 2058 08dc 1A00     		movs	r2, r3
 2059              		.loc 2 221 7
 2060 08de 0B23     		movs	r3, #11
 2061 08e0 FB18     		adds	r3, r7, r3
 2062 08e2 1A70     		strb	r2, [r3]
 222:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	if(x > 64) {
 2063              		.loc 2 222 4
 2064 08e4 7B68     		ldr	r3, [r7, #4]
 2065 08e6 402B     		cmp	r3, #64
 2066 08e8 05DD     		ble	.L110
 223:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		x -= 65;
 2067              		.loc 2 223 5
 2068 08ea 7B68     		ldr	r3, [r7, #4]
 2069 08ec 413B     		subs	r3, r3, #65
 2070 08ee 7B60     		str	r3, [r7, #4]
 224:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 		index = 512;
 2071              		.loc 2 224 9
 2072 08f0 8023     		movs	r3, #128
 2073 08f2 9B00     		lsls	r3, r3, #2
 2074 08f4 FB60     		str	r3, [r7, #12]
 2075              	.L110:
 225:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	}
 226:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	index += x + ((y-1)/8)*64;
 2076              		.loc 2 226 18
 2077 08f6 3B68     		ldr	r3, [r7]
 2078 08f8 013B     		subs	r3, r3, #1
 2079              		.loc 2 226 21
 2080 08fa 002B     		cmp	r3, #0
 2081 08fc 00DA     		bge	.L111
 2082 08fe 0733     		adds	r3, r3, #7
 2083              	.L111:
 2084 0900 DB10     		asrs	r3, r3, #3
 2085              		.loc 2 226 24
 2086 0902 9A01     		lsls	r2, r3, #6
 2087              		.loc 2 226 13
 2088 0904 7B68     		ldr	r3, [r7, #4]
 2089 0906 D318     		adds	r3, r2, r3
 2090              		.loc 2 226 8
 2091 0908 FA68     		ldr	r2, [r7, #12]
 2092 090a D318     		adds	r3, r2, r3
 2093 090c FB60     		str	r3, [r7, #12]
 227:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	backBuffer[index] |= mask;
 2094              		.loc 2 227 20
 2095 090e 0A4A     		ldr	r2, .L113+4
 2096 0910 FB68     		ldr	r3, [r7, #12]
 2097 0912 D318     		adds	r3, r2, r3
 2098 0914 1A78     		ldrb	r2, [r3]
 2099 0916 0B23     		movs	r3, #11
 2100 0918 FB18     		adds	r3, r7, r3
 2101 091a 1B78     		ldrb	r3, [r3]
 2102 091c 1343     		orrs	r3, r2
 2103 091e D9B2     		uxtb	r1, r3
 2104 0920 054A     		ldr	r2, .L113+4
 2105 0922 FB68     		ldr	r3, [r7, #12]
 2106 0924 D318     		adds	r3, r2, r3
 2107 0926 0A1C     		adds	r2, r1, #0
 2108 0928 1A70     		strb	r2, [r3]
 2109 092a 00E0     		b	.L105
 2110              	.L112:
 219:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** 	}
 2111              		.loc 2 219 3
 2112 092c C046     		nop
 2113              	.L105:
 228:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/graphics.h **** }
 2114              		.loc 2 228 1
 2115 092e BD46     		mov	sp, r7
 2116 0930 04B0     		add	sp, sp, #16
 2117              		@ sp needed
 2118 0932 80BD     		pop	{r7, pc}
 2119              	.L114:
 2120              		.align	2
 2121              	.L113:
 2122 0934 07000080 		.word	-2147483641
 2123 0938 00000000 		.word	backBuffer
 2124              		.cfi_endproc
 2125              	.LFE29:
 2127              		.global	ball_geometry
 2128              		.data
 2129              		.align	2
 2132              	ball_geometry:
 2133 0000 0C000000 		.word	12
 2134 0004 04000000 		.word	4
 2135 0008 04000000 		.word	4
 2136 000c 00       		.byte	0
 2137 000d 01       		.byte	1
 2138 000e 00       		.byte	0
 2139 000f 02       		.byte	2
 2140 0010 01       		.byte	1
 2141 0011 00       		.byte	0
 2142 0012 01       		.byte	1
 2143 0013 01       		.byte	1
 2144 0014 01       		.byte	1
 2145 0015 02       		.byte	2
 2146 0016 01       		.byte	1
 2147 0017 03       		.byte	3
 2148 0018 02       		.byte	2
 2149 0019 00       		.byte	0
 2150 001a 02       		.byte	2
 2151 001b 01       		.byte	1
 2152 001c 02       		.byte	2
 2153 001d 02       		.byte	2
 2154 001e 02       		.byte	2
 2155 001f 03       		.byte	3
 2156 0020 03       		.byte	3
 2157 0021 01       		.byte	1
 2158 0022 03       		.byte	3
 2159 0023 02       		.byte	2
 2160 0024 00000000 		.space	16
 2160      00000000 
 2160      00000000 
 2160      00000000 
 2161              		.text
 2162              		.align	1
 2163              		.global	set_object_speed
 2164              		.syntax unified
 2165              		.code	16
 2166              		.thumb_func
 2167              		.fpu softvfp
 2169              	set_object_speed:
 2170              	.LFB30:
 2171              		.file 3 "/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h"
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
 2172              		.loc 3 51 58
 2173              		.cfi_startproc
 2174              		@ args = 0, pretend = 0, frame = 16
 2175              		@ frame_needed = 1, uses_anonymous_args = 0
 2176 093c 80B5     		push	{r7, lr}
 2177              		.cfi_def_cfa_offset 8
 2178              		.cfi_offset 7, -8
 2179              		.cfi_offset 14, -4
 2180 093e 84B0     		sub	sp, sp, #16
 2181              		.cfi_def_cfa_offset 24
 2182 0940 00AF     		add	r7, sp, #0
 2183              		.cfi_def_cfa_register 7
 2184 0942 F860     		str	r0, [r7, #12]
 2185 0944 B960     		str	r1, [r7, #8]
 2186 0946 7A60     		str	r2, [r7, #4]
  52:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     o->dirx = speedx;
 2187              		.loc 3 52 13
 2188 0948 FB68     		ldr	r3, [r7, #12]
 2189 094a BA68     		ldr	r2, [r7, #8]
 2190 094c 5A60     		str	r2, [r3, #4]
  53:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     o->diry = speedy;
 2191              		.loc 3 53 13
 2192 094e FB68     		ldr	r3, [r7, #12]
 2193 0950 7A68     		ldr	r2, [r7, #4]
 2194 0952 9A60     		str	r2, [r3, #8]
  54:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** }
 2195              		.loc 3 54 1
 2196 0954 C046     		nop
 2197 0956 BD46     		mov	sp, r7
 2198 0958 04B0     		add	sp, sp, #16
 2199              		@ sp needed
 2200 095a 80BD     		pop	{r7, pc}
 2201              		.cfi_endproc
 2202              	.LFE30:
 2204              		.align	1
 2205              		.global	draw_object
 2206              		.syntax unified
 2207              		.code	16
 2208              		.thumb_func
 2209              		.fpu softvfp
 2211              	draw_object:
 2212              	.LFB31:
  55:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** 
  56:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** void draw_object(POBJECT o) {
 2213              		.loc 3 56 29
 2214              		.cfi_startproc
 2215              		@ args = 0, pretend = 0, frame = 16
 2216              		@ frame_needed = 1, uses_anonymous_args = 0
 2217 095c 80B5     		push	{r7, lr}
 2218              		.cfi_def_cfa_offset 8
 2219              		.cfi_offset 7, -8
 2220              		.cfi_offset 14, -4
 2221 095e 84B0     		sub	sp, sp, #16
 2222              		.cfi_def_cfa_offset 24
 2223 0960 00AF     		add	r7, sp, #0
 2224              		.cfi_def_cfa_register 7
 2225 0962 7860     		str	r0, [r7, #4]
 2226              	.LBB7:
  57:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2227              		.loc 3 57 14
 2228 0964 0023     		movs	r3, #0
 2229 0966 FB60     		str	r3, [r7, #12]
 2230              		.loc 3 57 5
 2231 0968 1BE0     		b	.L117
 2232              	.L118:
  58:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         pixel(o->posx+o->geo->px[i].x,o->posy+o->geo->px[i].y);
 2233              		.loc 3 58 16 discriminator 3
 2234 096a 7B68     		ldr	r3, [r7, #4]
 2235 096c DA68     		ldr	r2, [r3, #12]
 2236              		.loc 3 58 24 discriminator 3
 2237 096e 7B68     		ldr	r3, [r7, #4]
 2238 0970 1968     		ldr	r1, [r3]
 2239              		.loc 3 58 36 discriminator 3
 2240 0972 FB68     		ldr	r3, [r7, #12]
 2241 0974 0433     		adds	r3, r3, #4
 2242 0976 5B00     		lsls	r3, r3, #1
 2243 0978 CB18     		adds	r3, r1, r3
 2244 097a 0433     		adds	r3, r3, #4
 2245 097c 1B78     		ldrb	r3, [r3]
 2246              		.loc 3 58 9 discriminator 3
 2247 097e D018     		adds	r0, r2, r3
 2248              		.loc 3 58 40 discriminator 3
 2249 0980 7B68     		ldr	r3, [r7, #4]
 2250 0982 1A69     		ldr	r2, [r3, #16]
 2251              		.loc 3 58 48 discriminator 3
 2252 0984 7B68     		ldr	r3, [r7, #4]
 2253 0986 1968     		ldr	r1, [r3]
 2254              		.loc 3 58 60 discriminator 3
 2255 0988 FB68     		ldr	r3, [r7, #12]
 2256 098a 0433     		adds	r3, r3, #4
 2257 098c 5B00     		lsls	r3, r3, #1
 2258 098e CB18     		adds	r3, r1, r3
 2259 0990 0533     		adds	r3, r3, #5
 2260 0992 1B78     		ldrb	r3, [r3]
 2261              		.loc 3 58 9 discriminator 3
 2262 0994 D318     		adds	r3, r2, r3
 2263 0996 1900     		movs	r1, r3
 2264 0998 FFF7FEFF 		bl	pixel
  57:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2265              		.loc 3 57 44 discriminator 3
 2266 099c FB68     		ldr	r3, [r7, #12]
 2267 099e 0133     		adds	r3, r3, #1
 2268 09a0 FB60     		str	r3, [r7, #12]
 2269              	.L117:
  57:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2270              		.loc 3 57 25 discriminator 1
 2271 09a2 7B68     		ldr	r3, [r7, #4]
 2272 09a4 1B68     		ldr	r3, [r3]
  57:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2273              		.loc 3 57 30 discriminator 1
 2274 09a6 1B68     		ldr	r3, [r3]
  57:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2275              		.loc 3 57 5 discriminator 1
 2276 09a8 FA68     		ldr	r2, [r7, #12]
 2277 09aa 9A42     		cmp	r2, r3
 2278 09ac DDDB     		blt	.L118
 2279              	.LBE7:
  59:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     }
  60:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** }
 2280              		.loc 3 60 1
 2281 09ae C046     		nop
 2282 09b0 BD46     		mov	sp, r7
 2283 09b2 04B0     		add	sp, sp, #16
 2284              		@ sp needed
 2285 09b4 80BD     		pop	{r7, pc}
 2286              		.cfi_endproc
 2287              	.LFE31:
 2289              		.align	1
 2290              		.global	move_object
 2291              		.syntax unified
 2292              		.code	16
 2293              		.thumb_func
 2294              		.fpu softvfp
 2296              	move_object:
 2297              	.LFB32:
  61:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** 
  62:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** void move_object(POBJECT o){
 2298              		.loc 3 62 28
 2299              		.cfi_startproc
 2300              		@ args = 0, pretend = 0, frame = 8
 2301              		@ frame_needed = 1, uses_anonymous_args = 0
 2302 09b6 80B5     		push	{r7, lr}
 2303              		.cfi_def_cfa_offset 8
 2304              		.cfi_offset 7, -8
 2305              		.cfi_offset 14, -4
 2306 09b8 82B0     		sub	sp, sp, #8
 2307              		.cfi_def_cfa_offset 16
 2308 09ba 00AF     		add	r7, sp, #0
 2309              		.cfi_def_cfa_register 7
 2310 09bc 7860     		str	r0, [r7, #4]
  63:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     clear_object(o);
 2311              		.loc 3 63 5
 2312 09be 7B68     		ldr	r3, [r7, #4]
 2313 09c0 1800     		movs	r0, r3
 2314 09c2 FFF7FEFF 		bl	clear_object
  64:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     o->posx = o->posx+o->dirx;
 2315              		.loc 3 64 16
 2316 09c6 7B68     		ldr	r3, [r7, #4]
 2317 09c8 DA68     		ldr	r2, [r3, #12]
 2318              		.loc 3 64 24
 2319 09ca 7B68     		ldr	r3, [r7, #4]
 2320 09cc 5B68     		ldr	r3, [r3, #4]
 2321              		.loc 3 64 22
 2322 09ce D218     		adds	r2, r2, r3
 2323              		.loc 3 64 13
 2324 09d0 7B68     		ldr	r3, [r7, #4]
 2325 09d2 DA60     		str	r2, [r3, #12]
  65:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     o->posy = o->posy+o->diry;
 2326              		.loc 3 65 16
 2327 09d4 7B68     		ldr	r3, [r7, #4]
 2328 09d6 1A69     		ldr	r2, [r3, #16]
 2329              		.loc 3 65 24
 2330 09d8 7B68     		ldr	r3, [r7, #4]
 2331 09da 9B68     		ldr	r3, [r3, #8]
 2332              		.loc 3 65 22
 2333 09dc D218     		adds	r2, r2, r3
 2334              		.loc 3 65 13
 2335 09de 7B68     		ldr	r3, [r7, #4]
 2336 09e0 1A61     		str	r2, [r3, #16]
  66:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     if (o->posx < 1){
 2337              		.loc 3 66 10
 2338 09e2 7B68     		ldr	r3, [r7, #4]
 2339 09e4 DB68     		ldr	r3, [r3, #12]
 2340              		.loc 3 66 8
 2341 09e6 002B     		cmp	r3, #0
 2342 09e8 07DC     		bgt	.L120
  67:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         o->dirx *= -1;
 2343              		.loc 3 67 17
 2344 09ea 7B68     		ldr	r3, [r7, #4]
 2345 09ec 5B68     		ldr	r3, [r3, #4]
 2346 09ee 5A42     		rsbs	r2, r3, #0
 2347 09f0 7B68     		ldr	r3, [r7, #4]
 2348 09f2 5A60     		str	r2, [r3, #4]
  68:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         o->posx = 1;
 2349              		.loc 3 68 17
 2350 09f4 7B68     		ldr	r3, [r7, #4]
 2351 09f6 0122     		movs	r2, #1
 2352 09f8 DA60     		str	r2, [r3, #12]
 2353              	.L120:
  69:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     }
  70:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     if (o->posx + o->geo->sizex > 128){
 2354              		.loc 3 70 10
 2355 09fa 7B68     		ldr	r3, [r7, #4]
 2356 09fc DA68     		ldr	r2, [r3, #12]
 2357              		.loc 3 70 20
 2358 09fe 7B68     		ldr	r3, [r7, #4]
 2359 0a00 1B68     		ldr	r3, [r3]
 2360              		.loc 3 70 25
 2361 0a02 5B68     		ldr	r3, [r3, #4]
 2362              		.loc 3 70 17
 2363 0a04 D318     		adds	r3, r2, r3
 2364              		.loc 3 70 8
 2365 0a06 802B     		cmp	r3, #128
 2366 0a08 0BDD     		ble	.L121
  71:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         o->dirx *= -1;
 2367              		.loc 3 71 17
 2368 0a0a 7B68     		ldr	r3, [r7, #4]
 2369 0a0c 5B68     		ldr	r3, [r3, #4]
 2370 0a0e 5A42     		rsbs	r2, r3, #0
 2371 0a10 7B68     		ldr	r3, [r7, #4]
 2372 0a12 5A60     		str	r2, [r3, #4]
  72:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         o->posx = 128 - o->geo->sizex;
 2373              		.loc 3 72 26
 2374 0a14 7B68     		ldr	r3, [r7, #4]
 2375 0a16 1B68     		ldr	r3, [r3]
 2376              		.loc 3 72 31
 2377 0a18 5B68     		ldr	r3, [r3, #4]
 2378              		.loc 3 72 23
 2379 0a1a 8022     		movs	r2, #128
 2380 0a1c D21A     		subs	r2, r2, r3
 2381              		.loc 3 72 17
 2382 0a1e 7B68     		ldr	r3, [r7, #4]
 2383 0a20 DA60     		str	r2, [r3, #12]
 2384              	.L121:
  73:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     }
  74:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     
  75:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     if (o->posy < 1){
 2385              		.loc 3 75 10
 2386 0a22 7B68     		ldr	r3, [r7, #4]
 2387 0a24 1B69     		ldr	r3, [r3, #16]
 2388              		.loc 3 75 8
 2389 0a26 002B     		cmp	r3, #0
 2390 0a28 07DC     		bgt	.L122
  76:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         o->diry *= -1;
 2391              		.loc 3 76 17
 2392 0a2a 7B68     		ldr	r3, [r7, #4]
 2393 0a2c 9B68     		ldr	r3, [r3, #8]
 2394 0a2e 5A42     		rsbs	r2, r3, #0
 2395 0a30 7B68     		ldr	r3, [r7, #4]
 2396 0a32 9A60     		str	r2, [r3, #8]
  77:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         o->posy = 1;
 2397              		.loc 3 77 17
 2398 0a34 7B68     		ldr	r3, [r7, #4]
 2399 0a36 0122     		movs	r2, #1
 2400 0a38 1A61     		str	r2, [r3, #16]
 2401              	.L122:
  78:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     }
  79:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     if (o->posy + o->geo->sizey > 64){
 2402              		.loc 3 79 10
 2403 0a3a 7B68     		ldr	r3, [r7, #4]
 2404 0a3c 1A69     		ldr	r2, [r3, #16]
 2405              		.loc 3 79 20
 2406 0a3e 7B68     		ldr	r3, [r7, #4]
 2407 0a40 1B68     		ldr	r3, [r3]
 2408              		.loc 3 79 25
 2409 0a42 9B68     		ldr	r3, [r3, #8]
 2410              		.loc 3 79 17
 2411 0a44 D318     		adds	r3, r2, r3
 2412              		.loc 3 79 8
 2413 0a46 402B     		cmp	r3, #64
 2414 0a48 0BDD     		ble	.L123
  80:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         o->diry *= -1;
 2415              		.loc 3 80 17
 2416 0a4a 7B68     		ldr	r3, [r7, #4]
 2417 0a4c 9B68     		ldr	r3, [r3, #8]
 2418 0a4e 5A42     		rsbs	r2, r3, #0
 2419 0a50 7B68     		ldr	r3, [r7, #4]
 2420 0a52 9A60     		str	r2, [r3, #8]
  81:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         o->posy = 64 - o->geo->sizey;
 2421              		.loc 3 81 25
 2422 0a54 7B68     		ldr	r3, [r7, #4]
 2423 0a56 1B68     		ldr	r3, [r3]
 2424              		.loc 3 81 30
 2425 0a58 9B68     		ldr	r3, [r3, #8]
 2426              		.loc 3 81 22
 2427 0a5a 4022     		movs	r2, #64
 2428 0a5c D21A     		subs	r2, r2, r3
 2429              		.loc 3 81 17
 2430 0a5e 7B68     		ldr	r3, [r7, #4]
 2431 0a60 1A61     		str	r2, [r3, #16]
 2432              	.L123:
  82:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     }
  83:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     draw_object(o);
 2433              		.loc 3 83 5
 2434 0a62 7B68     		ldr	r3, [r7, #4]
 2435 0a64 1800     		movs	r0, r3
 2436 0a66 FFF7FEFF 		bl	draw_object
  84:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** }
 2437              		.loc 3 84 1
 2438 0a6a C046     		nop
 2439 0a6c BD46     		mov	sp, r7
 2440 0a6e 02B0     		add	sp, sp, #8
 2441              		@ sp needed
 2442 0a70 80BD     		pop	{r7, pc}
 2443              		.cfi_endproc
 2444              	.LFE32:
 2446              		.align	1
 2447              		.global	clear_object
 2448              		.syntax unified
 2449              		.code	16
 2450              		.thumb_func
 2451              		.fpu softvfp
 2453              	clear_object:
 2454              	.LFB33:
  85:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** 
  86:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** void clear_object(POBJECT o){
 2455              		.loc 3 86 29
 2456              		.cfi_startproc
 2457              		@ args = 0, pretend = 0, frame = 16
 2458              		@ frame_needed = 1, uses_anonymous_args = 0
 2459 0a72 80B5     		push	{r7, lr}
 2460              		.cfi_def_cfa_offset 8
 2461              		.cfi_offset 7, -8
 2462              		.cfi_offset 14, -4
 2463 0a74 84B0     		sub	sp, sp, #16
 2464              		.cfi_def_cfa_offset 24
 2465 0a76 00AF     		add	r7, sp, #0
 2466              		.cfi_def_cfa_register 7
 2467 0a78 7860     		str	r0, [r7, #4]
 2468              	.LBB8:
  87:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2469              		.loc 3 87 14
 2470 0a7a 0023     		movs	r3, #0
 2471 0a7c FB60     		str	r3, [r7, #12]
 2472              		.loc 3 87 5
 2473 0a7e 1BE0     		b	.L125
 2474              	.L126:
  88:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****         pixel(o->posx+o->geo->px[i].x,o->posy+o->geo->px[i].y);
 2475              		.loc 3 88 16 discriminator 3
 2476 0a80 7B68     		ldr	r3, [r7, #4]
 2477 0a82 DA68     		ldr	r2, [r3, #12]
 2478              		.loc 3 88 24 discriminator 3
 2479 0a84 7B68     		ldr	r3, [r7, #4]
 2480 0a86 1968     		ldr	r1, [r3]
 2481              		.loc 3 88 36 discriminator 3
 2482 0a88 FB68     		ldr	r3, [r7, #12]
 2483 0a8a 0433     		adds	r3, r3, #4
 2484 0a8c 5B00     		lsls	r3, r3, #1
 2485 0a8e CB18     		adds	r3, r1, r3
 2486 0a90 0433     		adds	r3, r3, #4
 2487 0a92 1B78     		ldrb	r3, [r3]
 2488              		.loc 3 88 9 discriminator 3
 2489 0a94 D018     		adds	r0, r2, r3
 2490              		.loc 3 88 40 discriminator 3
 2491 0a96 7B68     		ldr	r3, [r7, #4]
 2492 0a98 1A69     		ldr	r2, [r3, #16]
 2493              		.loc 3 88 48 discriminator 3
 2494 0a9a 7B68     		ldr	r3, [r7, #4]
 2495 0a9c 1968     		ldr	r1, [r3]
 2496              		.loc 3 88 60 discriminator 3
 2497 0a9e FB68     		ldr	r3, [r7, #12]
 2498 0aa0 0433     		adds	r3, r3, #4
 2499 0aa2 5B00     		lsls	r3, r3, #1
 2500 0aa4 CB18     		adds	r3, r1, r3
 2501 0aa6 0533     		adds	r3, r3, #5
 2502 0aa8 1B78     		ldrb	r3, [r3]
 2503              		.loc 3 88 9 discriminator 3
 2504 0aaa D318     		adds	r3, r2, r3
 2505 0aac 1900     		movs	r1, r3
 2506 0aae FFF7FEFF 		bl	pixel
  87:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2507              		.loc 3 87 44 discriminator 3
 2508 0ab2 FB68     		ldr	r3, [r7, #12]
 2509 0ab4 0133     		adds	r3, r3, #1
 2510 0ab6 FB60     		str	r3, [r7, #12]
 2511              	.L125:
  87:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2512              		.loc 3 87 25 discriminator 1
 2513 0ab8 7B68     		ldr	r3, [r7, #4]
 2514 0aba 1B68     		ldr	r3, [r3]
  87:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2515              		.loc 3 87 30 discriminator 1
 2516 0abc 1B68     		ldr	r3, [r3]
  87:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     for (int i = 0; i< o->geo->numpoints; i++){
 2517              		.loc 3 87 5 discriminator 1
 2518 0abe FA68     		ldr	r2, [r7, #12]
 2519 0ac0 9A42     		cmp	r2, r3
 2520 0ac2 DDDB     		blt	.L126
 2521              	.LBE8:
  89:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h ****     }
  90:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/geometry.h **** }
 2522              		.loc 3 90 1
 2523 0ac4 C046     		nop
 2524 0ac6 BD46     		mov	sp, r7
 2525 0ac8 04B0     		add	sp, sp, #16
 2526              		@ sp needed
 2527 0aca 80BD     		pop	{r7, pc}
 2528              		.cfi_endproc
 2529              	.LFE33:
 2531              		.align	1
 2532              		.global	delay_250ns
 2533              		.syntax unified
 2534              		.code	16
 2535              		.thumb_func
 2536              		.fpu softvfp
 2538              	delay_250ns:
 2539              	.LFB34:
 2540              		.file 4 "/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h"
   1:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** #ifndef DELAY_H
   2:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** #define DELAY_H
   3:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** 
   4:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** #define STK_CTRL ((volatile unsigned int *)(0xE000E010))
   5:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** #define STK_LOAD ((volatile unsigned int *)(0xE000E014))
   6:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** #define STK_VAL ((volatile unsigned int *)(0xE000E018))
   7:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** void delay_250ns( void ) {
 2541              		.loc 4 7 26
 2542              		.cfi_startproc
 2543              		@ args = 0, pretend = 0, frame = 0
 2544              		@ frame_needed = 1, uses_anonymous_args = 0
 2545 0acc 80B5     		push	{r7, lr}
 2546              		.cfi_def_cfa_offset 8
 2547              		.cfi_offset 7, -8
 2548              		.cfi_offset 14, -4
 2549 0ace 00AF     		add	r7, sp, #0
 2550              		.cfi_def_cfa_register 7
   8:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     /* SystemCoreClock = 168000000 */
   9:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     *STK_CTRL = 0;
 2551              		.loc 4 9 5
 2552 0ad0 0C4B     		ldr	r3, .L129
 2553              		.loc 4 9 15
 2554 0ad2 0022     		movs	r2, #0
 2555 0ad4 1A60     		str	r2, [r3]
  10:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     *STK_LOAD = ( (168/4) -1 );
 2556              		.loc 4 10 5
 2557 0ad6 0C4B     		ldr	r3, .L129+4
 2558              		.loc 4 10 15
 2559 0ad8 2922     		movs	r2, #41
 2560 0ada 1A60     		str	r2, [r3]
  11:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     *STK_VAL = 0;
 2561              		.loc 4 11 5
 2562 0adc 0B4B     		ldr	r3, .L129+8
 2563              		.loc 4 11 14
 2564 0ade 0022     		movs	r2, #0
 2565 0ae0 1A60     		str	r2, [r3]
  12:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     *STK_CTRL = 5;
 2566              		.loc 4 12 5
 2567 0ae2 084B     		ldr	r3, .L129
 2568              		.loc 4 12 15
 2569 0ae4 0522     		movs	r2, #5
 2570 0ae6 1A60     		str	r2, [r3]
  13:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     while( (*STK_CTRL & 0x10000 )== 0 );
 2571              		.loc 4 13 10
 2572 0ae8 C046     		nop
 2573              	.L128:
 2574              		.loc 4 13 13 discriminator 1
 2575 0aea 064B     		ldr	r3, .L129
 2576 0aec 1A68     		ldr	r2, [r3]
 2577              		.loc 4 13 23 discriminator 1
 2578 0aee 8023     		movs	r3, #128
 2579 0af0 5B02     		lsls	r3, r3, #9
 2580 0af2 1340     		ands	r3, r2
 2581              		.loc 4 13 10 discriminator 1
 2582 0af4 F9D0     		beq	.L128
  14:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         *STK_CTRL = 0;
 2583              		.loc 4 14 9
 2584 0af6 034B     		ldr	r3, .L129
 2585              		.loc 4 14 19
 2586 0af8 0022     		movs	r2, #0
 2587 0afa 1A60     		str	r2, [r3]
  15:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** }
 2588              		.loc 4 15 1
 2589 0afc C046     		nop
 2590 0afe BD46     		mov	sp, r7
 2591              		@ sp needed
 2592 0b00 80BD     		pop	{r7, pc}
 2593              	.L130:
 2594 0b02 C046     		.align	2
 2595              	.L129:
 2596 0b04 10E000E0 		.word	-536813552
 2597 0b08 14E000E0 		.word	-536813548
 2598 0b0c 18E000E0 		.word	-536813544
 2599              		.cfi_endproc
 2600              	.LFE34:
 2602              		.align	1
 2603              		.global	delay_500ns
 2604              		.syntax unified
 2605              		.code	16
 2606              		.thumb_func
 2607              		.fpu softvfp
 2609              	delay_500ns:
 2610              	.LFB35:
  16:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** void delay_500ns( void) {
 2611              		.loc 4 16 25
 2612              		.cfi_startproc
 2613              		@ args = 0, pretend = 0, frame = 0
 2614              		@ frame_needed = 1, uses_anonymous_args = 0
 2615 0b10 80B5     		push	{r7, lr}
 2616              		.cfi_def_cfa_offset 8
 2617              		.cfi_offset 7, -8
 2618              		.cfi_offset 14, -4
 2619 0b12 00AF     		add	r7, sp, #0
 2620              		.cfi_def_cfa_register 7
  17:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     delay_250ns();
 2621              		.loc 4 17 5
 2622 0b14 FFF7FEFF 		bl	delay_250ns
  18:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     delay_250ns();
 2623              		.loc 4 18 5
 2624 0b18 FFF7FEFF 		bl	delay_250ns
  19:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** }
 2625              		.loc 4 19 1
 2626 0b1c C046     		nop
 2627 0b1e BD46     		mov	sp, r7
 2628              		@ sp needed
 2629 0b20 80BD     		pop	{r7, pc}
 2630              		.cfi_endproc
 2631              	.LFE35:
 2633              		.global	__aeabi_uidiv
 2634              		.align	1
 2635              		.global	delay_micro
 2636              		.syntax unified
 2637              		.code	16
 2638              		.thumb_func
 2639              		.fpu softvfp
 2641              	delay_micro:
 2642              	.LFB36:
  20:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** void delay_micro(unsigned int us) {
 2643              		.loc 4 20 35
 2644              		.cfi_startproc
 2645              		@ args = 0, pretend = 0, frame = 8
 2646              		@ frame_needed = 1, uses_anonymous_args = 0
 2647 0b22 80B5     		push	{r7, lr}
 2648              		.cfi_def_cfa_offset 8
 2649              		.cfi_offset 7, -8
 2650              		.cfi_offset 14, -4
 2651 0b24 82B0     		sub	sp, sp, #8
 2652              		.cfi_def_cfa_offset 16
 2653 0b26 00AF     		add	r7, sp, #0
 2654              		.cfi_def_cfa_register 7
 2655 0b28 7860     		str	r0, [r7, #4]
  21:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** #ifdef SIMULATOR
  22:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     us = us / 1000;
 2656              		.loc 4 22 8
 2657 0b2a 7A68     		ldr	r2, [r7, #4]
 2658 0b2c FA23     		movs	r3, #250
 2659 0b2e 9900     		lsls	r1, r3, #2
 2660 0b30 1000     		movs	r0, r2
 2661 0b32 FFF7FEFF 		bl	__aeabi_uidiv
 2662              	.LVL0:
 2663 0b36 0300     		movs	r3, r0
 2664 0b38 7B60     		str	r3, [r7, #4]
  23:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     us++;
 2665              		.loc 4 23 7
 2666 0b3a 7B68     		ldr	r3, [r7, #4]
 2667 0b3c 0133     		adds	r3, r3, #1
 2668 0b3e 7B60     		str	r3, [r7, #4]
  24:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** #endif
  25:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     while( us > 0 ) {
 2669              		.loc 4 25 10
 2670 0b40 0AE0     		b	.L133
 2671              	.L134:
  26:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         delay_250ns();
 2672              		.loc 4 26 9
 2673 0b42 FFF7FEFF 		bl	delay_250ns
  27:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         delay_250ns();
 2674              		.loc 4 27 9
 2675 0b46 FFF7FEFF 		bl	delay_250ns
  28:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         delay_250ns();
 2676              		.loc 4 28 9
 2677 0b4a FFF7FEFF 		bl	delay_250ns
  29:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         delay_250ns();
 2678              		.loc 4 29 9
 2679 0b4e FFF7FEFF 		bl	delay_250ns
  30:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         us--;
 2680              		.loc 4 30 11
 2681 0b52 7B68     		ldr	r3, [r7, #4]
 2682 0b54 013B     		subs	r3, r3, #1
 2683 0b56 7B60     		str	r3, [r7, #4]
 2684              	.L133:
  25:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         delay_250ns();
 2685              		.loc 4 25 10
 2686 0b58 7B68     		ldr	r3, [r7, #4]
 2687 0b5a 002B     		cmp	r3, #0
 2688 0b5c F1D1     		bne	.L134
  31:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     }
  32:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** }
 2689              		.loc 4 32 1
 2690 0b5e C046     		nop
 2691 0b60 BD46     		mov	sp, r7
 2692 0b62 02B0     		add	sp, sp, #8
 2693              		@ sp needed
 2694 0b64 80BD     		pop	{r7, pc}
 2695              		.cfi_endproc
 2696              	.LFE36:
 2698              		.align	1
 2699              		.global	delay_milli
 2700              		.syntax unified
 2701              		.code	16
 2702              		.thumb_func
 2703              		.fpu softvfp
 2705              	delay_milli:
 2706              	.LFB37:
  33:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** void delay_milli(unsigned int ms){
 2707              		.loc 4 33 34
 2708              		.cfi_startproc
 2709              		@ args = 0, pretend = 0, frame = 8
 2710              		@ frame_needed = 1, uses_anonymous_args = 0
 2711 0b66 80B5     		push	{r7, lr}
 2712              		.cfi_def_cfa_offset 8
 2713              		.cfi_offset 7, -8
 2714              		.cfi_offset 14, -4
 2715 0b68 82B0     		sub	sp, sp, #8
 2716              		.cfi_def_cfa_offset 16
 2717 0b6a 00AF     		add	r7, sp, #0
 2718              		.cfi_def_cfa_register 7
 2719 0b6c 7860     		str	r0, [r7, #4]
  34:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** #ifdef SIMULATOR
  35:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     ms = ms / 1000;
 2720              		.loc 4 35 8
 2721 0b6e 7A68     		ldr	r2, [r7, #4]
 2722 0b70 FA23     		movs	r3, #250
 2723 0b72 9900     		lsls	r1, r3, #2
 2724 0b74 1000     		movs	r0, r2
 2725 0b76 FFF7FEFF 		bl	__aeabi_uidiv
 2726              	.LVL1:
 2727 0b7a 0300     		movs	r3, r0
 2728 0b7c 7B60     		str	r3, [r7, #4]
  36:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     ms++;
 2729              		.loc 4 36 7
 2730 0b7e 7B68     		ldr	r3, [r7, #4]
 2731 0b80 0133     		adds	r3, r3, #1
 2732 0b82 7B60     		str	r3, [r7, #4]
  37:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** #endif
  38:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     while( ms > 0 ) {
 2733              		.loc 4 38 10
 2734 0b84 07E0     		b	.L136
 2735              	.L137:
  39:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         delay_micro(1000);
 2736              		.loc 4 39 9
 2737 0b86 FA23     		movs	r3, #250
 2738 0b88 9B00     		lsls	r3, r3, #2
 2739 0b8a 1800     		movs	r0, r3
 2740 0b8c FFF7FEFF 		bl	delay_micro
  40:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         ms--;
 2741              		.loc 4 40 11
 2742 0b90 7B68     		ldr	r3, [r7, #4]
 2743 0b92 013B     		subs	r3, r3, #1
 2744 0b94 7B60     		str	r3, [r7, #4]
 2745              	.L136:
  38:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****         delay_micro(1000);
 2746              		.loc 4 38 10
 2747 0b96 7B68     		ldr	r3, [r7, #4]
 2748 0b98 002B     		cmp	r3, #0
 2749 0b9a F4D1     		bne	.L137
  41:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h ****     }
  42:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/delay.h **** }
 2750              		.loc 4 42 1
 2751 0b9c C046     		nop
 2752 0b9e BD46     		mov	sp, r7
 2753 0ba0 02B0     		add	sp, sp, #8
 2754              		@ sp needed
 2755 0ba2 80BD     		pop	{r7, pc}
 2756              		.cfi_endproc
 2757              	.LFE37:
 2759              		.align	1
 2760              		.global	activateRow
 2761              		.syntax unified
 2762              		.code	16
 2763              		.thumb_func
 2764              		.fpu softvfp
 2766              	activateRow:
 2767              	.LFB38:
 2768              		.file 5 "/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h"
   1:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** #ifndef KEYPAD_H
   2:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** #define KEYPAD_H
   3:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** #include "gpio.h"
   4:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** 
   5:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** void activateRow(unsigned int row ){
 2769              		.loc 5 5 36
 2770              		.cfi_startproc
 2771              		@ args = 0, pretend = 0, frame = 8
 2772              		@ frame_needed = 1, uses_anonymous_args = 0
 2773 0ba4 80B5     		push	{r7, lr}
 2774              		.cfi_def_cfa_offset 8
 2775              		.cfi_offset 7, -8
 2776              		.cfi_offset 14, -4
 2777 0ba6 82B0     		sub	sp, sp, #8
 2778              		.cfi_def_cfa_offset 16
 2779 0ba8 00AF     		add	r7, sp, #0
 2780              		.cfi_def_cfa_register 7
 2781 0baa 7860     		str	r0, [r7, #4]
   6:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** /* Aktivera angiven rad hos tangentbordet, eller
   7:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** * deaktivera samtliga */
   8:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     switch( row ){
 2782              		.loc 5 8 5
 2783 0bac 7B68     		ldr	r3, [r7, #4]
 2784 0bae 042B     		cmp	r3, #4
 2785 0bb0 19D8     		bhi	.L146
 2786 0bb2 7B68     		ldr	r3, [r7, #4]
 2787 0bb4 9A00     		lsls	r2, r3, #2
 2788 0bb6 0E4B     		ldr	r3, .L147
 2789 0bb8 D318     		adds	r3, r2, r3
 2790 0bba 1B68     		ldr	r3, [r3]
 2791 0bbc 9F46     		mov	pc, r3
 2792              		.section	.rodata
 2793              		.align	2
 2794              	.L141:
 2795 0000 DE0B0000 		.word	.L145
 2796 0004 BE0B0000 		.word	.L144
 2797 0008 C60B0000 		.word	.L143
 2798 000c CE0B0000 		.word	.L142
 2799 0010 D60B0000 		.word	.L140
 2800              		.text
 2801              	.L144:
   9:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         case 1: GPIO_D.odrHigh = 0x10; break;
 2802              		.loc 5 9 17
 2803 0bbe 0D4B     		ldr	r3, .L147+4
 2804              		.loc 5 9 32
 2805 0bc0 1022     		movs	r2, #16
 2806 0bc2 5A75     		strb	r2, [r3, #21]
 2807              		.loc 5 9 9
 2808 0bc4 0FE0     		b	.L139
 2809              	.L143:
  10:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         case 2: GPIO_D.odrHigh = 0x20; break;
 2810              		.loc 5 10 17
 2811 0bc6 0B4B     		ldr	r3, .L147+4
 2812              		.loc 5 10 32
 2813 0bc8 2022     		movs	r2, #32
 2814 0bca 5A75     		strb	r2, [r3, #21]
 2815              		.loc 5 10 9
 2816 0bcc 0BE0     		b	.L139
 2817              	.L142:
  11:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         case 3: GPIO_D.odrHigh = 0x40; break;
 2818              		.loc 5 11 17
 2819 0bce 094B     		ldr	r3, .L147+4
 2820              		.loc 5 11 32
 2821 0bd0 4022     		movs	r2, #64
 2822 0bd2 5A75     		strb	r2, [r3, #21]
 2823              		.loc 5 11 9
 2824 0bd4 07E0     		b	.L139
 2825              	.L140:
  12:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         case 4: GPIO_D.odrHigh = 0x80; break;
 2826              		.loc 5 12 17
 2827 0bd6 074B     		ldr	r3, .L147+4
 2828              		.loc 5 12 32
 2829 0bd8 8022     		movs	r2, #128
 2830 0bda 5A75     		strb	r2, [r3, #21]
 2831              		.loc 5 12 9
 2832 0bdc 03E0     		b	.L139
 2833              	.L145:
  13:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         case 0: GPIO_D.odrHigh = 0x00; break;
 2834              		.loc 5 13 17
 2835 0bde 054B     		ldr	r3, .L147+4
 2836              		.loc 5 13 32
 2837 0be0 0022     		movs	r2, #0
 2838 0be2 5A75     		strb	r2, [r3, #21]
 2839              		.loc 5 13 9
 2840 0be4 C046     		nop
 2841              	.L139:
 2842              	.L146:
  14:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     }
  15:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** }
 2843              		.loc 5 15 1
 2844 0be6 C046     		nop
 2845 0be8 BD46     		mov	sp, r7
 2846 0bea 02B0     		add	sp, sp, #8
 2847              		@ sp needed
 2848 0bec 80BD     		pop	{r7, pc}
 2849              	.L148:
 2850 0bee C046     		.align	2
 2851              	.L147:
 2852 0bf0 00000000 		.word	.L141
 2853 0bf4 000C0240 		.word	1073875968
 2854              		.cfi_endproc
 2855              	.LFE38:
 2857              		.align	1
 2858              		.global	readColumn
 2859              		.syntax unified
 2860              		.code	16
 2861              		.thumb_func
 2862              		.fpu softvfp
 2864              	readColumn:
 2865              	.LFB39:
  16:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** int readColumn(void) {
 2866              		.loc 5 16 22
 2867              		.cfi_startproc
 2868              		@ args = 0, pretend = 0, frame = 8
 2869              		@ frame_needed = 1, uses_anonymous_args = 0
 2870 0bf8 80B5     		push	{r7, lr}
 2871              		.cfi_def_cfa_offset 8
 2872              		.cfi_offset 7, -8
 2873              		.cfi_offset 14, -4
 2874 0bfa 82B0     		sub	sp, sp, #8
 2875              		.cfi_def_cfa_offset 16
 2876 0bfc 00AF     		add	r7, sp, #0
 2877              		.cfi_def_cfa_register 7
  17:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     /* Om någon tangent (i aktiverad rad)
  18:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     * är nedtryckt, returnera dess kolumnnummer,
  19:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     * annars, returnera 0 */
  20:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     unsigned char c;
  21:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     c = GPIO_D.idrHigh;
 2878              		.loc 5 21 9
 2879 0bfe 124A     		ldr	r2, .L155
 2880              		.loc 5 21 7
 2881 0c00 FB1D     		adds	r3, r7, #7
 2882 0c02 527C     		ldrb	r2, [r2, #17]
 2883 0c04 1A70     		strb	r2, [r3]
  22:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     if ( c & 0x8 ) return 4;
 2884              		.loc 5 22 12
 2885 0c06 FB1D     		adds	r3, r7, #7
 2886 0c08 1B78     		ldrb	r3, [r3]
 2887 0c0a 0822     		movs	r2, #8
 2888 0c0c 1340     		ands	r3, r2
 2889              		.loc 5 22 8
 2890 0c0e 01D0     		beq	.L150
 2891              		.loc 5 22 27 discriminator 1
 2892 0c10 0423     		movs	r3, #4
 2893 0c12 15E0     		b	.L151
 2894              	.L150:
  23:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     if ( c & 0x4 ) return 3;
 2895              		.loc 5 23 12
 2896 0c14 FB1D     		adds	r3, r7, #7
 2897 0c16 1B78     		ldrb	r3, [r3]
 2898 0c18 0422     		movs	r2, #4
 2899 0c1a 1340     		ands	r3, r2
 2900              		.loc 5 23 8
 2901 0c1c 01D0     		beq	.L152
 2902              		.loc 5 23 27 discriminator 1
 2903 0c1e 0323     		movs	r3, #3
 2904 0c20 0EE0     		b	.L151
 2905              	.L152:
  24:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     if ( c & 0x2 ) return 2;
 2906              		.loc 5 24 12
 2907 0c22 FB1D     		adds	r3, r7, #7
 2908 0c24 1B78     		ldrb	r3, [r3]
 2909 0c26 0222     		movs	r2, #2
 2910 0c28 1340     		ands	r3, r2
 2911              		.loc 5 24 8
 2912 0c2a 01D0     		beq	.L153
 2913              		.loc 5 24 27 discriminator 1
 2914 0c2c 0223     		movs	r3, #2
 2915 0c2e 07E0     		b	.L151
 2916              	.L153:
  25:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     if ( c & 0x1 ) return 1;
 2917              		.loc 5 25 12
 2918 0c30 FB1D     		adds	r3, r7, #7
 2919 0c32 1B78     		ldrb	r3, [r3]
 2920 0c34 0122     		movs	r2, #1
 2921 0c36 1340     		ands	r3, r2
 2922              		.loc 5 25 8
 2923 0c38 01D0     		beq	.L154
 2924              		.loc 5 25 27 discriminator 1
 2925 0c3a 0123     		movs	r3, #1
 2926 0c3c 00E0     		b	.L151
 2927              	.L154:
  26:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     return 0;
 2928              		.loc 5 26 12
 2929 0c3e 0023     		movs	r3, #0
 2930              	.L151:
  27:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** }
 2931              		.loc 5 27 1
 2932 0c40 1800     		movs	r0, r3
 2933 0c42 BD46     		mov	sp, r7
 2934 0c44 02B0     		add	sp, sp, #8
 2935              		@ sp needed
 2936 0c46 80BD     		pop	{r7, pc}
 2937              	.L156:
 2938              		.align	2
 2939              	.L155:
 2940 0c48 000C0240 		.word	1073875968
 2941              		.cfi_endproc
 2942              	.LFE39:
 2944              		.section	.rodata
 2945              		.align	2
 2946              	.LC0:
 2947 0014 01       		.byte	1
 2948 0015 02       		.byte	2
 2949 0016 03       		.byte	3
 2950 0017 0A       		.byte	10
 2951 0018 04       		.byte	4
 2952 0019 05       		.byte	5
 2953 001a 06       		.byte	6
 2954 001b 0B       		.byte	11
 2955 001c 07       		.byte	7
 2956 001d 08       		.byte	8
 2957 001e 09       		.byte	9
 2958 001f 0C       		.byte	12
 2959 0020 0E       		.byte	14
 2960 0021 00       		.byte	0
 2961 0022 0F       		.byte	15
 2962 0023 0D       		.byte	13
 2963              		.text
 2964              		.align	1
 2965              		.global	keyb
 2966              		.syntax unified
 2967              		.code	16
 2968              		.thumb_func
 2969              		.fpu softvfp
 2971              	keyb:
 2972              	.LFB40:
  28:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** 
  29:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** unsigned char keyb( void ) {
 2973              		.loc 5 29 28
 2974              		.cfi_startproc
 2975              		@ args = 0, pretend = 0, frame = 24
 2976              		@ frame_needed = 1, uses_anonymous_args = 0
 2977 0c4c 90B5     		push	{r4, r7, lr}
 2978              		.cfi_def_cfa_offset 12
 2979              		.cfi_offset 4, -12
 2980              		.cfi_offset 7, -8
 2981              		.cfi_offset 14, -4
 2982 0c4e 87B0     		sub	sp, sp, #28
 2983              		.cfi_def_cfa_offset 40
 2984 0c50 00AF     		add	r7, sp, #0
 2985              		.cfi_def_cfa_register 7
  30:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     unsigned char key[]={1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
 2986              		.loc 5 30 19
 2987 0c52 3B00     		movs	r3, r7
 2988 0c54 164A     		ldr	r2, .L163
 2989 0c56 13CA     		ldmia	r2!, {r0, r1, r4}
 2990 0c58 13C3     		stmia	r3!, {r0, r1, r4}
 2991 0c5a 1268     		ldr	r2, [r2]
 2992 0c5c 1A60     		str	r2, [r3]
  31:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     int row, col;
  32:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     for (row=1; row <=4 ; row++ ) {
 2993              		.loc 5 32 13
 2994 0c5e 0123     		movs	r3, #1
 2995 0c60 7B61     		str	r3, [r7, #20]
 2996              		.loc 5 32 5
 2997 0c62 19E0     		b	.L158
 2998              	.L161:
  33:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         activateRow(row);
 2999              		.loc 5 33 9
 3000 0c64 7B69     		ldr	r3, [r7, #20]
 3001 0c66 1800     		movs	r0, r3
 3002 0c68 FFF7FEFF 		bl	activateRow
  34:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         if(col = readColumn()) {
 3003              		.loc 5 34 18
 3004 0c6c FFF7FEFF 		bl	readColumn
 3005 0c70 0300     		movs	r3, r0
 3006 0c72 3B61     		str	r3, [r7, #16]
 3007              		.loc 5 34 11
 3008 0c74 3B69     		ldr	r3, [r7, #16]
 3009 0c76 002B     		cmp	r3, #0
 3010 0c78 0BD0     		beq	.L159
  35:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****             activateRow(0);
 3011              		.loc 5 35 13
 3012 0c7a 0020     		movs	r0, #0
 3013 0c7c FFF7FEFF 		bl	activateRow
  36:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****             return key [4*(row-1)+(col-1)];
 3014              		.loc 5 36 31
 3015 0c80 7B69     		ldr	r3, [r7, #20]
 3016 0c82 013B     		subs	r3, r3, #1
 3017              		.loc 5 36 26
 3018 0c84 9A00     		lsls	r2, r3, #2
 3019              		.loc 5 36 39
 3020 0c86 3B69     		ldr	r3, [r7, #16]
 3021 0c88 013B     		subs	r3, r3, #1
 3022              		.loc 5 36 34
 3023 0c8a D318     		adds	r3, r2, r3
 3024              		.loc 5 36 24
 3025 0c8c 3A00     		movs	r2, r7
 3026 0c8e D35C     		ldrb	r3, [r2, r3]
 3027 0c90 09E0     		b	.L162
 3028              	.L159:
  32:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         activateRow(row);
 3029              		.loc 5 32 30 discriminator 2
 3030 0c92 7B69     		ldr	r3, [r7, #20]
 3031 0c94 0133     		adds	r3, r3, #1
 3032 0c96 7B61     		str	r3, [r7, #20]
 3033              	.L158:
  32:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         activateRow(row);
 3034              		.loc 5 32 5 discriminator 1
 3035 0c98 7B69     		ldr	r3, [r7, #20]
 3036 0c9a 042B     		cmp	r3, #4
 3037 0c9c E2DD     		ble	.L161
  37:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****         }
  38:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     }
  39:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     activateRow(0);
 3038              		.loc 5 39 5
 3039 0c9e 0020     		movs	r0, #0
 3040 0ca0 FFF7FEFF 		bl	activateRow
  40:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h ****     return 0xFF;
 3041              		.loc 5 40 12
 3042 0ca4 FF23     		movs	r3, #255
 3043              	.L162:
  41:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/keypad.h **** }
 3044              		.loc 5 41 1 discriminator 1
 3045 0ca6 1800     		movs	r0, r3
 3046 0ca8 BD46     		mov	sp, r7
 3047 0caa 07B0     		add	sp, sp, #28
 3048              		@ sp needed
 3049 0cac 90BD     		pop	{r4, r7, pc}
 3050              	.L164:
 3051 0cae C046     		.align	2
 3052              	.L163:
 3053 0cb0 14000000 		.word	.LC0
 3054              		.cfi_endproc
 3055              	.LFE40:
 3057              		.data
 3058              		.align	2
 3061              	circle_bits:
 3062 0034 00       		.byte	0
 3063 0035 00       		.byte	0
 3064 0036 00       		.byte	0
 3065 0037 00       		.byte	0
 3066 0038 00       		.byte	0
 3067 0039 00       		.byte	0
 3068 003a 80       		.byte	-128
 3069 003b 1F       		.byte	31
 3070 003c 00       		.byte	0
 3071 003d E0       		.byte	-32
 3072 003e 70       		.byte	112
 3073 003f 00       		.byte	0
 3074 0040 30       		.byte	48
 3075 0041 C0       		.byte	-64
 3076 0042 00       		.byte	0
 3077 0043 18       		.byte	24
 3078 0044 80       		.byte	-128
 3079 0045 01       		.byte	1
 3080 0046 08       		.byte	8
 3081 0047 00       		.byte	0
 3082 0048 01       		.byte	1
 3083 0049 0C       		.byte	12
 3084 004a 00       		.byte	0
 3085 004b 03       		.byte	3
 3086 004c 04       		.byte	4
 3087 004d 00       		.byte	0
 3088 004e 02       		.byte	2
 3089 004f 04       		.byte	4
 3090 0050 00       		.byte	0
 3091 0051 02       		.byte	2
 3092 0052 04       		.byte	4
 3093 0053 00       		.byte	0
 3094 0054 02       		.byte	2
 3095 0055 04       		.byte	4
 3096 0056 00       		.byte	0
 3097 0057 02       		.byte	2
 3098 0058 0C       		.byte	12
 3099 0059 00       		.byte	0
 3100 005a 03       		.byte	3
 3101 005b 08       		.byte	8
 3102 005c 00       		.byte	0
 3103 005d 01       		.byte	1
 3104 005e 18       		.byte	24
 3105 005f 80       		.byte	-128
 3106 0060 01       		.byte	1
 3107 0061 30       		.byte	48
 3108 0062 C0       		.byte	-64
 3109 0063 00       		.byte	0
 3110 0064 E0       		.byte	-32
 3111 0065 70       		.byte	112
 3112 0066 00       		.byte	0
 3113 0067 80       		.byte	-128
 3114 0068 1F       		.byte	31
 3115 0069 00       		.byte	0
 3116 006a 00       		.byte	0
 3117 006b 00       		.byte	0
 3118 006c 00       		.byte	0
 3119 006d 00       		.byte	0
 3120 006e 00       		.byte	0
 3121 006f 00       		.byte	0
 3122              		.align	2
 3125              	cross_bits:
 3126 0070 00       		.byte	0
 3127 0071 00       		.byte	0
 3128 0072 00       		.byte	0
 3129 0073 00       		.byte	0
 3130 0074 00       		.byte	0
 3131 0075 00       		.byte	0
 3132 0076 04       		.byte	4
 3133 0077 00       		.byte	0
 3134 0078 02       		.byte	2
 3135 0079 0C       		.byte	12
 3136 007a 00       		.byte	0
 3137 007b 03       		.byte	3
 3138 007c 18       		.byte	24
 3139 007d 80       		.byte	-128
 3140 007e 01       		.byte	1
 3141 007f 30       		.byte	48
 3142 0080 C0       		.byte	-64
 3143 0081 00       		.byte	0
 3144 0082 60       		.byte	96
 3145 0083 60       		.byte	96
 3146 0084 00       		.byte	0
 3147 0085 C0       		.byte	-64
 3148 0086 30       		.byte	48
 3149 0087 00       		.byte	0
 3150 0088 80       		.byte	-128
 3151 0089 19       		.byte	25
 3152 008a 00       		.byte	0
 3153 008b 00       		.byte	0
 3154 008c 0F       		.byte	15
 3155 008d 00       		.byte	0
 3156 008e 00       		.byte	0
 3157 008f 06       		.byte	6
 3158 0090 00       		.byte	0
 3159 0091 00       		.byte	0
 3160 0092 0F       		.byte	15
 3161 0093 00       		.byte	0
 3162 0094 80       		.byte	-128
 3163 0095 19       		.byte	25
 3164 0096 00       		.byte	0
 3165 0097 C0       		.byte	-64
 3166 0098 30       		.byte	48
 3167 0099 00       		.byte	0
 3168 009a 60       		.byte	96
 3169 009b 60       		.byte	96
 3170 009c 00       		.byte	0
 3171 009d 30       		.byte	48
 3172 009e C0       		.byte	-64
 3173 009f 00       		.byte	0
 3174 00a0 18       		.byte	24
 3175 00a1 80       		.byte	-128
 3176 00a2 01       		.byte	1
 3177 00a3 0C       		.byte	12
 3178 00a4 00       		.byte	0
 3179 00a5 03       		.byte	3
 3180 00a6 00       		.byte	0
 3181 00a7 00       		.byte	0
 3182 00a8 00       		.byte	0
 3183 00a9 00       		.byte	0
 3184 00aa 00       		.byte	0
 3185 00ab 00       		.byte	0
 3186              		.align	2
 3189              	big_circle_bits:
 3190 00ac 00       		.byte	0
 3191 00ad 00       		.byte	0
 3192 00ae 00       		.byte	0
 3193 00af 00       		.byte	0
 3194 00b0 00       		.byte	0
 3195 00b1 00       		.byte	0
 3196 00b2 00       		.byte	0
 3197 00b3 00       		.byte	0
 3198 00b4 00       		.byte	0
 3199 00b5 00       		.byte	0
 3200 00b6 00       		.byte	0
 3201 00b7 00       		.byte	0
 3202 00b8 00       		.byte	0
 3203 00b9 00       		.byte	0
 3204 00ba 00       		.byte	0
 3205 00bb 00       		.byte	0
 3206 00bc 00       		.byte	0
 3207 00bd 00       		.byte	0
 3208 00be 00       		.byte	0
 3209 00bf 00       		.byte	0
 3210 00c0 00       		.byte	0
 3211 00c1 00       		.byte	0
 3212 00c2 00       		.byte	0
 3213 00c3 00       		.byte	0
 3214 00c4 00       		.byte	0
 3215 00c5 00       		.byte	0
 3216 00c6 00       		.byte	0
 3217 00c7 00       		.byte	0
 3218 00c8 00       		.byte	0
 3219 00c9 00       		.byte	0
 3220 00ca 00       		.byte	0
 3221 00cb 00       		.byte	0
 3222 00cc 00       		.byte	0
 3223 00cd 00       		.byte	0
 3224 00ce 00       		.byte	0
 3225 00cf 00       		.byte	0
 3226 00d0 00       		.byte	0
 3227 00d1 00       		.byte	0
 3228 00d2 00       		.byte	0
 3229 00d3 00       		.byte	0
 3230 00d4 00       		.byte	0
 3231 00d5 00       		.byte	0
 3232 00d6 00       		.byte	0
 3233 00d7 FC       		.byte	-4
 3234 00d8 3F       		.byte	63
 3235 00d9 00       		.byte	0
 3236 00da 00       		.byte	0
 3237 00db 00       		.byte	0
 3238 00dc 00       		.byte	0
 3239 00dd 00       		.byte	0
 3240 00de C0       		.byte	-64
 3241 00df FF       		.byte	-1
 3242 00e0 FF       		.byte	-1
 3243 00e1 03       		.byte	3
 3244 00e2 00       		.byte	0
 3245 00e3 00       		.byte	0
 3246 00e4 00       		.byte	0
 3247 00e5 00       		.byte	0
 3248 00e6 F0       		.byte	-16
 3249 00e7 FF       		.byte	-1
 3250 00e8 FF       		.byte	-1
 3251 00e9 0F       		.byte	15
 3252 00ea 00       		.byte	0
 3253 00eb 00       		.byte	0
 3254 00ec 00       		.byte	0
 3255 00ed 00       		.byte	0
 3256 00ee FC       		.byte	-4
 3257 00ef FF       		.byte	-1
 3258 00f0 FF       		.byte	-1
 3259 00f1 3F       		.byte	63
 3260 00f2 00       		.byte	0
 3261 00f3 00       		.byte	0
 3262 00f4 00       		.byte	0
 3263 00f5 00       		.byte	0
 3264 00f6 FE       		.byte	-2
 3265 00f7 FF       		.byte	-1
 3266 00f8 FF       		.byte	-1
 3267 00f9 7F       		.byte	127
 3268 00fa 00       		.byte	0
 3269 00fb 00       		.byte	0
 3270 00fc 00       		.byte	0
 3271 00fd 80       		.byte	-128
 3272 00fe FF       		.byte	-1
 3273 00ff 1F       		.byte	31
 3274 0100 F8       		.byte	-8
 3275 0101 FF       		.byte	-1
 3276 0102 01       		.byte	1
 3277 0103 00       		.byte	0
 3278 0104 00       		.byte	0
 3279 0105 C0       		.byte	-64
 3280 0106 FF       		.byte	-1
 3281 0107 01       		.byte	1
 3282 0108 80       		.byte	-128
 3283 0109 FF       		.byte	-1
 3284 010a 03       		.byte	3
 3285 010b 00       		.byte	0
 3286 010c 00       		.byte	0
 3287 010d E0       		.byte	-32
 3288 010e 7F       		.byte	127
 3289 010f 00       		.byte	0
 3290 0110 00       		.byte	0
 3291 0111 FE       		.byte	-2
 3292 0112 07       		.byte	7
 3293 0113 00       		.byte	0
 3294 0114 00       		.byte	0
 3295 0115 F0       		.byte	-16
 3296 0116 1F       		.byte	31
 3297 0117 00       		.byte	0
 3298 0118 00       		.byte	0
 3299 0119 F8       		.byte	-8
 3300 011a 0F       		.byte	15
 3301 011b 00       		.byte	0
 3302 011c 00       		.byte	0
 3303 011d F8       		.byte	-8
 3304 011e 0F       		.byte	15
 3305 011f 00       		.byte	0
 3306 0120 00       		.byte	0
 3307 0121 F0       		.byte	-16
 3308 0122 1F       		.byte	31
 3309 0123 00       		.byte	0
 3310 0124 00       		.byte	0
 3311 0125 FC       		.byte	-4
 3312 0126 03       		.byte	3
 3313 0127 00       		.byte	0
 3314 0128 00       		.byte	0
 3315 0129 C0       		.byte	-64
 3316 012a 3F       		.byte	63
 3317 012b 00       		.byte	0
 3318 012c 00       		.byte	0
 3319 012d FC       		.byte	-4
 3320 012e 01       		.byte	1
 3321 012f 00       		.byte	0
 3322 0130 00       		.byte	0
 3323 0131 80       		.byte	-128
 3324 0132 3F       		.byte	63
 3325 0133 00       		.byte	0
 3326 0134 00       		.byte	0
 3327 0135 FE       		.byte	-2
 3328 0136 00       		.byte	0
 3329 0137 00       		.byte	0
 3330 0138 00       		.byte	0
 3331 0139 00       		.byte	0
 3332 013a 7F       		.byte	127
 3333 013b 00       		.byte	0
 3334 013c 00       		.byte	0
 3335 013d 7F       		.byte	127
 3336 013e 00       		.byte	0
 3337 013f 00       		.byte	0
 3338 0140 00       		.byte	0
 3339 0141 00       		.byte	0
 3340 0142 FE       		.byte	-2
 3341 0143 00       		.byte	0
 3342 0144 00       		.byte	0
 3343 0145 7F       		.byte	127
 3344 0146 00       		.byte	0
 3345 0147 00       		.byte	0
 3346 0148 00       		.byte	0
 3347 0149 00       		.byte	0
 3348 014a FE       		.byte	-2
 3349 014b 00       		.byte	0
 3350 014c 80       		.byte	-128
 3351 014d 3F       		.byte	63
 3352 014e 00       		.byte	0
 3353 014f 00       		.byte	0
 3354 0150 00       		.byte	0
 3355 0151 00       		.byte	0
 3356 0152 FC       		.byte	-4
 3357 0153 01       		.byte	1
 3358 0154 80       		.byte	-128
 3359 0155 1F       		.byte	31
 3360 0156 00       		.byte	0
 3361 0157 00       		.byte	0
 3362 0158 00       		.byte	0
 3363 0159 00       		.byte	0
 3364 015a F8       		.byte	-8
 3365 015b 01       		.byte	1
 3366 015c C0       		.byte	-64
 3367 015d 1F       		.byte	31
 3368 015e 00       		.byte	0
 3369 015f 00       		.byte	0
 3370 0160 00       		.byte	0
 3371 0161 00       		.byte	0
 3372 0162 F8       		.byte	-8
 3373 0163 03       		.byte	3
 3374 0164 C0       		.byte	-64
 3375 0165 0F       		.byte	15
 3376 0166 00       		.byte	0
 3377 0167 00       		.byte	0
 3378 0168 00       		.byte	0
 3379 0169 00       		.byte	0
 3380 016a F0       		.byte	-16
 3381 016b 03       		.byte	3
 3382 016c C0       		.byte	-64
 3383 016d 0F       		.byte	15
 3384 016e 00       		.byte	0
 3385 016f 00       		.byte	0
 3386 0170 00       		.byte	0
 3387 0171 00       		.byte	0
 3388 0172 F0       		.byte	-16
 3389 0173 03       		.byte	3
 3390 0174 C0       		.byte	-64
 3391 0175 07       		.byte	7
 3392 0176 00       		.byte	0
 3393 0177 00       		.byte	0
 3394 0178 00       		.byte	0
 3395 0179 00       		.byte	0
 3396 017a E0       		.byte	-32
 3397 017b 03       		.byte	3
 3398 017c E0       		.byte	-32
 3399 017d 07       		.byte	7
 3400 017e 00       		.byte	0
 3401 017f 00       		.byte	0
 3402 0180 00       		.byte	0
 3403 0181 00       		.byte	0
 3404 0182 E0       		.byte	-32
 3405 0183 07       		.byte	7
 3406 0184 E0       		.byte	-32
 3407 0185 07       		.byte	7
 3408 0186 00       		.byte	0
 3409 0187 00       		.byte	0
 3410 0188 00       		.byte	0
 3411 0189 00       		.byte	0
 3412 018a E0       		.byte	-32
 3413 018b 07       		.byte	7
 3414 018c E0       		.byte	-32
 3415 018d 07       		.byte	7
 3416 018e 00       		.byte	0
 3417 018f 00       		.byte	0
 3418 0190 00       		.byte	0
 3419 0191 00       		.byte	0
 3420 0192 E0       		.byte	-32
 3421 0193 07       		.byte	7
 3422 0194 E0       		.byte	-32
 3423 0195 03       		.byte	3
 3424 0196 00       		.byte	0
 3425 0197 00       		.byte	0
 3426 0198 00       		.byte	0
 3427 0199 00       		.byte	0
 3428 019a C0       		.byte	-64
 3429 019b 07       		.byte	7
 3430 019c E0       		.byte	-32
 3431 019d 03       		.byte	3
 3432 019e 00       		.byte	0
 3433 019f 00       		.byte	0
 3434 01a0 00       		.byte	0
 3435 01a1 00       		.byte	0
 3436 01a2 C0       		.byte	-64
 3437 01a3 07       		.byte	7
 3438 01a4 E0       		.byte	-32
 3439 01a5 03       		.byte	3
 3440 01a6 00       		.byte	0
 3441 01a7 00       		.byte	0
 3442 01a8 00       		.byte	0
 3443 01a9 00       		.byte	0
 3444 01aa C0       		.byte	-64
 3445 01ab 07       		.byte	7
 3446 01ac E0       		.byte	-32
 3447 01ad 03       		.byte	3
 3448 01ae 00       		.byte	0
 3449 01af 00       		.byte	0
 3450 01b0 00       		.byte	0
 3451 01b1 00       		.byte	0
 3452 01b2 C0       		.byte	-64
 3453 01b3 07       		.byte	7
 3454 01b4 E0       		.byte	-32
 3455 01b5 03       		.byte	3
 3456 01b6 00       		.byte	0
 3457 01b7 00       		.byte	0
 3458 01b8 00       		.byte	0
 3459 01b9 00       		.byte	0
 3460 01ba C0       		.byte	-64
 3461 01bb 07       		.byte	7
 3462 01bc E0       		.byte	-32
 3463 01bd 03       		.byte	3
 3464 01be 00       		.byte	0
 3465 01bf 00       		.byte	0
 3466 01c0 00       		.byte	0
 3467 01c1 00       		.byte	0
 3468 01c2 C0       		.byte	-64
 3469 01c3 07       		.byte	7
 3470 01c4 E0       		.byte	-32
 3471 01c5 07       		.byte	7
 3472 01c6 00       		.byte	0
 3473 01c7 00       		.byte	0
 3474 01c8 00       		.byte	0
 3475 01c9 00       		.byte	0
 3476 01ca E0       		.byte	-32
 3477 01cb 07       		.byte	7
 3478 01cc E0       		.byte	-32
 3479 01cd 07       		.byte	7
 3480 01ce 00       		.byte	0
 3481 01cf 00       		.byte	0
 3482 01d0 00       		.byte	0
 3483 01d1 00       		.byte	0
 3484 01d2 E0       		.byte	-32
 3485 01d3 07       		.byte	7
 3486 01d4 E0       		.byte	-32
 3487 01d5 07       		.byte	7
 3488 01d6 00       		.byte	0
 3489 01d7 00       		.byte	0
 3490 01d8 00       		.byte	0
 3491 01d9 00       		.byte	0
 3492 01da E0       		.byte	-32
 3493 01db 07       		.byte	7
 3494 01dc C0       		.byte	-64
 3495 01dd 07       		.byte	7
 3496 01de 00       		.byte	0
 3497 01df 00       		.byte	0
 3498 01e0 00       		.byte	0
 3499 01e1 00       		.byte	0
 3500 01e2 E0       		.byte	-32
 3501 01e3 03       		.byte	3
 3502 01e4 C0       		.byte	-64
 3503 01e5 0F       		.byte	15
 3504 01e6 00       		.byte	0
 3505 01e7 00       		.byte	0
 3506 01e8 00       		.byte	0
 3507 01e9 00       		.byte	0
 3508 01ea F0       		.byte	-16
 3509 01eb 03       		.byte	3
 3510 01ec C0       		.byte	-64
 3511 01ed 0F       		.byte	15
 3512 01ee 00       		.byte	0
 3513 01ef 00       		.byte	0
 3514 01f0 00       		.byte	0
 3515 01f1 00       		.byte	0
 3516 01f2 F0       		.byte	-16
 3517 01f3 03       		.byte	3
 3518 01f4 C0       		.byte	-64
 3519 01f5 1F       		.byte	31
 3520 01f6 00       		.byte	0
 3521 01f7 00       		.byte	0
 3522 01f8 00       		.byte	0
 3523 01f9 00       		.byte	0
 3524 01fa F8       		.byte	-8
 3525 01fb 03       		.byte	3
 3526 01fc 80       		.byte	-128
 3527 01fd 1F       		.byte	31
 3528 01fe 00       		.byte	0
 3529 01ff 00       		.byte	0
 3530 0200 00       		.byte	0
 3531 0201 00       		.byte	0
 3532 0202 F8       		.byte	-8
 3533 0203 01       		.byte	1
 3534 0204 80       		.byte	-128
 3535 0205 3F       		.byte	63
 3536 0206 00       		.byte	0
 3537 0207 00       		.byte	0
 3538 0208 00       		.byte	0
 3539 0209 00       		.byte	0
 3540 020a FC       		.byte	-4
 3541 020b 01       		.byte	1
 3542 020c 00       		.byte	0
 3543 020d 7F       		.byte	127
 3544 020e 00       		.byte	0
 3545 020f 00       		.byte	0
 3546 0210 00       		.byte	0
 3547 0211 00       		.byte	0
 3548 0212 FE       		.byte	-2
 3549 0213 00       		.byte	0
 3550 0214 00       		.byte	0
 3551 0215 7F       		.byte	127
 3552 0216 00       		.byte	0
 3553 0217 00       		.byte	0
 3554 0218 00       		.byte	0
 3555 0219 00       		.byte	0
 3556 021a FE       		.byte	-2
 3557 021b 00       		.byte	0
 3558 021c 00       		.byte	0
 3559 021d FE       		.byte	-2
 3560 021e 00       		.byte	0
 3561 021f 00       		.byte	0
 3562 0220 00       		.byte	0
 3563 0221 00       		.byte	0
 3564 0222 7F       		.byte	127
 3565 0223 00       		.byte	0
 3566 0224 00       		.byte	0
 3567 0225 FC       		.byte	-4
 3568 0226 01       		.byte	1
 3569 0227 00       		.byte	0
 3570 0228 00       		.byte	0
 3571 0229 80       		.byte	-128
 3572 022a 3F       		.byte	63
 3573 022b 00       		.byte	0
 3574 022c 00       		.byte	0
 3575 022d FC       		.byte	-4
 3576 022e 03       		.byte	3
 3577 022f 00       		.byte	0
 3578 0230 00       		.byte	0
 3579 0231 C0       		.byte	-64
 3580 0232 3F       		.byte	63
 3581 0233 00       		.byte	0
 3582 0234 00       		.byte	0
 3583 0235 F8       		.byte	-8
 3584 0236 0F       		.byte	15
 3585 0237 00       		.byte	0
 3586 0238 00       		.byte	0
 3587 0239 F0       		.byte	-16
 3588 023a 1F       		.byte	31
 3589 023b 00       		.byte	0
 3590 023c 00       		.byte	0
 3591 023d F0       		.byte	-16
 3592 023e 1F       		.byte	31
 3593 023f 00       		.byte	0
 3594 0240 00       		.byte	0
 3595 0241 F8       		.byte	-8
 3596 0242 0F       		.byte	15
 3597 0243 00       		.byte	0
 3598 0244 00       		.byte	0
 3599 0245 E0       		.byte	-32
 3600 0246 7F       		.byte	127
 3601 0247 00       		.byte	0
 3602 0248 00       		.byte	0
 3603 0249 FE       		.byte	-2
 3604 024a 07       		.byte	7
 3605 024b 00       		.byte	0
 3606 024c 00       		.byte	0
 3607 024d C0       		.byte	-64
 3608 024e FF       		.byte	-1
 3609 024f 01       		.byte	1
 3610 0250 80       		.byte	-128
 3611 0251 FF       		.byte	-1
 3612 0252 03       		.byte	3
 3613 0253 00       		.byte	0
 3614 0254 00       		.byte	0
 3615 0255 80       		.byte	-128
 3616 0256 FF       		.byte	-1
 3617 0257 1F       		.byte	31
 3618 0258 F8       		.byte	-8
 3619 0259 FF       		.byte	-1
 3620 025a 01       		.byte	1
 3621 025b 00       		.byte	0
 3622 025c 00       		.byte	0
 3623 025d 00       		.byte	0
 3624 025e FE       		.byte	-2
 3625 025f FF       		.byte	-1
 3626 0260 FF       		.byte	-1
 3627 0261 7F       		.byte	127
 3628 0262 00       		.byte	0
 3629 0263 00       		.byte	0
 3630 0264 00       		.byte	0
 3631 0265 00       		.byte	0
 3632 0266 FC       		.byte	-4
 3633 0267 FF       		.byte	-1
 3634 0268 FF       		.byte	-1
 3635 0269 3F       		.byte	63
 3636 026a 00       		.byte	0
 3637 026b 00       		.byte	0
 3638 026c 00       		.byte	0
 3639 026d 00       		.byte	0
 3640 026e F0       		.byte	-16
 3641 026f FF       		.byte	-1
 3642 0270 FF       		.byte	-1
 3643 0271 0F       		.byte	15
 3644 0272 00       		.byte	0
 3645 0273 00       		.byte	0
 3646 0274 00       		.byte	0
 3647 0275 00       		.byte	0
 3648 0276 C0       		.byte	-64
 3649 0277 FF       		.byte	-1
 3650 0278 FF       		.byte	-1
 3651 0279 03       		.byte	3
 3652 027a 00       		.byte	0
 3653 027b 00       		.byte	0
 3654 027c 00       		.byte	0
 3655 027d 00       		.byte	0
 3656 027e 00       		.byte	0
 3657 027f FC       		.byte	-4
 3658 0280 3F       		.byte	63
 3659 0281 00       		.byte	0
 3660 0282 00       		.byte	0
 3661 0283 00       		.byte	0
 3662 0284 00       		.byte	0
 3663 0285 00       		.byte	0
 3664 0286 00       		.byte	0
 3665 0287 00       		.byte	0
 3666 0288 00       		.byte	0
 3667 0289 00       		.byte	0
 3668 028a 00       		.byte	0
 3669 028b 00       		.byte	0
 3670 028c 00       		.byte	0
 3671 028d 00       		.byte	0
 3672 028e 00       		.byte	0
 3673 028f 00       		.byte	0
 3674 0290 00       		.byte	0
 3675 0291 00       		.byte	0
 3676 0292 00       		.byte	0
 3677 0293 00       		.byte	0
 3678 0294 00       		.byte	0
 3679 0295 00       		.byte	0
 3680 0296 00       		.byte	0
 3681 0297 00       		.byte	0
 3682 0298 00       		.byte	0
 3683 0299 00       		.byte	0
 3684 029a 00       		.byte	0
 3685 029b 00       		.byte	0
 3686 029c 00       		.byte	0
 3687 029d 00       		.byte	0
 3688 029e 00       		.byte	0
 3689 029f 00       		.byte	0
 3690 02a0 00       		.byte	0
 3691 02a1 00       		.byte	0
 3692 02a2 00       		.byte	0
 3693 02a3 00       		.byte	0
 3694 02a4 00       		.byte	0
 3695 02a5 00       		.byte	0
 3696 02a6 00       		.byte	0
 3697 02a7 00       		.byte	0
 3698 02a8 00       		.byte	0
 3699 02a9 00       		.byte	0
 3700 02aa 00       		.byte	0
 3701 02ab 00       		.byte	0
 3702              		.align	2
 3705              	big_cross_bits:
 3706 02ac 00       		.byte	0
 3707 02ad 00       		.byte	0
 3708 02ae 00       		.byte	0
 3709 02af 00       		.byte	0
 3710 02b0 00       		.byte	0
 3711 02b1 00       		.byte	0
 3712 02b2 00       		.byte	0
 3713 02b3 00       		.byte	0
 3714 02b4 00       		.byte	0
 3715 02b5 00       		.byte	0
 3716 02b6 00       		.byte	0
 3717 02b7 00       		.byte	0
 3718 02b8 00       		.byte	0
 3719 02b9 00       		.byte	0
 3720 02ba 00       		.byte	0
 3721 02bb 00       		.byte	0
 3722 02bc 00       		.byte	0
 3723 02bd 00       		.byte	0
 3724 02be 00       		.byte	0
 3725 02bf 00       		.byte	0
 3726 02c0 00       		.byte	0
 3727 02c1 00       		.byte	0
 3728 02c2 00       		.byte	0
 3729 02c3 00       		.byte	0
 3730 02c4 78       		.byte	120
 3731 02c5 00       		.byte	0
 3732 02c6 00       		.byte	0
 3733 02c7 00       		.byte	0
 3734 02c8 00       		.byte	0
 3735 02c9 00       		.byte	0
 3736 02ca 00       		.byte	0
 3737 02cb 1E       		.byte	30
 3738 02cc F8       		.byte	-8
 3739 02cd 00       		.byte	0
 3740 02ce 00       		.byte	0
 3741 02cf 00       		.byte	0
 3742 02d0 00       		.byte	0
 3743 02d1 00       		.byte	0
 3744 02d2 00       		.byte	0
 3745 02d3 1F       		.byte	31
 3746 02d4 F8       		.byte	-8
 3747 02d5 01       		.byte	1
 3748 02d6 00       		.byte	0
 3749 02d7 00       		.byte	0
 3750 02d8 00       		.byte	0
 3751 02d9 00       		.byte	0
 3752 02da 80       		.byte	-128
 3753 02db 1F       		.byte	31
 3754 02dc F8       		.byte	-8
 3755 02dd 03       		.byte	3
 3756 02de 00       		.byte	0
 3757 02df 00       		.byte	0
 3758 02e0 00       		.byte	0
 3759 02e1 00       		.byte	0
 3760 02e2 C0       		.byte	-64
 3761 02e3 1F       		.byte	31
 3762 02e4 F0       		.byte	-16
 3763 02e5 07       		.byte	7
 3764 02e6 00       		.byte	0
 3765 02e7 00       		.byte	0
 3766 02e8 00       		.byte	0
 3767 02e9 00       		.byte	0
 3768 02ea E0       		.byte	-32
 3769 02eb 0F       		.byte	15
 3770 02ec E0       		.byte	-32
 3771 02ed 0F       		.byte	15
 3772 02ee 00       		.byte	0
 3773 02ef 00       		.byte	0
 3774 02f0 00       		.byte	0
 3775 02f1 00       		.byte	0
 3776 02f2 F0       		.byte	-16
 3777 02f3 07       		.byte	7
 3778 02f4 C0       		.byte	-64
 3779 02f5 1F       		.byte	31
 3780 02f6 00       		.byte	0
 3781 02f7 00       		.byte	0
 3782 02f8 00       		.byte	0
 3783 02f9 00       		.byte	0
 3784 02fa F8       		.byte	-8
 3785 02fb 03       		.byte	3
 3786 02fc 80       		.byte	-128
 3787 02fd 3F       		.byte	63
 3788 02fe 00       		.byte	0
 3789 02ff 00       		.byte	0
 3790 0300 00       		.byte	0
 3791 0301 00       		.byte	0
 3792 0302 FC       		.byte	-4
 3793 0303 01       		.byte	1
 3794 0304 00       		.byte	0
 3795 0305 7F       		.byte	127
 3796 0306 00       		.byte	0
 3797 0307 00       		.byte	0
 3798 0308 00       		.byte	0
 3799 0309 00       		.byte	0
 3800 030a FE       		.byte	-2
 3801 030b 00       		.byte	0
 3802 030c 00       		.byte	0
 3803 030d FE       		.byte	-2
 3804 030e 00       		.byte	0
 3805 030f 00       		.byte	0
 3806 0310 00       		.byte	0
 3807 0311 00       		.byte	0
 3808 0312 7F       		.byte	127
 3809 0313 00       		.byte	0
 3810 0314 00       		.byte	0
 3811 0315 FC       		.byte	-4
 3812 0316 01       		.byte	1
 3813 0317 00       		.byte	0
 3814 0318 00       		.byte	0
 3815 0319 80       		.byte	-128
 3816 031a 3F       		.byte	63
 3817 031b 00       		.byte	0
 3818 031c 00       		.byte	0
 3819 031d F8       		.byte	-8
 3820 031e 03       		.byte	3
 3821 031f 00       		.byte	0
 3822 0320 00       		.byte	0
 3823 0321 C0       		.byte	-64
 3824 0322 1F       		.byte	31
 3825 0323 00       		.byte	0
 3826 0324 00       		.byte	0
 3827 0325 F0       		.byte	-16
 3828 0326 07       		.byte	7
 3829 0327 00       		.byte	0
 3830 0328 00       		.byte	0
 3831 0329 E0       		.byte	-32
 3832 032a 0F       		.byte	15
 3833 032b 00       		.byte	0
 3834 032c 00       		.byte	0
 3835 032d E0       		.byte	-32
 3836 032e 0F       		.byte	15
 3837 032f 00       		.byte	0
 3838 0330 00       		.byte	0
 3839 0331 F0       		.byte	-16
 3840 0332 07       		.byte	7
 3841 0333 00       		.byte	0
 3842 0334 00       		.byte	0
 3843 0335 C0       		.byte	-64
 3844 0336 1F       		.byte	31
 3845 0337 00       		.byte	0
 3846 0338 00       		.byte	0
 3847 0339 F8       		.byte	-8
 3848 033a 03       		.byte	3
 3849 033b 00       		.byte	0
 3850 033c 00       		.byte	0
 3851 033d 80       		.byte	-128
 3852 033e 3F       		.byte	63
 3853 033f 00       		.byte	0
 3854 0340 00       		.byte	0
 3855 0341 FC       		.byte	-4
 3856 0342 01       		.byte	1
 3857 0343 00       		.byte	0
 3858 0344 00       		.byte	0
 3859 0345 00       		.byte	0
 3860 0346 7F       		.byte	127
 3861 0347 00       		.byte	0
 3862 0348 00       		.byte	0
 3863 0349 FE       		.byte	-2
 3864 034a 00       		.byte	0
 3865 034b 00       		.byte	0
 3866 034c 00       		.byte	0
 3867 034d 00       		.byte	0
 3868 034e FE       		.byte	-2
 3869 034f 00       		.byte	0
 3870 0350 00       		.byte	0
 3871 0351 7F       		.byte	127
 3872 0352 00       		.byte	0
 3873 0353 00       		.byte	0
 3874 0354 00       		.byte	0
 3875 0355 00       		.byte	0
 3876 0356 FC       		.byte	-4
 3877 0357 01       		.byte	1
 3878 0358 80       		.byte	-128
 3879 0359 3F       		.byte	63
 3880 035a 00       		.byte	0
 3881 035b 00       		.byte	0
 3882 035c 00       		.byte	0
 3883 035d 00       		.byte	0
 3884 035e F8       		.byte	-8
 3885 035f 03       		.byte	3
 3886 0360 C0       		.byte	-64
 3887 0361 1F       		.byte	31
 3888 0362 00       		.byte	0
 3889 0363 00       		.byte	0
 3890 0364 00       		.byte	0
 3891 0365 00       		.byte	0
 3892 0366 F0       		.byte	-16
 3893 0367 07       		.byte	7
 3894 0368 E0       		.byte	-32
 3895 0369 0F       		.byte	15
 3896 036a 00       		.byte	0
 3897 036b 00       		.byte	0
 3898 036c 00       		.byte	0
 3899 036d 00       		.byte	0
 3900 036e E0       		.byte	-32
 3901 036f 0F       		.byte	15
 3902 0370 F0       		.byte	-16
 3903 0371 07       		.byte	7
 3904 0372 00       		.byte	0
 3905 0373 00       		.byte	0
 3906 0374 00       		.byte	0
 3907 0375 00       		.byte	0
 3908 0376 C0       		.byte	-64
 3909 0377 1F       		.byte	31
 3910 0378 F8       		.byte	-8
 3911 0379 03       		.byte	3
 3912 037a 00       		.byte	0
 3913 037b 00       		.byte	0
 3914 037c 00       		.byte	0
 3915 037d 00       		.byte	0
 3916 037e 80       		.byte	-128
 3917 037f 3F       		.byte	63
 3918 0380 FC       		.byte	-4
 3919 0381 01       		.byte	1
 3920 0382 00       		.byte	0
 3921 0383 00       		.byte	0
 3922 0384 00       		.byte	0
 3923 0385 00       		.byte	0
 3924 0386 00       		.byte	0
 3925 0387 7F       		.byte	127
 3926 0388 FE       		.byte	-2
 3927 0389 00       		.byte	0
 3928 038a 00       		.byte	0
 3929 038b 00       		.byte	0
 3930 038c 00       		.byte	0
 3931 038d 00       		.byte	0
 3932 038e 00       		.byte	0
 3933 038f FE       		.byte	-2
 3934 0390 7F       		.byte	127
 3935 0391 00       		.byte	0
 3936 0392 00       		.byte	0
 3937 0393 00       		.byte	0
 3938 0394 00       		.byte	0
 3939 0395 00       		.byte	0
 3940 0396 00       		.byte	0
 3941 0397 FC       		.byte	-4
 3942 0398 3F       		.byte	63
 3943 0399 00       		.byte	0
 3944 039a 00       		.byte	0
 3945 039b 00       		.byte	0
 3946 039c 00       		.byte	0
 3947 039d 00       		.byte	0
 3948 039e 00       		.byte	0
 3949 039f F8       		.byte	-8
 3950 03a0 1F       		.byte	31
 3951 03a1 00       		.byte	0
 3952 03a2 00       		.byte	0
 3953 03a3 00       		.byte	0
 3954 03a4 00       		.byte	0
 3955 03a5 00       		.byte	0
 3956 03a6 00       		.byte	0
 3957 03a7 F0       		.byte	-16
 3958 03a8 0F       		.byte	15
 3959 03a9 00       		.byte	0
 3960 03aa 00       		.byte	0
 3961 03ab 00       		.byte	0
 3962 03ac 00       		.byte	0
 3963 03ad 00       		.byte	0
 3964 03ae 00       		.byte	0
 3965 03af F0       		.byte	-16
 3966 03b0 0F       		.byte	15
 3967 03b1 00       		.byte	0
 3968 03b2 00       		.byte	0
 3969 03b3 00       		.byte	0
 3970 03b4 00       		.byte	0
 3971 03b5 00       		.byte	0
 3972 03b6 00       		.byte	0
 3973 03b7 F8       		.byte	-8
 3974 03b8 1F       		.byte	31
 3975 03b9 00       		.byte	0
 3976 03ba 00       		.byte	0
 3977 03bb 00       		.byte	0
 3978 03bc 00       		.byte	0
 3979 03bd 00       		.byte	0
 3980 03be 00       		.byte	0
 3981 03bf FC       		.byte	-4
 3982 03c0 3F       		.byte	63
 3983 03c1 00       		.byte	0
 3984 03c2 00       		.byte	0
 3985 03c3 00       		.byte	0
 3986 03c4 00       		.byte	0
 3987 03c5 00       		.byte	0
 3988 03c6 00       		.byte	0
 3989 03c7 FE       		.byte	-2
 3990 03c8 7F       		.byte	127
 3991 03c9 00       		.byte	0
 3992 03ca 00       		.byte	0
 3993 03cb 00       		.byte	0
 3994 03cc 00       		.byte	0
 3995 03cd 00       		.byte	0
 3996 03ce 00       		.byte	0
 3997 03cf 7F       		.byte	127
 3998 03d0 FE       		.byte	-2
 3999 03d1 00       		.byte	0
 4000 03d2 00       		.byte	0
 4001 03d3 00       		.byte	0
 4002 03d4 00       		.byte	0
 4003 03d5 00       		.byte	0
 4004 03d6 80       		.byte	-128
 4005 03d7 3F       		.byte	63
 4006 03d8 FC       		.byte	-4
 4007 03d9 01       		.byte	1
 4008 03da 00       		.byte	0
 4009 03db 00       		.byte	0
 4010 03dc 00       		.byte	0
 4011 03dd 00       		.byte	0
 4012 03de C0       		.byte	-64
 4013 03df 1F       		.byte	31
 4014 03e0 F8       		.byte	-8
 4015 03e1 03       		.byte	3
 4016 03e2 00       		.byte	0
 4017 03e3 00       		.byte	0
 4018 03e4 00       		.byte	0
 4019 03e5 00       		.byte	0
 4020 03e6 E0       		.byte	-32
 4021 03e7 0F       		.byte	15
 4022 03e8 F0       		.byte	-16
 4023 03e9 07       		.byte	7
 4024 03ea 00       		.byte	0
 4025 03eb 00       		.byte	0
 4026 03ec 00       		.byte	0
 4027 03ed 00       		.byte	0
 4028 03ee F0       		.byte	-16
 4029 03ef 07       		.byte	7
 4030 03f0 E0       		.byte	-32
 4031 03f1 0F       		.byte	15
 4032 03f2 00       		.byte	0
 4033 03f3 00       		.byte	0
 4034 03f4 00       		.byte	0
 4035 03f5 00       		.byte	0
 4036 03f6 F8       		.byte	-8
 4037 03f7 03       		.byte	3
 4038 03f8 C0       		.byte	-64
 4039 03f9 1F       		.byte	31
 4040 03fa 00       		.byte	0
 4041 03fb 00       		.byte	0
 4042 03fc 00       		.byte	0
 4043 03fd 00       		.byte	0
 4044 03fe FC       		.byte	-4
 4045 03ff 01       		.byte	1
 4046 0400 80       		.byte	-128
 4047 0401 3F       		.byte	63
 4048 0402 00       		.byte	0
 4049 0403 00       		.byte	0
 4050 0404 00       		.byte	0
 4051 0405 00       		.byte	0
 4052 0406 FE       		.byte	-2
 4053 0407 00       		.byte	0
 4054 0408 00       		.byte	0
 4055 0409 7F       		.byte	127
 4056 040a 00       		.byte	0
 4057 040b 00       		.byte	0
 4058 040c 00       		.byte	0
 4059 040d 00       		.byte	0
 4060 040e 7F       		.byte	127
 4061 040f 00       		.byte	0
 4062 0410 00       		.byte	0
 4063 0411 FE       		.byte	-2
 4064 0412 00       		.byte	0
 4065 0413 00       		.byte	0
 4066 0414 00       		.byte	0
 4067 0415 80       		.byte	-128
 4068 0416 3F       		.byte	63
 4069 0417 00       		.byte	0
 4070 0418 00       		.byte	0
 4071 0419 FC       		.byte	-4
 4072 041a 01       		.byte	1
 4073 041b 00       		.byte	0
 4074 041c 00       		.byte	0
 4075 041d C0       		.byte	-64
 4076 041e 1F       		.byte	31
 4077 041f 00       		.byte	0
 4078 0420 00       		.byte	0
 4079 0421 F8       		.byte	-8
 4080 0422 03       		.byte	3
 4081 0423 00       		.byte	0
 4082 0424 00       		.byte	0
 4083 0425 E0       		.byte	-32
 4084 0426 0F       		.byte	15
 4085 0427 00       		.byte	0
 4086 0428 00       		.byte	0
 4087 0429 F0       		.byte	-16
 4088 042a 07       		.byte	7
 4089 042b 00       		.byte	0
 4090 042c 00       		.byte	0
 4091 042d F0       		.byte	-16
 4092 042e 07       		.byte	7
 4093 042f 00       		.byte	0
 4094 0430 00       		.byte	0
 4095 0431 E0       		.byte	-32
 4096 0432 0F       		.byte	15
 4097 0433 00       		.byte	0
 4098 0434 00       		.byte	0
 4099 0435 F8       		.byte	-8
 4100 0436 03       		.byte	3
 4101 0437 00       		.byte	0
 4102 0438 00       		.byte	0
 4103 0439 C0       		.byte	-64
 4104 043a 1F       		.byte	31
 4105 043b 00       		.byte	0
 4106 043c 00       		.byte	0
 4107 043d FC       		.byte	-4
 4108 043e 01       		.byte	1
 4109 043f 00       		.byte	0
 4110 0440 00       		.byte	0
 4111 0441 80       		.byte	-128
 4112 0442 3F       		.byte	63
 4113 0443 00       		.byte	0
 4114 0444 00       		.byte	0
 4115 0445 FE       		.byte	-2
 4116 0446 00       		.byte	0
 4117 0447 00       		.byte	0
 4118 0448 00       		.byte	0
 4119 0449 00       		.byte	0
 4120 044a 7F       		.byte	127
 4121 044b 00       		.byte	0
 4122 044c 00       		.byte	0
 4123 044d 7F       		.byte	127
 4124 044e 00       		.byte	0
 4125 044f 00       		.byte	0
 4126 0450 00       		.byte	0
 4127 0451 00       		.byte	0
 4128 0452 FE       		.byte	-2
 4129 0453 00       		.byte	0
 4130 0454 80       		.byte	-128
 4131 0455 3F       		.byte	63
 4132 0456 00       		.byte	0
 4133 0457 00       		.byte	0
 4134 0458 00       		.byte	0
 4135 0459 00       		.byte	0
 4136 045a FC       		.byte	-4
 4137 045b 01       		.byte	1
 4138 045c C0       		.byte	-64
 4139 045d 1F       		.byte	31
 4140 045e 00       		.byte	0
 4141 045f 00       		.byte	0
 4142 0460 00       		.byte	0
 4143 0461 00       		.byte	0
 4144 0462 F8       		.byte	-8
 4145 0463 03       		.byte	3
 4146 0464 E0       		.byte	-32
 4147 0465 0F       		.byte	15
 4148 0466 00       		.byte	0
 4149 0467 00       		.byte	0
 4150 0468 00       		.byte	0
 4151 0469 00       		.byte	0
 4152 046a F0       		.byte	-16
 4153 046b 07       		.byte	7
 4154 046c F0       		.byte	-16
 4155 046d 07       		.byte	7
 4156 046e 00       		.byte	0
 4157 046f 00       		.byte	0
 4158 0470 00       		.byte	0
 4159 0471 00       		.byte	0
 4160 0472 E0       		.byte	-32
 4161 0473 0F       		.byte	15
 4162 0474 F8       		.byte	-8
 4163 0475 03       		.byte	3
 4164 0476 00       		.byte	0
 4165 0477 00       		.byte	0
 4166 0478 00       		.byte	0
 4167 0479 00       		.byte	0
 4168 047a C0       		.byte	-64
 4169 047b 1F       		.byte	31
 4170 047c F8       		.byte	-8
 4171 047d 01       		.byte	1
 4172 047e 00       		.byte	0
 4173 047f 00       		.byte	0
 4174 0480 00       		.byte	0
 4175 0481 00       		.byte	0
 4176 0482 80       		.byte	-128
 4177 0483 1F       		.byte	31
 4178 0484 F8       		.byte	-8
 4179 0485 00       		.byte	0
 4180 0486 00       		.byte	0
 4181 0487 00       		.byte	0
 4182 0488 00       		.byte	0
 4183 0489 00       		.byte	0
 4184 048a 00       		.byte	0
 4185 048b 1F       		.byte	31
 4186 048c 78       		.byte	120
 4187 048d 00       		.byte	0
 4188 048e 00       		.byte	0
 4189 048f 00       		.byte	0
 4190 0490 00       		.byte	0
 4191 0491 00       		.byte	0
 4192 0492 00       		.byte	0
 4193 0493 1E       		.byte	30
 4194 0494 00       		.byte	0
 4195 0495 00       		.byte	0
 4196 0496 00       		.byte	0
 4197 0497 00       		.byte	0
 4198 0498 00       		.byte	0
 4199 0499 00       		.byte	0
 4200 049a 00       		.byte	0
 4201 049b 00       		.byte	0
 4202 049c 00       		.byte	0
 4203 049d 00       		.byte	0
 4204 049e 00       		.byte	0
 4205 049f 00       		.byte	0
 4206 04a0 00       		.byte	0
 4207 04a1 00       		.byte	0
 4208 04a2 00       		.byte	0
 4209 04a3 00       		.byte	0
 4210 04a4 00       		.byte	0
 4211 04a5 00       		.byte	0
 4212 04a6 00       		.byte	0
 4213 04a7 00       		.byte	0
 4214 04a8 00       		.byte	0
 4215 04a9 00       		.byte	0
 4216 04aa 00       		.byte	0
 4217 04ab 00       		.byte	0
 4218              		.comm	grid,9,4
 4219              		.comm	gameState,1,1
 4220              		.comm	turn,1,1
 4221              		.global	circle
 4222              		.align	2
 4225              	circle:
 4226 04ac 14       		.byte	20
 4227 04ad 14       		.byte	20
 4228 04ae 0000     		.space	2
 4229 04b0 34000000 		.word	circle_bits
 4230              		.global	cross
 4231              		.align	2
 4234              	cross:
 4235 04b4 14       		.byte	20
 4236 04b5 14       		.byte	20
 4237 04b6 0000     		.space	2
 4238 04b8 70000000 		.word	cross_bits
 4239              		.global	big_circle
 4240              		.align	2
 4243              	big_circle:
 4244 04bc 40       		.byte	64
 4245 04bd 40       		.byte	64
 4246 04be 0000     		.space	2
 4247 04c0 AC000000 		.word	big_circle_bits
 4248              		.global	big_cross
 4249              		.align	2
 4252              	big_cross:
 4253 04c4 40       		.byte	64
 4254 04c5 40       		.byte	64
 4255 04c6 0000     		.space	2
 4256 04c8 AC020000 		.word	big_cross_bits
 4257              		.align	2
 4260              	ball:
 4261 04cc 00000000 		.word	ball_geometry
 4262 04d0 00000000 		.word	0
 4263 04d4 00000000 		.word	0
 4264 04d8 0A000000 		.word	10
 4265 04dc 0A000000 		.word	10
 4266 04e0 00000000 		.word	draw_object
 4267 04e4 00000000 		.word	move_object
 4268 04e8 00000000 		.word	set_object_speed
 4269              		.text
 4270              		.align	1
 4271              		.global	drawgrid
 4272              		.syntax unified
 4273              		.code	16
 4274              		.thumb_func
 4275              		.fpu softvfp
 4277              	drawgrid:
 4278              	.LFB41:
 4279              		.file 6 "/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c"
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
  11:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** #include "circle.xbm"
  12:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** #include "cross.xbm"
  13:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** #include "big_circle.xbm"
  14:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** #include "big_cross.xbm"
  15:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** 
  16:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** char grid[9];
  17:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** char gameState;
  18:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** char turn;
  19:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** sprite circle = { circle_width, circle_height, circle_bits };
  20:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** sprite cross = { cross_width, cross_height, cross_bits };
  21:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** 
  22:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** sprite big_circle = { big_circle_width, big_circle_height, big_circle_bits };
  23:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** sprite big_cross = { big_cross_width, big_cross_height, big_cross_bits };
  24:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** 
  25:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** static OBJECT ball = {
  26:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     &ball_geometry,  // geometry for a ball
  27:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     0, 0,            // move direction (x,y)
  28:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     10, 10,          // position (x,y)
  29:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     draw_object,     // draw method
  30:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     move_object,     // move method
  31:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     set_object_speed // set-speed method
  32:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** };
  33:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** 
  34:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** void drawgrid(void)
  35:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** {
 4280              		.loc 6 35 1
 4281              		.cfi_startproc
 4282              		@ args = 0, pretend = 0, frame = 8
 4283              		@ frame_needed = 1, uses_anonymous_args = 0
 4284 0cb4 80B5     		push	{r7, lr}
 4285              		.cfi_def_cfa_offset 8
 4286              		.cfi_offset 7, -8
 4287              		.cfi_offset 14, -4
 4288 0cb6 82B0     		sub	sp, sp, #8
 4289              		.cfi_def_cfa_offset 16
 4290 0cb8 00AF     		add	r7, sp, #0
 4291              		.cfi_def_cfa_register 7
  36:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     unsigned i;
  37:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     for(i = 0; i < 64; i++) {
 4292              		.loc 6 37 11
 4293 0cba 0023     		movs	r3, #0
 4294 0cbc 7B60     		str	r3, [r7, #4]
 4295              		.loc 6 37 5
 4296 0cbe 07E0     		b	.L166
 4297              	.L167:
  38:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(i, 21);
 4298              		.loc 6 38 9 discriminator 3
 4299 0cc0 7B68     		ldr	r3, [r7, #4]
 4300 0cc2 1521     		movs	r1, #21
 4301 0cc4 1800     		movs	r0, r3
 4302 0cc6 FFF7FEFF 		bl	pixel
  37:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(i, 21);
 4303              		.loc 6 37 25 discriminator 3
 4304 0cca 7B68     		ldr	r3, [r7, #4]
 4305 0ccc 0133     		adds	r3, r3, #1
 4306 0cce 7B60     		str	r3, [r7, #4]
 4307              	.L166:
  37:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(i, 21);
 4308              		.loc 6 37 5 discriminator 1
 4309 0cd0 7B68     		ldr	r3, [r7, #4]
 4310 0cd2 3F2B     		cmp	r3, #63
 4311 0cd4 F4D9     		bls	.L167
  39:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     }
  40:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     for(i = 0; i < 64; i++) {
 4312              		.loc 6 40 11
 4313 0cd6 0023     		movs	r3, #0
 4314 0cd8 7B60     		str	r3, [r7, #4]
 4315              		.loc 6 40 5
 4316 0cda 07E0     		b	.L168
 4317              	.L169:
  41:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(21, i);
 4318              		.loc 6 41 9 discriminator 3
 4319 0cdc 7B68     		ldr	r3, [r7, #4]
 4320 0cde 1900     		movs	r1, r3
 4321 0ce0 1520     		movs	r0, #21
 4322 0ce2 FFF7FEFF 		bl	pixel
  40:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(21, i);
 4323              		.loc 6 40 25 discriminator 3
 4324 0ce6 7B68     		ldr	r3, [r7, #4]
 4325 0ce8 0133     		adds	r3, r3, #1
 4326 0cea 7B60     		str	r3, [r7, #4]
 4327              	.L168:
  40:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(21, i);
 4328              		.loc 6 40 5 discriminator 1
 4329 0cec 7B68     		ldr	r3, [r7, #4]
 4330 0cee 3F2B     		cmp	r3, #63
 4331 0cf0 F4D9     		bls	.L169
  42:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     }
  43:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     for(i = 0; i < 64; i++) {
 4332              		.loc 6 43 11
 4333 0cf2 0023     		movs	r3, #0
 4334 0cf4 7B60     		str	r3, [r7, #4]
 4335              		.loc 6 43 5
 4336 0cf6 07E0     		b	.L170
 4337              	.L171:
  44:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(i, 43);
 4338              		.loc 6 44 9 discriminator 3
 4339 0cf8 7B68     		ldr	r3, [r7, #4]
 4340 0cfa 2B21     		movs	r1, #43
 4341 0cfc 1800     		movs	r0, r3
 4342 0cfe FFF7FEFF 		bl	pixel
  43:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(i, 43);
 4343              		.loc 6 43 25 discriminator 3
 4344 0d02 7B68     		ldr	r3, [r7, #4]
 4345 0d04 0133     		adds	r3, r3, #1
 4346 0d06 7B60     		str	r3, [r7, #4]
 4347              	.L170:
  43:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(i, 43);
 4348              		.loc 6 43 5 discriminator 1
 4349 0d08 7B68     		ldr	r3, [r7, #4]
 4350 0d0a 3F2B     		cmp	r3, #63
 4351 0d0c F4D9     		bls	.L171
  45:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     }
  46:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     for(i = 0; i < 64; i++) {
 4352              		.loc 6 46 11
 4353 0d0e 0023     		movs	r3, #0
 4354 0d10 7B60     		str	r3, [r7, #4]
 4355              		.loc 6 46 5
 4356 0d12 07E0     		b	.L172
 4357              	.L173:
  47:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(43, i);
 4358              		.loc 6 47 9 discriminator 3
 4359 0d14 7B68     		ldr	r3, [r7, #4]
 4360 0d16 1900     		movs	r1, r3
 4361 0d18 2B20     		movs	r0, #43
 4362 0d1a FFF7FEFF 		bl	pixel
  46:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(43, i);
 4363              		.loc 6 46 25 discriminator 3
 4364 0d1e 7B68     		ldr	r3, [r7, #4]
 4365 0d20 0133     		adds	r3, r3, #1
 4366 0d22 7B60     		str	r3, [r7, #4]
 4367              	.L172:
  46:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         pixel(43, i);
 4368              		.loc 6 46 5 discriminator 1
 4369 0d24 7B68     		ldr	r3, [r7, #4]
 4370 0d26 3F2B     		cmp	r3, #63
 4371 0d28 F4D9     		bls	.L173
 4372              	.LBB9:
  48:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     }
  49:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** 
  50:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     for(char i = 0; i < 9; i++) {
 4373              		.loc 6 50 14
 4374 0d2a FB1C     		adds	r3, r7, #3
 4375 0d2c 0022     		movs	r2, #0
 4376 0d2e 1A70     		strb	r2, [r3]
 4377              		.loc 6 50 5
 4378 0d30 1DE0     		b	.L174
 4379              	.L177:
  51:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         if(grid[i] == 1) {
 4380              		.loc 6 51 16
 4381 0d32 FB1C     		adds	r3, r7, #3
 4382 0d34 1B78     		ldrb	r3, [r3]
 4383 0d36 124A     		ldr	r2, .L178
 4384 0d38 D35C     		ldrb	r3, [r2, r3]
 4385              		.loc 6 51 11
 4386 0d3a 012B     		cmp	r3, #1
 4387 0d3c 06D1     		bne	.L175
 4388              	.LBB10:
  52:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****             draw_in_grid(1, i);
 4389              		.loc 6 52 13
 4390 0d3e FB1C     		adds	r3, r7, #3
 4391 0d40 1B78     		ldrb	r3, [r3]
 4392 0d42 1900     		movs	r1, r3
 4393 0d44 0120     		movs	r0, #1
 4394 0d46 FFF7FEFF 		bl	draw_in_grid
 4395              	.LBE10:
 4396 0d4a 0BE0     		b	.L176
 4397              	.L175:
  53:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         } else if(grid[i] == 2) {
 4398              		.loc 6 53 23
 4399 0d4c FB1C     		adds	r3, r7, #3
 4400 0d4e 1B78     		ldrb	r3, [r3]
 4401 0d50 0B4A     		ldr	r2, .L178
 4402 0d52 D35C     		ldrb	r3, [r2, r3]
 4403              		.loc 6 53 18
 4404 0d54 022B     		cmp	r3, #2
 4405 0d56 05D1     		bne	.L176
 4406              	.LBB11:
  54:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****             draw_in_grid(2, i);
 4407              		.loc 6 54 13
 4408 0d58 FB1C     		adds	r3, r7, #3
 4409 0d5a 1B78     		ldrb	r3, [r3]
 4410 0d5c 1900     		movs	r1, r3
 4411 0d5e 0220     		movs	r0, #2
 4412 0d60 FFF7FEFF 		bl	draw_in_grid
 4413              	.L176:
 4414              	.LBE11:
  50:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         if(grid[i] == 1) {
 4415              		.loc 6 50 29 discriminator 2
 4416 0d64 FB1C     		adds	r3, r7, #3
 4417 0d66 1A78     		ldrb	r2, [r3]
 4418 0d68 FB1C     		adds	r3, r7, #3
 4419 0d6a 0132     		adds	r2, r2, #1
 4420 0d6c 1A70     		strb	r2, [r3]
 4421              	.L174:
  50:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         if(grid[i] == 1) {
 4422              		.loc 6 50 5 discriminator 1
 4423 0d6e FB1C     		adds	r3, r7, #3
 4424 0d70 1B78     		ldrb	r3, [r3]
 4425 0d72 082B     		cmp	r3, #8
 4426 0d74 DDD9     		bls	.L177
 4427              	.LBE9:
  55:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         }
  56:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     }
  57:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** }
 4428              		.loc 6 57 1
 4429 0d76 C046     		nop
 4430 0d78 BD46     		mov	sp, r7
 4431 0d7a 02B0     		add	sp, sp, #8
 4432              		@ sp needed
 4433 0d7c 80BD     		pop	{r7, pc}
 4434              	.L179:
 4435 0d7e C046     		.align	2
 4436              	.L178:
 4437 0d80 00000000 		.word	grid
 4438              		.cfi_endproc
 4439              	.LFE41:
 4441              		.align	1
 4442              		.global	draw_in_grid
 4443              		.syntax unified
 4444              		.code	16
 4445              		.thumb_func
 4446              		.fpu softvfp
 4448              	draw_in_grid:
 4449              	.LFB42:
  58:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** void draw_in_grid(char player, char i)
  59:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** {
 4450              		.loc 6 59 1
 4451              		.cfi_startproc
 4452              		@ args = 0, pretend = 0, frame = 16
 4453              		@ frame_needed = 1, uses_anonymous_args = 0
 4454 0d84 80B5     		push	{r7, lr}
 4455              		.cfi_def_cfa_offset 8
 4456              		.cfi_offset 7, -8
 4457              		.cfi_offset 14, -4
 4458 0d86 84B0     		sub	sp, sp, #16
 4459              		.cfi_def_cfa_offset 24
 4460 0d88 00AF     		add	r7, sp, #0
 4461              		.cfi_def_cfa_register 7
 4462 0d8a 0200     		movs	r2, r0
 4463 0d8c FB1D     		adds	r3, r7, #7
 4464 0d8e 1A70     		strb	r2, [r3]
 4465 0d90 BB1D     		adds	r3, r7, #6
 4466 0d92 0A1C     		adds	r2, r1, #0
 4467 0d94 1A70     		strb	r2, [r3]
  60:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     char* s;
  61:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     if(player == 1) {
 4468              		.loc 6 61 7
 4469 0d96 FB1D     		adds	r3, r7, #7
 4470 0d98 1B78     		ldrb	r3, [r3]
 4471 0d9a 012B     		cmp	r3, #1
 4472 0d9c 02D1     		bne	.L181
  62:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         s = &cross;
 4473              		.loc 6 62 11
 4474 0d9e 284B     		ldr	r3, .L195
 4475 0da0 FB60     		str	r3, [r7, #12]
 4476 0da2 01E0     		b	.L182
 4477              	.L181:
  63:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     } else {
  64:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         s = &circle;
 4478              		.loc 6 64 11
 4479 0da4 274B     		ldr	r3, .L195+4
 4480 0da6 FB60     		str	r3, [r7, #12]
 4481              	.L182:
  65:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     }
  66:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     switch(i) {
 4482              		.loc 6 66 5
 4483 0da8 BB1D     		adds	r3, r7, #6
 4484 0daa 1B78     		ldrb	r3, [r3]
 4485 0dac 082B     		cmp	r3, #8
 4486 0dae 43D8     		bhi	.L194
 4487 0db0 9A00     		lsls	r2, r3, #2
 4488 0db2 254B     		ldr	r3, .L195+8
 4489 0db4 D318     		adds	r3, r2, r3
 4490 0db6 1B68     		ldr	r3, [r3]
 4491 0db8 9F46     		mov	pc, r3
 4492              		.section	.rodata
 4493              		.align	2
 4494              	.L185:
 4495 0024 BA0D0000 		.word	.L193
 4496 0028 C80D0000 		.word	.L192
 4497 002c D60D0000 		.word	.L191
 4498 0030 E40D0000 		.word	.L190
 4499 0034 F20D0000 		.word	.L189
 4500 0038 000E0000 		.word	.L188
 4501 003c 0E0E0000 		.word	.L187
 4502 0040 1C0E0000 		.word	.L186
 4503 0044 2A0E0000 		.word	.L184
 4504              		.text
 4505              	.L193:
  67:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     case 0:
  68:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         draw_sprite(s, 1, 1);
 4506              		.loc 6 68 9
 4507 0dba FB68     		ldr	r3, [r7, #12]
 4508 0dbc 0122     		movs	r2, #1
 4509 0dbe 0121     		movs	r1, #1
 4510 0dc0 1800     		movs	r0, r3
 4511 0dc2 FFF7FEFF 		bl	draw_sprite
  69:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         break;
 4512              		.loc 6 69 9
 4513 0dc6 37E0     		b	.L183
 4514              	.L192:
  70:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     case 1:
  71:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         draw_sprite(s, 22, 1);
 4515              		.loc 6 71 9
 4516 0dc8 FB68     		ldr	r3, [r7, #12]
 4517 0dca 0122     		movs	r2, #1
 4518 0dcc 1621     		movs	r1, #22
 4519 0dce 1800     		movs	r0, r3
 4520 0dd0 FFF7FEFF 		bl	draw_sprite
  72:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         break;
 4521              		.loc 6 72 9
 4522 0dd4 30E0     		b	.L183
 4523              	.L191:
  73:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     case 2:
  74:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         draw_sprite(s, 44, 1);
 4524              		.loc 6 74 9
 4525 0dd6 FB68     		ldr	r3, [r7, #12]
 4526 0dd8 0122     		movs	r2, #1
 4527 0dda 2C21     		movs	r1, #44
 4528 0ddc 1800     		movs	r0, r3
 4529 0dde FFF7FEFF 		bl	draw_sprite
  75:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         break;
 4530              		.loc 6 75 9
 4531 0de2 29E0     		b	.L183
 4532              	.L190:
  76:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     case 3:
  77:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         draw_sprite(s, 1, 22);
 4533              		.loc 6 77 9
 4534 0de4 FB68     		ldr	r3, [r7, #12]
 4535 0de6 1622     		movs	r2, #22
 4536 0de8 0121     		movs	r1, #1
 4537 0dea 1800     		movs	r0, r3
 4538 0dec FFF7FEFF 		bl	draw_sprite
  78:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         break;
 4539              		.loc 6 78 9
 4540 0df0 22E0     		b	.L183
 4541              	.L189:
  79:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     case 4:
  80:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         draw_sprite(s, 22, 22);
 4542              		.loc 6 80 9
 4543 0df2 FB68     		ldr	r3, [r7, #12]
 4544 0df4 1622     		movs	r2, #22
 4545 0df6 1621     		movs	r1, #22
 4546 0df8 1800     		movs	r0, r3
 4547 0dfa FFF7FEFF 		bl	draw_sprite
  81:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         break;
 4548              		.loc 6 81 9
 4549 0dfe 1BE0     		b	.L183
 4550              	.L188:
  82:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     case 5:
  83:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         draw_sprite(s, 44, 22);
 4551              		.loc 6 83 9
 4552 0e00 FB68     		ldr	r3, [r7, #12]
 4553 0e02 1622     		movs	r2, #22
 4554 0e04 2C21     		movs	r1, #44
 4555 0e06 1800     		movs	r0, r3
 4556 0e08 FFF7FEFF 		bl	draw_sprite
  84:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         break;
 4557              		.loc 6 84 9
 4558 0e0c 14E0     		b	.L183
 4559              	.L187:
  85:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     case 6:
  86:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         draw_sprite(s, 1, 44);
 4560              		.loc 6 86 9
 4561 0e0e FB68     		ldr	r3, [r7, #12]
 4562 0e10 2C22     		movs	r2, #44
 4563 0e12 0121     		movs	r1, #1
 4564 0e14 1800     		movs	r0, r3
 4565 0e16 FFF7FEFF 		bl	draw_sprite
  87:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         break;
 4566              		.loc 6 87 9
 4567 0e1a 0DE0     		b	.L183
 4568              	.L186:
  88:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     case 7:
  89:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         draw_sprite(s, 22, 44);
 4569              		.loc 6 89 9
 4570 0e1c FB68     		ldr	r3, [r7, #12]
 4571 0e1e 2C22     		movs	r2, #44
 4572 0e20 1621     		movs	r1, #22
 4573 0e22 1800     		movs	r0, r3
 4574 0e24 FFF7FEFF 		bl	draw_sprite
  90:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         break;
 4575              		.loc 6 90 9
 4576 0e28 06E0     		b	.L183
 4577              	.L184:
  91:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     case 8:
  92:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         draw_sprite(s, 44, 44);
 4578              		.loc 6 92 9
 4579 0e2a FB68     		ldr	r3, [r7, #12]
 4580 0e2c 2C22     		movs	r2, #44
 4581 0e2e 2C21     		movs	r1, #44
 4582 0e30 1800     		movs	r0, r3
 4583 0e32 FFF7FEFF 		bl	draw_sprite
  93:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         break;
 4584              		.loc 6 93 9
 4585 0e36 C046     		nop
 4586              	.L183:
 4587              	.L194:
  94:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     }
  95:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** }
 4588              		.loc 6 95 1
 4589 0e38 C046     		nop
 4590 0e3a BD46     		mov	sp, r7
 4591 0e3c 04B0     		add	sp, sp, #16
 4592              		@ sp needed
 4593 0e3e 80BD     		pop	{r7, pc}
 4594              	.L196:
 4595              		.align	2
 4596              	.L195:
 4597 0e40 00000000 		.word	cross
 4598 0e44 00000000 		.word	circle
 4599 0e48 24000000 		.word	.L185
 4600              		.cfi_endproc
 4601              	.LFE42:
 4603              		.section	.start_section,"ax",%progbits
 4604              		.align	1
 4605              		.global	startup
 4606              		.syntax unified
 4607              		.code	16
 4608              		.thumb_func
 4609              		.fpu softvfp
 4611              	startup:
 4612              	.LFB43:
  96:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** void startup(void) __attribute__((naked)) __attribute__((section(".start_section")));
  97:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** 
  98:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** void startup(void)
  99:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** {
 4613              		.loc 6 99 1
 4614              		.cfi_startproc
 4615              		@ Naked Function: prologue and epilogue provided by programmer.
 4616              		@ args = 0, pretend = 0, frame = 0
 4617              		@ frame_needed = 1, uses_anonymous_args = 0
 100:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     __asm volatile(" LDR R0,=0x2001C000\n" /* set stack */
 4618              		.loc 6 100 5
 4619              		.syntax divided
 4620              	@ 100 "/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c" 1
 4621 0000 0248     		 LDR R0,=0x2001C000
 4622 0002 8546     	 MOV SP,R0
 4623 0004 FFF7FEFF 	 BL main
 4624 0008 FEE7     	.L1: B .L1
 4625              	
 4626              	@ 0 "" 2
 101:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****                    " MOV SP,R0\n"
 102:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****                    " BL main\n"   /* call main */
 103:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****                    ".L1: B .L1\n" /* never return */
 104:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         );
 105:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** }
 4627              		.loc 6 105 1
 4628              		.thumb
 4629              		.syntax unified
 4630 000a C046     		nop
 4631              		.cfi_endproc
 4632              	.LFE43:
 4634              		.text
 4635              		.align	1
 4636              		.global	init_app
 4637              		.syntax unified
 4638              		.code	16
 4639              		.thumb_func
 4640              		.fpu softvfp
 4642              	init_app:
 4643              	.LFB44:
 106:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** 
 107:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** void init_app()
 108:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** {
 4644              		.loc 6 108 1
 4645              		.cfi_startproc
 4646              		@ args = 0, pretend = 0, frame = 0
 4647              		@ frame_needed = 1, uses_anonymous_args = 0
 4648 0e4c 80B5     		push	{r7, lr}
 4649              		.cfi_def_cfa_offset 8
 4650              		.cfi_offset 7, -8
 4651              		.cfi_offset 14, -4
 4652 0e4e 00AF     		add	r7, sp, #0
 4653              		.cfi_def_cfa_register 7
 109:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** #ifdef USBDM
 110:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     *((unsigned long*)0x40023830) = 0x18;
 111:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     __asm volatile(" LDR R0,=0x08000209\n BLX R0 \n");
 112:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** #endif
 113:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     GPIO_E.moder = 0x55555555;
 4654              		.loc 6 113 5
 4655 0e50 064B     		ldr	r3, .L199
 4656              		.loc 6 113 18
 4657 0e52 074A     		ldr	r2, .L199+4
 4658 0e54 1A60     		str	r2, [r3]
 114:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     GPIO_D.moder = 0x55000000;
 4659              		.loc 6 114 5
 4660 0e56 074B     		ldr	r3, .L199+8
 4661              		.loc 6 114 18
 4662 0e58 AA22     		movs	r2, #170
 4663 0e5a D205     		lsls	r2, r2, #23
 4664 0e5c 1A60     		str	r2, [r3]
 115:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     gameState = 1;
 4665              		.loc 6 115 15
 4666 0e5e 064B     		ldr	r3, .L199+12
 4667 0e60 0122     		movs	r2, #1
 4668 0e62 1A70     		strb	r2, [r3]
 116:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** }
 4669              		.loc 6 116 1
 4670 0e64 C046     		nop
 4671 0e66 BD46     		mov	sp, r7
 4672              		@ sp needed
 4673 0e68 80BD     		pop	{r7, pc}
 4674              	.L200:
 4675 0e6a C046     		.align	2
 4676              	.L199:
 4677 0e6c 00100240 		.word	1073876992
 4678 0e70 55555555 		.word	1431655765
 4679 0e74 000C0240 		.word	1073875968
 4680 0e78 00000000 		.word	gameState
 4681              		.cfi_endproc
 4682              	.LFE44:
 4684              		.align	1
 4685              		.global	ascii_write_string
 4686              		.syntax unified
 4687              		.code	16
 4688              		.thumb_func
 4689              		.fpu softvfp
 4691              	ascii_write_string:
 4692              	.LFB45:
 117:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** 
 118:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** void ascii_write_string(char text[], char point, char row)
 119:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** {
 4693              		.loc 6 119 1
 4694              		.cfi_startproc
 4695              		@ args = 0, pretend = 0, frame = 16
 4696              		@ frame_needed = 1, uses_anonymous_args = 0
 4697 0e7c 80B5     		push	{r7, lr}
 4698              		.cfi_def_cfa_offset 8
 4699              		.cfi_offset 7, -8
 4700              		.cfi_offset 14, -4
 4701 0e7e 84B0     		sub	sp, sp, #16
 4702              		.cfi_def_cfa_offset 24
 4703 0e80 00AF     		add	r7, sp, #0
 4704              		.cfi_def_cfa_register 7
 4705 0e82 7860     		str	r0, [r7, #4]
 4706 0e84 0800     		movs	r0, r1
 4707 0e86 1100     		movs	r1, r2
 4708 0e88 FB1C     		adds	r3, r7, #3
 4709 0e8a 021C     		adds	r2, r0, #0
 4710 0e8c 1A70     		strb	r2, [r3]
 4711 0e8e BB1C     		adds	r3, r7, #2
 4712 0e90 0A1C     		adds	r2, r1, #0
 4713 0e92 1A70     		strb	r2, [r3]
 120:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     char* s;
 121:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     s = text;
 4714              		.loc 6 121 7
 4715 0e94 7B68     		ldr	r3, [r7, #4]
 4716 0e96 FB60     		str	r3, [r7, #12]
 122:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     ascii_gotoxy(1, row);
 4717              		.loc 6 122 5
 4718 0e98 BB1C     		adds	r3, r7, #2
 4719 0e9a 1B78     		ldrb	r3, [r3]
 4720 0e9c 1900     		movs	r1, r3
 4721 0e9e 0120     		movs	r0, #1
 4722 0ea0 FFF7FEFF 		bl	ascii_gotoxy
 123:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     while(*s) {
 4723              		.loc 6 123 10
 4724 0ea4 06E0     		b	.L202
 4725              	.L203:
 124:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         ascii_write_char(*s++);
 4726              		.loc 6 124 28
 4727 0ea6 FB68     		ldr	r3, [r7, #12]
 4728 0ea8 5A1C     		adds	r2, r3, #1
 4729 0eaa FA60     		str	r2, [r7, #12]
 4730              		.loc 6 124 9
 4731 0eac 1B78     		ldrb	r3, [r3]
 4732 0eae 1800     		movs	r0, r3
 4733 0eb0 FFF7FEFF 		bl	ascii_write_char
 4734              	.L202:
 123:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     while(*s) {
 4735              		.loc 6 123 11
 4736 0eb4 FB68     		ldr	r3, [r7, #12]
 4737 0eb6 1B78     		ldrb	r3, [r3]
 123:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     while(*s) {
 4738              		.loc 6 123 10
 4739 0eb8 002B     		cmp	r3, #0
 4740 0eba F4D1     		bne	.L203
 125:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     }
 126:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     ascii_write_char(point);
 4741              		.loc 6 126 5
 4742 0ebc FB1C     		adds	r3, r7, #3
 4743 0ebe 1B78     		ldrb	r3, [r3]
 4744 0ec0 1800     		movs	r0, r3
 4745 0ec2 FFF7FEFF 		bl	ascii_write_char
 127:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** }
 4746              		.loc 6 127 1
 4747 0ec6 C046     		nop
 4748 0ec8 BD46     		mov	sp, r7
 4749 0eca 04B0     		add	sp, sp, #16
 4750              		@ sp needed
 4751 0ecc 80BD     		pop	{r7, pc}
 4752              		.cfi_endproc
 4753              	.LFE45:
 4755              		.align	1
 4756              		.global	write_symbol
 4757              		.syntax unified
 4758              		.code	16
 4759              		.thumb_func
 4760              		.fpu softvfp
 4762              	write_symbol:
 4763              	.LFB46:
 128:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** void write_symbol(char c)
 129:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** {
 4764              		.loc 6 129 1
 4765              		.cfi_startproc
 4766              		@ args = 0, pretend = 0, frame = 16
 4767              		@ frame_needed = 1, uses_anonymous_args = 0
 4768 0ece 80B5     		push	{r7, lr}
 4769              		.cfi_def_cfa_offset 8
 4770              		.cfi_offset 7, -8
 4771              		.cfi_offset 14, -4
 4772 0ed0 84B0     		sub	sp, sp, #16
 4773              		.cfi_def_cfa_offset 24
 4774 0ed2 00AF     		add	r7, sp, #0
 4775              		.cfi_def_cfa_register 7
 4776 0ed4 0200     		movs	r2, r0
 4777 0ed6 FB1D     		adds	r3, r7, #7
 4778 0ed8 1A70     		strb	r2, [r3]
 130:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     char current = grid[c - 1];
 4779              		.loc 6 130 27
 4780 0eda FB1D     		adds	r3, r7, #7
 4781 0edc 1B78     		ldrb	r3, [r3]
 4782 0ede 5A1E     		subs	r2, r3, #1
 4783              		.loc 6 130 10
 4784 0ee0 0F20     		movs	r0, #15
 4785 0ee2 3B18     		adds	r3, r7, r0
 4786 0ee4 0A49     		ldr	r1, .L207
 4787 0ee6 8A5C     		ldrb	r2, [r1, r2]
 4788 0ee8 1A70     		strb	r2, [r3]
 131:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     if(current == 0) {
 4789              		.loc 6 131 7
 4790 0eea 3B18     		adds	r3, r7, r0
 4791 0eec 1B78     		ldrb	r3, [r3]
 4792 0eee 002B     		cmp	r3, #0
 4793 0ef0 09D1     		bne	.L206
 132:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         grid[c - 1] = gameState;
 4794              		.loc 6 132 16
 4795 0ef2 FB1D     		adds	r3, r7, #7
 4796 0ef4 1B78     		ldrb	r3, [r3]
 4797 0ef6 013B     		subs	r3, r3, #1
 4798              		.loc 6 132 21
 4799 0ef8 064A     		ldr	r2, .L207+4
 4800 0efa 1178     		ldrb	r1, [r2]
 4801 0efc 044A     		ldr	r2, .L207
 4802 0efe D154     		strb	r1, [r2, r3]
 133:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         turn = 1;
 4803              		.loc 6 133 14
 4804 0f00 054B     		ldr	r3, .L207+8
 4805 0f02 0122     		movs	r2, #1
 4806 0f04 1A70     		strb	r2, [r3]
 4807              	.L206:
 134:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     }
 135:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** }
 4808              		.loc 6 135 1
 4809 0f06 C046     		nop
 4810 0f08 BD46     		mov	sp, r7
 4811 0f0a 04B0     		add	sp, sp, #16
 4812              		@ sp needed
 4813 0f0c 80BD     		pop	{r7, pc}
 4814              	.L208:
 4815 0f0e C046     		.align	2
 4816              	.L207:
 4817 0f10 00000000 		.word	grid
 4818 0f14 00000000 		.word	gameState
 4819 0f18 00000000 		.word	turn
 4820              		.cfi_endproc
 4821              	.LFE46:
 4823              		.align	1
 4824              		.global	checkWin
 4825              		.syntax unified
 4826              		.code	16
 4827              		.thumb_func
 4828              		.fpu softvfp
 4830              	checkWin:
 4831              	.LFB47:
 136:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** char checkWin()
 137:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** {
 4832              		.loc 6 137 1
 4833              		.cfi_startproc
 4834              		@ args = 0, pretend = 0, frame = 8
 4835              		@ frame_needed = 1, uses_anonymous_args = 0
 4836 0f1c 80B5     		push	{r7, lr}
 4837              		.cfi_def_cfa_offset 8
 4838              		.cfi_offset 7, -8
 4839              		.cfi_offset 14, -4
 4840 0f1e 82B0     		sub	sp, sp, #8
 4841              		.cfi_def_cfa_offset 16
 4842 0f20 00AF     		add	r7, sp, #0
 4843              		.cfi_def_cfa_register 7
 4844              	.LBB12:
 138:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     char win;
 139:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     // cols
 140:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     for(char i = 0; i < 3; i++) {
 4845              		.loc 6 140 14
 4846 0f22 BB1D     		adds	r3, r7, #6
 4847 0f24 0022     		movs	r2, #0
 4848 0f26 1A70     		strb	r2, [r3]
 4849              		.loc 6 140 5
 4850 0f28 2EE0     		b	.L210
 4851              	.L216:
 141:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         win = win || (grid[i] == gameState && grid[3 + i] == gameState && grid[6 + i] == gameState)
 4852              		.loc 6 141 19
 4853 0f2a FB1D     		adds	r3, r7, #7
 4854 0f2c 1B78     		ldrb	r3, [r3]
 4855 0f2e 002B     		cmp	r3, #0
 4856 0f30 19D1     		bne	.L211
 4857              		.loc 6 141 27 discriminator 2
 4858 0f32 BB1D     		adds	r3, r7, #6
 4859 0f34 1B78     		ldrb	r3, [r3]
 4860 0f36 4C4A     		ldr	r2, .L227
 4861 0f38 D25C     		ldrb	r2, [r2, r3]
 4862              		.loc 6 141 31 discriminator 2
 4863 0f3a 4C4B     		ldr	r3, .L227+4
 4864 0f3c 1B78     		ldrb	r3, [r3]
 4865              		.loc 6 141 19 discriminator 2
 4866 0f3e 9A42     		cmp	r2, r3
 4867 0f40 13D1     		bne	.L212
 4868              		.loc 6 141 54 discriminator 3
 4869 0f42 BB1D     		adds	r3, r7, #6
 4870 0f44 1B78     		ldrb	r3, [r3]
 4871 0f46 0333     		adds	r3, r3, #3
 4872              		.loc 6 141 51 discriminator 3
 4873 0f48 474A     		ldr	r2, .L227
 4874 0f4a D25C     		ldrb	r2, [r2, r3]
 4875              		.loc 6 141 59 discriminator 3
 4876 0f4c 474B     		ldr	r3, .L227+4
 4877 0f4e 1B78     		ldrb	r3, [r3]
 4878              		.loc 6 141 44 discriminator 3
 4879 0f50 9A42     		cmp	r2, r3
 4880 0f52 0AD1     		bne	.L212
 4881              		.loc 6 141 82 discriminator 5
 4882 0f54 BB1D     		adds	r3, r7, #6
 4883 0f56 1B78     		ldrb	r3, [r3]
 4884 0f58 0633     		adds	r3, r3, #6
 4885              		.loc 6 141 79 discriminator 5
 4886 0f5a 434A     		ldr	r2, .L227
 4887 0f5c D25C     		ldrb	r2, [r2, r3]
 4888              		.loc 6 141 87 discriminator 5
 4889 0f5e 434B     		ldr	r3, .L227+4
 4890 0f60 1B78     		ldrb	r3, [r3]
 4891              		.loc 6 141 72 discriminator 5
 4892 0f62 9A42     		cmp	r2, r3
 4893 0f64 01D1     		bne	.L212
 4894              	.L211:
 4895              		.loc 6 141 19 discriminator 7
 4896 0f66 0122     		movs	r2, #1
 4897 0f68 00E0     		b	.L213
 4898              	.L212:
 4899              		.loc 6 141 19 is_stmt 0 discriminator 8
 4900 0f6a 0022     		movs	r2, #0
 4901              	.L213:
 4902              		.loc 6 141 13 is_stmt 1 discriminator 10
 4903 0f6c FB1D     		adds	r3, r7, #7
 4904 0f6e 1A70     		strb	r2, [r3]
 142:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         if(win) {
 4905              		.loc 6 142 11 discriminator 10
 4906 0f70 FB1D     		adds	r3, r7, #7
 4907 0f72 1B78     		ldrb	r3, [r3]
 4908 0f74 002B     		cmp	r3, #0
 4909 0f76 02D0     		beq	.L214
 143:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****             return win;
 4910              		.loc 6 143 20
 4911 0f78 FB1D     		adds	r3, r7, #7
 4912 0f7a 1B78     		ldrb	r3, [r3]
 4913 0f7c 70E0     		b	.L215
 4914              	.L214:
 140:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         win = win || (grid[i] == gameState && grid[3 + i] == gameState && grid[6 + i] == gameState)
 4915              		.loc 6 140 29 discriminator 2
 4916 0f7e BB1D     		adds	r3, r7, #6
 4917 0f80 1A78     		ldrb	r2, [r3]
 4918 0f82 BB1D     		adds	r3, r7, #6
 4919 0f84 0132     		adds	r2, r2, #1
 4920 0f86 1A70     		strb	r2, [r3]
 4921              	.L210:
 140:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         win = win || (grid[i] == gameState && grid[3 + i] == gameState && grid[6 + i] == gameState)
 4922              		.loc 6 140 5 discriminator 1
 4923 0f88 BB1D     		adds	r3, r7, #6
 4924 0f8a 1B78     		ldrb	r3, [r3]
 4925 0f8c 022B     		cmp	r3, #2
 4926 0f8e CCD9     		bls	.L216
 4927              	.LBE12:
 4928              	.LBB13:
 144:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         }
 145:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     }
 146:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     // rows
 147:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     for(char i = 0; i < 3; i++) {
 4929              		.loc 6 147 14
 4930 0f90 7B1D     		adds	r3, r7, #5
 4931 0f92 0022     		movs	r2, #0
 4932 0f94 1A70     		strb	r2, [r3]
 4933              		.loc 6 147 5
 4934 0f96 37E0     		b	.L217
 4935              	.L222:
 148:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         win = win || (grid[3 * i] == gameState && grid[3 * i + 1] == gameState && grid[3 * i + 2] =
 4936              		.loc 6 148 19
 4937 0f98 FB1D     		adds	r3, r7, #7
 4938 0f9a 1B78     		ldrb	r3, [r3]
 4939 0f9c 002B     		cmp	r3, #0
 4940 0f9e 22D1     		bne	.L218
 4941              		.loc 6 148 30 discriminator 2
 4942 0fa0 7B1D     		adds	r3, r7, #5
 4943 0fa2 1A78     		ldrb	r2, [r3]
 4944 0fa4 1300     		movs	r3, r2
 4945 0fa6 5B00     		lsls	r3, r3, #1
 4946 0fa8 9B18     		adds	r3, r3, r2
 4947              		.loc 6 148 27 discriminator 2
 4948 0faa 2F4A     		ldr	r2, .L227
 4949 0fac D25C     		ldrb	r2, [r2, r3]
 4950              		.loc 6 148 35 discriminator 2
 4951 0fae 2F4B     		ldr	r3, .L227+4
 4952 0fb0 1B78     		ldrb	r3, [r3]
 4953              		.loc 6 148 19 discriminator 2
 4954 0fb2 9A42     		cmp	r2, r3
 4955 0fb4 19D1     		bne	.L219
 4956              		.loc 6 148 58 discriminator 3
 4957 0fb6 7B1D     		adds	r3, r7, #5
 4958 0fb8 1A78     		ldrb	r2, [r3]
 4959 0fba 1300     		movs	r3, r2
 4960 0fbc 5B00     		lsls	r3, r3, #1
 4961 0fbe 9B18     		adds	r3, r3, r2
 4962              		.loc 6 148 62 discriminator 3
 4963 0fc0 0133     		adds	r3, r3, #1
 4964              		.loc 6 148 55 discriminator 3
 4965 0fc2 294A     		ldr	r2, .L227
 4966 0fc4 D25C     		ldrb	r2, [r2, r3]
 4967              		.loc 6 148 67 discriminator 3
 4968 0fc6 294B     		ldr	r3, .L227+4
 4969 0fc8 1B78     		ldrb	r3, [r3]
 4970              		.loc 6 148 48 discriminator 3
 4971 0fca 9A42     		cmp	r2, r3
 4972 0fcc 0DD1     		bne	.L219
 4973              		.loc 6 148 90 discriminator 5
 4974 0fce 7B1D     		adds	r3, r7, #5
 4975 0fd0 1A78     		ldrb	r2, [r3]
 4976 0fd2 1300     		movs	r3, r2
 4977 0fd4 5B00     		lsls	r3, r3, #1
 4978 0fd6 9B18     		adds	r3, r3, r2
 4979              		.loc 6 148 94 discriminator 5
 4980 0fd8 0233     		adds	r3, r3, #2
 4981              		.loc 6 148 87 discriminator 5
 4982 0fda 234A     		ldr	r2, .L227
 4983 0fdc D25C     		ldrb	r2, [r2, r3]
 4984              		.loc 6 148 99 discriminator 5
 4985 0fde 234B     		ldr	r3, .L227+4
 4986 0fe0 1B78     		ldrb	r3, [r3]
 4987              		.loc 6 148 80 discriminator 5
 4988 0fe2 9A42     		cmp	r2, r3
 4989 0fe4 01D1     		bne	.L219
 4990              	.L218:
 4991              		.loc 6 148 19 discriminator 7
 4992 0fe6 0122     		movs	r2, #1
 4993 0fe8 00E0     		b	.L220
 4994              	.L219:
 4995              		.loc 6 148 19 is_stmt 0 discriminator 8
 4996 0fea 0022     		movs	r2, #0
 4997              	.L220:
 4998              		.loc 6 148 13 is_stmt 1 discriminator 10
 4999 0fec FB1D     		adds	r3, r7, #7
 5000 0fee 1A70     		strb	r2, [r3]
 149:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         if(win) {
 5001              		.loc 6 149 11 discriminator 10
 5002 0ff0 FB1D     		adds	r3, r7, #7
 5003 0ff2 1B78     		ldrb	r3, [r3]
 5004 0ff4 002B     		cmp	r3, #0
 5005 0ff6 02D0     		beq	.L221
 150:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****             return win;
 5006              		.loc 6 150 20
 5007 0ff8 FB1D     		adds	r3, r7, #7
 5008 0ffa 1B78     		ldrb	r3, [r3]
 5009 0ffc 30E0     		b	.L215
 5010              	.L221:
 147:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         win = win || (grid[3 * i] == gameState && grid[3 * i + 1] == gameState && grid[3 * i + 2] =
 5011              		.loc 6 147 29 discriminator 2
 5012 0ffe 7B1D     		adds	r3, r7, #5
 5013 1000 1A78     		ldrb	r2, [r3]
 5014 1002 7B1D     		adds	r3, r7, #5
 5015 1004 0132     		adds	r2, r2, #1
 5016 1006 1A70     		strb	r2, [r3]
 5017              	.L217:
 147:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         win = win || (grid[3 * i] == gameState && grid[3 * i + 1] == gameState && grid[3 * i + 2] =
 5018              		.loc 6 147 5 discriminator 1
 5019 1008 7B1D     		adds	r3, r7, #5
 5020 100a 1B78     		ldrb	r3, [r3]
 5021 100c 022B     		cmp	r3, #2
 5022 100e C3D9     		bls	.L222
 5023              	.LBE13:
 151:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         }
 152:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     }
 153:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     // diags
 154:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     return (grid[0] == gameState && grid[4] == gameState && grid[8] == gameState) ||
 5024              		.loc 6 154 17
 5025 1010 154B     		ldr	r3, .L227
 5026 1012 1A78     		ldrb	r2, [r3]
 5027              		.loc 6 154 21
 5028 1014 154B     		ldr	r3, .L227+4
 5029 1016 1B78     		ldrb	r3, [r3]
 5030              		.loc 6 154 83
 5031 1018 9A42     		cmp	r2, r3
 5032 101a 0BD1     		bne	.L223
 5033              		.loc 6 154 41 discriminator 1
 5034 101c 124B     		ldr	r3, .L227
 5035 101e 1A79     		ldrb	r2, [r3, #4]
 5036              		.loc 6 154 45 discriminator 1
 5037 1020 124B     		ldr	r3, .L227+4
 5038 1022 1B78     		ldrb	r3, [r3]
 5039              		.loc 6 154 34 discriminator 1
 5040 1024 9A42     		cmp	r2, r3
 5041 1026 05D1     		bne	.L223
 5042              		.loc 6 154 65 discriminator 3
 5043 1028 0F4B     		ldr	r3, .L227
 5044 102a 1A7A     		ldrb	r2, [r3, #8]
 5045              		.loc 6 154 69 discriminator 3
 5046 102c 0F4B     		ldr	r3, .L227+4
 5047 102e 1B78     		ldrb	r3, [r3]
 5048              		.loc 6 154 58 discriminator 3
 5049 1030 9A42     		cmp	r2, r3
 5050 1032 11D0     		beq	.L224
 5051              	.L223:
 155:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         (grid[2] == gameState && grid[4] == gameState && grid[6] == gameState);
 5052              		.loc 6 155 14 discriminator 6
 5053 1034 0C4B     		ldr	r3, .L227
 5054 1036 9A78     		ldrb	r2, [r3, #2]
 5055              		.loc 6 155 18 discriminator 6
 5056 1038 0C4B     		ldr	r3, .L227+4
 5057 103a 1B78     		ldrb	r3, [r3]
 154:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         (grid[2] == gameState && grid[4] == gameState && grid[6] == gameState);
 5058              		.loc 6 154 83 discriminator 6
 5059 103c 9A42     		cmp	r2, r3
 5060 103e 0DD1     		bne	.L225
 5061              		.loc 6 155 38
 5062 1040 094B     		ldr	r3, .L227
 5063 1042 1A79     		ldrb	r2, [r3, #4]
 5064              		.loc 6 155 42
 5065 1044 094B     		ldr	r3, .L227+4
 5066 1046 1B78     		ldrb	r3, [r3]
 5067              		.loc 6 155 31
 5068 1048 9A42     		cmp	r2, r3
 5069 104a 07D1     		bne	.L225
 5070              		.loc 6 155 62 discriminator 1
 5071 104c 064B     		ldr	r3, .L227
 5072 104e 9A79     		ldrb	r2, [r3, #6]
 5073              		.loc 6 155 66 discriminator 1
 5074 1050 064B     		ldr	r3, .L227+4
 5075 1052 1B78     		ldrb	r3, [r3]
 5076              		.loc 6 155 55 discriminator 1
 5077 1054 9A42     		cmp	r2, r3
 5078 1056 01D1     		bne	.L225
 5079              	.L224:
 154:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         (grid[2] == gameState && grid[4] == gameState && grid[6] == gameState);
 5080              		.loc 6 154 83 discriminator 5
 5081 1058 0123     		movs	r3, #1
 5082 105a 00E0     		b	.L226
 5083              	.L225:
 154:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         (grid[2] == gameState && grid[4] == gameState && grid[6] == gameState);
 5084              		.loc 6 154 83 is_stmt 0 discriminator 7
 5085 105c 0023     		movs	r3, #0
 5086              	.L226:
 154:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         (grid[2] == gameState && grid[4] == gameState && grid[6] == gameState);
 5087              		.loc 6 154 83 discriminator 9
 5088 105e DBB2     		uxtb	r3, r3
 5089              	.L215:
 156:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** }
 5090              		.loc 6 156 1 is_stmt 1
 5091 1060 1800     		movs	r0, r3
 5092 1062 BD46     		mov	sp, r7
 5093 1064 02B0     		add	sp, sp, #8
 5094              		@ sp needed
 5095 1066 80BD     		pop	{r7, pc}
 5096              	.L228:
 5097              		.align	2
 5098              	.L227:
 5099 1068 00000000 		.word	grid
 5100 106c 00000000 		.word	gameState
 5101              		.cfi_endproc
 5102              	.LFE47:
 5104              		.align	1
 5105              		.global	main
 5106              		.syntax unified
 5107              		.code	16
 5108              		.thumb_func
 5109              		.fpu softvfp
 5111              	main:
 5112              	.LFB48:
 157:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** 
 158:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** void main(void)
 159:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** {
 5113              		.loc 6 159 1
 5114              		.cfi_startproc
 5115              		@ args = 0, pretend = 0, frame = 16
 5116              		@ frame_needed = 1, uses_anonymous_args = 0
 5117 1070 F0B5     		push	{r4, r5, r6, r7, lr}
 5118              		.cfi_def_cfa_offset 20
 5119              		.cfi_offset 4, -20
 5120              		.cfi_offset 5, -16
 5121              		.cfi_offset 6, -12
 5122              		.cfi_offset 7, -8
 5123              		.cfi_offset 14, -4
 5124 1072 85B0     		sub	sp, sp, #20
 5125              		.cfi_def_cfa_offset 40
 5126 1074 00AF     		add	r7, sp, #0
 5127              		.cfi_def_cfa_register 7
 160:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     unsigned i;
 161:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     char c;
 162:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     gameState = 1;
 5128              		.loc 6 162 15
 5129 1076 334B     		ldr	r3, .L236
 5130 1078 0122     		movs	r2, #1
 5131 107a 1A70     		strb	r2, [r3]
 163:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     init_app();
 5132              		.loc 6 163 5
 5133 107c FFF7FEFF 		bl	init_app
 164:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     graphic_initialize();
 5134              		.loc 6 164 5
 5135 1080 FFF7FEFF 		bl	graphic_initialize
 165:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** #ifndef SIMULATOR
 166:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     graphic_clear_screen();
 167:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** #endif
 168:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** 
 169:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     char xPoints = 0;
 5136              		.loc 6 169 10
 5137 1084 0F24     		movs	r4, #15
 5138 1086 3B19     		adds	r3, r7, r4
 5139 1088 0022     		movs	r2, #0
 5140 108a 1A70     		strb	r2, [r3]
 170:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     char oPoints = 0;
 5141              		.loc 6 170 10
 5142 108c 0E25     		movs	r5, #14
 5143 108e 7B19     		adds	r3, r7, r5
 5144 1090 0022     		movs	r2, #0
 5145 1092 1A70     		strb	r2, [r3]
 171:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     char O[] = "O: ";
 5146              		.loc 6 171 10
 5147 1094 0826     		movs	r6, #8
 5148 1096 BB19     		adds	r3, r7, r6
 5149 1098 2B4A     		ldr	r2, .L236+4
 5150 109a 1A60     		str	r2, [r3]
 172:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     char X[] = "X: ";
 5151              		.loc 6 172 10
 5152 109c 3B1D     		adds	r3, r7, #4
 5153 109e 2B4A     		ldr	r2, .L236+8
 5154 10a0 1A60     		str	r2, [r3]
 173:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     ascii_init();
 5155              		.loc 6 173 5
 5156 10a2 FFF7FEFF 		bl	ascii_init
 174:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     ascii_write_string(X, xPoints, 1);
 5157              		.loc 6 174 5
 5158 10a6 3B19     		adds	r3, r7, r4
 5159 10a8 1978     		ldrb	r1, [r3]
 5160 10aa 3B1D     		adds	r3, r7, #4
 5161 10ac 0122     		movs	r2, #1
 5162 10ae 1800     		movs	r0, r3
 5163 10b0 FFF7FEFF 		bl	ascii_write_string
 175:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     ascii_write_string(O, oPoints, 2);
 5164              		.loc 6 175 5
 5165 10b4 7B19     		adds	r3, r7, r5
 5166 10b6 1978     		ldrb	r1, [r3]
 5167 10b8 BB19     		adds	r3, r7, r6
 5168 10ba 0222     		movs	r2, #2
 5169 10bc 1800     		movs	r0, r3
 5170 10be FFF7FEFF 		bl	ascii_write_string
 176:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     drawgrid();
 5171              		.loc 6 176 5
 5172 10c2 FFF7FEFF 		bl	drawgrid
 5173              	.L235:
 177:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****     while(1) {
 178:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         turn = 0;
 5174              		.loc 6 178 14
 5175 10c6 224B     		ldr	r3, .L236+12
 5176 10c8 0022     		movs	r2, #0
 5177 10ca 1A70     		strb	r2, [r3]
 179:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         clear_backBuffer();
 5178              		.loc 6 179 9
 5179 10cc FFF7FEFF 		bl	clear_backBuffer
 180:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         c = keyb();
 5180              		.loc 6 180 13
 5181 10d0 0D25     		movs	r5, #13
 5182 10d2 7C19     		adds	r4, r7, r5
 5183 10d4 FFF7FEFF 		bl	keyb
 5184 10d8 0300     		movs	r3, r0
 5185 10da 2370     		strb	r3, [r4]
 181:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         if(c >= 0 && c <= 9) {
 5186              		.loc 6 181 11
 5187 10dc 7B19     		adds	r3, r7, r5
 5188 10de 1B78     		ldrb	r3, [r3]
 5189 10e0 092B     		cmp	r3, #9
 5190 10e2 04D8     		bhi	.L230
 182:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****             write_symbol(c);
 5191              		.loc 6 182 13
 5192 10e4 7B19     		adds	r3, r7, r5
 5193 10e6 1B78     		ldrb	r3, [r3]
 5194 10e8 1800     		movs	r0, r3
 5195 10ea FFF7FEFF 		bl	write_symbol
 5196              	.L230:
 183:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         }
 184:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         if(gameState == 1) {
 5197              		.loc 6 184 22
 5198 10ee 154B     		ldr	r3, .L236
 5199 10f0 1B78     		ldrb	r3, [r3]
 5200              		.loc 6 184 11
 5201 10f2 012B     		cmp	r3, #1
 5202 10f4 06D1     		bne	.L231
 185:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****             draw_sprite(&big_cross, 64, 1);
 5203              		.loc 6 185 13
 5204 10f6 174B     		ldr	r3, .L236+16
 5205 10f8 0122     		movs	r2, #1
 5206 10fa 4021     		movs	r1, #64
 5207 10fc 1800     		movs	r0, r3
 5208 10fe FFF7FEFF 		bl	draw_sprite
 5209 1102 05E0     		b	.L232
 5210              	.L231:
 186:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         } else {
 187:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****             draw_sprite(&big_circle, 64, 1);
 5211              		.loc 6 187 13
 5212 1104 144B     		ldr	r3, .L236+20
 5213 1106 0122     		movs	r2, #1
 5214 1108 4021     		movs	r1, #64
 5215 110a 1800     		movs	r0, r3
 5216 110c FFF7FEFF 		bl	draw_sprite
 5217              	.L232:
 188:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         }
 189:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         drawgrid();
 5218              		.loc 6 189 9
 5219 1110 FFF7FEFF 		bl	drawgrid
 190:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         if(checkWin()) {
 5220              		.loc 6 190 12
 5221 1114 FFF7FEFF 		bl	checkWin
 191:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         }
 192:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         if(turn) {
 5222              		.loc 6 192 12
 5223 1118 0D4B     		ldr	r3, .L236+12
 5224 111a 1B78     		ldrb	r3, [r3]
 5225              		.loc 6 192 11
 5226 111c 002B     		cmp	r3, #0
 5227 111e 0AD0     		beq	.L233
 193:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****             if(gameState == 1) {
 5228              		.loc 6 193 26
 5229 1120 084B     		ldr	r3, .L236
 5230 1122 1B78     		ldrb	r3, [r3]
 5231              		.loc 6 193 15
 5232 1124 012B     		cmp	r3, #1
 5233 1126 03D1     		bne	.L234
 194:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****                 gameState = 2;
 5234              		.loc 6 194 27
 5235 1128 064B     		ldr	r3, .L236
 5236 112a 0222     		movs	r2, #2
 5237 112c 1A70     		strb	r2, [r3]
 5238 112e 02E0     		b	.L233
 5239              	.L234:
 195:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****             } else {
 196:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****                 gameState = 1;
 5240              		.loc 6 196 27
 5241 1130 044B     		ldr	r3, .L236
 5242 1132 0122     		movs	r2, #1
 5243 1134 1A70     		strb	r2, [r3]
 5244              	.L233:
 197:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****             }
 198:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         }
 199:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c **** 
 200:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         delay_milli(40);
 5245              		.loc 6 200 9
 5246 1136 2820     		movs	r0, #40
 5247 1138 FFF7FEFF 		bl	delay_milli
 201:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         graphic_draw_screen();
 5248              		.loc 6 201 9
 5249 113c FFF7FEFF 		bl	graphic_draw_screen
 178:/Users/krulla/chalmers/dat017/mop/tic_tac_toe/startup.c ****         clear_backBuffer();
 5250              		.loc 6 178 14
 5251 1140 C1E7     		b	.L235
 5252              	.L237:
 5253 1142 C046     		.align	2
 5254              	.L236:
 5255 1144 00000000 		.word	gameState
 5256 1148 4F3A2000 		.word	2112079
 5257 114c 583A2000 		.word	2112088
 5258 1150 00000000 		.word	turn
 5259 1154 00000000 		.word	big_cross
 5260 1158 00000000 		.word	big_circle
 5261              		.cfi_endproc
 5262              	.LFE48:
 5264              	.Letext0:
 5265              		.file 7 "/Users/krulla/Downloads/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/machine/_
 5266              		.file 8 "/Users/krulla/Downloads/gcc-arm-none-eabi-8-2018-q4-major/arm-none-eabi/include/sys/_stdi
 5267              		.file 9 "/Users/krulla/chalmers/dat017/mop/tic_tac_toe/gpio.h"
 5268              		.file 10 "/Users/krulla/chalmers/dat017/mop/tic_tac_toe/circle.xbm"
 5269              		.file 11 "/Users/krulla/chalmers/dat017/mop/tic_tac_toe/cross.xbm"
 5270              		.file 12 "/Users/krulla/chalmers/dat017/mop/tic_tac_toe/big_circle.xbm"
 5271              		.file 13 "/Users/krulla/chalmers/dat017/mop/tic_tac_toe/big_cross.xbm"
