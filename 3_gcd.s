		AREA  gcd, CODE, READONLY 
		EXPORT __main
		ENTRY
		
__main FUNCTION
	
	mov r1, #20 ; a
	mov r2, #12 ; b
	
lgcd	CMP r1, r2 
		subgt r1, r1, r2
		sublt r2, r2, r1 
		BNE lgcd

stop	B stop	 
		 
     ENDFUNC
     END