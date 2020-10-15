		AREA large, CODE, READONLY 
		EXPORT __main
		ENTRY

__main FUNCTION
	mov r1, #5 
	mov r2, #7
	mov r3, #9
	
	cmp r1, r2
	ITE GT
	movgt r4, r1
	movle r4, r2
	
	cmp r4, r3 
	ITE GT
	movgt r4, r4
	movle r4, r3 ; R4 shows the largest among three 
stop	B stop 
		 
     ENDFUNC
     END