	AREA RESET,DATA,READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x10001000
	DCD Reset_Handler
	ALIGN
	AREA mycode,CODE,READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler
	LDR R0,=SRC
	LDR R1,=DST
	LDRB R2,[R0]
	AND R4,R2,#0X0F
	CMP R4,#9
	BLS D
	ADD R4,#06
D
	ORR R8,R4,#0X0F
	AND R6,R4,#0XF0
	LSR R6,#04
	ROR R8,#4
	AND R4,R2,#0XF0
	LSR R4,#4
	ADD R4,R6
	CMP R4,#06
	BLS DOWN
	ADD R4,#06
DOWN
	ORR R8,R4,#0X0F
	AND R6,R4,#0XF0
	LSR R6,#4
	ROR R8,#4
	ORR R8,R6
	ROR R8,#20
	STR R8,[R1]

SRC DCD 0XF
	AREA DATASEG,DATA,READWRITE

DST DCD 0
	END