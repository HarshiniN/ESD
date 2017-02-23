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
	LDR R2,[R0],#16
	LDR R3,[R0]
	MOV R4,#3
	MOV R6,#0
	ADDS R5,R2,R3
	STR R5,[R1],#4
	
UP  ADD R2,#4
	ADD R3,#4
	ADC R5,R2,R3
		
	STR R5,[R1],#4
	
	SUB R4,#1
	TEQ R4,#0
	BNE UP
	ADC R6,#0
	STR R6,[R1]
STOP B STOP
SRC DCD 0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF
	AREA DATASEG,DATA,READWRITE

DST DCD 0,0,0,0,0
	END