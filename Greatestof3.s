     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION		         
	    MOV R0,#23			;SETTING FIRST 	VALUE
		MOV R1,#22			;SETTING SECOND VALUE
		MOV R2,#11          ;SETTING THIRD VALUE
		MOV R5,#0x20000000
		CMP R0,R1			;Comparing R0,R1 and storing maximum in R3
		BPL JUMP1 
		MOV R3,R1			
		B JUMP2
JUMP1	MOV R3,R0

JUMP2	CMP R3,R2			;Comparing R3,R2 and storing maximum in R3
		BPL LAST
		MOV R3,R2
LAST 	STR R3,[r5]	
		
stop    B stop ; stop program
		 
     ENDFUNC
     END
			