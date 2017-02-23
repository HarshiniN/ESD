	AREA RESET,DATA,READONLY
	EXPORT __Vectors
__Vectors
	DCD 0x10000000
	DCD Reset_Handler
	ALIGN
	AREA mycode,CODE,READONLY
	ENTRY
	EXPORT Reset_Handler
Reset_Handler

	LDR R0,=SRC
	LDR R1,=DST
	LDR R2,[R0],#4
	LDR R3,[R0]
	MOV R9,#4

UP	AND R4,R2,#0xF
	AND R5,R3,#0xF
	
	ADD R6,R4,R5
	CMP R6,#09
	BLS DOWN
	ADD R6,#06
DOWN
	AND R7,R6,#0xF
	ORR R8,R7
	LSR R4,#4
	LSR R5,#4
	
	SUB R9,#1
	TEQ R9,#0
	BNE UP
	STR R8,[R1]

STOP B STOP
SRC DCD 0x12345678,0x00000002
	AREA DATASEG,DATA,READWRITE
DST DCD 0
	END