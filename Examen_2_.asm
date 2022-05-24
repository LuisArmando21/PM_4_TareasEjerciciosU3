TITLE Introduccion

;DESCRPICIÓN
;Objetivo: Ahorro si la persona deposita variables cantidades en un mes
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumo 
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

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
; Área de Declaración de Variables

.code
 mainEX2 PROC
;Lógica del Programa
	call readint 
	CostoE
	mul ebx
	call writedec


exit
mainEX2 ENDP
END mainEX2
