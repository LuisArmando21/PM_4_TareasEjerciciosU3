TITLE Introduccion

;DESCRPICI�N
;Objetivo: Ahorro si la persona deposita variables cantidades cada mes
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumo 
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc

AhorroM MACRO 
	
	.data
	;Area declaracion variables		
	.code
	;Logica del programa
	mov ecx, 12
	ciclo:
	call readint
	add ahorro, eax
	loop ciclo




ENDM

.data
; �rea de Declaraci�n de Variables
ahorro dword 0
.code
 mainEX4 PROC
;L�gica del Programa
 
 AhorroM
 mov eax, ahorro
 call writedec


exit
mainEX4 ENDP
END mainEX4
