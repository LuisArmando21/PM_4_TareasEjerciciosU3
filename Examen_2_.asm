TITLE Introduccion

;DESCRPICI�N
;Objetivo: Ahorro si la persona deposita variables cantidades en un mes
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumo 
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc

CostoE MACRO 
	
	.data
	;Area declaracion variables		
	.code
	;Logica del programa
	mov ebx, 95
	cmp eax, 200
	jl salto1
	cmp eax, 300
	jge salto2
	mov ebx, 85
	salto2:
	salto1:
	cmp eax, 300
	jl salto3
	mov ebx, 75
	salto3:

ENDM

.data
; �rea de Declaraci�n de Variables

.code
 mainEX2 PROC
;L�gica del Programa
	call readint 
	CostoE
	mul ebx
	call writedec


exit
mainEX2 ENDP
END mainEX2
