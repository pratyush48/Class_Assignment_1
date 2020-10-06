     AREA     appcode, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
		MOV R2,#5 ; load n into r6
        MOV R3,#10 ; if n = 0, at least n! = 1
loop    CMP R2, R3
		SUBGT R2, R2, R3 
        SUBLE R3, R3, R2
        BGT loop ; do another mul if counter!= 0
		
stop    B stop ; stop program
		 
     ENDFUNC
     END
			