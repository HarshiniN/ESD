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
	SUBS R4,R2,R3
	ADC R5,#0
	STR R4,[R1],#4
	STR R5,[R1]
	
	
	
STOP B STOP
SRC DCD 0xFFFFFFFF,0xF
	AREA DATASEG,DATA,READWRITE
DST DCD 0
	END