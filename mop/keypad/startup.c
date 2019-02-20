/*
 * 	startup.c
 *
 */
typedef unsigned int uint32;
typedef unsigned short uint16;
typedef unsigned char uint8;
typedef struct {
    uint32 moder;
    uint16 otyper;        // +0x4
    uint16 otReserved;    //
    uint32 ospeedr;       // +0x8
    uint32 pupdr;         // +0xc (12)
    uint8 idrLow;         // +0x10
    uint8 idrHigh;        // +0x11
    uint16 idrReserved;   //
    uint8 odrLow;         // +0x14
    uint8 odrHigh;        // +0x15
    uint16 odrReserved;
} GPIO;

#define GPIO_D (*((volatile GPIO*) 0x40020C00))

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
void app_init(void) {
	/* starta klockor port D och E */
#ifdef USBDM
	 *( (unsigned long *) 0x40023830) = 0x18;
#endif
    GPIO_D.moder = 0x55005555; // 0101 0101 0000 0000 0101 0101 0101 0101
  //  GPIO_D.otyper &= 0xFF000000; // Nollställer bit 8-15
   // GPIO_D.pupdr &= 0xFF00FFFF; // Nollställer de bitar som ska sättas
   // GPIO_D.pupdr |= 0x00550000;
}

void activateRow(unsigned int row ){
/* Aktivera angiven rad hos tangentbordet, eller
* deaktivera samtliga */
    switch( row ){
        case 1: GPIO_D.odrHigh = 0x10; break;
        case 2: GPIO_D.odrHigh = 0x20; break;
        case 3: GPIO_D.odrHigh = 0x40; break;
        case 4: GPIO_D.odrHigh = 0x80; break;
        case 0: GPIO_D.odrHigh = 0x00; break;
    }
}
int readColumn(void) {
    /* Om någon tangent (i aktiverad rad)
    * är nedtryckt, returnera dess kolumnnummer,
    * annars, returnera 0 */
    unsigned char c;
    c = GPIO_D.idrHigh;
    if ( c & 0x8 ) return 4;
    if ( c & 0x4 ) return 3;
    if ( c & 0x2 ) return 2;
    if ( c & 0x1 ) return 1;
    return 0;
}

unsigned char keyb( void ) {
    unsigned char key[]={1,2,3,0xA,4,5,6,0xB,7,8,9,0xC,0xE,0,0xF,0xD};
    int row, col;
    for (row=1; row <=4 ; row++ ) {
        activateRow(row);
        if(col = readColumn()) {
            activateRow(0);
            return key [4*(row-1)+(col-1)];
        }
    }
    activateRow(0);
    return 0xFF;
}
void out7seg(unsigned char c) {
    switch (c) {
        case 0: GPIO_D.odrLow = 0x3F; break;
        case 1: GPIO_D.odrLow = 0x06; break;
        case 2: GPIO_D.odrLow = 0x5B; break;
        case 3: GPIO_D.odrLow = 0x4F; break;
        case 4: GPIO_D.odrLow = 0x66; break;
        case 5: GPIO_D.odrLow = 0x6D; break;
        case 6: GPIO_D.odrLow = 0x7D; break;
        case 7: GPIO_D.odrLow = 0x07; break;
        case 8: GPIO_D.odrLow = 0x7F; break;
        case 9: GPIO_D.odrLow = 0x67; break;
        case 10: GPIO_D.odrLow = 0x77; break;
        case 11: GPIO_D.odrLow = 0x7C; break;
        case 12: GPIO_D.odrLow = 0x39; break;
        case 13: GPIO_D.odrLow = 0x5E; break;
        case 14: GPIO_D.odrLow = 0x79; break;
        case 15: GPIO_D.odrLow = 0x71; break;
        default: GPIO_D.odrLow = 0x0; 
        
    }
}
void main(void)
{
    app_init();
    while(1){
        unsigned char c = keyb();
        out7seg(c);
    }
}

