start:
	LDR	R0,=0x55555555
	LDR	R1,=0x40020C00 @ konfig port D
	STR	R0,[R1]

	LDR	R1,=0x40020C14
	LDR	R2,=0x40021010

main:
	LDRH	R0, [R2]
	STRH	R0, [R1]
	B	main
