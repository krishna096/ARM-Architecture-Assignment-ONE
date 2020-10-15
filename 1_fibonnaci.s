     AREA     fibonnaci, CODE, READONLY
     EXPORT __main
	 ENTRY 
__main  FUNCTION
	mov r5, #0x20000000
	mov r1, #0 ; initialization for fibonacci series
	mov r2, #1 
	mov r3, #15; fibonnaci series of first 15 numbers
	add r4, r1, r2 

loop add r4, r1, r2 ; Here in R4 we can observe the series
	 mov r1, r2
	 mov r2, r4
	 sub r3, r3, #1
	 cmp r3, #0
	 beq end
	 b loop
	 
end  str r4, [r5] ; displaying final number here
	
stop	B stop; stop program	 
		 
     ENDFUNC
     END