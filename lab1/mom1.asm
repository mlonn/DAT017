@
@	mom1.asm
@

start: 	LDR	R0,=0x55555555	@ sätt upp port D som utport
	LDR	R1,=0x40020C00	
	STR	R0,[R1]
	LDR	R1,=0x40020C14	@ utport skapar en pekare till port D i R1
	LDR	R2,=0x40021010	@ inport skapar en pekare till port E i R2

main: 	LDR	R0,[R2]		@ laddar 32 bitar från port E i R0
	STR	R0,[R1]		@ skriver innehållet i R0 till port E
	B	main		@ absolut programflödesändring
