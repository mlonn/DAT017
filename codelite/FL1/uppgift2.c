#include <stdio.h>
#include <string.h>

void uppgift2(char str[]) {
    int len = strlen(str);
    for(int i=len-1; i>=0; i--) {
        printf("%c",str[i]);
    }


}
int main(int argc, char **argv)
{
	//uppgift1();
    uppgift2("I am an awesome C programmer");
	return 0;
}

