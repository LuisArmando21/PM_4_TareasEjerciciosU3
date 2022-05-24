TITLE Introduccion

;DESCRPICIÓN
;Objetivo: Ahorro si la persona deposita variables cantidades cada mes
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumo 
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

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
; Área de Declaración de Variables
ahorro dword 0
.code
 mainEX4 PROC
;Lógica del Programa
 
 AhorroM
 mov eax, ahorro
 call writedec


exit
mainEX4 ENDP
END mainEX4
