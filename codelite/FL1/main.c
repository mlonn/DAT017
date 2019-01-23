#include <stdio.h>
#include <string.h>
void uppgift1(void)
{
	for(int i=0; i<10; ++i) {
        printf("I am an awesome C programmer\n");
    }
}
void uppgift2(char str[]) {
    int len = strlen(str);
    for(int i=len-1; i>=0; i--) {
        printf("%c",str[i]);
    }
}

void printChar(unsigned char byte) {
    for(int i=7; i>=0; i--) {
        int bit = (byte >> i) & 0x01;
        printf("%d", bit);
    }
}
void printShort(unsigned short byte) {
    for(int i=15; i>=0; i--) {
        int bit = (byte >> i) & 0x01;
        printf("%d", bit);
    }
}
void printInt(unsigned int byte) {
    for(int i=31; i>=0; i--) {
        int bit = (byte >> i) & 0x01;
        printf("%d", bit);
    }
}
void printDecimal(char str[]){
    int len = strlen(str);
    int number = 0;
    for(int i=0; i<len; i++) {
        if (str[i] == '1'){
            number |= (1<<(len-1-i));
        }
    }
    printf("%d", number);
}
int main(int argc, char **argv)
{
	//uppgift1();
    //uppgift2("I am an awesome C programmer");
    //printChar(106);
    //printShort(432);
    //printInt(7823649);
    //printDecimal("11111111");
    //**********
    //unsigned char byte = 128;
    //printChar(byte); printf("\n");
    //byte |= (1<<1 | 1<<3 | 1<<5);
    //printChar(byte); printf("\n");
    //printf("%d\n", byte);
    //**********
    signed char x = 27;
    x ^= 0xff;
    x++;
	return 0;
}

