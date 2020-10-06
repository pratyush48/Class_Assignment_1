     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
		MOV R1, #1;
		MOV R2, #5;
		MOV R3, #0;
		MOV R4, #1;	
		MOV R6, #0x20000000
loop    CMP R2, #0
		ADD R5,R3,R4;
		MOV R3,R4;
		MOV R4,R5;
		SUB R2, #1;
		STRB R5, [R6];
		ADD R6,#1;
		
        BGT loop ; do another mul if counter!= 0
stop    B stop ; stop program
		 
     ENDFUNC
     END
			