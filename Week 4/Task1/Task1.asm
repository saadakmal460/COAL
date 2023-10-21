Include Irvine32.inc

.data
	var1 DWORD 50 DUP (5)


.code
main proc

	
	;NUMBER OF BYTES CONSUMED BY ARRAY
	mov eax , LENGTHOF var1
	imul eax ,2;
	

	;Length OF ARRAY AMD ELEMENT AT 100th INDEX
	mov eax , LENGTHOF var1
	mov esi,OFFSET var1
	mov eax,[esi + 100 * TYPE var1];
	

	;CALCULATING SUM AND AVERAGE
	mov edi,OFFSET var1
	mov ecx , LENGTHOF var1
	mov eax ,0
	
	top:
		add eax ,[edi]
		add edi , TYPE var1
		loop top


		mov ebx , LENGTHOF var1
		mov edx , 0
		div ebx
		call writeint

	
	
	

		

invoke ExitProcess,0
main endp
end main