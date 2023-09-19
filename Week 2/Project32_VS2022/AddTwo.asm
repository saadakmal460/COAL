; AddTwo.asm - adds two 32-bit integers.
; Chapter 3 example

.386
.model flat,stdcall
.stack 4096

ExitProcess proto,dwExitCode:dword

.data
sum DWORD 0
subtract DWORD 0

sum2 DWORD 0
multiplication DWORD 4;
ans DWORD 0

.code
main proc
			comment !
			; Task1
			mov eax, 10
			sub eax, 7
			mov subtract,eax

			mov eax, 5
			add eax, 6
			mov sum,eax

			mov eax ,9
			mul sum
			mul subtract
			!


			;Task 2
			mov eax ,5
			mul multiplication
			mov multiplication , eax

			mov eax ,3
			add eax ,7
			mov sum2 , eax

			mov eax , multiplication
			sub eax , sum2 
			mov ans , eax

			mov eax, 21
			mul ans

			

	invoke ExitProcess,0
main endp
end main