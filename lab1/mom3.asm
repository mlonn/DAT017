@
@	mom3.asm
@
	LDR	R1,=s
	LDRH	R0,=0x3E0
	STRH	R0,[R1]
	LDR	R1,=s
	LDR	R2,=c
	LDRH	R0,[R1]
	STRB	R0,[R2]
	LDR	R1,=i
	LDR	R0,=0x3E00
	STR	R0,[R1]
	.ALIGN
i:	.SPACE	4
s:	.SPACE	2
c:	.SPACE	1


	