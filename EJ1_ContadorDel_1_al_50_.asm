TITLE Introduccion

;DESCRPICI�N
;Objetivo: Archivo de Ejemplo
;
; Autore(s):
; Mtro. Alejandro Garcia
; Alumo Hernandez Licea Luis Armando
;

; Semestre: 8vo Semestre ISC
;FIN DESCRIPCI�N

INCLUDE Irvine32.inc

.data
; �rea de Declaraci�n de Variables
	
	msj1_E1 db "No."
	var1_E1 byte 48
	var2_E1 byte 49
	terminador db ".", 0

.code
 mainE1 PROC
;L�gica del Programa

mov edx, offset msj1_E1
mov ecx, 50	;control de loop
mov eax, 1000	;tiempo en el que se detendra la ejecucion con base al delay
mov ebx,9
ciclo:
	call clrscr		;limpia pantalla 
	call writestring	;escribe 
	inc var2_E1			;incrementa unidades
	cmp var2_E1, 58		;si llega a 58(carater ":")
	jne salto			;salta mientras no llege a 58
	inc var1_E1			;incremento variable correspondiente a decenas
	mov var2_E1, 48		;se resetea la variable en 48()"0") correspondiente a unidades
	salto:
	call crlf
	call delay
	
loop ciclo


exit
mainE1 ENDP
END mainE1
