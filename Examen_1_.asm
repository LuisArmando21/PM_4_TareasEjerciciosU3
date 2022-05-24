TITLE Introduccion

;DESCRPICIÓN
;Objetivo: area de un 
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumo 
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCIÓN

INCLUDE Irvine32.inc

AreaM MACRO 
	
	.data
	;Area declaracion variables			
	.code
	;Logica del programa
	mov eax, ladoA
	mov ebx, ladoC
	
	cmp ebx, eax
	jg Cmayor	
	mov eax, base
	mul ladoC	
	mov area, eax
	
	mov ebx, ladoA
	sub ebx, ladoC
	mov eax, base
	mul ebx 
	mov ebx, 2
	div ebx
	add area, eax

	Cmayor:

	mov eax, ladoA
	mov ebx, ladoC
	
	cmp eax, ebx
	jg Amayor	
	mov eax, base
	mul ladoA	
	mov area, eax

	mov ebx, ladoC
	sub ebx, ladoA
	mov eax, base
	mul ebx 
	mov ebx, 2
	div ebx
	add area, eax
	Amayor:
	
	


ENDM

.data
; Área de Declaración de Variables
	base dword 0
	ladoA dword 0
	ladoC dword 0
	area dword 0
.code
 mainEX1 PROC
;Lógica del Programa
	call readint 
	mov base, eax
	call readint 
	mov ladoA, eax
	call readint
	mov ladoC, eax

	AreaM	
	
	
	mov eax, area
	call crlf
	call writedec



exit
mainEX1 ENDP
END mainEX1
