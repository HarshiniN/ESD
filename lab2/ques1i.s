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
	LDR R0,=SRC ; R0 WILL STORE THE ADDRESS OF SRC
	LDR R1,=DST ; R1 WILL STORE THE ADDRESS OF DST
	LDR R3,[R0]
	STR R3,[R1]
	
	ADD R0,#4
	ADD R1,#4
	LDR R3,[R0]
	STR R3,[R1]
	
	ADD R0,#4
	ADD R1,#4
	LDR R3,[R0]
	STR R3,[R1]
	
	ADD R0,#4
	ADD R1,#4
	LDR R3,[R0]
	STR R3,[R1]
	
	ADD R0,#4
	ADD R1,#4
	LDR R3,[R0]
	STR R3,[R1]
	
	ADD R0,#4
	ADD R1,#4
	LDR R3,[R0]
	STR R3,[R1]
	
	ADD R0,#4
	ADD R1,#4
	LDR R3,[R0]
	STR R3,[R1]
	
	ADD R0,#4
	ADD R1,#4
	LDR R3,[R0]
	STR R3,[R1]
	
	ADD R0,#4
	ADD R1,#4
	LDR R3,[R0]
	STR R3,[R1]
	
	ADD R0,#4
	ADD R1,#4
	LDR R3,[R0]
	STR R3,[R1]
STOP B STOP

	AREA DATASEG,DATA,READWRITE
SRC DCD 0x1,0x2,0x3,0x4,0x5,0x6,0x7,0x8,0x9,0x10
DST DCD 0
	END