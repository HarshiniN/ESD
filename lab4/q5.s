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

	MOV R0,#1
	LDR R1,=DST
	MOV R2,N
	MOV R5,#0
	MOV R3,#1

UP
	
	MLA R5,R3,R0,R5
	SUB R2,#1
	ADD R0,#1
	TEQ R2,#0
	BNE UP
	STR R5,[R1]
	

N EQU 5
STOP B STOP
	AREA DATASEG,DATA,READWRITE
DST DCD 0
	END